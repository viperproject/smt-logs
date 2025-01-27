// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:11
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/package.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/package-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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

type WandType_wand_5;
function  wand_5(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_5 int;
function  wand_5#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_5 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_5#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_6;
function  wand_6(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int): Field WandType_wand_6 int;
function  wand_6#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int): Field WandType_wand_6 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int ::
  { wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int ::
  { wand_6#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_6#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int ::
  { wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int ::
  { wand_6#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_6#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int ::
  { WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand_6#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int ::
  { wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int, arg9_2: Ref, arg10_2: Perm, arg11_2: Ref, arg12_2: int ::
  { wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand_6(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand_6(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand_6(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
);
type WandType_wand_9;
function  wand_9(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_9 int;
function  wand_9#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_9 PMaskType;
function  wand_9#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_9 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_9#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_9#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_9#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_9#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { WandMaskField(wand_9#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_9#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_9#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: bool ::
  { wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_9(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_9(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_9(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_7;
function  wand_7(arg1: bool, arg2: bool): Field WandType_wand_7 int;
function  wand_7#sm(arg1: bool, arg2: bool): Field WandType_wand_7 PMaskType;
function  wand_7#ft(arg1: bool, arg2: bool): Field WandType_wand_7 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_7(arg1, arg2) }
  IsWandField(wand_7(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7#ft(arg1, arg2) }
  IsWandField(wand_7#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7(arg1, arg2) }
  !IsPredicateField(wand_7(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7#ft(arg1, arg2) }
  !IsPredicateField(wand_7#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_7#ft(arg1, arg2)) }
  wand_7#sm(arg1, arg2) == WandMaskField(wand_7#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7(arg1, arg2) }
  getPredWandId(wand_7(arg1, arg2)) == 4
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_7(arg1, arg2), wand_7(arg1_2, arg2_2) }
  wand_7(arg1, arg2) == wand_7(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_10;
function  wand_10(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand_10 int;
function  wand_10#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand_10 PMaskType;
function  wand_10#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand_10 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_10(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_10(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_10#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_10#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_10(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_10(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_10#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_10#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { WandMaskField(wand_10#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_10#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_10#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_10(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_10(arg1, arg2, arg3, arg4, arg5)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: bool ::
  { wand_10(arg1, arg2, arg3, arg4, arg5), wand_10(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_10(arg1, arg2, arg3, arg4, arg5) == wand_10(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);
type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 6
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_4(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_4(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_4#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_4(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5)) == 7
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: bool ::
  { wand_4(arg1, arg2, arg3, arg4, arg5), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 8
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int ::
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
  getPredWandId(wand_8(arg1, arg2, arg3)) == 9
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand_8(arg1, arg2, arg3), wand_8(arg1_2, arg2_2, arg3_2) }
  wand_8(arg1, arg2, arg3) == wand_8(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5)) == 10
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique h: Field NormalField int;
axiom !IsPredicateField(h);
axiom !IsWandField(h);

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(x: Ref) returns ()
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
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  
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
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) {
  // } -- package.vpr@9.3--9.46
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1 && x != null;
      Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- package.vpr@9.11--9.46
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@9.3--9.46) [215787]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@9.3--9.46) [215788]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, 1 / 2) {
  // } -- package.vpr@10.3--10.44
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      perm := FullPerm;
      b_5 := b_5 && x != null;
      Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- package.vpr@10.11--10.44
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.f, 1 / 2)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, 1 / 2)
      rcvLocal := x;
      neededTransfer := 1 / 2;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (package.vpr@10.3--10.44) [215789]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_3Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, 1 / 2):=Heap[null, wand#sm(x, FullPerm, x, 1 / 2)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@10.3--10.44) [215790]"}
        (b_5 && b_5) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_5 && b_6;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_5 := b_5 && b_7;
    Mask := Mask[null, wand(x, FullPerm, x, 1 / 2):=Mask[null, wand(x, FullPerm, x, 1 / 2)] + FullPerm];
    assume state(Heap, Mask);
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
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var perm: Perm;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
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
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, write) {
  // } -- package.vpr@15.3--15.44
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (package.vpr@15.3--15.44) [215791]"}
        perm >= NoPerm;
      b_9 := b_9 && (perm > NoPerm ==> x != null);
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- package.vpr@15.11--15.44
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@15.3--15.44) [215792]"}
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
            Heap := Heap[null, wand#sm(x, 1 / 2, x, FullPerm):=Heap[null, wand#sm(x, 1 / 2, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@15.3--15.44) [215793]"}
        (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_9 && b_10;
        b_11 := b_11 && state(Result_2Heap, Result_2Mask);
        b_11 := b_11 && sumMask(Result_2Mask, Ops_5Mask, Used_5Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_2Heap, Used_5Mask);
        b_11 := b_11 && state(Result_2Heap, Result_2Mask);
      b_9 := b_9 && b_11;
    Mask := Mask[null, wand(x, 1 / 2, x, FullPerm):=Mask[null, wand(x, 1 / 2, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_13: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_12: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_15: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 0 -- package.vpr@21.3--21.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (package.vpr@21.3--21.11) [215794]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) && x.f == 0 {
  // } -- package.vpr@23.3--23.56
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_12 := b_12 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_13) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (package.vpr@23.3--23.56) [215795]"}
        perm >= NoPerm;
      b_13 := b_13 && (perm > NoPerm ==> x != null);
      Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
      b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    }
    b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- package.vpr@23.11--23.56
      lhs7:
      Labellhs7Heap := Ops_7Heap;
      Labellhs7Mask := Ops_7Mask;
      b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationacc(x.f, 1 / 2) && x.f == 0
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_14 := b_14 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(x.f, 1 / 2)
      rcvLocal := x;
      neededTransfer := 1 / 2;
      initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (package.vpr@23.3--23.56) [215796]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
            b_14 := b_14 && state(Used_7Heap, Used_7Mask);
            b_14 := b_14 && Ops_7Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
            Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
            b_14 := b_14 && state(Used_7Heap, Used_7Mask);
            b_14 := b_14 && Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x, 1 / 2, x, 0):=Heap[null, wand_1#sm(x, 1 / 2, x, 1 / 2, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@23.3--23.56) [215797]"}
        (b_13 && b_13) && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_13 && b_14;
        b_15 := b_15 && state(Result_3Heap, Result_3Mask);
        b_15 := b_15 && sumMask(Result_3Mask, Ops_7Mask, Used_7Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_7Heap, Result_3Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_3Heap, Used_7Mask);
        b_15 := b_15 && state(Result_3Heap, Result_3Mask);
      b_13 := b_13 && b_15;
    if ((b_13 && b_13) && b_14) {
      if (b_13) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@23.3--23.56) [215798]"}
            HasDirectPerm(Result_3Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (package.vpr@23.3--23.56) [215799]"}
      (b_13 && b_13) && b_14 ==> Result_3Heap[x, f_7] == 0;
    Mask := Mask[null, wand_1(x, 1 / 2, x, 1 / 2, x, 0):=Mask[null, wand_1(x, 1 / 2, x, 1 / 2, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test09
// ==================================================

procedure test09(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_17: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_4: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_18: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_19: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 0 -- package.vpr@29.3--29.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (package.vpr@29.3--29.11) [215800]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0 {
  // } -- package.vpr@30.3--30.58
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_17 := b_17 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_16 := b_16 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (package.vpr@30.3--30.58) [215801]"}
        perm >= NoPerm;
      b_17 := b_17 && (perm > NoPerm ==> x != null);
      Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
      b_17 := b_17 && state(Ops_9Heap, Ops_9Mask);
    }
    b_17 := b_17 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs9 -- package.vpr@30.11--30.58
      lhs9:
      Labellhs9Heap := Ops_9Heap;
      Labellhs9Mask := Ops_9Mask;
      b_17 := b_17 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 0
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_18 := b_18 && state(Used_9Heap, Used_9Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_9Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@30.3--30.58) [215802]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
            b_18 := b_18 && state(Used_9Heap, Used_9Mask);
            b_18 := b_18 && Ops_9Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
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
            Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
            b_18 := b_18 && state(Used_9Heap, Used_9Mask);
            b_18 := b_18 && Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x, FullPerm, x, 0):=Heap[null, wand_1#sm(x, 1 / 2, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@30.3--30.58) [215803]"}
        (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_19 := b_17 && b_18;
        b_19 := b_19 && state(Result_4Heap, Result_4Mask);
        b_19 := b_19 && sumMask(Result_4Mask, Ops_9Mask, Used_9Mask);
        b_19 := (b_19 && IdenticalOnKnownLocations(Ops_9Heap, Result_4Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_4Heap, Used_9Mask);
        b_19 := b_19 && state(Result_4Heap, Result_4Mask);
      b_17 := b_17 && b_19;
    if ((b_17 && b_17) && b_18) {
      if (b_17) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@30.3--30.58) [215804]"}
            HasDirectPerm(Result_4Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (package.vpr@30.3--30.58) [215805]"}
      (b_17 && b_17) && b_18 ==> Result_4Heap[x, f_7] == 0;
    Mask := Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, 1 / 2) -- package.vpr@31.3--31.23
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := 1 / 2;
    assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (package.vpr@31.10--31.23) [215806]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (package.vpr@31.10--31.23) [215807]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, 2 / 3) -- package.vpr@33.3--33.23
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := 2 / 3;
    assert {:msg "  Assert might fail. Fraction 2 / 3 might be negative. (package.vpr@33.10--33.23) [215808]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (package.vpr@33.10--33.23) [215809]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test08
// ==================================================

procedure test08(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_21: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_20: bool;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var boolCur_5: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_22: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_23: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 0 -- package.vpr@39.3--39.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (package.vpr@39.3--39.11) [215810]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(x.f, 1 / 3) && x.f == 0 {
  // } -- package.vpr@40.3--40.47
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_21 := b_21 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_20 := b_20 && state(Used_10Heap, Used_10Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_21) {
      b_21 := b_21;
    }
    b_21 := b_21 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs11 -- package.vpr@40.11--40.47
      lhs11:
      Labellhs11Heap := Ops_11Heap;
      Labellhs11Mask := Ops_11Mask;
      b_21 := b_21 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operationacc(x.f, 1 / 3) && x.f == 0
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_22 := b_22 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(x.f, 1 / 3)
      rcvLocal := x;
      neededTransfer := 1 / 3;
      initNeededTransfer := Used_11Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 3) might be negative. (package.vpr@40.3--40.47) [215811]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_21 && b_21) && b_22) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_22 := b_22 && state(Used_11Heap, Used_11Mask);
            b_22 := b_22 && Ops_11Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_21 && b_21) && b_22) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_22 := b_22 && state(Used_11Heap, Used_11Mask);
            b_22 := b_22 && Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, x, 1 / 3, x, 0):=Heap[null, wand_2#sm(true, x, 1 / 3, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@40.3--40.47) [215812]"}
        (b_21 && b_21) && b_22 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_23 := b_21 && b_22;
        b_23 := b_23 && state(Result_5Heap, Result_5Mask);
        b_23 := b_23 && sumMask(Result_5Mask, Ops_11Mask, Used_11Mask);
        b_23 := (b_23 && IdenticalOnKnownLocations(Ops_11Heap, Result_5Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_5Heap, Used_11Mask);
        b_23 := b_23 && state(Result_5Heap, Result_5Mask);
      b_21 := b_21 && b_23;
    if ((b_21 && b_21) && b_22) {
      if (b_21) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@40.3--40.47) [215813]"}
            HasDirectPerm(Result_5Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (package.vpr@40.3--40.47) [215814]"}
      (b_21 && b_21) && b_22 ==> Result_5Heap[x, f_7] == 0;
    Mask := Mask[null, wand_2(true, x, 1 / 3, x, 0):=Mask[null, wand_2(true, x, 1 / 3, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_25_1: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_24_1: bool;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var boolCur_6: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_26_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_27_1: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 1 -- package.vpr@46.3--46.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (package.vpr@46.3--46.11) [215815]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0 {
  // } -- package.vpr@48.3--48.58
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_25_1 := b_25_1 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_25_1) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (package.vpr@48.3--48.58) [215816]"}
        perm >= NoPerm;
      b_25_1 := b_25_1 && (perm > NoPerm ==> x != null);
      Ops_13Mask := Ops_13Mask[x, f_7:=Ops_13Mask[x, f_7] + perm];
      b_25_1 := b_25_1 && state(Ops_13Heap, Ops_13Mask);
    }
    b_25_1 := b_25_1 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs13 -- package.vpr@48.11--48.58
      lhs13:
      Labellhs13Heap := Ops_13Heap;
      Labellhs13Mask := Ops_13Mask;
      b_25_1 := b_25_1 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 0
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_26_1 := b_26_1 && state(Used_13Heap, Used_13Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_13Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@48.3--48.58) [215817]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_25_1 && b_25_1) && b_26_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_13Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_26_1 := b_26_1 && state(Used_13Heap, Used_13Mask);
            b_26_1 := b_26_1 && Ops_13Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_25_1 && b_25_1) && b_26_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_26_1 := b_26_1 && state(Used_13Heap, Used_13Mask);
            b_26_1 := b_26_1 && Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x, FullPerm, x, 0):=Heap[null, wand_1#sm(x, 1 / 2, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@48.3--48.58) [215818]"}
        (b_25_1 && b_25_1) && b_26_1 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_27_1 := b_25_1 && b_26_1;
        b_27_1 := b_27_1 && state(Result_6Heap, Result_6Mask);
        b_27_1 := b_27_1 && sumMask(Result_6Mask, Ops_13Mask, Used_13Mask);
        b_27_1 := (b_27_1 && IdenticalOnKnownLocations(Ops_13Heap, Result_6Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_6Heap, Used_13Mask);
        b_27_1 := b_27_1 && state(Result_6Heap, Result_6Mask);
      b_25_1 := b_25_1 && b_27_1;
    if ((b_25_1 && b_25_1) && b_26_1) {
      if (b_25_1) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@48.3--48.58) [215819]"}
            HasDirectPerm(Result_6Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (package.vpr@48.3--48.58) [215820]"}
      (b_25_1 && b_25_1) && b_26_1 ==> Result_6Heap[x, f_7] == 0;
    Mask := Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)] + FullPerm];
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
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_29_1: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_28_1: bool;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var boolCur_7: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_30_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_31_1: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 1 -- package.vpr@54.3--54.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (package.vpr@54.3--54.11) [215821]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 0 --* acc(x.f, 1 / 2) && x.f == 0 {
  // } -- package.vpr@55.3--55.70
    havoc Ops_15Heap;
    Ops_15Mask := ZeroMask;
    b_29_1 := b_29_1 && state(Ops_15Heap, Ops_15Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_28_1 := b_28_1 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_29_1) {
      if (b_29_1) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (package.vpr@55.3--55.70) [215822]"}
          perm >= NoPerm;
        b_29_1 := b_29_1 && (perm > NoPerm ==> x != null);
        Ops_15Mask := Ops_15Mask[x, f_7:=Ops_15Mask[x, f_7] + perm];
        b_29_1 := b_29_1 && state(Ops_15Heap, Ops_15Mask);
      }
      if (b_29_1) {
        if (b_29_1) {
          
          // -- Check definedness of x.f == 0
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@55.3--55.70) [215823]"}
              HasDirectPerm(Ops_15Mask, x, f_7);
        }
        b_29_1 := b_29_1 && Ops_15Heap[x, f_7] == 0;
      }
    }
    b_29_1 := b_29_1 && state(Ops_15Heap, Ops_15Mask);
    
    // -- Translating statement: label lhs15 -- package.vpr@55.11--55.70
      lhs15:
      Labellhs15Heap := Ops_15Heap;
      Labellhs15Mask := Ops_15Mask;
      b_29_1 := b_29_1 && state(Ops_15Heap, Ops_15Mask);
    boolCur_7 := true;
    // Translating exec of non-ghost operationacc(x.f, 1 / 2) && x.f == 0
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_30_1 := b_30_1 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(x.f, 1 / 2)
      rcvLocal := x;
      neededTransfer := 1 / 2;
      initNeededTransfer := Used_15Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (package.vpr@55.3--55.70) [215824]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_29_1 && b_29_1) && b_30_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_15Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_30_1 := b_30_1 && state(Used_15Heap, Used_15Mask);
            b_30_1 := b_30_1 && Ops_15Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Ops_15Mask := Ops_15Mask[rcvLocal, f_7:=Ops_15Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_29_1 && b_29_1) && b_30_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_30_1 := b_30_1 && state(Used_15Heap, Used_15Mask);
            b_30_1 := b_30_1 && Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(x, 1 / 2, x, 0, x, 1 / 2, x, 0):=Heap[null, wand_3#sm(x, 1 / 2, x, 0, x, 1 / 2, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@55.3--55.70) [215825]"}
        (b_29_1 && b_29_1) && b_30_1 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_31_1 := b_29_1 && b_30_1;
        b_31_1 := b_31_1 && state(Result_7Heap, Result_7Mask);
        b_31_1 := b_31_1 && sumMask(Result_7Mask, Ops_15Mask, Used_15Mask);
        b_31_1 := (b_31_1 && IdenticalOnKnownLocations(Ops_15Heap, Result_7Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_7Heap, Used_15Mask);
        b_31_1 := b_31_1 && state(Result_7Heap, Result_7Mask);
      b_29_1 := b_29_1 && b_31_1;
    if ((b_29_1 && b_29_1) && b_30_1) {
      if (b_29_1) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@55.3--55.70) [215826]"}
            HasDirectPerm(Result_7Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (package.vpr@55.3--55.70) [215827]"}
      (b_29_1 && b_29_1) && b_30_1 ==> Result_7Heap[x, f_7] == 0;
    Mask := Mask[null, wand_3(x, 1 / 2, x, 0, x, 1 / 2, x, 0):=Mask[null, wand_3(x, 1 / 2, x, 0, x, 1 / 2, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_33_1: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_32_1: bool;
  var Labellhs17Heap: HeapType;
  var Labellhs17Mask: MaskType;
  var boolCur_8: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_34_1: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (package.vpr@59.12--59.37) [215828]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (package.vpr@59.12--59.37) [215829]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 0 --* false {
  // } -- package.vpr@62.3--62.48
    havoc Ops_17Heap;
    Ops_17Mask := ZeroMask;
    b_33_1 := b_33_1 && state(Ops_17Heap, Ops_17Mask);
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_32_1 := b_32_1 && state(Used_16Heap, Used_16Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_33_1) {
      if (b_33_1) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (package.vpr@62.3--62.48) [215830]"}
          perm >= NoPerm;
        b_33_1 := b_33_1 && (perm > NoPerm ==> x != null);
        Ops_17Mask := Ops_17Mask[x, f_7:=Ops_17Mask[x, f_7] + perm];
        b_33_1 := b_33_1 && state(Ops_17Heap, Ops_17Mask);
      }
      if (b_33_1) {
        if (b_33_1) {
          
          // -- Check definedness of x.f == 0
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@62.3--62.48) [215831]"}
              HasDirectPerm(Ops_17Mask, x, f_7);
        }
        b_33_1 := b_33_1 && Ops_17Heap[x, f_7] == 0;
      }
    }
    b_33_1 := b_33_1 && state(Ops_17Heap, Ops_17Mask);
    
    // -- Translating statement: label lhs17 -- package.vpr@62.11--62.48
      lhs17:
      Labellhs17Heap := Ops_17Heap;
      Labellhs17Mask := Ops_17Mask;
      b_33_1 := b_33_1 && state(Ops_17Heap, Ops_17Mask);
    boolCur_8 := true;
    // Translating exec of non-ghost operationfalse
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_34_1 := b_34_1 && state(Used_17Heap, Used_17Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@62.3--62.48) [215832]"}
      (b_33_1 && b_33_1) && b_34_1 ==> false;
    Mask := Mask[null, wand_4(x, 1 / 2, x, 0, false):=Mask[null, wand_4(x, 1 / 2, x, 0, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test10
// ==================================================

procedure test10(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_19Heap: HeapType;
  var Ops_19Mask: MaskType;
  var b_36_1: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_35_1: bool;
  var Labellhs19Heap: HeapType;
  var Labellhs19Mask: MaskType;
  var boolCur_9: bool;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_37_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_38: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var Ops_21Heap: HeapType;
  var Ops_21Mask: MaskType;
  var b_40: bool;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_39: bool;
  var Labellhs21Heap: HeapType;
  var Labellhs21Mask: MaskType;
  var boolCur_10: bool;
  var Used_21Heap: HeapType;
  var Used_21Mask: MaskType;
  var b_41: bool;
  var b_42: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 1 -- package.vpr@68.3--68.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (package.vpr@68.3--68.11) [215833]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(x.f, write) && x.f == 1 {
  // } -- package.vpr@70.3--70.49
    havoc Ops_19Heap;
    Ops_19Mask := ZeroMask;
    b_36_1 := b_36_1 && state(Ops_19Heap, Ops_19Mask);
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_35_1 := b_35_1 && state(Used_18Heap, Used_18Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_36_1) {
      b_36_1 := b_36_1;
    }
    b_36_1 := b_36_1 && state(Ops_19Heap, Ops_19Mask);
    
    // -- Translating statement: label lhs19 -- package.vpr@70.11--70.49
      lhs19:
      Labellhs19Heap := Ops_19Heap;
      Labellhs19Mask := Ops_19Mask;
      b_36_1 := b_36_1 && state(Ops_19Heap, Ops_19Mask);
    boolCur_9 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 1
    havoc Used_19Heap;
    Used_19Mask := ZeroMask;
    b_37_1 := b_37_1 && state(Used_19Heap, Used_19Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_19Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@70.3--70.49) [215834]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_36_1 && b_36_1) && b_37_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_19Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[rcvLocal, f_7:=Used_19Mask[rcvLocal, f_7] + takeTransfer];
            b_37_1 := b_37_1 && state(Used_19Heap, Used_19Mask);
            b_37_1 := b_37_1 && Ops_19Heap[rcvLocal, f_7] == Used_19Heap[rcvLocal, f_7];
            Ops_19Mask := Ops_19Mask[rcvLocal, f_7:=Ops_19Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_36_1 && b_36_1) && b_37_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[rcvLocal, f_7:=Used_19Mask[rcvLocal, f_7] + takeTransfer];
            b_37_1 := b_37_1 && state(Used_19Heap, Used_19Mask);
            b_37_1 := b_37_1 && Heap[rcvLocal, f_7] == Used_19Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, x, FullPerm, x, 1):=Heap[null, wand_2#sm(true, x, FullPerm, x, 1)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@70.3--70.49) [215835]"}
        (b_36_1 && b_36_1) && b_37_1 ==> neededTransfer == 0.000000000 && Used_19Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_38 := b_36_1 && b_37_1;
        b_38 := b_38 && state(Result_8Heap, Result_8Mask);
        b_38 := b_38 && sumMask(Result_8Mask, Ops_19Mask, Used_19Mask);
        b_38 := (b_38 && IdenticalOnKnownLocations(Ops_19Heap, Result_8Heap, Ops_19Mask)) && IdenticalOnKnownLocations(Used_19Heap, Result_8Heap, Used_19Mask);
        b_38 := b_38 && state(Result_8Heap, Result_8Mask);
      b_36_1 := b_36_1 && b_38;
    if ((b_36_1 && b_36_1) && b_37_1) {
      if (b_36_1) {
        
        // -- Check definedness of x.f == 1
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@70.3--70.49) [215836]"}
            HasDirectPerm(Result_8Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 1 might not hold. (package.vpr@70.3--70.49) [215837]"}
      (b_36_1 && b_36_1) && b_37_1 ==> Result_8Heap[x, f_7] == 1;
    Mask := Mask[null, wand_2(true, x, FullPerm, x, 1):=Mask[null, wand_2(true, x, FullPerm, x, 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.g, write) && x.g == 1 --* acc(x.g, write) && x.g == 1 {
  // } -- package.vpr@71.3--71.74
    havoc Ops_21Heap;
    Ops_21Mask := ZeroMask;
    b_40 := b_40 && state(Ops_21Heap, Ops_21Mask);
    havoc Used_20Heap;
    Used_20Mask := ZeroMask;
    b_39 := b_39 && state(Used_20Heap, Used_20Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_40) {
      if (b_40) {
        perm := FullPerm;
        b_40 := b_40 && x != null;
        Ops_21Mask := Ops_21Mask[x, g:=Ops_21Mask[x, g] + perm];
        b_40 := b_40 && state(Ops_21Heap, Ops_21Mask);
      }
      if (b_40) {
        if (b_40) {
          
          // -- Check definedness of x.g == 1
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (package.vpr@71.3--71.74) [215838]"}
              HasDirectPerm(Ops_21Mask, x, g);
        }
        b_40 := b_40 && Ops_21Heap[x, g] == 1;
      }
    }
    b_40 := b_40 && state(Ops_21Heap, Ops_21Mask);
    
    // -- Translating statement: label lhs21 -- package.vpr@71.11--71.74
      lhs21:
      Labellhs21Heap := Ops_21Heap;
      Labellhs21Mask := Ops_21Mask;
      b_40 := b_40 && state(Ops_21Heap, Ops_21Mask);
    boolCur_10 := true;
    // Translating exec of non-ghost operationacc(x.g, write) && x.g == 1
    havoc Used_21Heap;
    Used_21Mask := ZeroMask;
    b_41 := b_41 && state(Used_21Heap, Used_21Mask);
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_21Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (package.vpr@71.3--71.74) [215839]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_40 && b_40) && b_41) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_21Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_21Mask := Used_21Mask[rcvLocal, g:=Used_21Mask[rcvLocal, g] + takeTransfer];
            b_41 := b_41 && state(Used_21Heap, Used_21Mask);
            b_41 := b_41 && Ops_21Heap[rcvLocal, g] == Used_21Heap[rcvLocal, g];
            Ops_21Mask := Ops_21Mask[rcvLocal, g:=Ops_21Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_40 && b_40) && b_41) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_21Mask := Used_21Mask[rcvLocal, g:=Used_21Mask[rcvLocal, g] + takeTransfer];
            b_41 := b_41 && state(Used_21Heap, Used_21Mask);
            b_41 := b_41 && Heap[rcvLocal, g] == Used_21Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_5#sm(x, FullPerm, x, 1, x, FullPerm, x, 1):=Heap[null, wand_5#sm(x, FullPerm, x, 1, x, FullPerm, x, 1)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (package.vpr@71.3--71.74) [215840]"}
        (b_40 && b_40) && b_41 ==> neededTransfer == 0.000000000 && Used_21Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_42 := b_40 && b_41;
        b_42 := b_42 && state(Result_9Heap, Result_9Mask);
        b_42 := b_42 && sumMask(Result_9Mask, Ops_21Mask, Used_21Mask);
        b_42 := (b_42 && IdenticalOnKnownLocations(Ops_21Heap, Result_9Heap, Ops_21Mask)) && IdenticalOnKnownLocations(Used_21Heap, Result_9Heap, Used_21Mask);
        b_42 := b_42 && state(Result_9Heap, Result_9Mask);
      b_40 := b_40 && b_42;
    if ((b_40 && b_40) && b_41) {
      if (b_40) {
        
        // -- Check definedness of x.g == 1
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (package.vpr@71.3--71.74) [215841]"}
            HasDirectPerm(Result_9Mask, x, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.g == 1 might not hold. (package.vpr@71.3--71.74) [215842]"}
      (b_40 && b_40) && b_41 ==> Result_9Heap[x, g] == 1;
    Mask := Mask[null, wand_5(x, FullPerm, x, 1, x, FullPerm, x, 1):=Mask[null, wand_5(x, FullPerm, x, 1, x, FullPerm, x, 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test11
// ==================================================

procedure test11(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_23Heap: HeapType;
  var Ops_23Mask: MaskType;
  var b_44: bool;
  var Used_22Heap: HeapType;
  var Used_22Mask: MaskType;
  var b_43: bool;
  var Labellhs23Heap: HeapType;
  var Labellhs23Mask: MaskType;
  var boolCur_11: bool;
  var Used_23Heap: HeapType;
  var Used_23Mask: MaskType;
  var b_45: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_46: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var b_47: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 1 -- package.vpr@78.3--78.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (package.vpr@78.3--78.11) [215843]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.g, write) && x.g == 1 --*
  // acc(x.g, write) && (x.g == 1 && (acc(x.f, write) && x.f == 1)) {
  // } -- package.vpr@80.3--83.65
    havoc Ops_23Heap;
    Ops_23Mask := ZeroMask;
    b_44 := b_44 && state(Ops_23Heap, Ops_23Mask);
    havoc Used_22Heap;
    Used_22Mask := ZeroMask;
    b_43 := b_43 && state(Used_22Heap, Used_22Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_44) {
      if (b_44) {
        perm := FullPerm;
        b_44 := b_44 && x != null;
        Ops_23Mask := Ops_23Mask[x, g:=Ops_23Mask[x, g] + perm];
        b_44 := b_44 && state(Ops_23Heap, Ops_23Mask);
      }
      if (b_44) {
        if (b_44) {
          
          // -- Check definedness of x.g == 1
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (package.vpr@80.3--83.65) [215844]"}
              HasDirectPerm(Ops_23Mask, x, g);
        }
        b_44 := b_44 && Ops_23Heap[x, g] == 1;
      }
    }
    b_44 := b_44 && state(Ops_23Heap, Ops_23Mask);
    
    // -- Translating statement: label lhs23 -- package.vpr@81.5--83.65
      lhs23:
      Labellhs23Heap := Ops_23Heap;
      Labellhs23Mask := Ops_23Mask;
      b_44 := b_44 && state(Ops_23Heap, Ops_23Mask);
    boolCur_11 := true;
    // Translating exec of non-ghost operationacc(x.g, write) && (x.g == 1 && (acc(x.f, write) && x.f == 1))
    havoc Used_23Heap;
    Used_23Mask := ZeroMask;
    b_45 := b_45 && state(Used_23Heap, Used_23Mask);
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_23Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (package.vpr@80.3--83.65) [215845]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_44 && b_44) && b_45) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_23Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_23Mask := Used_23Mask[rcvLocal, g:=Used_23Mask[rcvLocal, g] + takeTransfer];
            b_45 := b_45 && state(Used_23Heap, Used_23Mask);
            b_45 := b_45 && Ops_23Heap[rcvLocal, g] == Used_23Heap[rcvLocal, g];
            Ops_23Mask := Ops_23Mask[rcvLocal, g:=Ops_23Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_44 && b_44) && b_45) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_23Mask := Used_23Mask[rcvLocal, g:=Used_23Mask[rcvLocal, g] + takeTransfer];
            b_45 := b_45 && state(Used_23Heap, Used_23Mask);
            b_45 := b_45 && Heap[rcvLocal, g] == Used_23Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_6#sm(x, FullPerm, x, 1, x, FullPerm, x, 1, x, FullPerm, x, 1):=Heap[null, wand_6#sm(x, FullPerm, x, 1, x, FullPerm, x, 1, x, FullPerm, x, 1)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (package.vpr@80.3--83.65) [215846]"}
        (b_44 && b_44) && b_45 ==> neededTransfer == 0.000000000 && Used_23Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_46 := b_44 && b_45;
        b_46 := b_46 && state(Result_10Heap, Result_10Mask);
        b_46 := b_46 && sumMask(Result_10Mask, Ops_23Mask, Used_23Mask);
        b_46 := (b_46 && IdenticalOnKnownLocations(Ops_23Heap, Result_10Heap, Ops_23Mask)) && IdenticalOnKnownLocations(Used_23Heap, Result_10Heap, Used_23Mask);
        b_46 := b_46 && state(Result_10Heap, Result_10Mask);
      b_44 := b_44 && b_46;
    if ((b_44 && b_44) && b_45) {
      if (b_44) {
        
        // -- Check definedness of x.g == 1
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (package.vpr@80.3--83.65) [215847]"}
            HasDirectPerm(Result_10Mask, x, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.g == 1 might not hold. (package.vpr@80.3--83.65) [215848]"}
      (b_44 && b_44) && b_45 ==> Result_10Heap[x, g] == 1;
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_23Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@80.3--83.65) [215849]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_44 && b_44) && b_45) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_23Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_23Mask := Used_23Mask[rcvLocal, f_7:=Used_23Mask[rcvLocal, f_7] + takeTransfer];
            b_45 := b_45 && state(Used_23Heap, Used_23Mask);
            b_45 := b_45 && Ops_23Heap[rcvLocal, f_7] == Used_23Heap[rcvLocal, f_7];
            Ops_23Mask := Ops_23Mask[rcvLocal, f_7:=Ops_23Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_44 && b_44) && b_45) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_23Mask := Used_23Mask[rcvLocal, f_7:=Used_23Mask[rcvLocal, f_7] + takeTransfer];
            b_45 := b_45 && state(Used_23Heap, Used_23Mask);
            b_45 := b_45 && Heap[rcvLocal, f_7] == Used_23Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_6#sm(x, FullPerm, x, 1, x, FullPerm, x, 1, x, FullPerm, x, 1):=Heap[null, wand_6#sm(x, FullPerm, x, 1, x, FullPerm, x, 1, x, FullPerm, x, 1)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@80.3--83.65) [215850]"}
        (b_44 && b_44) && b_45 ==> neededTransfer == 0.000000000 && Used_23Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_47 := b_44 && b_45;
        b_47 := b_47 && state(Result_11Heap, Result_11Mask);
        b_47 := b_47 && sumMask(Result_11Mask, Ops_23Mask, Used_23Mask);
        b_47 := (b_47 && IdenticalOnKnownLocations(Ops_23Heap, Result_11Heap, Ops_23Mask)) && IdenticalOnKnownLocations(Used_23Heap, Result_11Heap, Used_23Mask);
        b_47 := b_47 && state(Result_11Heap, Result_11Mask);
      b_44 := b_44 && b_47;
    if ((b_44 && b_44) && b_45) {
      if (b_44) {
        
        // -- Check definedness of x.f == 1
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@80.3--83.65) [215851]"}
            HasDirectPerm(Result_11Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 1 might not hold. (package.vpr@80.3--83.65) [215852]"}
      (b_44 && b_44) && b_45 ==> Result_11Heap[x, f_7] == 1;
    Mask := Mask[null, wand_6(x, FullPerm, x, 1, x, FullPerm, x, 1, x, FullPerm, x, 1):=Mask[null, wand_6(x, FullPerm, x, 1, x, FullPerm, x, 1, x, FullPerm, x, 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test12
// ==================================================

procedure test12(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_25Heap: HeapType;
  var Ops_25Mask: MaskType;
  var b_49: bool;
  var Used_24Heap: HeapType;
  var Used_24Mask: MaskType;
  var b_48: bool;
  var Labellhs25Heap: HeapType;
  var Labellhs25Mask: MaskType;
  var boolCur_12: bool;
  var Used_25Heap: HeapType;
  var Used_25Mask: MaskType;
  var b_50: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package false --* false {
  // } -- package.vpr@91.3--91.26
    havoc Ops_25Heap;
    Ops_25Mask := ZeroMask;
    b_49 := b_49 && state(Ops_25Heap, Ops_25Mask);
    havoc Used_24Heap;
    Used_24Mask := ZeroMask;
    b_48 := b_48 && state(Used_24Heap, Used_24Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_49) {
      b_49 := false;
    }
    b_49 := b_49 && state(Ops_25Heap, Ops_25Mask);
    
    // -- Translating statement: label lhs25 -- package.vpr@91.11--91.26
      lhs25:
      Labellhs25Heap := Ops_25Heap;
      Labellhs25Mask := Ops_25Mask;
      b_49 := b_49 && state(Ops_25Heap, Ops_25Mask);
    boolCur_12 := true;
    // Translating exec of non-ghost operationfalse
    havoc Used_25Heap;
    Used_25Mask := ZeroMask;
    b_50 := b_50 && state(Used_25Heap, Used_25Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@91.3--91.26) [215853]"}
      (b_49 && b_49) && b_50 ==> false;
    Mask := Mask[null, wand_7(false, false):=Mask[null, wand_7(false, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package.vpr@93.3--93.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package.vpr@93.10--93.15) [215854]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test13
// ==================================================

procedure test13(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_27Heap: HeapType;
  var Ops_27Mask: MaskType;
  var b_52: bool;
  var Used_26Heap: HeapType;
  var Used_26Mask: MaskType;
  var b_51: bool;
  var Labellhs27Heap: HeapType;
  var Labellhs27Mask: MaskType;
  var boolCur_13: bool;
  var Ops_29Heap: HeapType;
  var Ops_29Mask: MaskType;
  var b_54: bool;
  var Used_27Heap: HeapType;
  var Used_27Mask: MaskType;
  var b_53: bool;
  var Labellhs29Heap: HeapType;
  var Labellhs29Mask: MaskType;
  var boolCur_14: bool;
  var Used_28Heap: HeapType;
  var Used_28Mask: MaskType;
  var b_55: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_56: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var b_57: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var Used_29Heap: HeapType;
  var Used_29Mask: MaskType;
  var b_58: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) --* false {
  //   package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  //   }
  // } -- package.vpr@100.3--102.4
    havoc Ops_27Heap;
    Ops_27Mask := ZeroMask;
    b_52 := b_52 && state(Ops_27Heap, Ops_27Mask);
    havoc Used_26Heap;
    Used_26Mask := ZeroMask;
    b_51 := b_51 && state(Used_26Heap, Used_26Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_52) {
      perm := FullPerm;
      b_52 := b_52 && x != null;
      Ops_27Mask := Ops_27Mask[x, f_7:=Ops_27Mask[x, f_7] + perm];
      b_52 := b_52 && state(Ops_27Heap, Ops_27Mask);
    }
    b_52 := b_52 && state(Ops_27Heap, Ops_27Mask);
    
    // -- Translating statement: label lhs27 -- package.vpr@100.11--100.31
      lhs27:
      Labellhs27Heap := Ops_27Heap;
      Labellhs27Mask := Ops_27Mask;
      b_52 := b_52 && state(Ops_27Heap, Ops_27Mask);
    boolCur_13 := true;
    if (b_52) {
      
      // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  // } -- package.vpr@101.7--101.59
        havoc Ops_29Heap;
        Ops_29Mask := ZeroMask;
        b_54 := b_54 && state(Ops_29Heap, Ops_29Mask);
        havoc Used_27Heap;
        Used_27Mask := ZeroMask;
        b_53 := b_53 && state(Used_27Heap, Used_27Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_54) {
          perm := FullPerm;
          b_54 := b_54 && x != null;
          Ops_29Mask := Ops_29Mask[x, f_7:=Ops_29Mask[x, f_7] + perm];
          b_54 := b_54 && state(Ops_29Heap, Ops_29Mask);
        }
        b_54 := b_54 && state(Ops_29Heap, Ops_29Mask);
        
        // -- Translating statement: label lhs29 -- package.vpr@101.16--101.58
          lhs29:
          Labellhs29Heap := Ops_29Heap;
          Labellhs29Mask := Ops_29Mask;
          b_54 := b_54 && state(Ops_29Heap, Ops_29Mask);
        boolCur_14 := true;
        // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.f, write) && false)
        havoc Used_28Heap;
        Used_28Mask := ZeroMask;
        b_55 := b_55 && state(Used_28Heap, Used_28Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_28Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@101.7--101.59) [215855]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_54 && (b_54 && b_52)) && b_55) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_29Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_28Mask := Used_28Mask[rcvLocal, f_7:=Used_28Mask[rcvLocal, f_7] + takeTransfer];
                b_55 := b_55 && state(Used_28Heap, Used_28Mask);
                b_55 := b_55 && Ops_29Heap[rcvLocal, f_7] == Used_28Heap[rcvLocal, f_7];
                Ops_29Mask := Ops_29Mask[rcvLocal, f_7:=Ops_29Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_54 && (b_54 && b_52)) && b_55) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_27Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_28Mask := Used_28Mask[rcvLocal, f_7:=Used_28Mask[rcvLocal, f_7] + takeTransfer];
                b_55 := b_55 && state(Used_28Heap, Used_28Mask);
                b_55 := b_55 && Ops_27Heap[rcvLocal, f_7] == Used_28Heap[rcvLocal, f_7];
                Ops_27Mask := Ops_27Mask[rcvLocal, f_7:=Ops_27Mask[rcvLocal, f_7] - takeTransfer];
                Ops_27Heap := Ops_27Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_27Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_54 && (b_54 && b_52)) && b_55) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_28Mask := Used_28Mask[rcvLocal, f_7:=Used_28Mask[rcvLocal, f_7] + takeTransfer];
                b_55 := b_55 && state(Used_28Heap, Used_28Mask);
                b_55 := b_55 && Heap[rcvLocal, f_7] == Used_28Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@101.7--101.59) [215856]"}
            (b_54 && (b_54 && b_52)) && b_55 ==> neededTransfer == 0.000000000 && Used_28Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_56 := b_54 && b_55;
            b_56 := b_56 && state(Result_12Heap, Result_12Mask);
            b_56 := b_56 && sumMask(Result_12Mask, Ops_29Mask, Used_28Mask);
            b_56 := (b_56 && IdenticalOnKnownLocations(Ops_29Heap, Result_12Heap, Ops_29Mask)) && IdenticalOnKnownLocations(Used_28Heap, Result_12Heap, Used_28Mask);
            b_56 := b_56 && state(Result_12Heap, Result_12Mask);
          b_54 := b_54 && b_56;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_28Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@101.7--101.59) [215857]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_54 && (b_54 && b_52)) && b_55) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_29Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_28Mask := Used_28Mask[rcvLocal, f_7:=Used_28Mask[rcvLocal, f_7] + takeTransfer];
                b_55 := b_55 && state(Used_28Heap, Used_28Mask);
                b_55 := b_55 && Ops_29Heap[rcvLocal, f_7] == Used_28Heap[rcvLocal, f_7];
                Ops_29Mask := Ops_29Mask[rcvLocal, f_7:=Ops_29Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_54 && (b_54 && b_52)) && b_55) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_27Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_28Mask := Used_28Mask[rcvLocal, f_7:=Used_28Mask[rcvLocal, f_7] + takeTransfer];
                b_55 := b_55 && state(Used_28Heap, Used_28Mask);
                b_55 := b_55 && Ops_27Heap[rcvLocal, f_7] == Used_28Heap[rcvLocal, f_7];
                Ops_27Mask := Ops_27Mask[rcvLocal, f_7:=Ops_27Mask[rcvLocal, f_7] - takeTransfer];
                Ops_27Heap := Ops_27Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_27Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_54 && (b_54 && b_52)) && b_55) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_28Mask := Used_28Mask[rcvLocal, f_7:=Used_28Mask[rcvLocal, f_7] + takeTransfer];
                b_55 := b_55 && state(Used_28Heap, Used_28Mask);
                b_55 := b_55 && Heap[rcvLocal, f_7] == Used_28Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@101.7--101.59) [215858]"}
            (b_54 && (b_54 && b_52)) && b_55 ==> neededTransfer == 0.000000000 && Used_28Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_57 := b_54 && b_55;
            b_57 := b_57 && state(Result_13Heap, Result_13Mask);
            b_57 := b_57 && sumMask(Result_13Mask, Ops_29Mask, Used_28Mask);
            b_57 := (b_57 && IdenticalOnKnownLocations(Ops_29Heap, Result_13Heap, Ops_29Mask)) && IdenticalOnKnownLocations(Used_28Heap, Result_13Heap, Used_28Mask);
            b_57 := b_57 && state(Result_13Heap, Result_13Mask);
          b_54 := b_54 && b_57;
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@101.7--101.59) [215859]"}
          (b_54 && (b_54 && b_52)) && b_55 ==> false;
        Ops_27Mask := Ops_27Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_27Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + FullPerm];
        b_52 := b_52 && state(Ops_27Heap, Ops_27Mask);
        b_52 := b_52 && state(Ops_27Heap, Ops_27Mask);
        b_52 := b_52 && state(Ops_27Heap, Ops_27Mask);
    }
    // Translating exec of non-ghost operationfalse
    havoc Used_29Heap;
    Used_29Mask := ZeroMask;
    b_58 := b_58 && state(Used_29Heap, Used_29Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@100.3--102.4) [215860]"}
      (b_52 && b_52) && b_58 ==> false;
    Mask := Mask[null, wand_8(x, FullPerm, false):=Mask[null, wand_8(x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test14
// ==================================================

procedure test14(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_31Heap: HeapType;
  var Ops_31Mask: MaskType;
  var b_60: bool;
  var Used_30Heap: HeapType;
  var Used_30Mask: MaskType;
  var b_59: bool;
  var perm: Perm;
  var Labellhs31Heap: HeapType;
  var Labellhs31Mask: MaskType;
  var boolCur_15: bool;
  var Used_31Heap: HeapType;
  var Used_31Mask: MaskType;
  var b_61: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
  
  // -- Translating statement: package acc(x.f, write) && acc(x.f, write) --* false {
  // } -- package.vpr@106.3--106.41
    havoc Ops_31Heap;
    Ops_31Mask := ZeroMask;
    b_60 := b_60 && state(Ops_31Heap, Ops_31Mask);
    havoc Used_30Heap;
    Used_30Mask := ZeroMask;
    b_59 := b_59 && state(Used_30Heap, Used_30Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_60) {
      if (b_60) {
        perm := FullPerm;
        b_60 := b_60 && x != null;
        Ops_31Mask := Ops_31Mask[x, f_7:=Ops_31Mask[x, f_7] + perm];
        b_60 := b_60 && state(Ops_31Heap, Ops_31Mask);
      }
      if (b_60) {
        perm := FullPerm;
        b_60 := b_60 && x != null;
        Ops_31Mask := Ops_31Mask[x, f_7:=Ops_31Mask[x, f_7] + perm];
        b_60 := b_60 && state(Ops_31Heap, Ops_31Mask);
      }
    }
    b_60 := b_60 && state(Ops_31Heap, Ops_31Mask);
    
    // -- Translating statement: label lhs31 -- package.vpr@106.11--106.41
      lhs31:
      Labellhs31Heap := Ops_31Heap;
      Labellhs31Mask := Ops_31Mask;
      b_60 := b_60 && state(Ops_31Heap, Ops_31Mask);
    boolCur_15 := true;
    // Translating exec of non-ghost operationfalse
    havoc Used_31Heap;
    Used_31Mask := ZeroMask;
    b_61 := b_61 && state(Used_31Heap, Used_31Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@106.3--106.41) [215861]"}
      (b_60 && b_60) && b_61 ==> false;
    Mask := Mask[null, wand_10(x, FullPerm, x, FullPerm, false):=Mask[null, wand_10(x, FullPerm, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package.vpr@108.3--108.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package.vpr@108.10--108.15) [215862]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test15
// ==================================================

procedure test15(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_33Heap: HeapType;
  var Ops_33Mask: MaskType;
  var b_63: bool;
  var Used_32Heap: HeapType;
  var Used_32Mask: MaskType;
  var b_62: bool;
  var Labellhs33Heap: HeapType;
  var Labellhs33Mask: MaskType;
  var boolCur_16: bool;
  var Ops_35Heap: HeapType;
  var Ops_35Mask: MaskType;
  var b_65: bool;
  var Used_33Heap: HeapType;
  var Used_33Mask: MaskType;
  var b_64: bool;
  var Labellhs35Heap: HeapType;
  var Labellhs35Mask: MaskType;
  var boolCur_17: bool;
  var Used_34Heap: HeapType;
  var Used_34Mask: MaskType;
  var b_66: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_67: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var b_68: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var Used_35Heap: HeapType;
  var Used_35Mask: MaskType;
  var b_69: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs37Heap: HeapType;
  var Labellhs37Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) --* true {
  //   package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  //   }
  // } -- package.vpr@115.3--117.4
    havoc Ops_33Heap;
    Ops_33Mask := ZeroMask;
    b_63 := b_63 && state(Ops_33Heap, Ops_33Mask);
    havoc Used_32Heap;
    Used_32Mask := ZeroMask;
    b_62 := b_62 && state(Used_32Heap, Used_32Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_63) {
      perm := FullPerm;
      b_63 := b_63 && x != null;
      Ops_33Mask := Ops_33Mask[x, f_7:=Ops_33Mask[x, f_7] + perm];
      b_63 := b_63 && state(Ops_33Heap, Ops_33Mask);
    }
    b_63 := b_63 && state(Ops_33Heap, Ops_33Mask);
    
    // -- Translating statement: label lhs33 -- package.vpr@115.11--115.30
      lhs33:
      Labellhs33Heap := Ops_33Heap;
      Labellhs33Mask := Ops_33Mask;
      b_63 := b_63 && state(Ops_33Heap, Ops_33Mask);
    boolCur_16 := true;
    if (b_63) {
      
      // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  // } -- package.vpr@116.7--116.59
        havoc Ops_35Heap;
        Ops_35Mask := ZeroMask;
        b_65 := b_65 && state(Ops_35Heap, Ops_35Mask);
        havoc Used_33Heap;
        Used_33Mask := ZeroMask;
        b_64 := b_64 && state(Used_33Heap, Used_33Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_65) {
          perm := FullPerm;
          b_65 := b_65 && x != null;
          Ops_35Mask := Ops_35Mask[x, f_7:=Ops_35Mask[x, f_7] + perm];
          b_65 := b_65 && state(Ops_35Heap, Ops_35Mask);
        }
        b_65 := b_65 && state(Ops_35Heap, Ops_35Mask);
        
        // -- Translating statement: label lhs35 -- package.vpr@116.16--116.58
          lhs35:
          Labellhs35Heap := Ops_35Heap;
          Labellhs35Mask := Ops_35Mask;
          b_65 := b_65 && state(Ops_35Heap, Ops_35Mask);
        boolCur_17 := true;
        // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.f, write) && false)
        havoc Used_34Heap;
        Used_34Mask := ZeroMask;
        b_66 := b_66 && state(Used_34Heap, Used_34Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_34Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@116.7--116.59) [215863]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_65 && (b_65 && b_63)) && b_66) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_35Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[rcvLocal, f_7:=Used_34Mask[rcvLocal, f_7] + takeTransfer];
                b_66 := b_66 && state(Used_34Heap, Used_34Mask);
                b_66 := b_66 && Ops_35Heap[rcvLocal, f_7] == Used_34Heap[rcvLocal, f_7];
                Ops_35Mask := Ops_35Mask[rcvLocal, f_7:=Ops_35Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_65 && (b_65 && b_63)) && b_66) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_33Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[rcvLocal, f_7:=Used_34Mask[rcvLocal, f_7] + takeTransfer];
                b_66 := b_66 && state(Used_34Heap, Used_34Mask);
                b_66 := b_66 && Ops_33Heap[rcvLocal, f_7] == Used_34Heap[rcvLocal, f_7];
                Ops_33Mask := Ops_33Mask[rcvLocal, f_7:=Ops_33Mask[rcvLocal, f_7] - takeTransfer];
                Ops_33Heap := Ops_33Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_33Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_65 && (b_65 && b_63)) && b_66) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[rcvLocal, f_7:=Used_34Mask[rcvLocal, f_7] + takeTransfer];
                b_66 := b_66 && state(Used_34Heap, Used_34Mask);
                b_66 := b_66 && Heap[rcvLocal, f_7] == Used_34Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@116.7--116.59) [215864]"}
            (b_65 && (b_65 && b_63)) && b_66 ==> neededTransfer == 0.000000000 && Used_34Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_67 := b_65 && b_66;
            b_67 := b_67 && state(Result_14Heap, Result_14Mask);
            b_67 := b_67 && sumMask(Result_14Mask, Ops_35Mask, Used_34Mask);
            b_67 := (b_67 && IdenticalOnKnownLocations(Ops_35Heap, Result_14Heap, Ops_35Mask)) && IdenticalOnKnownLocations(Used_34Heap, Result_14Heap, Used_34Mask);
            b_67 := b_67 && state(Result_14Heap, Result_14Mask);
          b_65 := b_65 && b_67;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_34Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@116.7--116.59) [215865]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_65 && (b_65 && b_63)) && b_66) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_35Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[rcvLocal, f_7:=Used_34Mask[rcvLocal, f_7] + takeTransfer];
                b_66 := b_66 && state(Used_34Heap, Used_34Mask);
                b_66 := b_66 && Ops_35Heap[rcvLocal, f_7] == Used_34Heap[rcvLocal, f_7];
                Ops_35Mask := Ops_35Mask[rcvLocal, f_7:=Ops_35Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_65 && (b_65 && b_63)) && b_66) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_33Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[rcvLocal, f_7:=Used_34Mask[rcvLocal, f_7] + takeTransfer];
                b_66 := b_66 && state(Used_34Heap, Used_34Mask);
                b_66 := b_66 && Ops_33Heap[rcvLocal, f_7] == Used_34Heap[rcvLocal, f_7];
                Ops_33Mask := Ops_33Mask[rcvLocal, f_7:=Ops_33Mask[rcvLocal, f_7] - takeTransfer];
                Ops_33Heap := Ops_33Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_33Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_65 && (b_65 && b_63)) && b_66) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_34Mask := Used_34Mask[rcvLocal, f_7:=Used_34Mask[rcvLocal, f_7] + takeTransfer];
                b_66 := b_66 && state(Used_34Heap, Used_34Mask);
                b_66 := b_66 && Heap[rcvLocal, f_7] == Used_34Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@116.7--116.59) [215866]"}
            (b_65 && (b_65 && b_63)) && b_66 ==> neededTransfer == 0.000000000 && Used_34Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_68 := b_65 && b_66;
            b_68 := b_68 && state(Result_15Heap, Result_15Mask);
            b_68 := b_68 && sumMask(Result_15Mask, Ops_35Mask, Used_34Mask);
            b_68 := (b_68 && IdenticalOnKnownLocations(Ops_35Heap, Result_15Heap, Ops_35Mask)) && IdenticalOnKnownLocations(Used_34Heap, Result_15Heap, Used_34Mask);
            b_68 := b_68 && state(Result_15Heap, Result_15Mask);
          b_65 := b_65 && b_68;
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@116.7--116.59) [215867]"}
          (b_65 && (b_65 && b_63)) && b_66 ==> false;
        Ops_33Mask := Ops_33Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_33Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + FullPerm];
        b_63 := b_63 && state(Ops_33Heap, Ops_33Mask);
        b_63 := b_63 && state(Ops_33Heap, Ops_33Mask);
        b_63 := b_63 && state(Ops_33Heap, Ops_33Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_35Heap;
    Used_35Mask := ZeroMask;
    b_69 := b_69 && state(Used_35Heap, Used_35Mask);
    Mask := Mask[null, wand_8(x, FullPerm, true):=Mask[null, wand_8(x, FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, write) --* true -- package.vpr@119.3--119.27
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(x.f, write) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs37 -- package.vpr@119.10--119.27
          lhs37:
          Labellhs37Heap := WandDefLHSHeap;
          Labellhs37Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (package.vpr@119.10--119.27) [215869]"}
      FullPerm <= AssertMask[null, wand_8(x, FullPerm, true)];
    AssertMask := AssertMask[null, wand_8(x, FullPerm, true):=AssertMask[null, wand_8(x, FullPerm, true)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package.vpr@121.3--121.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package.vpr@121.10--121.15) [215870]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test16
// ==================================================

procedure test16(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_37Heap: HeapType;
  var Ops_37Mask: MaskType;
  var b_71: bool;
  var Used_36Heap: HeapType;
  var Used_36Mask: MaskType;
  var b_70: bool;
  var Labellhs38Heap: HeapType;
  var Labellhs38Mask: MaskType;
  var boolCur_18: bool;
  var Ops_39Heap: HeapType;
  var Ops_39Mask: MaskType;
  var b_73: bool;
  var Used_37Heap: HeapType;
  var Used_37Mask: MaskType;
  var b_72: bool;
  var Labellhs40Heap: HeapType;
  var Labellhs40Mask: MaskType;
  var boolCur_19: bool;
  var Used_38Heap: HeapType;
  var Used_38Mask: MaskType;
  var b_74: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_75: bool;
  var Result_16Heap: HeapType;
  var Result_16Mask: MaskType;
  var b_76: bool;
  var Result_17Heap: HeapType;
  var Result_17Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_39Heap: HeapType;
  var Used_39Mask: MaskType;
  var b_77: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs43Heap: HeapType;
  var Labellhs43Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_78: bool;
  var Result_18Heap: HeapType;
  var Result_18Mask: MaskType;
  var Used_40Heap: HeapType;
  var Used_40Mask: MaskType;
  var b_79: bool;
  var b_80: bool;
  var Result_19Heap: HeapType;
  var Result_19Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_41Heap: HeapType;
  var Used_41Mask: MaskType;
  var b_81: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) --* false {
  //   package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  //   }
  //   apply acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false)
  // } -- package.vpr@128.3--131.4
    havoc Ops_37Heap;
    Ops_37Mask := ZeroMask;
    b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
    havoc Used_36Heap;
    Used_36Mask := ZeroMask;
    b_70 := b_70 && state(Used_36Heap, Used_36Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_71) {
      perm := FullPerm;
      b_71 := b_71 && x != null;
      Ops_37Mask := Ops_37Mask[x, f_7:=Ops_37Mask[x, f_7] + perm];
      b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
    }
    b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
    
    // -- Translating statement: label lhs38 -- package.vpr@128.11--128.31
      lhs38:
      Labellhs38Heap := Ops_37Heap;
      Labellhs38Mask := Ops_37Mask;
      b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
    boolCur_18 := true;
    if (b_71) {
      
      // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  // } -- package.vpr@129.7--129.59
        havoc Ops_39Heap;
        Ops_39Mask := ZeroMask;
        b_73 := b_73 && state(Ops_39Heap, Ops_39Mask);
        havoc Used_37Heap;
        Used_37Mask := ZeroMask;
        b_72 := b_72 && state(Used_37Heap, Used_37Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_73) {
          perm := FullPerm;
          b_73 := b_73 && x != null;
          Ops_39Mask := Ops_39Mask[x, f_7:=Ops_39Mask[x, f_7] + perm];
          b_73 := b_73 && state(Ops_39Heap, Ops_39Mask);
        }
        b_73 := b_73 && state(Ops_39Heap, Ops_39Mask);
        
        // -- Translating statement: label lhs40 -- package.vpr@129.16--129.58
          lhs40:
          Labellhs40Heap := Ops_39Heap;
          Labellhs40Mask := Ops_39Mask;
          b_73 := b_73 && state(Ops_39Heap, Ops_39Mask);
        boolCur_19 := true;
        // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.f, write) && false)
        havoc Used_38Heap;
        Used_38Mask := ZeroMask;
        b_74 := b_74 && state(Used_38Heap, Used_38Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_38Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@129.7--129.59) [215871]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_73 && (b_73 && b_71)) && b_74) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_39Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_38Mask := Used_38Mask[rcvLocal, f_7:=Used_38Mask[rcvLocal, f_7] + takeTransfer];
                b_74 := b_74 && state(Used_38Heap, Used_38Mask);
                b_74 := b_74 && Ops_39Heap[rcvLocal, f_7] == Used_38Heap[rcvLocal, f_7];
                Ops_39Mask := Ops_39Mask[rcvLocal, f_7:=Ops_39Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_73 && (b_73 && b_71)) && b_74) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_37Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_38Mask := Used_38Mask[rcvLocal, f_7:=Used_38Mask[rcvLocal, f_7] + takeTransfer];
                b_74 := b_74 && state(Used_38Heap, Used_38Mask);
                b_74 := b_74 && Ops_37Heap[rcvLocal, f_7] == Used_38Heap[rcvLocal, f_7];
                Ops_37Mask := Ops_37Mask[rcvLocal, f_7:=Ops_37Mask[rcvLocal, f_7] - takeTransfer];
                Ops_37Heap := Ops_37Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_37Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_73 && (b_73 && b_71)) && b_74) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_38Mask := Used_38Mask[rcvLocal, f_7:=Used_38Mask[rcvLocal, f_7] + takeTransfer];
                b_74 := b_74 && state(Used_38Heap, Used_38Mask);
                b_74 := b_74 && Heap[rcvLocal, f_7] == Used_38Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@129.7--129.59) [215872]"}
            (b_73 && (b_73 && b_71)) && b_74 ==> neededTransfer == 0.000000000 && Used_38Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_75 := b_73 && b_74;
            b_75 := b_75 && state(Result_16Heap, Result_16Mask);
            b_75 := b_75 && sumMask(Result_16Mask, Ops_39Mask, Used_38Mask);
            b_75 := (b_75 && IdenticalOnKnownLocations(Ops_39Heap, Result_16Heap, Ops_39Mask)) && IdenticalOnKnownLocations(Used_38Heap, Result_16Heap, Used_38Mask);
            b_75 := b_75 && state(Result_16Heap, Result_16Mask);
          b_73 := b_73 && b_75;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_38Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@129.7--129.59) [215873]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_73 && (b_73 && b_71)) && b_74) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_39Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_38Mask := Used_38Mask[rcvLocal, f_7:=Used_38Mask[rcvLocal, f_7] + takeTransfer];
                b_74 := b_74 && state(Used_38Heap, Used_38Mask);
                b_74 := b_74 && Ops_39Heap[rcvLocal, f_7] == Used_38Heap[rcvLocal, f_7];
                Ops_39Mask := Ops_39Mask[rcvLocal, f_7:=Ops_39Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_73 && (b_73 && b_71)) && b_74) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_37Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_38Mask := Used_38Mask[rcvLocal, f_7:=Used_38Mask[rcvLocal, f_7] + takeTransfer];
                b_74 := b_74 && state(Used_38Heap, Used_38Mask);
                b_74 := b_74 && Ops_37Heap[rcvLocal, f_7] == Used_38Heap[rcvLocal, f_7];
                Ops_37Mask := Ops_37Mask[rcvLocal, f_7:=Ops_37Mask[rcvLocal, f_7] - takeTransfer];
                Ops_37Heap := Ops_37Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_37Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_73 && (b_73 && b_71)) && b_74) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_38Mask := Used_38Mask[rcvLocal, f_7:=Used_38Mask[rcvLocal, f_7] + takeTransfer];
                b_74 := b_74 && state(Used_38Heap, Used_38Mask);
                b_74 := b_74 && Heap[rcvLocal, f_7] == Used_38Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@129.7--129.59) [215874]"}
            (b_73 && (b_73 && b_71)) && b_74 ==> neededTransfer == 0.000000000 && Used_38Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_76 := b_73 && b_74;
            b_76 := b_76 && state(Result_17Heap, Result_17Mask);
            b_76 := b_76 && sumMask(Result_17Mask, Ops_39Mask, Used_38Mask);
            b_76 := (b_76 && IdenticalOnKnownLocations(Ops_39Heap, Result_17Heap, Ops_39Mask)) && IdenticalOnKnownLocations(Used_38Heap, Result_17Heap, Used_38Mask);
            b_76 := b_76 && state(Result_17Heap, Result_17Mask);
          b_73 := b_73 && b_76;
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@129.7--129.59) [215875]"}
          (b_73 && (b_73 && b_71)) && b_74 ==> false;
        Ops_37Mask := Ops_37Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_37Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + FullPerm];
        b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
        b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
        b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
    }
    if (b_71) {
      
      // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) -- package.vpr@130.7--130.57
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_37Heap;
          ExhaleWellDef0Mask := Ops_37Mask;
          havoc Used_39Heap;
          Used_39Mask := ZeroMask;
          b_77 := b_77 && state(Used_39Heap, Used_39Mask);
          
          // -- Transfer of acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false)
            
            // -- checking if access predicate defined in used state
              if (b_71 && b_77) {
                if (b_71) {
                  
                  // -- Check definedness of acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      assume x != null;
                      WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs43 -- package.vpr@130.14--130.56
                        lhs43:
                        Labellhs43Heap := WandDefLHSHeap;
                        Labellhs43Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume x != null;
                      WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      perm := FullPerm;
                      assume x != null;
                      WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_39Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) might be negative. (package.vpr@130.7--130.57) [215876]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_71 && b_77) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_37Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_39Mask := Used_39Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Used_39Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + takeTransfer];
                  b_77 := b_77 && state(Used_39Heap, Used_39Mask);
                  Ops_37Mask := Ops_37Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_37Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_71 && b_77) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_39Mask := Used_39Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Used_39Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + takeTransfer];
                  b_77 := b_77 && state(Used_39Heap, Used_39Mask);
                  Mask := Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (package.vpr@130.7--130.57) [215877]"}
              b_71 && b_77 ==> neededTransfer == 0.000000000 && Used_39Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_78 := b_71 && b_77;
              b_78 := b_78 && state(Result_18Heap, Result_18Mask);
              b_78 := b_78 && sumMask(Result_18Mask, Ops_37Mask, Used_39Mask);
              b_78 := (b_78 && IdenticalOnKnownLocations(Ops_37Heap, Result_18Heap, Ops_37Mask)) && IdenticalOnKnownLocations(Used_39Heap, Result_18Heap, Used_39Mask);
              b_78 := b_78 && state(Result_18Heap, Result_18Mask);
            b_71 := b_71 && b_78;
          b_71 := b_71 && b_77;
          b_71 := b_71 && Used_39Heap == Ops_37Heap;
        b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_37Heap;
          ExhaleWellDef0Mask := Ops_37Mask;
          havoc Used_40Heap;
          Used_40Mask := ZeroMask;
          b_79 := b_79 && state(Used_40Heap, Used_40Mask);
          
          // -- Transfer of acc(x.f, write)
            rcvLocal := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_40Mask[rcvLocal, f_7] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@130.7--130.57) [215878]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_71 && b_79) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_37Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_40Mask := Used_40Mask[rcvLocal, f_7:=Used_40Mask[rcvLocal, f_7] + takeTransfer];
                  b_79 := b_79 && state(Used_40Heap, Used_40Mask);
                  b_79 := b_79 && Ops_37Heap[rcvLocal, f_7] == Used_40Heap[rcvLocal, f_7];
                  Ops_37Mask := Ops_37Mask[rcvLocal, f_7:=Ops_37Mask[rcvLocal, f_7] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_71 && b_79) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_40Mask := Used_40Mask[rcvLocal, f_7:=Used_40Mask[rcvLocal, f_7] + takeTransfer];
                  b_79 := b_79 && state(Used_40Heap, Used_40Mask);
                  b_79 := b_79 && Heap[rcvLocal, f_7] == Used_40Heap[rcvLocal, f_7];
                  Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                  Heap := Heap[null, wand_8#sm(x, FullPerm, false):=Heap[null, wand_8#sm(x, FullPerm, false)][x, f_7:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (package.vpr@130.7--130.57) [215879]"}
              b_71 && b_79 ==> neededTransfer == 0.000000000 && Used_40Mask[rcvLocal, f_7] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_80 := b_71 && b_79;
              b_80 := b_80 && state(Result_19Heap, Result_19Mask);
              b_80 := b_80 && sumMask(Result_19Mask, Ops_37Mask, Used_40Mask);
              b_80 := (b_80 && IdenticalOnKnownLocations(Ops_37Heap, Result_19Heap, Ops_37Mask)) && IdenticalOnKnownLocations(Used_40Heap, Result_19Heap, Used_40Mask);
              b_80 := b_80 && state(Result_19Heap, Result_19Mask);
            b_71 := b_71 && b_80;
          b_71 := b_71 && b_79;
          b_71 := b_71 && Used_40Heap == Ops_37Heap;
        b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_71 := b_71 && x != null;
          Ops_37Mask := Ops_37Mask[x, f_7:=Ops_37Mask[x, f_7] + perm];
          b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
          perm := FullPerm;
          b_71 := b_71 && x != null;
          Ops_37Mask := Ops_37Mask[x, f_7:=Ops_37Mask[x, f_7] + perm];
          b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
          b_71 := false;
          b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_37Heap, ExhaleHeap, Ops_37Mask);
        Ops_37Heap := ExhaleHeap;
        b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
        b_71 := b_71 && state(Ops_37Heap, Ops_37Mask);
    }
    // Translating exec of non-ghost operationfalse
    havoc Used_41Heap;
    Used_41Mask := ZeroMask;
    b_81 := b_81 && state(Used_41Heap, Used_41Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@128.3--131.4) [215882]"}
      (b_71 && b_71) && b_81 ==> false;
    Mask := Mask[null, wand_8(x, FullPerm, false):=Mask[null, wand_8(x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package.vpr@135.3--135.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package.vpr@135.10--135.15) [215883]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test17
// ==================================================

procedure test17(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_41Heap: HeapType;
  var Ops_41Mask: MaskType;
  var b_83: bool;
  var Used_42Heap: HeapType;
  var Used_42Mask: MaskType;
  var b_82: bool;
  var Labellhs44Heap: HeapType;
  var Labellhs44Mask: MaskType;
  var boolCur_20: bool;
  var Ops_43Heap: HeapType;
  var Ops_43Mask: MaskType;
  var b_85: bool;
  var Used_43Heap: HeapType;
  var Used_43Mask: MaskType;
  var b_84: bool;
  var Labellhs46Heap: HeapType;
  var Labellhs46Mask: MaskType;
  var boolCur_21: bool;
  var Used_44Heap: HeapType;
  var Used_44Mask: MaskType;
  var b_86: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_87: bool;
  var Result_20Heap: HeapType;
  var Result_20Mask: MaskType;
  var b_88: bool;
  var Result_21Heap: HeapType;
  var Result_21Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_45Heap: HeapType;
  var Used_45Mask: MaskType;
  var b_89: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs49Heap: HeapType;
  var Labellhs49Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_90: bool;
  var Result_22Heap: HeapType;
  var Result_22Mask: MaskType;
  var Used_46Heap: HeapType;
  var Used_46Mask: MaskType;
  var b_91: bool;
  var b_92: bool;
  var Result_23Heap: HeapType;
  var Result_23Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_47Heap: HeapType;
  var Used_47Mask: MaskType;
  var b_93: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) --* false {
  //   package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  //   }
  //   apply acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false)
  // } -- package.vpr@142.3--145.4
    havoc Ops_41Heap;
    Ops_41Mask := ZeroMask;
    b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
    havoc Used_42Heap;
    Used_42Mask := ZeroMask;
    b_82 := b_82 && state(Used_42Heap, Used_42Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_83) {
      perm := FullPerm;
      b_83 := b_83 && x != null;
      Ops_41Mask := Ops_41Mask[x, f_7:=Ops_41Mask[x, f_7] + perm];
      b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
    }
    b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
    
    // -- Translating statement: label lhs44 -- package.vpr@142.11--142.31
      lhs44:
      Labellhs44Heap := Ops_41Heap;
      Labellhs44Mask := Ops_41Mask;
      b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
    boolCur_20 := true;
    if (b_83) {
      
      // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) {
  // } -- package.vpr@143.7--143.59
        havoc Ops_43Heap;
        Ops_43Mask := ZeroMask;
        b_85 := b_85 && state(Ops_43Heap, Ops_43Mask);
        havoc Used_43Heap;
        Used_43Mask := ZeroMask;
        b_84 := b_84 && state(Used_43Heap, Used_43Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_85) {
          perm := FullPerm;
          b_85 := b_85 && x != null;
          Ops_43Mask := Ops_43Mask[x, f_7:=Ops_43Mask[x, f_7] + perm];
          b_85 := b_85 && state(Ops_43Heap, Ops_43Mask);
        }
        b_85 := b_85 && state(Ops_43Heap, Ops_43Mask);
        
        // -- Translating statement: label lhs46 -- package.vpr@143.16--143.58
          lhs46:
          Labellhs46Heap := Ops_43Heap;
          Labellhs46Mask := Ops_43Mask;
          b_85 := b_85 && state(Ops_43Heap, Ops_43Mask);
        boolCur_21 := true;
        // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.f, write) && false)
        havoc Used_44Heap;
        Used_44Mask := ZeroMask;
        b_86 := b_86 && state(Used_44Heap, Used_44Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_44Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@143.7--143.59) [215884]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_85 && (b_85 && b_83)) && b_86) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_43Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_44Mask := Used_44Mask[rcvLocal, f_7:=Used_44Mask[rcvLocal, f_7] + takeTransfer];
                b_86 := b_86 && state(Used_44Heap, Used_44Mask);
                b_86 := b_86 && Ops_43Heap[rcvLocal, f_7] == Used_44Heap[rcvLocal, f_7];
                Ops_43Mask := Ops_43Mask[rcvLocal, f_7:=Ops_43Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_85 && (b_85 && b_83)) && b_86) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_41Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_44Mask := Used_44Mask[rcvLocal, f_7:=Used_44Mask[rcvLocal, f_7] + takeTransfer];
                b_86 := b_86 && state(Used_44Heap, Used_44Mask);
                b_86 := b_86 && Ops_41Heap[rcvLocal, f_7] == Used_44Heap[rcvLocal, f_7];
                Ops_41Mask := Ops_41Mask[rcvLocal, f_7:=Ops_41Mask[rcvLocal, f_7] - takeTransfer];
                Ops_41Heap := Ops_41Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_41Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_85 && (b_85 && b_83)) && b_86) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_44Mask := Used_44Mask[rcvLocal, f_7:=Used_44Mask[rcvLocal, f_7] + takeTransfer];
                b_86 := b_86 && state(Used_44Heap, Used_44Mask);
                b_86 := b_86 && Heap[rcvLocal, f_7] == Used_44Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@143.7--143.59) [215885]"}
            (b_85 && (b_85 && b_83)) && b_86 ==> neededTransfer == 0.000000000 && Used_44Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_87 := b_85 && b_86;
            b_87 := b_87 && state(Result_20Heap, Result_20Mask);
            b_87 := b_87 && sumMask(Result_20Mask, Ops_43Mask, Used_44Mask);
            b_87 := (b_87 && IdenticalOnKnownLocations(Ops_43Heap, Result_20Heap, Ops_43Mask)) && IdenticalOnKnownLocations(Used_44Heap, Result_20Heap, Used_44Mask);
            b_87 := b_87 && state(Result_20Heap, Result_20Mask);
          b_85 := b_85 && b_87;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_44Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@143.7--143.59) [215886]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_85 && (b_85 && b_83)) && b_86) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_43Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_44Mask := Used_44Mask[rcvLocal, f_7:=Used_44Mask[rcvLocal, f_7] + takeTransfer];
                b_86 := b_86 && state(Used_44Heap, Used_44Mask);
                b_86 := b_86 && Ops_43Heap[rcvLocal, f_7] == Used_44Heap[rcvLocal, f_7];
                Ops_43Mask := Ops_43Mask[rcvLocal, f_7:=Ops_43Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_85 && (b_85 && b_83)) && b_86) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_41Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_44Mask := Used_44Mask[rcvLocal, f_7:=Used_44Mask[rcvLocal, f_7] + takeTransfer];
                b_86 := b_86 && state(Used_44Heap, Used_44Mask);
                b_86 := b_86 && Ops_41Heap[rcvLocal, f_7] == Used_44Heap[rcvLocal, f_7];
                Ops_41Mask := Ops_41Mask[rcvLocal, f_7:=Ops_41Mask[rcvLocal, f_7] - takeTransfer];
                Ops_41Heap := Ops_41Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_41Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_85 && (b_85 && b_83)) && b_86) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_44Mask := Used_44Mask[rcvLocal, f_7:=Used_44Mask[rcvLocal, f_7] + takeTransfer];
                b_86 := b_86 && state(Used_44Heap, Used_44Mask);
                b_86 := b_86 && Heap[rcvLocal, f_7] == Used_44Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_9#sm(x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package.vpr@143.7--143.59) [215887]"}
            (b_85 && (b_85 && b_83)) && b_86 ==> neededTransfer == 0.000000000 && Used_44Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_88 := b_85 && b_86;
            b_88 := b_88 && state(Result_21Heap, Result_21Mask);
            b_88 := b_88 && sumMask(Result_21Mask, Ops_43Mask, Used_44Mask);
            b_88 := (b_88 && IdenticalOnKnownLocations(Ops_43Heap, Result_21Heap, Ops_43Mask)) && IdenticalOnKnownLocations(Used_44Heap, Result_21Heap, Used_44Mask);
            b_88 := b_88 && state(Result_21Heap, Result_21Mask);
          b_85 := b_85 && b_88;
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@143.7--143.59) [215888]"}
          (b_85 && (b_85 && b_83)) && b_86 ==> false;
        Ops_41Mask := Ops_41Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_41Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + FullPerm];
        b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
        b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
        b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
    }
    if (b_83) {
      
      // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) -- package.vpr@144.7--144.57
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_41Heap;
          ExhaleWellDef0Mask := Ops_41Mask;
          havoc Used_45Heap;
          Used_45Mask := ZeroMask;
          b_89 := b_89 && state(Used_45Heap, Used_45Mask);
          
          // -- Transfer of acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false)
            
            // -- checking if access predicate defined in used state
              if (b_83 && b_89) {
                if (b_83) {
                  
                  // -- Check definedness of acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      assume x != null;
                      WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs49 -- package.vpr@144.14--144.56
                        lhs49:
                        Labellhs49Heap := WandDefLHSHeap;
                        Labellhs49Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume x != null;
                      WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      perm := FullPerm;
                      assume x != null;
                      WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_45Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(x.f, write) --* acc(x.f, write) && (acc(x.f, write) && false) might be negative. (package.vpr@144.7--144.57) [215889]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_83 && b_89) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_41Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_45Mask := Used_45Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Used_45Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + takeTransfer];
                  b_89 := b_89 && state(Used_45Heap, Used_45Mask);
                  Ops_41Mask := Ops_41Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Ops_41Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_83 && b_89) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_45Mask := Used_45Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Used_45Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] + takeTransfer];
                  b_89 := b_89 && state(Used_45Heap, Used_45Mask);
                  Mask := Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false):=Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (package.vpr@144.7--144.57) [215890]"}
              b_83 && b_89 ==> neededTransfer == 0.000000000 && Used_45Mask[null, wand_9(x, FullPerm, x, FullPerm, x, FullPerm, false)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_90 := b_83 && b_89;
              b_90 := b_90 && state(Result_22Heap, Result_22Mask);
              b_90 := b_90 && sumMask(Result_22Mask, Ops_41Mask, Used_45Mask);
              b_90 := (b_90 && IdenticalOnKnownLocations(Ops_41Heap, Result_22Heap, Ops_41Mask)) && IdenticalOnKnownLocations(Used_45Heap, Result_22Heap, Used_45Mask);
              b_90 := b_90 && state(Result_22Heap, Result_22Mask);
            b_83 := b_83 && b_90;
          b_83 := b_83 && b_89;
          b_83 := b_83 && Used_45Heap == Ops_41Heap;
        b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_41Heap;
          ExhaleWellDef0Mask := Ops_41Mask;
          havoc Used_46Heap;
          Used_46Mask := ZeroMask;
          b_91 := b_91 && state(Used_46Heap, Used_46Mask);
          
          // -- Transfer of acc(x.f, write)
            rcvLocal := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_46Mask[rcvLocal, f_7] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(x.f, write) might be negative. (package.vpr@144.7--144.57) [215891]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_83 && b_91) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_41Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_46Mask := Used_46Mask[rcvLocal, f_7:=Used_46Mask[rcvLocal, f_7] + takeTransfer];
                  b_91 := b_91 && state(Used_46Heap, Used_46Mask);
                  b_91 := b_91 && Ops_41Heap[rcvLocal, f_7] == Used_46Heap[rcvLocal, f_7];
                  Ops_41Mask := Ops_41Mask[rcvLocal, f_7:=Ops_41Mask[rcvLocal, f_7] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_83 && b_91) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_46Mask := Used_46Mask[rcvLocal, f_7:=Used_46Mask[rcvLocal, f_7] + takeTransfer];
                  b_91 := b_91 && state(Used_46Heap, Used_46Mask);
                  b_91 := b_91 && Heap[rcvLocal, f_7] == Used_46Heap[rcvLocal, f_7];
                  Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                  Heap := Heap[null, wand_8#sm(x, FullPerm, false):=Heap[null, wand_8#sm(x, FullPerm, false)][x, f_7:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (package.vpr@144.7--144.57) [215892]"}
              b_83 && b_91 ==> neededTransfer == 0.000000000 && Used_46Mask[rcvLocal, f_7] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_92 := b_83 && b_91;
              b_92 := b_92 && state(Result_23Heap, Result_23Mask);
              b_92 := b_92 && sumMask(Result_23Mask, Ops_41Mask, Used_46Mask);
              b_92 := (b_92 && IdenticalOnKnownLocations(Ops_41Heap, Result_23Heap, Ops_41Mask)) && IdenticalOnKnownLocations(Used_46Heap, Result_23Heap, Used_46Mask);
              b_92 := b_92 && state(Result_23Heap, Result_23Mask);
            b_83 := b_83 && b_92;
          b_83 := b_83 && b_91;
          b_83 := b_83 && Used_46Heap == Ops_41Heap;
        b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_83 := b_83 && x != null;
          Ops_41Mask := Ops_41Mask[x, f_7:=Ops_41Mask[x, f_7] + perm];
          b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
          perm := FullPerm;
          b_83 := b_83 && x != null;
          Ops_41Mask := Ops_41Mask[x, f_7:=Ops_41Mask[x, f_7] + perm];
          b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
          b_83 := false;
          b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_41Heap, ExhaleHeap, Ops_41Mask);
        Ops_41Heap := ExhaleHeap;
        b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
        b_83 := b_83 && state(Ops_41Heap, Ops_41Mask);
    }
    // Translating exec of non-ghost operationfalse
    havoc Used_47Heap;
    Used_47Mask := ZeroMask;
    b_93 := b_93 && state(Used_47Heap, Used_47Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package.vpr@142.3--145.4) [215895]"}
      (b_83 && b_83) && b_93 ==> false;
    Mask := Mask[null, wand_8(x, FullPerm, false):=Mask[null, wand_8(x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* false -- package.vpr@148.3--148.27
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (package.vpr@148.3--148.27) [215896]"}
        FullPerm <= Mask[null, wand_8(x, FullPerm, false)];
      Mask := Mask[null, wand_8(x, FullPerm, false):=Mask[null, wand_8(x, FullPerm, false)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (package.vpr@148.3--148.27) [215898]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume false;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}