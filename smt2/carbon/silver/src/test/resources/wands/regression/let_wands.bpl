// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:05:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/let_wands.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/let_wands-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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

type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_4#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg1_2: Ref, arg2_2: Ref, arg3_2: int, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref, arg7_2: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref, arg5_2: Ref, arg6_2: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5)) == 5
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: Ref, arg5: Perm, arg1_2: Ref, arg2_2: Ref, arg3_2: int, arg4_2: Ref, arg5_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Pair(p) (let_wands.vpr@11.1--13.44) [132063]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.f (let_wands.vpr@11.1--13.44) [132064]"}
        HasDirectPerm(UnfoldingMask, p_1, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.g (let_wands.vpr@11.1--13.44) [132065]"}
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
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var w_2: int;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: w := x.f -- let_wands.vpr@19.3--19.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@19.3--19.20) [132066]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f == w --* acc(x.f, write) && x.f == old(x.f) {
  // } -- let_wands.vpr@20.3--20.63
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
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        if (b_1_1) {
          
          // -- Check definedness of x.f == w
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@20.3--20.63) [132067]"}
              HasDirectPerm(Ops_1Mask, x, f_7);
        }
        b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == w_2;
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- let_wands.vpr@20.11--20.63
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == old(x.f)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (let_wands.vpr@20.3--20.63) [132068]"}
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
            Heap := Heap[null, wand#sm(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7]):=Heap[null, wand#sm(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@20.3--20.63) [132069]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if ((b_1_1 && b_1_1) && b_2_1) {
      if (b_1_1) {
        
        // -- Check definedness of x.f == old(x.f)
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@20.3--20.63) [132070]"}
            HasDirectPerm(ResultMask, x, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@20.3--20.63) [132071]"}
            HasDirectPerm(oldMask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == old(x.f) might not hold. (let_wands.vpr@20.3--20.63) [132072]"}
      (b_1_1 && b_1_1) && b_2_1 ==> ResultHeap[x, f_7] == oldHeap[x, f_7];
    Mask := Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7]):=Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) && x.f == old(x.f) --* acc(x.f, write) && x.f == w -- let_wands.vpr@22.3--22.61
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@22.3--22.61) [132073]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, oldHeap[x, f_7], x, FullPerm, x, w_2)];
      Mask := Mask[null, wand(x, FullPerm, x, oldHeap[x, f_7], x, FullPerm, x, w_2):=Mask[null, wand(x, FullPerm, x, oldHeap[x, f_7], x, FullPerm, x, w_2)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@22.3--22.61) [132075]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      assert {:msg "  Applying wand might fail. Assertion x.f == old(x.f) might not hold. (let_wands.vpr@22.3--22.61) [132076]"}
        Heap[x, f_7] == oldHeap[x, f_7];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == w_2;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.f (let_wands.vpr@17.11--17.19) [132078]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var w_2: int;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: w := x.f -- let_wands.vpr@29.3--29.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@29.3--29.20) [132079]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f == w --* acc(x.f, write) && x.f == old(x.f) {
  // } -- let_wands.vpr@30.3--30.63
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      if (b_5) {
        perm := FullPerm;
        b_5 := b_5 && x != null;
        Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_5) {
        if (b_5) {
          
          // -- Check definedness of x.f == w
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@30.3--30.63) [132080]"}
              HasDirectPerm(Ops_3Mask, x, f_7);
        }
        b_5 := b_5 && Ops_3Heap[x, f_7] == w_2;
      }
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- let_wands.vpr@30.11--30.63
      lhs4:
      Labellhs4Heap := Ops_3Heap;
      Labellhs4Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == old(x.f)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (let_wands.vpr@30.3--30.63) [132081]"}
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
            Heap := Heap[null, wand#sm(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7]):=Heap[null, wand#sm(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@30.3--30.63) [132082]"}
        (b_5 && b_5) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_5 && b_6;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_5 := b_5 && b_7;
    if ((b_5 && b_5) && b_6) {
      if (b_5) {
        
        // -- Check definedness of x.f == old(x.f)
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@30.3--30.63) [132083]"}
            HasDirectPerm(Result_1Mask, x, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@30.3--30.63) [132084]"}
            HasDirectPerm(oldMask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == old(x.f) might not hold. (let_wands.vpr@30.3--30.63) [132085]"}
      (b_5 && b_5) && b_6 ==> Result_1Heap[x, f_7] == oldHeap[x, f_7];
    Mask := Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7]):=Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 0 -- let_wands.vpr@32.3--32.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@32.3--32.11) [132086]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) && x.f == w --* acc(x.f, write) && x.f == old(x.f) -- let_wands.vpr@35.3--35.61
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@35.3--35.61) [132087]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])];
      Mask := Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7]):=Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@35.3--35.61) [132089]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      assert {:msg "  Applying wand might fail. Assertion x.f == w might not hold. (let_wands.vpr@35.3--35.61) [132090]"}
        Heap[x, f_7] == w_2;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == oldHeap[x, f_7];
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access x.f (let_wands.vpr@27.11--27.19) [132092]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var a_2: int;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var w_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (let_wands.vpr@40.12--40.75) [132093]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    
    // -- Check definedness of acc(x.f, write) && x.f == a --* acc(x.f, write) && x.f == a
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of x.f == a
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (let_wands.vpr@40.12--40.75) [132094]"}
            HasDirectPerm(WandDefLHSMask, x, f_7);
        assume WandDefLHSHeap[x, f_7] == a_2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- let_wands.vpr@40.30--40.75
          lhs7:
          Labellhs7Heap := WandDefLHSHeap;
          Labellhs7Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == a
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (let_wands.vpr@40.12--40.75) [132095]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == a_2;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, FullPerm, x, a_2, x, FullPerm, x, a_2):=Mask[null, wand(x, FullPerm, x, a_2, x, FullPerm, x, a_2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: w := x.f -- let_wands.vpr@42.3--42.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@42.3--42.20) [132096]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) && x.f == w --* acc(x.f, write) && x.f == old(x.f) -- let_wands.vpr@43.3--43.61
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@43.3--43.61) [132097]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])];
      Mask := Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7]):=Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, oldHeap[x, f_7])] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@43.3--43.61) [132099]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      assert {:msg "  Applying wand might fail. Assertion x.f == w might not hold. (let_wands.vpr@43.3--43.61) [132100]"}
        Heap[x, f_7] == w_2;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == oldHeap[x, f_7];
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
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
  var a_2: int;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var w_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (let_wands.vpr@48.12--48.75) [132102]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    
    // -- Check definedness of acc(x.f, write) && x.f == a --* acc(x.f, write) && x.f == 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of x.f == a
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (let_wands.vpr@48.12--48.75) [132103]"}
            HasDirectPerm(WandDefLHSMask, x, f_7);
        assume WandDefLHSHeap[x, f_7] == a_2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- let_wands.vpr@48.30--48.75
          lhs9:
          Labellhs9Heap := WandDefLHSHeap;
          Labellhs9Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (let_wands.vpr@48.12--48.75) [132104]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, FullPerm, x, a_2, x, FullPerm, x, 0):=Mask[null, wand(x, FullPerm, x, a_2, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: w := x.f -- let_wands.vpr@50.3--50.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@50.3--50.20) [132105]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 0 -- let_wands.vpr@51.3--51.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@51.3--51.11) [132106]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) && x.f == w --* acc(x.f, write) && x.f == 0 -- let_wands.vpr@53.3--53.54
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@53.3--53.54) [132107]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, 0)];
      Mask := Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, 0):=Mask[null, wand(x, FullPerm, x, w_2, x, FullPerm, x, 0)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@53.3--53.54) [132109]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      assert {:msg "  Applying wand might fail. Assertion x.f == w might not hold. (let_wands.vpr@53.3--53.54) [132110]"}
        Heap[x, f_7] == w_2;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == 0;
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

procedure test05(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var w_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of sum(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@58.22--58.28) [132112]"}
          NoPerm < perm ==> NoPerm < Mask[null, Pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := sum(Heap, x);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(Pair(x), write) && sum(x) == a --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Pair(x):=WandDefLHSMask[null, Pair(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of sum(x) == a
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := WandDefLHSHeap;
            ExhaleWellDef0Mask := WandDefLHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@58.49--58.55) [132113]"}
              NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Pair(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
            WandDefLHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume sum(WandDefLHSHeap, x) == a_2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs11 -- let_wands.vpr@58.33--58.73
          lhs11:
          Labellhs11Heap := WandDefLHSHeap;
          Labellhs11Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, x, a_2, y, FullPerm):=Mask[null, wand_1(x, x, a_2, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
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
    perm := FullPerm;
    assume y != null;
    PostMask := PostMask[y, f_7:=PostMask[y, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Pair(x), write) -- let_wands.vpr@61.3--61.22
    assume Pair#trigger(Heap, Pair(x));
    assume Heap[null, Pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Pair(x) might fail. There might be insufficient permission to access Pair(x) (let_wands.vpr@61.3--61.22) [132116]"}
        perm <= Mask[null, Pair(x)];
    }
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Pair(x))) {
        havoc newVersion;
        Heap := Heap[null, Pair(x):=newVersion];
      }
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
  
  // -- Translating statement: fold acc(Pair(x), write) -- let_wands.vpr@62.3--62.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.f (let_wands.vpr@62.3--62.20) [132121]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.g (let_wands.vpr@62.3--62.20) [132123]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Pair#trigger(Heap, Pair(x));
    assume Heap[null, Pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    if (!HasDirectPerm(Mask, null, Pair(x))) {
      Heap := Heap[null, Pair#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Pair(x):=freshVersion];
    }
    Heap := Heap[null, Pair#sm(x):=Heap[null, Pair#sm(x)][x, f_7:=true]];
    Heap := Heap[null, Pair#sm(x):=Heap[null, Pair#sm(x)][x, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: w := sum(x) -- let_wands.vpr@64.3--64.23
    
    // -- Check definedness of sum(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@64.17--64.23) [132125]"}
          NoPerm < perm ==> NoPerm < Mask[null, Pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    w_2 := sum(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(Pair(x), write) && sum(x) == w --* acc(y.f, write) -- let_wands.vpr@65.3--65.49
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@65.3--65.49) [132126]"}
        FullPerm <= Mask[null, wand_1(x, x, w_2, y, FullPerm)];
      Mask := Mask[null, wand_1(x, x, w_2, y, FullPerm):=Mask[null, wand_1(x, x, w_2, y, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Pair(x) (let_wands.vpr@65.3--65.49) [132128]"}
          perm <= Mask[null, Pair(x)];
      }
      Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] - perm];
      assert {:msg "  Applying wand might fail. Assertion sum(x) == w might not hold. (let_wands.vpr@65.3--65.49) [132129]"}
        sum(Heap, x) == w_2;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test05 might not hold. There might be insufficient permission to access y.f (let_wands.vpr@59.11--59.19) [132131]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of sum(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@70.22--70.28) [132132]"}
          NoPerm < perm ==> NoPerm < Mask[null, Pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := sum(Heap, x);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(Pair(x), write) && sum(x) == a --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Pair(x):=WandDefLHSMask[null, Pair(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of sum(x) == a
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := WandDefLHSHeap;
            ExhaleWellDef0Mask := WandDefLHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@70.49--70.55) [132133]"}
              NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Pair(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
            WandDefLHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume sum(WandDefLHSHeap, x) == a_2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs13 -- let_wands.vpr@70.33--70.73
          lhs13:
          Labellhs13Heap := WandDefLHSHeap;
          Labellhs13Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, x, a_2, y, FullPerm):=Mask[null, wand_1(x, x, a_2, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
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
    perm := FullPerm;
    assume y != null;
    PostMask := PostMask[y, f_7:=PostMask[y, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Pair(x), write) -- let_wands.vpr@73.3--73.22
    assume Pair#trigger(Heap, Pair(x));
    assume Heap[null, Pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Pair(x) might fail. There might be insufficient permission to access Pair(x) (let_wands.vpr@73.3--73.22) [132136]"}
        perm <= Mask[null, Pair(x)];
    }
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Pair(x))) {
        havoc newVersion;
        Heap := Heap[null, Pair(x):=newVersion];
      }
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
  
  // -- Translating statement: x.f := x.g -- let_wands.vpr@74.3--74.13
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (let_wands.vpr@74.3--74.13) [132139]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@74.3--74.13) [132140]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[x, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Pair(x), write) -- let_wands.vpr@75.3--75.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.f (let_wands.vpr@75.3--75.20) [132143]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.g (let_wands.vpr@75.3--75.20) [132145]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Pair#trigger(Heap, Pair(x));
    assume Heap[null, Pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    if (!HasDirectPerm(Mask, null, Pair(x))) {
      Heap := Heap[null, Pair#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Pair(x):=freshVersion];
    }
    Heap := Heap[null, Pair#sm(x):=Heap[null, Pair#sm(x)][x, f_7:=true]];
    Heap := Heap[null, Pair#sm(x):=Heap[null, Pair#sm(x)][x, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(Pair(x), write) && sum(x) == old(sum(x)) --* acc(y.f, write) -- let_wands.vpr@78.3--78.59
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@78.3--78.59) [132147]"}
        FullPerm <= Mask[null, wand_1(x, x, sum(oldHeap, x), y, FullPerm)];
      Mask := Mask[null, wand_1(x, x, sum(oldHeap, x), y, FullPerm):=Mask[null, wand_1(x, x, sum(oldHeap, x), y, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Pair(x) (let_wands.vpr@78.3--78.59) [132149]"}
          perm <= Mask[null, Pair(x)];
      }
      Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] - perm];
      assert {:msg "  Applying wand might fail. Assertion sum(x) == old(sum(x)) might not hold. (let_wands.vpr@78.3--78.59) [132150]"}
        sum(Heap, x) == sum(oldHeap, x);
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test07 might not hold. There might be insufficient permission to access y.f (let_wands.vpr@71.11--71.19) [132152]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
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
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var boolCur_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var freshVersion: FrameType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_13: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_14: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Labellhs17Heap: HeapType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
  
  // -- Translating statement: package acc(x.f, write) --*
  // acc(Pair(x), write) && sum(x) == old[lhs](x.f) + old(x.g) {
  //   fold acc(Pair(x), write)
  // } -- let_wands.vpr@87.3--89.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      perm := FullPerm;
      b_9 := b_9 && x != null;
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs15 -- let_wands.vpr@87.11--87.20
      lhs15:
      Labellhs15Heap := Ops_5Heap;
      Labellhs15Mask := Ops_5Mask;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_9) {
      
      // -- Translating statement: fold acc(Pair(x), write) -- let_wands.vpr@88.7--88.24
        ExhaleWellDef0Heap := Ops_5Heap;
        ExhaleWellDef0Mask := Ops_5Mask;
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_10 := b_10 && state(Used_5Heap, Used_5Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.f, write) might be negative. (let_wands.vpr@88.7--88.24) [132154]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
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
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_2#sm(x, FullPerm, x, x, x, oldHeap[x, g]):=Heap[null, wand_2#sm(x, FullPerm, x, x, x, oldHeap[x, g])][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.f (let_wands.vpr@88.7--88.24) [132155]"}
            b_9 && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_11 := b_9 && b_10;
            b_11 := b_11 && state(Result_2Heap, Result_2Mask);
            b_11 := b_11 && sumMask(Result_2Mask, Ops_5Mask, Used_5Mask);
            b_11 := (b_11 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_2Heap, Used_5Mask);
            b_11 := b_11 && state(Result_2Heap, Result_2Mask);
          b_9 := b_9 && b_11;
        b_9 := b_9 && b_10;
        b_9 := b_9 && Used_5Heap == Ops_5Heap;
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_5Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.g, write) might be negative. (let_wands.vpr@88.7--88.24) [132156]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
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
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_2#sm(x, FullPerm, x, x, x, oldHeap[x, g]):=Heap[null, wand_2#sm(x, FullPerm, x, x, x, oldHeap[x, g])][x, g:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.g (let_wands.vpr@88.7--88.24) [132157]"}
            b_9 && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_9 && b_10;
            b_12 := b_12 && state(Result_3Heap, Result_3Mask);
            b_12 := b_12 && sumMask(Result_3Mask, Ops_5Mask, Used_5Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_3Heap, Used_5Mask);
            b_12 := b_12 && state(Result_3Heap, Result_3Mask);
          b_9 := b_9 && b_12;
        b_9 := b_9 && b_10;
        b_9 := b_9 && Used_5Heap == Ops_5Heap;
        perm := FullPerm;
        b_9 := b_9;
        Ops_5Mask := Ops_5Mask[null, Pair(x):=Ops_5Mask[null, Pair(x)] + perm];
        b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
        b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
        assume Pair#trigger(Ops_5Heap, Pair(x));
        assume Ops_5Heap[null, Pair(x)] == CombineFrames(FrameFragment(Ops_5Heap[x, f_7]), FrameFragment(Ops_5Heap[x, g]));
        if (!HasDirectPerm(Ops_5Mask, null, Pair(x))) {
          Ops_5Heap := Ops_5Heap[null, Pair#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_5Heap := Ops_5Heap[null, Pair(x):=freshVersion];
        }
        Ops_5Heap := Ops_5Heap[null, Pair#sm(x):=Ops_5Heap[null, Pair#sm(x)][x, f_7:=true]];
        Ops_5Heap := Ops_5Heap[null, Pair#sm(x):=Ops_5Heap[null, Pair#sm(x)][x, g:=true]];
        assume state(Ops_5Heap, Ops_5Mask);
        b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(Pair(x), write) && sum(x) == old[lhs](x.f) + old(x.g)
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_13 := b_13 && state(Used_6Heap, Used_6Mask);
    
    // -- Transfer of acc(Pair(x), write)
      arg_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_6Mask[null, Pair(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Pair(x), write) might be negative. (let_wands.vpr@87.3--89.4) [132159]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, Pair(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, Pair(arg_1):=Used_6Mask[null, Pair(arg_1)] + takeTransfer];
            b_13 := b_13 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, Pair(arg_1):=FullPerm];
            b_13 := b_13 && IdenticalOnKnownLocations(Ops_5Heap, Used_6Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, Pair(arg_1):=Ops_5Mask[null, Pair(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Pair(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, Pair(arg_1):=Used_6Mask[null, Pair(arg_1)] + takeTransfer];
            b_13 := b_13 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, Pair(arg_1):=FullPerm];
            b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
            Mask := Mask[null, Pair(arg_1):=Mask[null, Pair(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand_2#sm(x, FullPerm, x, x, x, oldHeap[x, g])][o_15, f_20] || Heap[null, Pair#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand_2#sm(x, FullPerm, x, x, x, oldHeap[x, g]):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Pair(x) (let_wands.vpr@87.3--89.4) [132160]"}
        (b_9 && b_9) && b_13 ==> neededTransfer == 0.000000000 && Used_6Mask[null, Pair(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_9 && b_13;
        b_14 := b_14 && state(Result_4Heap, Result_4Mask);
        b_14 := b_14 && sumMask(Result_4Mask, Ops_5Mask, Used_6Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_4Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_4Heap, Used_6Mask);
        b_14 := b_14 && state(Result_4Heap, Result_4Mask);
      b_9 := b_9 && b_14;
    if ((b_9 && b_9) && b_13) {
      if (b_9) {
        
        // -- Check definedness of sum(x) == old[lhs](x.f) + old(x.g)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Result_4Heap;
            ExhaleWellDef0Mask := Result_4Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@87.19--87.20) [132161]"}
              NoPerm < perm ==> NoPerm < Result_4Mask[null, Pair(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Result_4Heap, ExhaleHeap, Result_4Mask);
            Result_4Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@87.3--89.4) [132162]"}
            HasDirectPerm(Labellhs15Mask, x, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (let_wands.vpr@87.3--89.4) [132163]"}
            HasDirectPerm(oldMask, x, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion sum(x) == old[lhs](x.f) + old(x.g) might not hold. (let_wands.vpr@87.3--89.4) [132164]"}
      (b_9 && b_9) && b_13 ==> sum(Result_4Heap, x) == Labellhs15Heap[x, f_7] + oldHeap[x, g];
    assume state(Heap, Mask);
    Mask := Mask[null, wand_2(x, FullPerm, x, x, x, oldHeap[x, g]):=Mask[null, wand_2(x, FullPerm, x, x, x, oldHeap[x, g])] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --*
  //   acc(Pair(x), write) && sum(x) == old[lhs](x.f) + old(x.g) -- let_wands.vpr@90.3--90.16
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@90.3--90.16) [132165]"}
        FullPerm <= Mask[null, wand_2(x, FullPerm, x, x, x, oldHeap[x, g])];
      Mask := Mask[null, wand_2(x, FullPerm, x, x, x, oldHeap[x, g]):=Mask[null, wand_2(x, FullPerm, x, x, x, oldHeap[x, g])] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@90.3--90.16) [132167]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume sum(Heap, x) == Labellhs17Heap[x, f_7] + oldHeap[x, g];
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Pair(x), write) -- let_wands.vpr@92.3--92.22
    assume Pair#trigger(Heap, Pair(x));
    assume Heap[null, Pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Pair(x) might fail. There might be insufficient permission to access Pair(x) (let_wands.vpr@92.3--92.22) [132171]"}
        perm <= Mask[null, Pair(x)];
    }
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Pair(x))) {
        havoc newVersion;
        Heap := Heap[null, Pair(x):=newVersion];
      }
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
  
  // -- Translating statement: assert false -- let_wands.vpr@95.3--95.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (let_wands.vpr@95.10--95.15) [132174]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test10
// ==================================================

procedure test10(b_24: bool, x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var w_2: int;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_16: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_15: bool;
  var Labellhs18Heap: HeapType;
  var Labellhs18Mask: MaskType;
  var boolCur_3: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_17: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_18: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs20Heap: HeapType;
  var Labellhs20Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_20: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_19: bool;
  var Labellhs21Heap: HeapType;
  var Labellhs21Mask: MaskType;
  var boolCur_4: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_21: bool;
  var b_22: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var Labellhs23Heap: HeapType;
  var Labellhs23Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume x != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 1 -- let_wands.vpr@102.3--102.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@102.3--102.11) [132175]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: w := x.f -- let_wands.vpr@103.3--103.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@103.3--103.20) [132176]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f == w - 1 --* acc(x.f, write) && x.f == 0 {
  // } -- let_wands.vpr@104.3--104.60
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_16 := b_16 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_15 := b_15 && state(Used_7Heap, Used_7Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_16) {
      if (b_16) {
        perm := FullPerm;
        b_16 := b_16 && x != null;
        Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
        b_16 := b_16 && state(Ops_7Heap, Ops_7Mask);
      }
      if (b_16) {
        if (b_16) {
          
          // -- Check definedness of x.f == w - 1
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@104.3--104.60) [132177]"}
              HasDirectPerm(Ops_7Mask, x, f_7);
        }
        b_16 := b_16 && Ops_7Heap[x, f_7] == w_2 - 1;
      }
    }
    b_16 := b_16 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs18 -- let_wands.vpr@104.11--104.60
      lhs18:
      Labellhs18Heap := Ops_7Heap;
      Labellhs18Mask := Ops_7Mask;
      b_16 := b_16 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 0
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_17 := b_17 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (let_wands.vpr@104.3--104.60) [132178]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_16 && b_16) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
            b_17 := b_17 && state(Used_8Heap, Used_8Mask);
            b_17 := b_17 && Ops_7Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
            Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_16 && b_16) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
            b_17 := b_17 && state(Used_8Heap, Used_8Mask);
            b_17 := b_17 && Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0):=Heap[null, wand#sm(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@104.3--104.60) [132179]"}
        (b_16 && b_16) && b_17 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_18 := b_16 && b_17;
        b_18 := b_18 && state(Result_5Heap, Result_5Mask);
        b_18 := b_18 && sumMask(Result_5Mask, Ops_7Mask, Used_8Mask);
        b_18 := (b_18 && IdenticalOnKnownLocations(Ops_7Heap, Result_5Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_5Heap, Used_8Mask);
        b_18 := b_18 && state(Result_5Heap, Result_5Mask);
      b_16 := b_16 && b_18;
    if ((b_16 && b_16) && b_17) {
      if (b_16) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@104.3--104.60) [132180]"}
            HasDirectPerm(Result_5Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (let_wands.vpr@104.3--104.60) [132181]"}
      (b_16 && b_16) && b_17 ==> Result_5Heap[x, f_7] == 0;
    Mask := Mask[null, wand(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0):=Mask[null, wand(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) && x.f == 0 --* acc(x.f, write) && x.f == 0 -- let_wands.vpr@106.3--106.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(x.f, write) && x.f == 0 --* acc(x.f, write) && x.f == 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (let_wands.vpr@106.10--106.55) [132182]"}
            HasDirectPerm(WandDefLHSMask, x, f_7);
        assume WandDefLHSHeap[x, f_7] == 0;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs20 -- let_wands.vpr@106.10--106.55
          lhs20:
          Labellhs20Heap := WandDefLHSHeap;
          Labellhs20Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (let_wands.vpr@106.10--106.55) [132183]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (let_wands.vpr@106.10--106.55) [132184]"}
      FullPerm <= Mask[null, wand(x, FullPerm, x, 0, x, FullPerm, x, 0)];
    Mask := Mask[null, wand(x, FullPerm, x, 0, x, FullPerm, x, 0):=Mask[null, wand(x, FullPerm, x, 0, x, FullPerm, x, 0)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: w := x.f -- let_wands.vpr@108.3--108.11
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@108.3--108.11) [132185]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f == w - 1 --* acc(x.f, write) && x.f == 0 {
  // } -- let_wands.vpr@109.3--109.60
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_20 := b_20 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_19 := b_19 && state(Used_9Heap, Used_9Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_20) {
      if (b_20) {
        perm := FullPerm;
        b_20 := b_20 && x != null;
        Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
        b_20 := b_20 && state(Ops_9Heap, Ops_9Mask);
      }
      if (b_20) {
        if (b_20) {
          
          // -- Check definedness of x.f == w - 1
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@109.3--109.60) [132186]"}
              HasDirectPerm(Ops_9Mask, x, f_7);
        }
        b_20 := b_20 && Ops_9Heap[x, f_7] == w_2 - 1;
      }
    }
    b_20 := b_20 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs21 -- let_wands.vpr@109.11--109.60
      lhs21:
      Labellhs21Heap := Ops_9Heap;
      Labellhs21Mask := Ops_9Mask;
      b_20 := b_20 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 0
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_21 := b_21 && state(Used_10Heap, Used_10Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (let_wands.vpr@109.3--109.60) [132187]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_21) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_21 := b_21 && state(Used_10Heap, Used_10Mask);
            b_21 := b_21 && Ops_9Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_21) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_21 := b_21 && state(Used_10Heap, Used_10Mask);
            b_21 := b_21 && Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0):=Heap[null, wand#sm(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@109.3--109.60) [132188]"}
        (b_20 && b_20) && b_21 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_22 := b_20 && b_21;
        b_22 := b_22 && state(Result_6Heap, Result_6Mask);
        b_22 := b_22 && sumMask(Result_6Mask, Ops_9Mask, Used_10Mask);
        b_22 := (b_22 && IdenticalOnKnownLocations(Ops_9Heap, Result_6Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_6Heap, Used_10Mask);
        b_22 := b_22 && state(Result_6Heap, Result_6Mask);
      b_20 := b_20 && b_22;
    if ((b_20 && b_20) && b_21) {
      if (b_20) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@109.3--109.60) [132189]"}
            HasDirectPerm(Result_6Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (let_wands.vpr@109.3--109.60) [132190]"}
      (b_20 && b_20) && b_21 ==> Result_6Heap[x, f_7] == 0;
    Mask := Mask[null, wand(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0):=Mask[null, wand(x, FullPerm, x, w_2 - 1, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 10 -- let_wands.vpr@111.3--111.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@111.3--111.12) [132191]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=10];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) && x.f == 10 --* acc(x.f, write) && x.f == 0 -- let_wands.vpr@114.3--114.56
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(x.f, write) && x.f == 10 --* acc(x.f, write) && x.f == 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of x.f == 10
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (let_wands.vpr@114.10--114.56) [132192]"}
            HasDirectPerm(WandDefLHSMask, x, f_7);
        assume WandDefLHSHeap[x, f_7] == 10;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs23 -- let_wands.vpr@114.10--114.56
          lhs23:
          Labellhs23Heap := WandDefLHSHeap;
          Labellhs23Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (let_wands.vpr@114.10--114.56) [132193]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (let_wands.vpr@114.10--114.56) [132194]"}
      FullPerm <= Mask[null, wand(x, FullPerm, x, 10, x, FullPerm, x, 0)];
    Mask := Mask[null, wand(x, FullPerm, x, 10, x, FullPerm, x, 0):=Mask[null, wand(x, FullPerm, x, 10, x, FullPerm, x, 0)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test11
// ==================================================

procedure test11(b_24: bool, x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var w_2: int;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_24_1: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_23: bool;
  var Labellhs24Heap: HeapType;
  var Labellhs24Mask: MaskType;
  var boolCur_5: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_25: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_26: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_28: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_27: bool;
  var Labellhs27Heap: HeapType;
  var Labellhs27Mask: MaskType;
  var boolCur_6: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_29: bool;
  var b_30: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs29Heap: HeapType;
  var Labellhs29Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume x != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: w := x.f -- let_wands.vpr@121.3--121.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@121.3--121.20) [132195]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f > w --* acc(x.f, write) {
  // } -- let_wands.vpr@122.3--122.43
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_23 := b_23 && state(Used_11Heap, Used_11Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_24_1) {
      if (b_24_1) {
        perm := FullPerm;
        b_24_1 := b_24_1 && x != null;
        Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
        b_24_1 := b_24_1 && state(Ops_11Heap, Ops_11Mask);
      }
      if (b_24_1) {
        if (b_24_1) {
          
          // -- Check definedness of x.f > w
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@122.3--122.43) [132196]"}
              HasDirectPerm(Ops_11Mask, x, f_7);
        }
        b_24_1 := b_24_1 && Ops_11Heap[x, f_7] > w_2;
      }
    }
    b_24_1 := b_24_1 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs24 -- let_wands.vpr@122.11--122.43
      lhs24:
      Labellhs24Heap := Ops_11Heap;
      Labellhs24Mask := Ops_11Mask;
      b_24_1 := b_24_1 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_25 := b_25 && state(Used_12Heap, Used_12Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_12Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (let_wands.vpr@122.3--122.43) [132197]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_25) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[rcvLocal, f_7:=Used_12Mask[rcvLocal, f_7] + takeTransfer];
            b_25 := b_25 && state(Used_12Heap, Used_12Mask);
            b_25 := b_25 && Ops_11Heap[rcvLocal, f_7] == Used_12Heap[rcvLocal, f_7];
            Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_25) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[rcvLocal, f_7:=Used_12Mask[rcvLocal, f_7] + takeTransfer];
            b_25 := b_25 && state(Used_12Heap, Used_12Mask);
            b_25 := b_25 && Heap[rcvLocal, f_7] == Used_12Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(x, FullPerm, x, w_2, x, FullPerm):=Heap[null, wand_3#sm(x, FullPerm, x, w_2, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@122.3--122.43) [132198]"}
        (b_24_1 && b_24_1) && b_25 ==> neededTransfer == 0.000000000 && Used_12Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_26 := b_24_1 && b_25;
        b_26 := b_26 && state(Result_7Heap, Result_7Mask);
        b_26 := b_26 && sumMask(Result_7Mask, Ops_11Mask, Used_12Mask);
        b_26 := (b_26 && IdenticalOnKnownLocations(Ops_11Heap, Result_7Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_7Heap, Used_12Mask);
        b_26 := b_26 && state(Result_7Heap, Result_7Mask);
      b_24_1 := b_24_1 && b_26;
    Mask := Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := x.f + 1 -- let_wands.vpr@124.3--124.17
    
    // -- Check definedness of x.f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@124.3--124.17) [132199]"}
        HasDirectPerm(Mask, x, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@124.3--124.17) [132200]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[x, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) && x.f > w --* acc(x.f, write) -- let_wands.vpr@125.3--125.41
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@125.3--125.41) [132201]"}
        FullPerm <= Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm)];
      Mask := Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@125.3--125.41) [132203]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      assert {:msg "  Applying wand might fail. Assertion x.f > w might not hold. (let_wands.vpr@125.3--125.41) [132204]"}
        Heap[x, f_7] > w_2;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: w := x.f -- let_wands.vpr@127.3--127.11
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@127.3--127.11) [132206]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f > w --* acc(x.f, write) {
  // } -- let_wands.vpr@128.3--128.43
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_27 := b_27 && state(Used_13Heap, Used_13Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_28) {
      if (b_28) {
        perm := FullPerm;
        b_28 := b_28 && x != null;
        Ops_13Mask := Ops_13Mask[x, f_7:=Ops_13Mask[x, f_7] + perm];
        b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
      }
      if (b_28) {
        if (b_28) {
          
          // -- Check definedness of x.f > w
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@128.3--128.43) [132207]"}
              HasDirectPerm(Ops_13Mask, x, f_7);
        }
        b_28 := b_28 && Ops_13Heap[x, f_7] > w_2;
      }
    }
    b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs27 -- let_wands.vpr@128.11--128.43
      lhs27:
      Labellhs27Heap := Ops_13Heap;
      Labellhs27Mask := Ops_13Mask;
      b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_29 := b_29 && state(Used_14Heap, Used_14Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_14Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (let_wands.vpr@128.3--128.43) [132208]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_13Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
            b_29 := b_29 && state(Used_14Heap, Used_14Mask);
            b_29 := b_29 && Ops_13Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
            Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
            b_29 := b_29 && state(Used_14Heap, Used_14Mask);
            b_29 := b_29 && Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(x, FullPerm, x, w_2, x, FullPerm):=Heap[null, wand_3#sm(x, FullPerm, x, w_2, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (let_wands.vpr@128.3--128.43) [132209]"}
        (b_28 && b_28) && b_29 ==> neededTransfer == 0.000000000 && Used_14Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_30 := b_28 && b_29;
        b_30 := b_30 && state(Result_8Heap, Result_8Mask);
        b_30 := b_30 && sumMask(Result_8Mask, Ops_13Mask, Used_14Mask);
        b_30 := (b_30 && IdenticalOnKnownLocations(Ops_13Heap, Result_8Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_8Heap, Used_14Mask);
        b_30 := b_30 && state(Result_8Heap, Result_8Mask);
      b_28 := b_28 && b_30;
    Mask := Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := x.f + 1 -- let_wands.vpr@130.3--130.17
    
    // -- Check definedness of x.f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@130.3--130.17) [132210]"}
        HasDirectPerm(Mask, x, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@130.3--130.17) [132211]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[x, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: w := x.f -- let_wands.vpr@131.3--131.11
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (let_wands.vpr@131.3--131.11) [132212]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) && x.f > w --* acc(x.f, write) -- let_wands.vpr@134.3--134.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(x.f, write) && x.f > w --* acc(x.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of x.f > w
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (let_wands.vpr@134.10--134.42) [132213]"}
            HasDirectPerm(WandDefLHSMask, x, f_7);
        assume WandDefLHSHeap[x, f_7] > w_2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs29 -- let_wands.vpr@134.10--134.42
          lhs29:
          Labellhs29Heap := WandDefLHSHeap;
          Labellhs29Mask := WandDefLHSMask;
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
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (let_wands.vpr@134.10--134.42) [132214]"}
      FullPerm <= Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm)];
    Mask := Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, w_2, x, FullPerm)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test12
// ==================================================

procedure test12(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var a_2: int;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs30Heap: HeapType;
  var Labellhs30Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var w_2: int;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_32: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_31: bool;
  var Labellhs31Heap: HeapType;
  var Labellhs31Mask: MaskType;
  var boolCur_7: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_33: bool;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Labellhs34Heap: HeapType;
  var Labellhs34Mask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_34: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_35: bool;
  var arg_1_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_36: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_37: bool;
  var rcvLocal: Ref;
  var b_38: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var b_39: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Pair(x):=Mask[null, Pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of sum(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@139.22--139.28) [132215]"}
          NoPerm < perm ==> NoPerm < Mask[null, Pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    a_2 := sum(Heap, x);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(Pair(x), write) && sum(x) == a --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Pair(x):=WandDefLHSMask[null, Pair(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of sum(x) == a
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := WandDefLHSHeap;
            ExhaleWellDef0Mask := WandDefLHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@139.49--139.55) [132216]"}
              NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Pair(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
            WandDefLHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume sum(WandDefLHSHeap, x) == a_2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs30 -- let_wands.vpr@139.33--139.73
          lhs30:
          Labellhs30Heap := WandDefLHSHeap;
          Labellhs30Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume y != null;
        WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, x, a_2, y, FullPerm):=Mask[null, wand_1(x, x, a_2, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: w := sum(x) -- let_wands.vpr@141.3--141.23
    
    // -- Check definedness of sum(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@141.17--141.23) [132217]"}
          NoPerm < perm ==> NoPerm < Mask[null, Pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    w_2 := sum(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(Pair(x), write) && sum(x) == w --*
  // acc(y.f, write) && acc(y.g, write) {
  //   apply acc(Pair(x), write) && sum(x) == w --* acc(y.f, write)
  // } -- let_wands.vpr@144.3--146.4
    havoc Ops_15Heap;
    Ops_15Mask := ZeroMask;
    b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_31 := b_31 && state(Used_15Heap, Used_15Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_32) {
      if (b_32) {
        perm := FullPerm;
        b_32 := b_32;
        Ops_15Mask := Ops_15Mask[null, Pair(x):=Ops_15Mask[null, Pair(x)] + perm];
        b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
      }
      if (b_32) {
        b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
        if (b_32) {
          
          // -- Check definedness of sum(x) == w
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Ops_15Heap;
              ExhaleWellDef0Mask := Ops_15Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@144.28--144.34) [132218]"}
                NoPerm < perm ==> NoPerm < Ops_15Mask[null, Pair(x)];
              // Finish exhale
              havoc ExhaleHeap;
              b_32 := b_32 && IdenticalOnKnownLocations(Ops_15Heap, ExhaleHeap, Ops_15Mask);
              Ops_15Heap := ExhaleHeap;
              // Stop execution
              b_32 := false;
            }
        }
        b_32 := b_32 && sum(Ops_15Heap, x) == w_2;
      }
    }
    b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
    
    // -- Translating statement: label lhs31 -- let_wands.vpr@144.11--144.65
      lhs31:
      Labellhs31Heap := Ops_15Heap;
      Labellhs31Mask := Ops_15Mask;
      b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
    boolCur_7 := true;
    if (b_32) {
      
      // -- Translating statement: apply acc(Pair(x), write) && sum(x) == w --* acc(y.f, write) -- let_wands.vpr@145.7--145.53
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_15Heap;
          ExhaleWellDef0Mask := Ops_15Mask;
          havoc Used_16Heap;
          Used_16Mask := ZeroMask;
          b_33 := b_33 && state(Used_16Heap, Used_16Mask);
          
          // -- Transfer of acc(Pair(x), write) && sum(x) == w --* acc(y.f, write)
            
            // -- checking if access predicate defined in used state
              if (b_32 && b_33) {
                if (b_32) {
                  
                  // -- Check definedness of acc(Pair(x), write) && sum(x) == w --* acc(y.f, write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      WandDefLHSMask := WandDefLHSMask[null, Pair(x):=WandDefLHSMask[null, Pair(x)] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Check definedness of sum(x) == w
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef1Heap := WandDefLHSHeap;
                          ExhaleWellDef1Mask := WandDefLHSMask;
                          perm := FullPerm;
                          assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@145.29--145.35) [132219]"}
                            NoPerm < perm ==> NoPerm < WandDefLHSMask[null, Pair(x)];
                          // Finish exhale
                          havoc ExhaleHeap;
                          assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                          WandDefLHSHeap := ExhaleHeap;
                          // Stop execution
                          assume false;
                        }
                      assume sum(WandDefLHSHeap, x) == w_2;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs34 -- let_wands.vpr@145.13--145.53
                        lhs34:
                        Labellhs34Heap := WandDefLHSHeap;
                        Labellhs34Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume y != null;
                      WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_16Mask[null, wand_1(x, x, w_2, y, FullPerm)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(Pair(x), write) && sum(x) == w --* acc(y.f, write) might be negative. (let_wands.vpr@145.7--145.53) [132220]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_32 && b_33) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_15Mask[null, wand_1(x, x, w_2, y, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_16Mask := Used_16Mask[null, wand_1(x, x, w_2, y, FullPerm):=Used_16Mask[null, wand_1(x, x, w_2, y, FullPerm)] + takeTransfer];
                  b_33 := b_33 && state(Used_16Heap, Used_16Mask);
                  Ops_15Mask := Ops_15Mask[null, wand_1(x, x, w_2, y, FullPerm):=Ops_15Mask[null, wand_1(x, x, w_2, y, FullPerm)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_32 && b_33) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_1(x, x, w_2, y, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_16Mask := Used_16Mask[null, wand_1(x, x, w_2, y, FullPerm):=Used_16Mask[null, wand_1(x, x, w_2, y, FullPerm)] + takeTransfer];
                  b_33 := b_33 && state(Used_16Heap, Used_16Mask);
                  Mask := Mask[null, wand_1(x, x, w_2, y, FullPerm):=Mask[null, wand_1(x, x, w_2, y, FullPerm)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (let_wands.vpr@145.7--145.53) [132221]"}
              b_32 && b_33 ==> neededTransfer == 0.000000000 && Used_16Mask[null, wand_1(x, x, w_2, y, FullPerm)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_34 := b_32 && b_33;
              b_34 := b_34 && state(Result_9Heap, Result_9Mask);
              b_34 := b_34 && sumMask(Result_9Mask, Ops_15Mask, Used_16Mask);
              b_34 := (b_34 && IdenticalOnKnownLocations(Ops_15Heap, Result_9Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_16Heap, Result_9Heap, Used_16Mask);
              b_34 := b_34 && state(Result_9Heap, Result_9Mask);
            b_32 := b_32 && b_34;
          b_32 := b_32 && b_33;
          b_32 := b_32 && Used_16Heap == Ops_15Heap;
        b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_15Heap;
          ExhaleWellDef0Mask := Ops_15Mask;
          havoc Used_17Heap;
          Used_17Mask := ZeroMask;
          b_35 := b_35 && state(Used_17Heap, Used_17Mask);
          
          // -- Transfer of acc(Pair(x), write)
            arg_1_1 := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_17Mask[null, Pair(arg_1_1)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(Pair(x), write) might be negative. (let_wands.vpr@145.7--145.53) [132222]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_32 && b_35) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_15Mask[null, Pair(arg_1_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_17Mask := Used_17Mask[null, Pair(arg_1_1):=Used_17Mask[null, Pair(arg_1_1)] + takeTransfer];
                  b_35 := b_35 && state(Used_17Heap, Used_17Mask);
                  TempMask := ZeroMask[null, Pair(arg_1_1):=FullPerm];
                  b_35 := b_35 && IdenticalOnKnownLocations(Ops_15Heap, Used_17Heap, TempMask);
                  Ops_15Mask := Ops_15Mask[null, Pair(arg_1_1):=Ops_15Mask[null, Pair(arg_1_1)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_32 && b_35) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Pair(arg_1_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_17Mask := Used_17Mask[null, Pair(arg_1_1):=Used_17Mask[null, Pair(arg_1_1)] + takeTransfer];
                  b_35 := b_35 && state(Used_17Heap, Used_17Mask);
                  TempMask := ZeroMask[null, Pair(arg_1_1):=FullPerm];
                  b_35 := b_35 && IdenticalOnKnownLocations(Heap, Used_17Heap, TempMask);
                  Mask := Mask[null, Pair(arg_1_1):=Mask[null, Pair(arg_1_1)] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                    { newPMask[o_16, f_21] }
                    Heap[null, wand_4#sm(x, x, w_2, y, FullPerm, y, FullPerm)][o_16, f_21] || Heap[null, Pair#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
                  );
                  Heap := Heap[null, wand_4#sm(x, x, w_2, y, FullPerm, y, FullPerm):=newPMask];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access Pair(x) (let_wands.vpr@145.7--145.53) [132223]"}
              b_32 && b_35 ==> neededTransfer == 0.000000000 && Used_17Mask[null, Pair(arg_1_1)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_36 := b_32 && b_35;
              b_36 := b_36 && state(Result_10Heap, Result_10Mask);
              b_36 := b_36 && sumMask(Result_10Mask, Ops_15Mask, Used_17Mask);
              b_36 := (b_36 && IdenticalOnKnownLocations(Ops_15Heap, Result_10Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_17Heap, Result_10Heap, Used_17Mask);
              b_36 := b_36 && state(Result_10Heap, Result_10Mask);
            b_32 := b_32 && b_36;
          b_32 := b_32 && b_35;
          b_32 := b_32 && Used_17Heap == Ops_15Heap;
          if (b_32 && b_35) {
            if (b_32) {
              
              // -- Check definedness of sum(x) == w
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := Result_10Heap;
                  ExhaleWellDef1Mask := Result_10Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(x) (let_wands.vpr@145.29--145.35) [132224]"}
                    NoPerm < perm ==> NoPerm < Result_10Mask[null, Pair(x)];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Result_10Heap, ExhaleHeap, Result_10Mask);
                  Result_10Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
            }
          }
          assert {:msg "  Applying wand might fail. Assertion sum(x) == w might not hold. (let_wands.vpr@145.7--145.53) [132225]"}
            b_32 && b_35 ==> sum(Result_10Heap, x) == w_2;
          b_32 := b_32 && b_35;
          b_32 := b_32 && Used_17Heap == Ops_15Heap;
        b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_32 := b_32 && y != null;
          Ops_15Mask := Ops_15Mask[y, f_7:=Ops_15Mask[y, f_7] + perm];
          b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
          b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_15Heap, ExhaleHeap, Ops_15Mask);
        Ops_15Heap := ExhaleHeap;
        b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
        b_32 := b_32 && state(Ops_15Heap, Ops_15Mask);
    }
    // Translating exec of non-ghost operationacc(y.f, write) && acc(y.g, write)
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_37 := b_37 && state(Used_18Heap, Used_18Mask);
    
    // -- Transfer of acc(y.f, write)
      rcvLocal := y;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_18Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(y.f, write) might be negative. (let_wands.vpr@144.3--146.4) [132227]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_32 && b_32) && b_37) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_15Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_18Mask := Used_18Mask[rcvLocal, f_7:=Used_18Mask[rcvLocal, f_7] + takeTransfer];
            b_37 := b_37 && state(Used_18Heap, Used_18Mask);
            b_37 := b_37 && Ops_15Heap[rcvLocal, f_7] == Used_18Heap[rcvLocal, f_7];
            Ops_15Mask := Ops_15Mask[rcvLocal, f_7:=Ops_15Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_32 && b_32) && b_37) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_18Mask := Used_18Mask[rcvLocal, f_7:=Used_18Mask[rcvLocal, f_7] + takeTransfer];
            b_37 := b_37 && state(Used_18Heap, Used_18Mask);
            b_37 := b_37 && Heap[rcvLocal, f_7] == Used_18Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_4#sm(x, x, w_2, y, FullPerm, y, FullPerm):=Heap[null, wand_4#sm(x, x, w_2, y, FullPerm, y, FullPerm)][y, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access y.f (let_wands.vpr@144.3--146.4) [132228]"}
        (b_32 && b_32) && b_37 ==> neededTransfer == 0.000000000 && Used_18Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_38 := b_32 && b_37;
        b_38 := b_38 && state(Result_11Heap, Result_11Mask);
        b_38 := b_38 && sumMask(Result_11Mask, Ops_15Mask, Used_18Mask);
        b_38 := (b_38 && IdenticalOnKnownLocations(Ops_15Heap, Result_11Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_18Heap, Result_11Heap, Used_18Mask);
        b_38 := b_38 && state(Result_11Heap, Result_11Mask);
      b_32 := b_32 && b_38;
    
    // -- Transfer of acc(y.g, write)
      rcvLocal := y;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_18Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(y.g, write) might be negative. (let_wands.vpr@144.3--146.4) [132229]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_32 && b_32) && b_37) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_15Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_18Mask := Used_18Mask[rcvLocal, g:=Used_18Mask[rcvLocal, g] + takeTransfer];
            b_37 := b_37 && state(Used_18Heap, Used_18Mask);
            b_37 := b_37 && Ops_15Heap[rcvLocal, g] == Used_18Heap[rcvLocal, g];
            Ops_15Mask := Ops_15Mask[rcvLocal, g:=Ops_15Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_32 && b_32) && b_37) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_18Mask := Used_18Mask[rcvLocal, g:=Used_18Mask[rcvLocal, g] + takeTransfer];
            b_37 := b_37 && state(Used_18Heap, Used_18Mask);
            b_37 := b_37 && Heap[rcvLocal, g] == Used_18Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_4#sm(x, x, w_2, y, FullPerm, y, FullPerm):=Heap[null, wand_4#sm(x, x, w_2, y, FullPerm, y, FullPerm)][y, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access y.g (let_wands.vpr@144.3--146.4) [132230]"}
        (b_32 && b_32) && b_37 ==> neededTransfer == 0.000000000 && Used_18Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_39 := b_32 && b_37;
        b_39 := b_39 && state(Result_12Heap, Result_12Mask);
        b_39 := b_39 && sumMask(Result_12Mask, Ops_15Mask, Used_18Mask);
        b_39 := (b_39 && IdenticalOnKnownLocations(Ops_15Heap, Result_12Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_18Heap, Result_12Heap, Used_18Mask);
        b_39 := b_39 && state(Result_12Heap, Result_12Mask);
      b_32 := b_32 && b_39;
    assume state(Heap, Mask);
    Mask := Mask[null, wand_4(x, x, w_2, y, FullPerm, y, FullPerm):=Mask[null, wand_4(x, x, w_2, y, FullPerm, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}