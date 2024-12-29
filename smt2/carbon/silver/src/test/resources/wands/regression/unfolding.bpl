// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:24:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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

// Function heights (higher height means its body is available earlier):
// - height 0: sum
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Ref, arg3_2: int, arg4_2: Ref, arg5_2: Ref, arg6_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 2
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Ref, arg6: Ref, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Ref, arg3_2: int, arg4_2: Ref, arg5_2: Ref, arg6_2: Ref, arg7_2: Ref, arg8_2: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) == 3
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg8: Ref, arg9: Ref, arg10: int, arg1_2: Ref, arg2_2: Ref, arg3_2: int, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref, arg7_2: Perm, arg8_2: Ref, arg9_2: Ref, arg10_2: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && arg10 == arg10_2))))))))
);
type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
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

// ==================================================
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum(Heap: HeapType, p_1: Ref): int;
function  sum'(Heap: HeapType, p_1: Ref): int;
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum(Heap, p_1) }
  sum(Heap, p_1) == sum'(Heap, p_1) && dummyFunction(sum#triggerStateless(p_1))
);
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum'(Heap, p_1) }
  dummyFunction(sum#triggerStateless(p_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, p_1: Ref ::
  { state(Heap, Mask), sum(Heap, p_1) } { state(Heap, Mask), sum#triggerStateless(p_1), Pair#trigger(Heap, Pair(p_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sum(Heap, p_1) == Heap[p_1, f_7] + Heap[p_1, g]
);

// Framing axioms
function  sum#frame(frame: FrameType, p_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, p_1: Ref ::
  { state(Heap, Mask), sum'(Heap, p_1) }
  state(Heap, Mask) ==> sum'(Heap, p_1) == sum#frame(Heap[null, Pair(p_1)], p_1)
);

// Trigger function (controlling recursive postconditions)
function  sum#trigger(frame: FrameType, p_1: Ref): bool;

// State-independent trigger function
function  sum#triggerStateless(p_1: Ref): int;

// Check contract well-formedness and postcondition
procedure sum#definedness(p_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[p_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Pair(p), write) in p.f + p.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Pair#trigger(UnfoldingHeap, Pair(p_1));
      assume UnfoldingHeap[null, Pair(p_1)] == CombineFrames(FrameFragment(UnfoldingHeap[p_1, f_7]), FrameFragment(UnfoldingHeap[p_1, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Pair(p) (unfolding.vpr@11.1--15.2) [122947]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Pair(p_1)];
      perm := FullPerm;
      assume p_1 != null;
      UnfoldingMask := UnfoldingMask[p_1, f_7:=UnfoldingMask[p_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume p_1 != null;
      UnfoldingMask := UnfoldingMask[p_1, g:=UnfoldingMask[p_1, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.f (unfolding.vpr@11.1--15.2) [122948]"}
        HasDirectPerm(UnfoldingMask, p_1, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.g (unfolding.vpr@11.1--15.2) [122949]"}
        HasDirectPerm(UnfoldingMask, p_1, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[p_1, f_7] + Heap[p_1, g];
}

// ==================================================
// Translation of predicate Pair
// ==================================================

type PredicateType_Pair;
function  Pair(this: Ref): Field PredicateType_Pair FrameType;
function  Pair#sm(this: Ref): Field PredicateType_Pair PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Pair(this)) }
  PredicateMaskField(Pair(this)) == Pair#sm(this)
);
axiom (forall this: Ref ::
  { Pair(this) }
  IsPredicateField(Pair(this))
);
axiom (forall this: Ref ::
  { Pair(this) }
  getPredWandId(Pair(this)) == 0
);
function  Pair#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Pair#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Pair(this), Pair(this2) }
  Pair(this) == Pair(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Pair#sm(this), Pair#sm(this2) }
  Pair#sm(this) == Pair#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Pair#trigger(Heap, Pair(this)) }
  Pair#everUsed(Pair(this))
);

procedure Pair#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Pair
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, g:=Mask[this, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(Pair(p), write) && sum(p) == 10 --* p.f + p.g == 10 {
  //   unfold acc(Pair(p), write)
  // } -- unfolding.vpr@22.3--24.4
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
        Ops_1Mask := Ops_1Mask[null, Pair(p_1):=Ops_1Mask[null, Pair(p_1)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        if (b_1_1) {
          
          // -- Check definedness of sum(p) == 10
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Ops_1Mask;
              ExhaleWellDef0Heap := Ops_1Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (unfolding.vpr@22.28--22.34) [122950]"}
                NoPerm < perm ==> NoPerm < Ops_1Mask[null, Pair(p_1)];
              // Finish exhale
              havoc ExhaleHeap;
              b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
              Ops_1Heap := ExhaleHeap;
              // Stop execution
              b_1_1 := false;
            }
        }
        b_1_1 := b_1_1 && sum(Ops_1Heap, p_1) == 10;
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- unfolding.vpr@22.11--22.61
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(Pair(p), write) -- unfolding.vpr@23.7--23.26
        assume Pair#trigger(Ops_1Heap, Pair(p_1));
        assume Ops_1Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Ops_1Heap[p_1, f_7]), FrameFragment(Ops_1Heap[p_1, g]));
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(Pair(p), write)
          arg_1 := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, Pair(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding Pair(p) might fail. Fraction acc(Pair(p), write) might be negative. (unfolding.vpr@23.7--23.26) [122952]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Pair(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Pair(arg_1):=Used_1Mask[null, Pair(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Pair(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Pair(arg_1):=Ops_1Mask[null, Pair(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Pair(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Pair(arg_1):=Used_1Mask[null, Pair(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Pair(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, Pair(arg_1):=Mask[null, Pair(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand#sm(p_1, p_1, 10, p_1, p_1, 10)][o_15, f_20] || Heap[null, Pair#sm(p_1)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand#sm(p_1, p_1, 10, p_1, p_1, 10):=newPMask];
              }
            }
          assert {:msg "  Unfolding Pair(p) might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@23.7--23.26) [122953]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Pair(arg_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1 && p_1 != null;
        Ops_1Mask := Ops_1Mask[p_1, f_7:=Ops_1Mask[p_1, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && p_1 != null;
        Ops_1Mask := Ops_1Mask[p_1, g:=Ops_1Mask[p_1, g] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationp.f + p.g == 10
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    if ((b_1_1 && b_1_1) && b_4) {
      if (b_1_1) {
        
        // -- Check definedness of p.f + p.g == 10
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (unfolding.vpr@22.3--24.4) [122956]"}
            HasDirectPerm(Ops_1Mask, p_1, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (unfolding.vpr@22.3--24.4) [122957]"}
            HasDirectPerm(Ops_1Mask, p_1, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion p.f + p.g == 10 might not hold. (unfolding.vpr@22.3--24.4) [122958]"}
      (b_1_1 && b_1_1) && b_4 ==> Ops_1Heap[p_1, f_7] + Ops_1Heap[p_1, g] == 10;
    assume state(Heap, Mask);
    Mask := Mask[null, wand(p_1, p_1, 10, p_1, p_1, 10):=Mask[null, wand(p_1, p_1, 10, p_1, p_1, 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_6: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var arg_1_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_8: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(Pair(p), write) && sum(p) == 10 --*
  // acc(Pair(p), write) && (unfolding acc(Pair(p), write) in p.f + p.g == 10) {
  // } -- unfolding.vpr@28.3--31.62
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_6) {
      if (b_6) {
        perm := FullPerm;
        b_6 := b_6;
        Ops_3Mask := Ops_3Mask[null, Pair(p_1):=Ops_3Mask[null, Pair(p_1)] + perm];
        b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_6) {
        b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
        if (b_6) {
          
          // -- Check definedness of sum(p) == 10
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Ops_3Mask;
              ExhaleWellDef0Heap := Ops_3Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (unfolding.vpr@29.22--29.28) [122959]"}
                NoPerm < perm ==> NoPerm < Ops_3Mask[null, Pair(p_1)];
              // Finish exhale
              havoc ExhaleHeap;
              b_6 := b_6 && IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
              Ops_3Heap := ExhaleHeap;
              // Stop execution
              b_6 := false;
            }
        }
        b_6 := b_6 && sum(Ops_3Heap, p_1) == 10;
      }
    }
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- unfolding.vpr@29.5--31.62
      lhs3:
      Labellhs3Mask := Ops_3Mask;
      Labellhs3Heap := Ops_3Heap;
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(Pair(p), write) && (unfolding acc(Pair(p), write) in p.f + p.g == 10)
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    
    // -- Transfer of acc(Pair(p), write)
      arg_1_1 := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_4Mask[null, Pair(arg_1_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Pair(p), write) might be negative. (unfolding.vpr@28.3--31.62) [122960]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, Pair(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[null, Pair(arg_1_1):=Used_4Mask[null, Pair(arg_1_1)] + takeTransfer];
            b_7 := b_7 && state(Used_4Heap, Used_4Mask);
            TempMask := ZeroMask[null, Pair(arg_1_1):=FullPerm];
            b_7 := b_7 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, Pair(arg_1_1):=Ops_3Mask[null, Pair(arg_1_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Pair(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[null, Pair(arg_1_1):=Used_4Mask[null, Pair(arg_1_1)] + takeTransfer];
            b_7 := b_7 && state(Used_4Heap, Used_4Mask);
            TempMask := ZeroMask[null, Pair(arg_1_1):=FullPerm];
            b_7 := b_7 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
            Mask := Mask[null, Pair(arg_1_1):=Mask[null, Pair(arg_1_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, wand_1#sm(p_1, p_1, 10, p_1, p_1, p_1, p_1, 10)][o_16, f_21] || Heap[null, Pair#sm(p_1)][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand_1#sm(p_1, p_1, 10, p_1, p_1, p_1, p_1, 10):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@28.3--31.62) [122961]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Pair(arg_1_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_6 && b_7;
        b_8 := b_8 && state(Result_1Heap, Result_1Mask);
        b_8 := b_8 && sumMask(Result_1Mask, Ops_3Mask, Used_4Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_1Heap, Used_4Mask);
        b_8 := b_8 && state(Result_1Heap, Result_1Mask);
      b_6 := b_6 && b_8;
    if ((b_6 && b_6) && b_7) {
      if (b_6) {
        
        // -- Check definedness of (unfolding acc(Pair(p), write) in p.f + p.g == 10)
          UnfoldingHeap := Result_1Heap;
          UnfoldingMask := Result_1Mask;
          assume Pair#trigger(UnfoldingHeap, Pair(p_1));
          assume UnfoldingHeap[null, Pair(p_1)] == CombineFrames(FrameFragment(UnfoldingHeap[p_1, f_7]), FrameFragment(UnfoldingHeap[p_1, g]));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@28.3--31.62) [122962]"}
              perm <= UnfoldingMask[null, Pair(p_1)];
          }
          UnfoldingMask := UnfoldingMask[null, Pair(p_1):=UnfoldingMask[null, Pair(p_1)] - perm];
          perm := FullPerm;
          assume p_1 != null;
          UnfoldingMask := UnfoldingMask[p_1, f_7:=UnfoldingMask[p_1, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume p_1 != null;
          UnfoldingMask := UnfoldingMask[p_1, g:=UnfoldingMask[p_1, g] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (unfolding.vpr@28.3--31.62) [122963]"}
            HasDirectPerm(UnfoldingMask, p_1, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (unfolding.vpr@28.3--31.62) [122964]"}
            HasDirectPerm(UnfoldingMask, p_1, g);
          
          // -- Free assumptions (exp module)
            Result_1Heap := Result_1Heap[null, Pair#sm(p_1):=Result_1Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
            Result_1Heap := Result_1Heap[null, Pair#sm(p_1):=Result_1Heap[null, Pair#sm(p_1)][p_1, g:=true]];
            assume state(Result_1Heap, Result_1Mask);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (unfolding acc(Pair(p), write) in p.f + p.g == 10) might not hold. (unfolding.vpr@28.3--31.62) [122965]"}
      (b_6 && b_6) && b_7 ==> Result_1Heap[p_1, f_7] + Result_1Heap[p_1, g] == 10;
    assume state(Heap, Mask);
    Mask := Mask[null, wand_1(p_1, p_1, 10, p_1, p_1, p_1, p_1, 10):=Mask[null, wand_1(p_1, p_1, 10, p_1, p_1, p_1, p_1, 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(Pair(p), write) -- unfolding.vpr@33.3--33.22
    perm := FullPerm;
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Pair(p), write) -- unfolding.vpr@34.3--34.17
    assume Pair#trigger(Heap, Pair(p_1));
    assume Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Heap[p_1, f_7]), FrameFragment(Heap[p_1, g]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Pair(p) might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@34.3--34.17) [122969]"}
        perm <= Mask[null, Pair(p_1)];
    }
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Pair(p_1))) {
        havoc newVersion;
        Heap := Heap[null, Pair(p_1):=newVersion];
      }
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, g:=Mask[p_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: p.f := 5 -- unfolding.vpr@35.3--35.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access p.f (unfolding.vpr@35.3--35.11) [122972]"}
      FullPerm == Mask[p_1, f_7];
    Heap := Heap[p_1, f_7:=5];
    assume state(Heap, Mask);
  
  // -- Translating statement: p.g := p.f -- unfolding.vpr@36.3--36.13
    
    // -- Check definedness of p.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access p.f (unfolding.vpr@36.3--36.13) [122973]"}
        HasDirectPerm(Mask, p_1, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access p.g (unfolding.vpr@36.3--36.13) [122974]"}
      FullPerm == Mask[p_1, g];
    Heap := Heap[p_1, g:=Heap[p_1, f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Pair(p), write) -- unfolding.vpr@37.3--37.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.f (unfolding.vpr@37.3--37.15) [122977]"}
        perm <= Mask[p_1, f_7];
    }
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.g (unfolding.vpr@37.3--37.15) [122979]"}
        perm <= Mask[p_1, g];
    }
    Mask := Mask[p_1, g:=Mask[p_1, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Pair#trigger(Heap, Pair(p_1));
    assume Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Heap[p_1, f_7]), FrameFragment(Heap[p_1, g]));
    if (!HasDirectPerm(Mask, null, Pair(p_1))) {
      Heap := Heap[null, Pair#sm(p_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Pair(p_1):=freshVersion];
    }
    Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
    Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(Pair(p), write) && sum(p) == 10 --*
  //   acc(Pair(p), write) && (unfolding acc(Pair(p), write) in p.f + p.g == 10) -- unfolding.vpr@39.3--39.99
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (unfolding.vpr@39.3--39.99) [122981]"}
        FullPerm <= Mask[null, wand_1(p_1, p_1, 10, p_1, p_1, p_1, p_1, 10)];
      Mask := Mask[null, wand_1(p_1, p_1, 10, p_1, p_1, p_1, p_1, 10):=Mask[null, wand_1(p_1, p_1, 10, p_1, p_1, p_1, p_1, 10)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@39.3--39.99) [122983]"}
          perm <= Mask[null, Pair(p_1)];
      }
      Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] - perm];
      assert {:msg "  Applying wand might fail. Assertion sum(p) == 10 might not hold. (unfolding.vpr@39.3--39.99) [122984]"}
        sum(Heap, p_1) == 10;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Pair#trigger(UnfoldingHeap, Pair(p_1));
        assume UnfoldingHeap[null, Pair(p_1)] == CombineFrames(FrameFragment(UnfoldingHeap[p_1, f_7]), FrameFragment(UnfoldingHeap[p_1, g]));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Pair(p_1):=UnfoldingMask[null, Pair(p_1)] - perm];
        perm := FullPerm;
        assume p_1 != null;
        UnfoldingMask := UnfoldingMask[p_1, f_7:=UnfoldingMask[p_1, f_7] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume p_1 != null;
        UnfoldingMask := UnfoldingMask[p_1, g:=UnfoldingMask[p_1, g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[p_1, f_7] + Heap[p_1, g] == 10;
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
        assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(Pair(p), write) in p.f + p.g == 10) -- unfolding.vpr@40.3--40.51
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(Pair(p), write) in p.f + p.g == 10)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume Pair#trigger(UnfoldingHeap, Pair(p_1));
      assume UnfoldingHeap[null, Pair(p_1)] == CombineFrames(FrameFragment(UnfoldingHeap[p_1, f_7]), FrameFragment(UnfoldingHeap[p_1, g]));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@40.10--40.51) [122986]"}
          perm <= UnfoldingMask[null, Pair(p_1)];
      }
      UnfoldingMask := UnfoldingMask[null, Pair(p_1):=UnfoldingMask[null, Pair(p_1)] - perm];
      perm := FullPerm;
      assume p_1 != null;
      UnfoldingMask := UnfoldingMask[p_1, f_7:=UnfoldingMask[p_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume p_1 != null;
      UnfoldingMask := UnfoldingMask[p_1, g:=UnfoldingMask[p_1, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access p.f (unfolding.vpr@40.10--40.51) [122987]"}
        HasDirectPerm(UnfoldingMask, p_1, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access p.g (unfolding.vpr@40.10--40.51) [122988]"}
        HasDirectPerm(UnfoldingMask, p_1, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
        Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion p.f + p.g == 10 might not hold. (unfolding.vpr@40.10--40.51) [122989]"}
      Heap[p_1, f_7] + Heap[p_1, g] == 10;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
      Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- unfolding.vpr@43.3--43.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (unfolding.vpr@43.10--43.15) [122990]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var p_1: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_10: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var ExhaleHeap: HeapType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var boolCur_2: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var arg_2: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_12: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var rcvLocal: Ref;
  var b_14: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_15: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[p_1, $allocated];
  
  // -- Translating statement: p := new(f, g) -- unfolding.vpr@48.3--48.17
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    p_1 := freshObj;
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] + FullPerm];
    Mask := Mask[p_1, g:=Mask[p_1, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: p.f := 3 -- unfolding.vpr@50.3--50.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access p.f (unfolding.vpr@50.3--50.11) [122991]"}
      FullPerm == Mask[p_1, f_7];
    Heap := Heap[p_1, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: p.g := 7 -- unfolding.vpr@50.13--50.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access p.g (unfolding.vpr@50.13--50.21) [122992]"}
      FullPerm == Mask[p_1, g];
    Heap := Heap[p_1, g:=7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Pair(p), write) -- unfolding.vpr@51.3--51.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.f (unfolding.vpr@51.3--51.20) [122995]"}
        perm <= Mask[p_1, f_7];
    }
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.g (unfolding.vpr@51.3--51.20) [122997]"}
        perm <= Mask[p_1, g];
    }
    Mask := Mask[p_1, g:=Mask[p_1, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Pair#trigger(Heap, Pair(p_1));
    assume Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Heap[p_1, f_7]), FrameFragment(Heap[p_1, g]));
    if (!HasDirectPerm(Mask, null, Pair(p_1))) {
      Heap := Heap[null, Pair#sm(p_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Pair(p_1):=freshVersion];
    }
    Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
    Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(Pair(p), write) && sum(p) == 10 --*
  // acc(p.f, write) && (acc(p.g, write) && p.f + p.g == 10) {
  //   unfold acc(Pair(p), write)
  // } -- unfolding.vpr@53.3--55.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_9 := b_9 && state(Used_5Heap, Used_5Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_10) {
      if (b_10) {
        perm := FullPerm;
        b_10 := b_10;
        Ops_5Mask := Ops_5Mask[null, Pair(p_1):=Ops_5Mask[null, Pair(p_1)] + perm];
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
      }
      if (b_10) {
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        if (b_10) {
          
          // -- Check definedness of sum(p) == 10
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Ops_5Mask;
              ExhaleWellDef0Heap := Ops_5Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (unfolding.vpr@53.28--53.34) [122999]"}
                NoPerm < perm ==> NoPerm < Ops_5Mask[null, Pair(p_1)];
              // Finish exhale
              havoc ExhaleHeap;
              b_10 := b_10 && IdenticalOnKnownLocations(Ops_5Heap, ExhaleHeap, Ops_5Mask);
              Ops_5Heap := ExhaleHeap;
              // Stop execution
              b_10 := false;
            }
        }
        b_10 := b_10 && sum(Ops_5Heap, p_1) == 10;
      }
    }
    b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs6 -- unfolding.vpr@53.11--53.85
      lhs6:
      Labellhs6Mask := Ops_5Mask;
      Labellhs6Heap := Ops_5Heap;
      b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_10) {
      
      // -- Translating statement: unfold acc(Pair(p), write) -- unfolding.vpr@54.7--54.26
        assume Pair#trigger(Ops_5Heap, Pair(p_1));
        assume Ops_5Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Ops_5Heap[p_1, f_7]), FrameFragment(Ops_5Heap[p_1, g]));
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_11 := b_11 && state(Used_6Heap, Used_6Mask);
        
        // -- Transfer of acc(Pair(p), write)
          arg_2 := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_6Mask[null, Pair(arg_2)] + neededTransfer;
          assert {:msg "  Unfolding Pair(p) might fail. Fraction acc(Pair(p), write) might be negative. (unfolding.vpr@54.7--54.26) [123001]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, Pair(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[null, Pair(arg_2):=Used_6Mask[null, Pair(arg_2)] + takeTransfer];
                b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                TempMask := ZeroMask[null, Pair(arg_2):=FullPerm];
                b_11 := b_11 && IdenticalOnKnownLocations(Ops_5Heap, Used_6Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, Pair(arg_2):=Ops_5Mask[null, Pair(arg_2)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Pair(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[null, Pair(arg_2):=Used_6Mask[null, Pair(arg_2)] + takeTransfer];
                b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                TempMask := ZeroMask[null, Pair(arg_2):=FullPerm];
                b_11 := b_11 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                Mask := Mask[null, Pair(arg_2):=Mask[null, Pair(arg_2)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                  { newPMask[o_52, f_55] }
                  Heap[null, wand_2#sm(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10)][o_52, f_55] || Heap[null, Pair#sm(p_1)][o_52, f_55] ==> newPMask[o_52, f_55]
                );
                Heap := Heap[null, wand_2#sm(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10):=newPMask];
              }
            }
          assert {:msg "  Unfolding Pair(p) might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@54.7--54.26) [123002]"}
            b_10 && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[null, Pair(arg_2)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_10 && b_11;
            b_12 := b_12 && state(Result_2Heap, Result_2Mask);
            b_12 := b_12 && sumMask(Result_2Mask, Ops_5Mask, Used_6Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_2Heap, Used_6Mask);
            b_12 := b_12 && state(Result_2Heap, Result_2Mask);
          b_10 := b_10 && b_12;
        b_10 := b_10 && b_11;
        b_10 := b_10 && Used_6Heap == Ops_5Heap;
        perm := FullPerm;
        b_10 := b_10 && p_1 != null;
        Ops_5Mask := Ops_5Mask[p_1, f_7:=Ops_5Mask[p_1, f_7] + perm];
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        perm := FullPerm;
        b_10 := b_10 && p_1 != null;
        Ops_5Mask := Ops_5Mask[p_1, g:=Ops_5Mask[p_1, g] + perm];
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(p.f, write) && (acc(p.g, write) && p.f + p.g == 10)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_13 := b_13 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(p.f, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.f, write) might be negative. (unfolding.vpr@53.3--55.4) [123005]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Ops_5Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10):=Heap[null, wand_2#sm(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10)][p_1, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (unfolding.vpr@53.3--55.4) [123006]"}
        (b_10 && b_10) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_10 && b_13;
        b_14 := b_14 && state(Result_3Heap, Result_3Mask);
        b_14 := b_14 && sumMask(Result_3Mask, Ops_5Mask, Used_7Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_3Heap, Used_7Mask);
        b_14 := b_14 && state(Result_3Heap, Result_3Mask);
      b_10 := b_10 && b_14;
    
    // -- Transfer of acc(p.g, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.g, write) might be negative. (unfolding.vpr@53.3--55.4) [123007]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Ops_5Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
            Ops_5Mask := Ops_5Mask[rcvLocal, g:=Ops_5Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_2#sm(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10):=Heap[null, wand_2#sm(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10)][p_1, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (unfolding.vpr@53.3--55.4) [123008]"}
        (b_10 && b_10) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_10 && b_13;
        b_15 := b_15 && state(Result_4Heap, Result_4Mask);
        b_15 := b_15 && sumMask(Result_4Mask, Ops_5Mask, Used_7Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_5Heap, Result_4Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_4Heap, Used_7Mask);
        b_15 := b_15 && state(Result_4Heap, Result_4Mask);
      b_10 := b_10 && b_15;
    if ((b_10 && b_10) && b_13) {
      if (b_10) {
        
        // -- Check definedness of p.f + p.g == 10
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (unfolding.vpr@53.3--55.4) [123009]"}
            HasDirectPerm(Result_4Mask, p_1, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (unfolding.vpr@53.3--55.4) [123010]"}
            HasDirectPerm(Result_4Mask, p_1, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion p.f + p.g == 10 might not hold. (unfolding.vpr@53.3--55.4) [123011]"}
      (b_10 && b_10) && b_13 ==> Result_4Heap[p_1, f_7] + Result_4Heap[p_1, g] == 10;
    assume state(Heap, Mask);
    Mask := Mask[null, wand_2(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10):=Mask[null, wand_2(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(Pair(p), write) && sum(p) == 10 --*
  //   acc(p.f, write) && (acc(p.g, write) && p.f + p.g == 10) -- unfolding.vpr@57.3--57.81
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (unfolding.vpr@57.3--57.81) [123012]"}
        FullPerm <= Mask[null, wand_2(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10)];
      Mask := Mask[null, wand_2(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10):=Mask[null, wand_2(p_1, p_1, 10, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 10)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@57.3--57.81) [123014]"}
          perm <= Mask[null, Pair(p_1)];
      }
      Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] - perm];
      assert {:msg "  Applying wand might fail. Assertion sum(p) == 10 might not hold. (unfolding.vpr@57.3--57.81) [123015]"}
        sum(Heap, p_1) == 10;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume p_1 != null;
      Mask := Mask[p_1, f_7:=Mask[p_1, f_7] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume p_1 != null;
      Mask := Mask[p_1, g:=Mask[p_1, g] + perm];
      assume state(Heap, Mask);
      assume Heap[p_1, f_7] + Heap[p_1, g] == 10;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Pair(p), write) -- unfolding.vpr@58.3--58.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.f (unfolding.vpr@58.3--58.20) [123020]"}
        perm <= Mask[p_1, f_7];
    }
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.g (unfolding.vpr@58.3--58.20) [123022]"}
        perm <= Mask[p_1, g];
    }
    Mask := Mask[p_1, g:=Mask[p_1, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Pair#trigger(Heap, Pair(p_1));
    assume Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Heap[p_1, f_7]), FrameFragment(Heap[p_1, g]));
    if (!HasDirectPerm(Mask, null, Pair(p_1))) {
      Heap := Heap[null, Pair#sm(p_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Pair(p_1):=freshVersion];
    }
    Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
    Heap := Heap[null, Pair#sm(p_1):=Heap[null, Pair#sm(p_1)][p_1, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sum(p) == 10 -- unfolding.vpr@59.3--59.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of sum(p) == 10
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (unfolding.vpr@59.10--59.16) [123024]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Pair(p_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(p) == 10 might not hold. (unfolding.vpr@59.10--59.22) [123025]"}
      sum(Heap, p_1) == 10;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- unfolding.vpr@62.3--62.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (unfolding.vpr@62.10--62.15) [123026]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_17: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var boolCur_3: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_18: bool;
  var arg_3: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_19: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_20: bool;
  var rcvLocal: Ref;
  var b_21: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_22: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(Pair(p), 1 / 2) -- unfolding.vpr@66.3--66.27
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (unfolding.vpr@66.10--66.27) [123027]"}
      perm >= NoPerm;
    Mask := Mask[null, Pair(p_1):=Mask[null, Pair(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(Pair(p), 1 / 2) --* acc(p.f, write) && acc(p.g, write) {
  //   unfold acc(Pair(p), write)
  // } -- unfolding.vpr@68.3--70.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_16 := b_16 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (unfolding.vpr@68.3--70.4) [123028]"}
        perm >= NoPerm;
      b_17 := b_17;
      Ops_7Mask := Ops_7Mask[null, Pair(p_1):=Ops_7Mask[null, Pair(p_1)] + perm];
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    }
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs9 -- unfolding.vpr@68.11--68.55
      lhs9:
      Labellhs9Mask := Ops_7Mask;
      Labellhs9Heap := Ops_7Heap;
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_17) {
      
      // -- Translating statement: unfold acc(Pair(p), write) -- unfolding.vpr@69.7--69.26
        assume Pair#trigger(Ops_7Heap, Pair(p_1));
        assume Ops_7Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Ops_7Heap[p_1, f_7]), FrameFragment(Ops_7Heap[p_1, g]));
        ExhaleWellDef0Mask := Ops_7Mask;
        ExhaleWellDef0Heap := Ops_7Heap;
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_18 := b_18 && state(Used_9Heap, Used_9Mask);
        
        // -- Transfer of acc(Pair(p), write)
          arg_3 := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[null, Pair(arg_3)] + neededTransfer;
          assert {:msg "  Unfolding Pair(p) might fail. Fraction acc(Pair(p), write) might be negative. (unfolding.vpr@69.7--69.26) [123030]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_17 && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[null, Pair(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, Pair(arg_3):=Used_9Mask[null, Pair(arg_3)] + takeTransfer];
                b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, Pair(arg_3):=FullPerm];
                b_18 := b_18 && IdenticalOnKnownLocations(Ops_7Heap, Used_9Heap, TempMask);
                Ops_7Mask := Ops_7Mask[null, Pair(arg_3):=Ops_7Mask[null, Pair(arg_3)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_17 && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Pair(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, Pair(arg_3):=Used_9Mask[null, Pair(arg_3)] + takeTransfer];
                b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, Pair(arg_3):=FullPerm];
                b_18 := b_18 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                Mask := Mask[null, Pair(arg_3):=Mask[null, Pair(arg_3)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                  { newPMask[o_53, f_56] }
                  Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)][o_53, f_56] || Heap[null, Pair#sm(p_1)][o_53, f_56] ==> newPMask[o_53, f_56]
                );
                Heap := Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=newPMask];
              }
            }
          assert {:msg "  Unfolding Pair(p) might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@69.7--69.26) [123031]"}
            b_17 && b_18 ==> neededTransfer == 0.000000000 && Used_9Mask[null, Pair(arg_3)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_19 := b_17 && b_18;
            b_19 := b_19 && state(Result_5Heap, Result_5Mask);
            b_19 := b_19 && sumMask(Result_5Mask, Ops_7Mask, Used_9Mask);
            b_19 := (b_19 && IdenticalOnKnownLocations(Ops_7Heap, Result_5Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_5Heap, Used_9Mask);
            b_19 := b_19 && state(Result_5Heap, Result_5Mask);
          b_17 := b_17 && b_19;
        b_17 := b_17 && b_18;
        b_17 := b_17 && Used_9Heap == Ops_7Heap;
        perm := FullPerm;
        b_17 := b_17 && p_1 != null;
        Ops_7Mask := Ops_7Mask[p_1, f_7:=Ops_7Mask[p_1, f_7] + perm];
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        perm := FullPerm;
        b_17 := b_17 && p_1 != null;
        Ops_7Mask := Ops_7Mask[p_1, g:=Ops_7Mask[p_1, g] + perm];
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(p.f, write) && acc(p.g, write)
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_20 := b_20 && state(Used_10Heap, Used_10Mask);
    
    // -- Transfer of acc(p.f, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.f, write) might be negative. (unfolding.vpr@68.3--70.4) [123034]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_20 := b_20 && state(Used_10Heap, Used_10Mask);
            b_20 := b_20 && Ops_7Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_20 := b_20 && state(Used_10Heap, Used_10Mask);
            b_20 := b_20 && Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)][p_1, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (unfolding.vpr@68.3--70.4) [123035]"}
        (b_17 && b_17) && b_20 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_21 := b_17 && b_20;
        b_21 := b_21 && state(Result_6Heap, Result_6Mask);
        b_21 := b_21 && sumMask(Result_6Mask, Ops_7Mask, Used_10Mask);
        b_21 := (b_21 && IdenticalOnKnownLocations(Ops_7Heap, Result_6Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_6Heap, Used_10Mask);
        b_21 := b_21 && state(Result_6Heap, Result_6Mask);
      b_17 := b_17 && b_21;
    
    // -- Transfer of acc(p.g, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_10Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.g, write) might be negative. (unfolding.vpr@68.3--70.4) [123036]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
            b_20 := b_20 && state(Used_10Heap, Used_10Mask);
            b_20 := b_20 && Ops_7Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
            Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
            b_20 := b_20 && state(Used_10Heap, Used_10Mask);
            b_20 := b_20 && Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)][p_1, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (unfolding.vpr@68.3--70.4) [123037]"}
        (b_17 && b_17) && b_20 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_22 := b_17 && b_20;
        b_22 := b_22 && state(Result_7Heap, Result_7Mask);
        b_22 := b_22 && sumMask(Result_7Mask, Ops_7Mask, Used_10Mask);
        b_22 := (b_22 && IdenticalOnKnownLocations(Ops_7Heap, Result_7Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_7Heap, Used_10Mask);
        b_22 := b_22 && state(Result_7Heap, Result_7Mask);
      b_17 := b_17 && b_22;
    Mask := Mask[null, wand_3(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_3(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_24_1: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_23: bool;
  var perm: Perm;
  var Labellhs11Mask: MaskType;
  var Labellhs11Heap: HeapType;
  var boolCur_4: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_25: bool;
  var arg_4: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_26: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_27: bool;
  var rcvLocal: Ref;
  var b_28: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var b_29: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(Pair(p), 1 / 2) --* acc(p.f, write) && acc(p.g, write) {
  //   unfold acc(Pair(p), write)
  // } -- unfolding.vpr@74.3--77.4
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_23 := b_23 && state(Used_11Heap, Used_11Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_24_1) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (unfolding.vpr@74.3--77.4) [123038]"}
        perm >= NoPerm;
      b_24_1 := b_24_1;
      Ops_9Mask := Ops_9Mask[null, Pair(p_1):=Ops_9Mask[null, Pair(p_1)] + perm];
      b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
    }
    b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs11 -- unfolding.vpr@74.11--74.55
      lhs11:
      Labellhs11Mask := Ops_9Mask;
      Labellhs11Heap := Ops_9Heap;
      b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_24_1) {
      
      // -- Translating statement: unfold acc(Pair(p), write) -- unfolding.vpr@76.7--76.26
        assume Pair#trigger(Ops_9Heap, Pair(p_1));
        assume Ops_9Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Ops_9Heap[p_1, f_7]), FrameFragment(Ops_9Heap[p_1, g]));
        ExhaleWellDef0Mask := Ops_9Mask;
        ExhaleWellDef0Heap := Ops_9Heap;
        havoc Used_12Heap;
        Used_12Mask := ZeroMask;
        b_25 := b_25 && state(Used_12Heap, Used_12Mask);
        
        // -- Transfer of acc(Pair(p), write)
          arg_4 := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_12Mask[null, Pair(arg_4)] + neededTransfer;
          assert {:msg "  Unfolding Pair(p) might fail. Fraction acc(Pair(p), write) might be negative. (unfolding.vpr@76.7--76.26) [123040]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_24_1 && b_25) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[null, Pair(arg_4)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[null, Pair(arg_4):=Used_12Mask[null, Pair(arg_4)] + takeTransfer];
                b_25 := b_25 && state(Used_12Heap, Used_12Mask);
                TempMask := ZeroMask[null, Pair(arg_4):=FullPerm];
                b_25 := b_25 && IdenticalOnKnownLocations(Ops_9Heap, Used_12Heap, TempMask);
                Ops_9Mask := Ops_9Mask[null, Pair(arg_4):=Ops_9Mask[null, Pair(arg_4)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_24_1 && b_25) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Pair(arg_4)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[null, Pair(arg_4):=Used_12Mask[null, Pair(arg_4)] + takeTransfer];
                b_25 := b_25 && state(Used_12Heap, Used_12Mask);
                TempMask := ZeroMask[null, Pair(arg_4):=FullPerm];
                b_25 := b_25 && IdenticalOnKnownLocations(Heap, Used_12Heap, TempMask);
                Mask := Mask[null, Pair(arg_4):=Mask[null, Pair(arg_4)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                  { newPMask[o_26, f_29] }
                  Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)][o_26, f_29] || Heap[null, Pair#sm(p_1)][o_26, f_29] ==> newPMask[o_26, f_29]
                );
                Heap := Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=newPMask];
              }
            }
          assert {:msg "  Unfolding Pair(p) might fail. There might be insufficient permission to access Pair(p) (unfolding.vpr@76.7--76.26) [123041]"}
            b_24_1 && b_25 ==> neededTransfer == 0.000000000 && Used_12Mask[null, Pair(arg_4)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_26 := b_24_1 && b_25;
            b_26 := b_26 && state(Result_8Heap, Result_8Mask);
            b_26 := b_26 && sumMask(Result_8Mask, Ops_9Mask, Used_12Mask);
            b_26 := (b_26 && IdenticalOnKnownLocations(Ops_9Heap, Result_8Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_8Heap, Used_12Mask);
            b_26 := b_26 && state(Result_8Heap, Result_8Mask);
          b_24_1 := b_24_1 && b_26;
        b_24_1 := b_24_1 && b_25;
        b_24_1 := b_24_1 && Used_12Heap == Ops_9Heap;
        perm := FullPerm;
        b_24_1 := b_24_1 && p_1 != null;
        Ops_9Mask := Ops_9Mask[p_1, f_7:=Ops_9Mask[p_1, f_7] + perm];
        b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
        perm := FullPerm;
        b_24_1 := b_24_1 && p_1 != null;
        Ops_9Mask := Ops_9Mask[p_1, g:=Ops_9Mask[p_1, g] + perm];
        b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
        b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
        b_24_1 := b_24_1 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationacc(p.f, write) && acc(p.g, write)
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_27 := b_27 && state(Used_13Heap, Used_13Mask);
    
    // -- Transfer of acc(p.f, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_13Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.f, write) might be negative. (unfolding.vpr@74.3--77.4) [123044]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_27) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_27 := b_27 && state(Used_13Heap, Used_13Mask);
            b_27 := b_27 && Ops_9Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_27) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_27 := b_27 && state(Used_13Heap, Used_13Mask);
            b_27 := b_27 && Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)][p_1, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (unfolding.vpr@74.3--77.4) [123045]"}
        (b_24_1 && b_24_1) && b_27 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_28 := b_24_1 && b_27;
        b_28 := b_28 && state(Result_9Heap, Result_9Mask);
        b_28 := b_28 && sumMask(Result_9Mask, Ops_9Mask, Used_13Mask);
        b_28 := (b_28 && IdenticalOnKnownLocations(Ops_9Heap, Result_9Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_9Heap, Used_13Mask);
        b_28 := b_28 && state(Result_9Heap, Result_9Mask);
      b_24_1 := b_24_1 && b_28;
    
    // -- Transfer of acc(p.g, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_13Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.g, write) might be negative. (unfolding.vpr@74.3--77.4) [123046]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_27) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, g:=Used_13Mask[rcvLocal, g] + takeTransfer];
            b_27 := b_27 && state(Used_13Heap, Used_13Mask);
            b_27 := b_27 && Ops_9Heap[rcvLocal, g] == Used_13Heap[rcvLocal, g];
            Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_27) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, g:=Used_13Mask[rcvLocal, g] + takeTransfer];
            b_27 := b_27 && state(Used_13Heap, Used_13Mask);
            b_27 := b_27 && Heap[rcvLocal, g] == Used_13Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)][p_1, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (unfolding.vpr@74.3--77.4) [123047]"}
        (b_24_1 && b_24_1) && b_27 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_29 := b_24_1 && b_27;
        b_29 := b_29 && state(Result_10Heap, Result_10Mask);
        b_29 := b_29 && sumMask(Result_10Mask, Ops_9Mask, Used_13Mask);
        b_29 := (b_29 && IdenticalOnKnownLocations(Ops_9Heap, Result_10Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_10Heap, Used_13Mask);
        b_29 := b_29 && state(Result_10Heap, Result_10Mask);
      b_24_1 := b_24_1 && b_29;
    Mask := Mask[null, wand_3(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_3(p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}