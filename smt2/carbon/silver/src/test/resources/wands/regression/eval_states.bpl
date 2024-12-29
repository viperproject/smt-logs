// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:29:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/eval_states.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/eval_states-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand_5(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_5 int;
function  wand_5#sm(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_5 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_5(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_5(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4)) }
  wand_5#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_5(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4)) == 3
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref ::
  { wand_5(arg1, arg2, arg3, arg4), wand_5(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_5(arg1, arg2, arg3, arg4) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_4;
function  wand_4(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_4 int;
function  wand_4#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_4 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_4(arg1, arg2, arg3) }
  IsWandField(wand_4(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_4#ft(arg1, arg2, arg3) }
  IsWandField(wand_4#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_4(arg1, arg2, arg3) }
  !IsPredicateField(wand_4(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_4#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3)) }
  wand_4#sm(arg1, arg2, arg3) == WandMaskField(wand_4#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_4(arg1, arg2, arg3) }
  getPredWandId(wand_4(arg1, arg2, arg3)) == 5
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_4(arg1, arg2, arg3), wand_4(arg1_2, arg2_2, arg3_2) }
  wand_4(arg1, arg2, arg3) == wand_4(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 6
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_1(arg1, arg2) }
  IsWandField(wand_1(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_1#ft(arg1, arg2) }
  IsWandField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_1(arg1, arg2) }
  !IsPredicateField(wand_1(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_1#ft(arg1, arg2) }
  !IsPredicateField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2)) }
  wand_1#sm(arg1, arg2) == WandMaskField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_1(arg1, arg2) }
  getPredWandId(wand_1(arg1, arg2)) == 7
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_1(arg1, arg2), wand_1(arg1_2, arg2_2) }
  wand_1(arg1, arg2) == wand_1(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_6;
function  wand_6(arg1: Ref, arg2: Ref): Field WandType_wand_6 int;
function  wand_6#sm(arg1: Ref, arg2: Ref): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: Ref, arg2: Ref): Field WandType_wand_6 FrameType;
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_6(arg1, arg2) }
  IsWandField(wand_6(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_6#ft(arg1, arg2) }
  IsWandField(wand_6#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_6(arg1, arg2) }
  !IsPredicateField(wand_6(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_6#ft(arg1, arg2) }
  !IsPredicateField(wand_6#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { WandMaskField(wand_6#ft(arg1, arg2)) }
  wand_6#sm(arg1, arg2) == WandMaskField(wand_6#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_6(arg1, arg2) }
  getPredWandId(wand_6(arg1, arg2)) == 8
);
axiom (forall arg1: Ref, arg2: Ref, arg1_2: Ref, arg2_2: Ref ::
  { wand_6(arg1, arg2), wand_6(arg1_2, arg2_2) }
  wand_6(arg1, arg2) == wand_6(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_3;
function  wand_3(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_3(arg1, arg2, arg3, arg4) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_3#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_3(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_3#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4)) }
  wand_3#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_3(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4)) == 9
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref ::
  { wand_3(arg1, arg2, arg3, arg4), wand_3(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_3(arg1, arg2, arg3, arg4) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
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
const unique h: Field NormalField Ref;
axiom !IsPredicateField(h);
axiom !IsWandField(h);

// ==================================================
// Translation of predicate Emp
// ==================================================

type PredicateType_Emp;
function  Emp(l_2: Ref): Field PredicateType_Emp FrameType;
function  Emp#sm(l_2: Ref): Field PredicateType_Emp PMaskType;
axiom (forall l_2: Ref ::
  { PredicateMaskField(Emp(l_2)) }
  PredicateMaskField(Emp(l_2)) == Emp#sm(l_2)
);
axiom (forall l_2: Ref ::
  { Emp(l_2) }
  IsPredicateField(Emp(l_2))
);
axiom (forall l_2: Ref ::
  { Emp(l_2) }
  getPredWandId(Emp(l_2)) == 0
);
function  Emp#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Emp#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall l_2: Ref, l2_2: Ref ::
  { Emp(l_2), Emp(l2_2) }
  Emp(l_2) == Emp(l2_2) ==> l_2 == l2_2
);
axiom (forall l_2: Ref, l2_2: Ref ::
  { Emp#sm(l_2), Emp#sm(l2_2) }
  Emp#sm(l_2) == Emp#sm(l2_2) ==> l_2 == l2_2
);

axiom (forall Heap: HeapType, l_2: Ref ::
  { Emp#trigger(Heap, Emp(l_2)) }
  Emp#everUsed(Emp(l_2))
);

procedure Emp#definedness(l_2: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Emp
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[l_2, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 1
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, h:=Mask[x, h] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.h != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.h (eval_states.vpr@42.1--42.79) [131323]"}
        HasDirectPerm(Mask, x, h);
    assume Heap[x, h] != null;
    
    // -- Check definedness of acc(x.h.h, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.h (eval_states.vpr@42.1--42.79) [131324]"}
        HasDirectPerm(Mask, x, h);
    perm := FullPerm;
    assume Heap[x, h] != null;
    Mask := Mask[Heap[x, h], h:=Mask[Heap[x, h], h] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.h.h != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.h (eval_states.vpr@42.1--42.79) [131325]"}
        HasDirectPerm(Mask, x, h);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.h.h (eval_states.vpr@42.1--42.79) [131326]"}
        HasDirectPerm(Mask, Heap[x, h], h);
    assume Heap[Heap[x, h], h] != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(x: Ref): Field PredicateType_Q FrameType;
function  Q#sm(x: Ref): Field PredicateType_Q PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Q(x)) }
  PredicateMaskField(Q(x)) == Q#sm(x)
);
axiom (forall x: Ref ::
  { Q(x) }
  IsPredicateField(Q(x))
);
axiom (forall x: Ref ::
  { Q(x) }
  getPredWandId(Q(x)) == 2
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Q(x), Q(x2) }
  Q(x) == Q(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Q#sm(x), Q#sm(x2) }
  Q#sm(x) == Q#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Q#trigger(Heap, Q(x)) }
  Q#everUsed(Q(x))
);

procedure Q#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, h:=Mask[x, h] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.h != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.h (eval_states.vpr@43.1--43.48) [131327]"}
        HasDirectPerm(Mask, x, h);
    assume Heap[x, h] != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (eval_states.vpr@9.12--9.50) [131328]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- eval_states.vpr@9.12--9.50
          lhs1:
          Labellhs1Mask := WandDefLHSMask;
          Labellhs1Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (eval_states.vpr@9.12--9.50) [131329]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand(x, 1 / 2, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (eval_states.vpr@10.12--10.25) [131330]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (eval_states.vpr@11.14--12.22) [131331]"}
        HasDirectPerm(PostMask, x, f_7);
    assume PostHeap[x, f_7] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: apply acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0 -- eval_states.vpr@14.3--14.47
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (eval_states.vpr@14.3--14.47) [131332]"}
        FullPerm <= Mask[null, wand(x, 1 / 2, x, FullPerm, x, 0)];
      Mask := Mask[null, wand(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand(x, 1 / 2, x, FullPerm, x, 0)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := 1 / 2;
      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (eval_states.vpr@14.3--14.47) [131333]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (eval_states.vpr@14.3--14.47) [131334]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
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
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.f (eval_states.vpr@11.14--12.22) [131336]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test01 might not hold. Assertion x.f == 0 might not hold. (eval_states.vpr@11.14--12.22) [131337]"}
      Heap[x, f_7] == 0;
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
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var perm: Perm;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var ExhaleHeap: HeapType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var rcvLocal: Ref;
  var b_6: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of true --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- eval_states.vpr@18.12--18.25
          lhs3:
          Labellhs3Mask := WandDefLHSMask;
          Labellhs3Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(true, true):=Mask[null, wand_1(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.g, write) && x.g > 0 --* acc(x.g, write) && x.g > 0 {
  //   apply true --* true
  // } -- eval_states.vpr@20.3--25.8
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
        Ops_1Mask := Ops_1Mask[x, g:=Ops_1Mask[x, g] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        if (b_1_1) {
          
          // -- Check definedness of x.g > 0
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (eval_states.vpr@20.3--25.8) [131338]"}
              HasDirectPerm(Ops_1Mask, x, g);
        }
        b_1_1 := b_1_1 && Ops_1Heap[x, g] > 0;
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs4 -- eval_states.vpr@21.5--23.17
      lhs4:
      Labellhs4Mask := Ops_1Mask;
      Labellhs4Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: apply true --* true -- eval_states.vpr@24.9--24.28
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_1Mask;
          ExhaleWellDef0Heap := Ops_1Heap;
          havoc Used_1Heap;
          Used_1Mask := ZeroMask;
          b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
          
          // -- Transfer of true --* true
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_2_1) {
                if (b_1_1) {
                  
                  // -- Check definedness of true --* true
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs7 -- eval_states.vpr@24.15--24.28
                        lhs7:
                        Labellhs7Mask := WandDefLHSMask;
                        Labellhs7Heap := WandDefLHSHeap;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_1Mask[null, wand_1(true, true)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction true --* true might be negative. (eval_states.vpr@24.9--24.28) [131339]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, wand_1(true, true)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand_1(true, true):=Used_1Mask[null, wand_1(true, true)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Ops_1Mask := Ops_1Mask[null, wand_1(true, true):=Ops_1Mask[null, wand_1(true, true)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_1(true, true)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand_1(true, true):=Used_1Mask[null, wand_1(true, true)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Mask := Mask[null, wand_1(true, true):=Mask[null, wand_1(true, true)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (eval_states.vpr@24.9--24.28) [131340]"}
              b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, wand_1(true, true)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_3 := b_1_1 && b_2_1;
              b_3 := b_3 && state(ResultHeap, ResultMask);
              b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
              b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
              b_3 := b_3 && state(ResultHeap, ResultMask);
            b_1_1 := b_1_1 && b_3;
          b_1_1 := b_1_1 && b_2_1;
          b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Ops_1Mask;
          ExhaleWellDef0Heap := Ops_1Heap;
          havoc Used_2Heap;
          Used_2Mask := ZeroMask;
          b_4 := b_4 && state(Used_2Heap, Used_2Mask);
          b_1_1 := b_1_1 && b_4;
          b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- inhale the RHS of the wand
          b_1_1 := b_1_1;
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.g, write) && x.g > 0
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (eval_states.vpr@20.3--25.8) [131342]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Ops_1Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
            Ops_1Mask := Ops_1Mask[rcvLocal, g:=Ops_1Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_2#sm(x, FullPerm, x, 0, x, FullPerm, x, 0):=Heap[null, wand_2#sm(x, FullPerm, x, 0, x, FullPerm, x, 0)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (eval_states.vpr@20.3--25.8) [131343]"}
        (b_1_1 && b_1_1) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_1_1 && b_5;
        b_6 := b_6 && state(Result_1Heap, Result_1Mask);
        b_6 := b_6 && sumMask(Result_1Mask, Ops_1Mask, Used_3Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_6 := b_6 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_6;
    if ((b_1_1 && b_1_1) && b_5) {
      if (b_1_1) {
        
        // -- Check definedness of x.g > 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (eval_states.vpr@20.3--25.8) [131344]"}
            HasDirectPerm(Result_1Mask, x, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.g > 0 might not hold. (eval_states.vpr@20.3--25.8) [131345]"}
      (b_1_1 && b_1_1) && b_5 ==> Result_1Heap[x, g] > 0;
    Mask := Mask[null, wand_2(x, FullPerm, x, 0, x, FullPerm, x, 0):=Mask[null, wand_2(x, FullPerm, x, 0, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(l_2: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs8Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_8: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var boolCur_1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Labellhs12Mask: MaskType;
  var Labellhs12Heap: HeapType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_10: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var ExhaleHeap: HeapType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_12: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_13: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_14: bool;
  var rcvLocal: Ref;
  var b_15: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume l_2 != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of true --* acc(l.h, write) && acc(Emp(l.h), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs8 -- eval_states.vpr@32.12--32.46
          lhs8:
          Labellhs8Mask := WandDefLHSMask;
          Labellhs8Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume l_2 != null;
        WandDefRHSMask := WandDefRHSMask[l_2, h:=WandDefRHSMask[l_2, h] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(Emp(l.h), write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l.h (eval_states.vpr@32.12--32.46) [131346]"}
            HasDirectPerm(WandDefRHSMask, l_2, h);
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Emp(WandDefRHSHeap[l_2, h]):=WandDefRHSMask[null, Emp(WandDefRHSHeap[l_2, h])] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_3(true, l_2, FullPerm, l_2):=Mask[null, wand_3(true, l_2, FullPerm, l_2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* acc(l.h, write) {
  //   apply true --* acc(l.h, write) && acc(Emp(l.h), write)
  //   unfold acc(Emp(l.h), write)
  // } -- eval_states.vpr@34.3--39.6
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_8) {
      b_8 := b_8;
    }
    b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs9 -- eval_states.vpr@34.11--34.28
      lhs9:
      Labellhs9Mask := Ops_3Mask;
      Labellhs9Heap := Ops_3Heap;
      b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_8) {
      
      // -- Translating statement: apply true --* acc(l.h, write) && acc(Emp(l.h), write) -- eval_states.vpr@35.7--35.47
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_3Mask;
          ExhaleWellDef0Heap := Ops_3Heap;
          havoc Used_5Heap;
          Used_5Mask := ZeroMask;
          b_9 := b_9 && state(Used_5Heap, Used_5Mask);
          
          // -- Transfer of true --* acc(l.h, write) && acc(Emp(l.h), write)
            
            // -- checking if access predicate defined in used state
              if (b_8 && b_9) {
                if (b_8) {
                  
                  // -- Check definedness of true --* acc(l.h, write) && acc(Emp(l.h), write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs12 -- eval_states.vpr@35.13--35.47
                        lhs12:
                        Labellhs12Mask := WandDefLHSMask;
                        Labellhs12Heap := WandDefLHSHeap;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume l_2 != null;
                      WandDefRHSMask := WandDefRHSMask[l_2, h:=WandDefRHSMask[l_2, h] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      
                      // -- Check definedness of acc(Emp(l.h), write)
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.h (eval_states.vpr@35.7--35.47) [131347]"}
                          HasDirectPerm(WandDefRHSMask, l_2, h);
                      perm := FullPerm;
                      WandDefRHSMask := WandDefRHSMask[null, Emp(WandDefRHSHeap[l_2, h]):=WandDefRHSMask[null, Emp(WandDefRHSHeap[l_2, h])] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_5Mask[null, wand_3(true, l_2, FullPerm, l_2)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction true --* acc(l.h, write) && acc(Emp(l.h), write) might be negative. (eval_states.vpr@35.7--35.47) [131348]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_9) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, wand_3(true, l_2, FullPerm, l_2)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_3(true, l_2, FullPerm, l_2):=Used_5Mask[null, wand_3(true, l_2, FullPerm, l_2)] + takeTransfer];
                  b_9 := b_9 && state(Used_5Heap, Used_5Mask);
                  Ops_3Mask := Ops_3Mask[null, wand_3(true, l_2, FullPerm, l_2):=Ops_3Mask[null, wand_3(true, l_2, FullPerm, l_2)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_9) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_3(true, l_2, FullPerm, l_2)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_3(true, l_2, FullPerm, l_2):=Used_5Mask[null, wand_3(true, l_2, FullPerm, l_2)] + takeTransfer];
                  b_9 := b_9 && state(Used_5Heap, Used_5Mask);
                  Mask := Mask[null, wand_3(true, l_2, FullPerm, l_2):=Mask[null, wand_3(true, l_2, FullPerm, l_2)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (eval_states.vpr@35.7--35.47) [131349]"}
              b_8 && b_9 ==> neededTransfer == 0.000000000 && Used_5Mask[null, wand_3(true, l_2, FullPerm, l_2)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_10 := b_8 && b_9;
              b_10 := b_10 && state(Result_2Heap, Result_2Mask);
              b_10 := b_10 && sumMask(Result_2Mask, Ops_3Mask, Used_5Mask);
              b_10 := (b_10 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_2Heap, Used_5Mask);
              b_10 := b_10 && state(Result_2Heap, Result_2Mask);
            b_8 := b_8 && b_10;
          b_8 := b_8 && b_9;
          b_8 := b_8 && Used_5Heap == Ops_3Heap;
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Ops_3Mask;
          ExhaleWellDef0Heap := Ops_3Heap;
          havoc Used_6Heap;
          Used_6Mask := ZeroMask;
          b_11 := b_11 && state(Used_6Heap, Used_6Mask);
          b_8 := b_8 && b_11;
          b_8 := b_8 && Used_6Heap == Ops_3Heap;
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_8 := b_8 && l_2 != null;
          Ops_3Mask := Ops_3Mask[l_2, h:=Ops_3Mask[l_2, h] + perm];
          b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
          perm := FullPerm;
          b_8 := b_8;
          Ops_3Mask := Ops_3Mask[null, Emp(Ops_3Heap[l_2, h]):=Ops_3Mask[null, Emp(Ops_3Heap[l_2, h])] + perm];
          b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
          b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
        Ops_3Heap := ExhaleHeap;
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_8) {
      
      // -- Translating statement: unfold acc(Emp(l.h), write) -- eval_states.vpr@38.7--38.27
        if (b_8) {
          
          // -- Check definedness of acc(Emp(l.h), write)
            assert {:msg "  Unfolding Emp(l.h) might fail. There might be insufficient permission to access l.h (eval_states.vpr@38.7--38.27) [131353]"}
              HasDirectPerm(Ops_3Mask, l_2, h);
        }
        assume Emp#trigger(Ops_3Heap, Emp(Ops_3Heap[l_2, h]));
        assume Ops_3Heap[null, Emp(Ops_3Heap[l_2, h])] == EmptyFrame;
        ExhaleWellDef0Mask := Ops_3Mask;
        ExhaleWellDef0Heap := Ops_3Heap;
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_12 := b_12 && state(Used_7Heap, Used_7Mask);
        
        // -- Transfer of acc(Emp(l.h), write)
          
          // -- checking if access predicate defined in used state
            if (b_8 && b_12) {
              if (b_8) {
                
                // -- Check definedness of acc(Emp(l.h), write)
                  assert {:msg "  Unfolding Emp(l.h) might fail. There might be insufficient permission to access l.h (eval_states.vpr@38.7--38.27) [131355]"}
                    HasDirectPerm(Ops_3Mask, l_2, h);
              }
            }
          arg_1 := Ops_3Heap[l_2, h];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_7Mask[null, Emp(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding Emp(l.h) might fail. Fraction acc(Emp(l.h), write) might be negative. (eval_states.vpr@38.7--38.27) [131356]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_8 && b_12) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, Emp(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, Emp(arg_1):=Used_7Mask[null, Emp(arg_1)] + takeTransfer];
                b_12 := b_12 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, Emp(arg_1):=FullPerm];
                b_12 := b_12 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, Emp(arg_1):=Ops_3Mask[null, Emp(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_8 && b_12) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Emp(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, Emp(arg_1):=Used_7Mask[null, Emp(arg_1)] + takeTransfer];
                b_12 := b_12 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, Emp(arg_1):=FullPerm];
                b_12 := b_12 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                Mask := Mask[null, Emp(arg_1):=Mask[null, Emp(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand_4#sm(true, l_2, FullPerm)][o_15, f_20] || Heap[null, Emp#sm(Heap[l_2, h])][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand_4#sm(true, l_2, FullPerm):=newPMask];
              }
            }
          assert {:msg "  Unfolding Emp(l.h) might fail. There might be insufficient permission to access Emp(l.h) (eval_states.vpr@38.7--38.27) [131357]"}
            b_8 && b_12 ==> neededTransfer == 0.000000000 && Used_7Mask[null, Emp(arg_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_13 := b_8 && b_12;
            b_13 := b_13 && state(Result_3Heap, Result_3Mask);
            b_13 := b_13 && sumMask(Result_3Mask, Ops_3Mask, Used_7Mask);
            b_13 := (b_13 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_3Heap, Used_7Mask);
            b_13 := b_13 && state(Result_3Heap, Result_3Mask);
          b_8 := b_8 && b_13;
        b_8 := b_8 && b_12;
        b_8 := b_8 && Used_7Heap == Ops_3Heap;
        b_8 := b_8;
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(l.h, write)
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_14 := b_14 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(l.h, write)
      rcvLocal := l_2;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[rcvLocal, h] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.h, write) might be negative. (eval_states.vpr@34.3--39.6) [131358]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, h:=Used_8Mask[rcvLocal, h] + takeTransfer];
            b_14 := b_14 && state(Used_8Heap, Used_8Mask);
            b_14 := b_14 && Ops_3Heap[rcvLocal, h] == Used_8Heap[rcvLocal, h];
            Ops_3Mask := Ops_3Mask[rcvLocal, h:=Ops_3Mask[rcvLocal, h] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, h:=Used_8Mask[rcvLocal, h] + takeTransfer];
            b_14 := b_14 && state(Used_8Heap, Used_8Mask);
            b_14 := b_14 && Heap[rcvLocal, h] == Used_8Heap[rcvLocal, h];
            Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
            Heap := Heap[null, wand_4#sm(true, l_2, FullPerm):=Heap[null, wand_4#sm(true, l_2, FullPerm)][l_2, h:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.h (eval_states.vpr@34.3--39.6) [131359]"}
        (b_8 && b_8) && b_14 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, h] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_8 && b_14;
        b_15 := b_15 && state(Result_4Heap, Result_4Mask);
        b_15 := b_15 && sumMask(Result_4Mask, Ops_3Mask, Used_8Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_4Heap, Used_8Mask);
        b_15 := b_15 && state(Result_4Heap, Result_4Mask);
      b_8 := b_8 && b_15;
    Mask := Mask[null, wand_4(true, l_2, FullPerm):=Mask[null, wand_4(true, l_2, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(l_2: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_17: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_16: bool;
  var perm: Perm;
  var Labellhs13Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var boolCur_2: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_18: bool;
  var arg_1_1: Ref;
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
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_20: bool;
  var rcvLocal: Ref;
  var b_21: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var freshVersion: FrameType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_22: bool;
  var b_23: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var arg_2: Ref;
  var b_24_1: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_2, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(P(l), write) --* acc(l.h, write) && acc(Q(l.h), write) {
  //   unfold acc(P(l), write)
  //   fold acc(Q(l.h), write)
  // } -- eval_states.vpr@46.3--56.12
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      perm := FullPerm;
      b_17 := b_17;
      Ops_5Mask := Ops_5Mask[null, P(l_2):=Ops_5Mask[null, P(l_2)] + perm];
      b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    }
    b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs13 -- eval_states.vpr@46.11--46.48
      lhs13:
      Labellhs13Mask := Ops_5Mask;
      Labellhs13Heap := Ops_5Heap;
      b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_17) {
      
      // -- Translating statement: unfold acc(P(l), write) -- eval_states.vpr@47.13--47.24
        assume P#trigger(Ops_5Heap, P(l_2));
        assume Ops_5Heap[null, P(l_2)] == CombineFrames(FrameFragment(Ops_5Heap[l_2, h]), FrameFragment(Ops_5Heap[Ops_5Heap[l_2, h], h]));
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_18 := b_18 && state(Used_10Heap, Used_10Mask);
        
        // -- Transfer of acc(P(l), write)
          arg_1_1 := l_2;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[null, P(arg_1_1)] + neededTransfer;
          assert {:msg "  Unfolding P(l) might fail. Fraction acc(P(l), write) might be negative. (eval_states.vpr@47.13--47.24) [131361]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_17 && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, P(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[null, P(arg_1_1):=Used_10Mask[null, P(arg_1_1)] + takeTransfer];
                b_18 := b_18 && state(Used_10Heap, Used_10Mask);
                TempMask := ZeroMask[null, P(arg_1_1):=FullPerm];
                b_18 := b_18 && IdenticalOnKnownLocations(Ops_5Heap, Used_10Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, P(arg_1_1):=Ops_5Mask[null, P(arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_17 && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[null, P(arg_1_1):=Used_10Mask[null, P(arg_1_1)] + takeTransfer];
                b_18 := b_18 && state(Used_10Heap, Used_10Mask);
                TempMask := ZeroMask[null, P(arg_1_1):=FullPerm];
                b_18 := b_18 && IdenticalOnKnownLocations(Heap, Used_10Heap, TempMask);
                Mask := Mask[null, P(arg_1_1):=Mask[null, P(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2)][o_16, f_21] || Heap[null, P#sm(l_2)][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Heap := Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(l) might fail. There might be insufficient permission to access P(l) (eval_states.vpr@47.13--47.24) [131362]"}
            b_17 && b_18 ==> neededTransfer == 0.000000000 && Used_10Mask[null, P(arg_1_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_19 := b_17 && b_18;
            b_19 := b_19 && state(Result_5Heap, Result_5Mask);
            b_19 := b_19 && sumMask(Result_5Mask, Ops_5Mask, Used_10Mask);
            b_19 := (b_19 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_5Heap, Used_10Mask);
            b_19 := b_19 && state(Result_5Heap, Result_5Mask);
          b_17 := b_17 && b_19;
        b_17 := b_17 && b_18;
        b_17 := b_17 && Used_10Heap == Ops_5Heap;
        perm := FullPerm;
        b_17 := b_17 && l_2 != null;
        Ops_5Mask := Ops_5Mask[l_2, h:=Ops_5Mask[l_2, h] + perm];
        b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
        b_17 := b_17 && Ops_5Heap[l_2, h] != null;
        perm := FullPerm;
        b_17 := b_17 && Ops_5Heap[l_2, h] != null;
        Ops_5Mask := Ops_5Mask[Ops_5Heap[l_2, h], h:=Ops_5Mask[Ops_5Heap[l_2, h], h] + perm];
        b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
        b_17 := b_17 && Ops_5Heap[Ops_5Heap[l_2, h], h] != null;
        b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
        b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    }
    if (b_17) {
      
      // -- Translating statement: fold acc(Q(l.h), write) -- eval_states.vpr@50.13--50.24
        if (b_17) {
          
          // -- Check definedness of acc(Q(l.h), write)
            assert {:msg "  Folding Q(l.h) might fail. There might be insufficient permission to access l.h (eval_states.vpr@50.13--50.24) [131365]"}
              HasDirectPerm(Ops_5Mask, l_2, h);
        }
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_11Heap;
        Used_11Mask := ZeroMask;
        b_20 := b_20 && state(Used_11Heap, Used_11Mask);
        
        // -- Transfer of acc(l.h.h, write)
          
          // -- checking if access predicate defined in used state
            if (b_17 && b_20) {
              if (b_17) {
                
                // -- Check definedness of acc(l.h.h, write)
                  assert {:msg "  Folding Q(l.h) might fail. There might be insufficient permission to access l.h (eval_states.vpr@50.13--50.24) [131367]"}
                    HasDirectPerm(Ops_5Mask, l_2, h);
              }
            }
          rcvLocal := Ops_5Heap[l_2, h];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_11Mask[rcvLocal, h] + neededTransfer;
          assert {:msg "  Folding Q(l.h) might fail. Fraction acc(l.h.h, write) might be negative. (eval_states.vpr@50.13--50.24) [131368]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_17 && b_20) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, h];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[rcvLocal, h:=Used_11Mask[rcvLocal, h] + takeTransfer];
                b_20 := b_20 && state(Used_11Heap, Used_11Mask);
                b_20 := b_20 && Ops_5Heap[rcvLocal, h] == Used_11Heap[rcvLocal, h];
                Ops_5Mask := Ops_5Mask[rcvLocal, h:=Ops_5Mask[rcvLocal, h] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_17 && b_20) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, h];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[rcvLocal, h:=Used_11Mask[rcvLocal, h] + takeTransfer];
                b_20 := b_20 && state(Used_11Heap, Used_11Mask);
                b_20 := b_20 && Heap[rcvLocal, h] == Used_11Heap[rcvLocal, h];
                Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
                Heap := Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2):=Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2)][Heap[l_2, h], h:=true]];
              }
            }
          assert {:msg "  Folding Q(l.h) might fail. There might be insufficient permission to access l.h.h (eval_states.vpr@50.13--50.24) [131369]"}
            b_17 && b_20 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, h] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_21 := b_17 && b_20;
            b_21 := b_21 && state(Result_6Heap, Result_6Mask);
            b_21 := b_21 && sumMask(Result_6Mask, Ops_5Mask, Used_11Mask);
            b_21 := (b_21 && IdenticalOnKnownLocations(Ops_5Heap, Result_6Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_6Heap, Used_11Mask);
            b_21 := b_21 && state(Result_6Heap, Result_6Mask);
          b_17 := b_17 && b_21;
        b_17 := b_17 && b_20;
        b_17 := b_17 && Used_11Heap == Ops_5Heap;
        if (b_17 && b_20) {
          if (b_17) {
            
            // -- Check definedness of l.h.h != null
              assert {:msg "  Folding Q(l.h) might fail. There might be insufficient permission to access l.h (eval_states.vpr@50.13--50.24) [131370]"}
                HasDirectPerm(Result_6Mask, l_2, h);
              assert {:msg "  Folding Q(l.h) might fail. There might be insufficient permission to access l.h.h (eval_states.vpr@50.13--50.24) [131371]"}
                HasDirectPerm(Result_6Mask, Result_6Heap[l_2, h], h);
          }
        }
        assert {:msg "  Folding Q(l.h) might fail. Assertion l.h.h != null might not hold. (eval_states.vpr@50.13--50.24) [131372]"}
          b_17 && b_20 ==> Result_6Heap[Result_6Heap[l_2, h], h] != null;
        b_17 := b_17 && b_20;
        b_17 := b_17 && Used_11Heap == Ops_5Heap;
        perm := FullPerm;
        b_17 := b_17;
        Ops_5Mask := Ops_5Mask[null, Q(Ops_5Heap[l_2, h]):=Ops_5Mask[null, Q(Ops_5Heap[l_2, h])] + perm];
        b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
        b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
        assume Q#trigger(Ops_5Heap, Q(Ops_5Heap[l_2, h]));
        assume Ops_5Heap[null, Q(Ops_5Heap[l_2, h])] == FrameFragment(Ops_5Heap[Result_6Heap[l_2, h], h]);
        if (!HasDirectPerm(Ops_5Mask, null, Q(Ops_5Heap[l_2, h]))) {
          Ops_5Heap := Ops_5Heap[null, Q#sm(Ops_5Heap[l_2, h]):=ZeroPMask];
          havoc freshVersion;
          Ops_5Heap := Ops_5Heap[null, Q(Ops_5Heap[l_2, h]):=freshVersion];
        }
        Ops_5Heap := Ops_5Heap[null, Q#sm(Ops_5Heap[l_2, h]):=Ops_5Heap[null, Q#sm(Ops_5Heap[l_2, h])][Ops_5Heap[l_2, h], h:=true]];
        assume state(Ops_5Heap, Ops_5Mask);
        b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(l.h, write) && acc(Q(l.h), write)
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_22 := b_22 && state(Used_12Heap, Used_12Mask);
    
    // -- Transfer of acc(l.h, write)
      rcvLocal := l_2;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_12Mask[rcvLocal, h] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.h, write) might be negative. (eval_states.vpr@46.3--56.12) [131374]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_22) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[rcvLocal, h:=Used_12Mask[rcvLocal, h] + takeTransfer];
            b_22 := b_22 && state(Used_12Heap, Used_12Mask);
            b_22 := b_22 && Ops_5Heap[rcvLocal, h] == Used_12Heap[rcvLocal, h];
            Ops_5Mask := Ops_5Mask[rcvLocal, h:=Ops_5Mask[rcvLocal, h] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_22) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[rcvLocal, h:=Used_12Mask[rcvLocal, h] + takeTransfer];
            b_22 := b_22 && state(Used_12Heap, Used_12Mask);
            b_22 := b_22 && Heap[rcvLocal, h] == Used_12Heap[rcvLocal, h];
            Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
            Heap := Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2):=Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2)][l_2, h:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.h (eval_states.vpr@46.3--56.12) [131375]"}
        (b_17 && b_17) && b_22 ==> neededTransfer == 0.000000000 && Used_12Mask[rcvLocal, h] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_23 := b_17 && b_22;
        b_23 := b_23 && state(Result_7Heap, Result_7Mask);
        b_23 := b_23 && sumMask(Result_7Mask, Ops_5Mask, Used_12Mask);
        b_23 := (b_23 && IdenticalOnKnownLocations(Ops_5Heap, Result_7Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_7Heap, Used_12Mask);
        b_23 := b_23 && state(Result_7Heap, Result_7Mask);
      b_17 := b_17 && b_23;
    
    // -- Transfer of acc(Q(l.h), write)
      
      // -- checking if access predicate defined in used state
        if ((b_17 && b_17) && b_22) {
          if (b_17) {
            
            // -- Check definedness of acc(Q(l.h), write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.h (eval_states.vpr@46.3--56.12) [131376]"}
                HasDirectPerm(Result_7Mask, l_2, h);
          }
        }
      arg_2 := Result_7Heap[l_2, h];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_12Mask[null, Q(arg_2)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(l.h), write) might be negative. (eval_states.vpr@46.3--56.12) [131377]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_22) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, Q(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, Q(arg_2):=Used_12Mask[null, Q(arg_2)] + takeTransfer];
            b_22 := b_22 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, Q(arg_2):=FullPerm];
            b_22 := b_22 && IdenticalOnKnownLocations(Ops_5Heap, Used_12Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, Q(arg_2):=Ops_5Mask[null, Q(arg_2)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_22) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, Q(arg_2):=Used_12Mask[null, Q(arg_2)] + takeTransfer];
            b_22 := b_22 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, Q(arg_2):=FullPerm];
            b_22 := b_22 && IdenticalOnKnownLocations(Heap, Used_12Heap, TempMask);
            Mask := Mask[null, Q(arg_2):=Mask[null, Q(arg_2)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2)][o_52, f_55] || Heap[null, Q#sm(Heap[l_2, h])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand_5#sm(l_2, l_2, FullPerm, l_2):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(l.h) (eval_states.vpr@46.3--56.12) [131378]"}
        (b_17 && b_17) && b_22 ==> neededTransfer == 0.000000000 && Used_12Mask[null, Q(arg_2)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_24_1 := b_17 && b_22;
        b_24_1 := b_24_1 && state(Result_8Heap, Result_8Mask);
        b_24_1 := b_24_1 && sumMask(Result_8Mask, Ops_5Mask, Used_12Mask);
        b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_5Heap, Result_8Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_8Heap, Used_12Mask);
        b_24_1 := b_24_1 && state(Result_8Heap, Result_8Mask);
      b_17 := b_17 && b_24_1;
    Mask := Mask[null, wand_5(l_2, l_2, FullPerm, l_2):=Mask[null, wand_5(l_2, l_2, FullPerm, l_2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(l_2: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_26: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_25: bool;
  var perm: Perm;
  var Labellhs15Mask: MaskType;
  var Labellhs15Heap: HeapType;
  var boolCur_3: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_27: bool;
  var arg_3: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_28: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_29: bool;
  var rcvLocal: Ref;
  var b_30: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var freshVersion: FrameType;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_31: bool;
  var arg_4: Ref;
  var b_32: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_2, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(P(l), write) --* acc(Q(l), write) {
  //   unfold acc(P(l), write)
  //   fold acc(Q(l), write)
  // } -- eval_states.vpr@60.3--63.6
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_25 := b_25 && state(Used_13Heap, Used_13Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_26) {
      perm := FullPerm;
      b_26 := b_26;
      Ops_7Mask := Ops_7Mask[null, P(l_2):=Ops_7Mask[null, P(l_2)] + perm];
      b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    }
    b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs15 -- eval_states.vpr@60.11--60.34
      lhs15:
      Labellhs15Mask := Ops_7Mask;
      Labellhs15Heap := Ops_7Heap;
      b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_26) {
      
      // -- Translating statement: unfold acc(P(l), write) -- eval_states.vpr@61.7--61.18
        assume P#trigger(Ops_7Heap, P(l_2));
        assume Ops_7Heap[null, P(l_2)] == CombineFrames(FrameFragment(Ops_7Heap[l_2, h]), FrameFragment(Ops_7Heap[Ops_7Heap[l_2, h], h]));
        ExhaleWellDef0Mask := Ops_7Mask;
        ExhaleWellDef0Heap := Ops_7Heap;
        havoc Used_14Heap;
        Used_14Mask := ZeroMask;
        b_27 := b_27 && state(Used_14Heap, Used_14Mask);
        
        // -- Transfer of acc(P(l), write)
          arg_3 := l_2;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_14Mask[null, P(arg_3)] + neededTransfer;
          assert {:msg "  Unfolding P(l) might fail. Fraction acc(P(l), write) might be negative. (eval_states.vpr@61.7--61.18) [131380]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_26 && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[null, P(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[null, P(arg_3):=Used_14Mask[null, P(arg_3)] + takeTransfer];
                b_27 := b_27 && state(Used_14Heap, Used_14Mask);
                TempMask := ZeroMask[null, P(arg_3):=FullPerm];
                b_27 := b_27 && IdenticalOnKnownLocations(Ops_7Heap, Used_14Heap, TempMask);
                Ops_7Mask := Ops_7Mask[null, P(arg_3):=Ops_7Mask[null, P(arg_3)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_26 && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[null, P(arg_3):=Used_14Mask[null, P(arg_3)] + takeTransfer];
                b_27 := b_27 && state(Used_14Heap, Used_14Mask);
                TempMask := ZeroMask[null, P(arg_3):=FullPerm];
                b_27 := b_27 && IdenticalOnKnownLocations(Heap, Used_14Heap, TempMask);
                Mask := Mask[null, P(arg_3):=Mask[null, P(arg_3)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                  { newPMask[o_53, f_56] }
                  Heap[null, wand_6#sm(l_2, l_2)][o_53, f_56] || Heap[null, P#sm(l_2)][o_53, f_56] ==> newPMask[o_53, f_56]
                );
                Heap := Heap[null, wand_6#sm(l_2, l_2):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(l) might fail. There might be insufficient permission to access P(l) (eval_states.vpr@61.7--61.18) [131381]"}
            b_26 && b_27 ==> neededTransfer == 0.000000000 && Used_14Mask[null, P(arg_3)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_28 := b_26 && b_27;
            b_28 := b_28 && state(Result_9Heap, Result_9Mask);
            b_28 := b_28 && sumMask(Result_9Mask, Ops_7Mask, Used_14Mask);
            b_28 := (b_28 && IdenticalOnKnownLocations(Ops_7Heap, Result_9Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_9Heap, Used_14Mask);
            b_28 := b_28 && state(Result_9Heap, Result_9Mask);
          b_26 := b_26 && b_28;
        b_26 := b_26 && b_27;
        b_26 := b_26 && Used_14Heap == Ops_7Heap;
        perm := FullPerm;
        b_26 := b_26 && l_2 != null;
        Ops_7Mask := Ops_7Mask[l_2, h:=Ops_7Mask[l_2, h] + perm];
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        b_26 := b_26 && Ops_7Heap[l_2, h] != null;
        perm := FullPerm;
        b_26 := b_26 && Ops_7Heap[l_2, h] != null;
        Ops_7Mask := Ops_7Mask[Ops_7Heap[l_2, h], h:=Ops_7Mask[Ops_7Heap[l_2, h], h] + perm];
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        b_26 := b_26 && Ops_7Heap[Ops_7Heap[l_2, h], h] != null;
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    }
    if (b_26) {
      
      // -- Translating statement: fold acc(Q(l), write) -- eval_states.vpr@62.7--62.16
        ExhaleWellDef0Mask := Ops_7Mask;
        ExhaleWellDef0Heap := Ops_7Heap;
        havoc Used_15Heap;
        Used_15Mask := ZeroMask;
        b_29 := b_29 && state(Used_15Heap, Used_15Mask);
        
        // -- Transfer of acc(l.h, write)
          rcvLocal := l_2;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_15Mask[rcvLocal, h] + neededTransfer;
          assert {:msg "  Folding Q(l) might fail. Fraction acc(l.h, write) might be negative. (eval_states.vpr@62.7--62.16) [131385]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_26 && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, h];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[rcvLocal, h:=Used_15Mask[rcvLocal, h] + takeTransfer];
                b_29 := b_29 && state(Used_15Heap, Used_15Mask);
                b_29 := b_29 && Ops_7Heap[rcvLocal, h] == Used_15Heap[rcvLocal, h];
                Ops_7Mask := Ops_7Mask[rcvLocal, h:=Ops_7Mask[rcvLocal, h] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_26 && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, h];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[rcvLocal, h:=Used_15Mask[rcvLocal, h] + takeTransfer];
                b_29 := b_29 && state(Used_15Heap, Used_15Mask);
                b_29 := b_29 && Heap[rcvLocal, h] == Used_15Heap[rcvLocal, h];
                Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
                Heap := Heap[null, wand_6#sm(l_2, l_2):=Heap[null, wand_6#sm(l_2, l_2)][l_2, h:=true]];
              }
            }
          assert {:msg "  Folding Q(l) might fail. There might be insufficient permission to access l.h (eval_states.vpr@62.7--62.16) [131386]"}
            b_26 && b_29 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, h] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_30 := b_26 && b_29;
            b_30 := b_30 && state(Result_10Heap, Result_10Mask);
            b_30 := b_30 && sumMask(Result_10Mask, Ops_7Mask, Used_15Mask);
            b_30 := (b_30 && IdenticalOnKnownLocations(Ops_7Heap, Result_10Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_10Heap, Used_15Mask);
            b_30 := b_30 && state(Result_10Heap, Result_10Mask);
          b_26 := b_26 && b_30;
        b_26 := b_26 && b_29;
        b_26 := b_26 && Used_15Heap == Ops_7Heap;
        if (b_26 && b_29) {
          if (b_26) {
            
            // -- Check definedness of l.h != null
              assert {:msg "  Folding Q(l) might fail. There might be insufficient permission to access l.h (eval_states.vpr@62.7--62.16) [131387]"}
                HasDirectPerm(Result_10Mask, l_2, h);
          }
        }
        assert {:msg "  Folding Q(l) might fail. Assertion l.h != null might not hold. (eval_states.vpr@62.7--62.16) [131388]"}
          b_26 && b_29 ==> Result_10Heap[l_2, h] != null;
        b_26 := b_26 && b_29;
        b_26 := b_26 && Used_15Heap == Ops_7Heap;
        perm := FullPerm;
        b_26 := b_26;
        Ops_7Mask := Ops_7Mask[null, Q(l_2):=Ops_7Mask[null, Q(l_2)] + perm];
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        assume Q#trigger(Ops_7Heap, Q(l_2));
        assume Ops_7Heap[null, Q(l_2)] == FrameFragment(Ops_7Heap[l_2, h]);
        if (!HasDirectPerm(Ops_7Mask, null, Q(l_2))) {
          Ops_7Heap := Ops_7Heap[null, Q#sm(l_2):=ZeroPMask];
          havoc freshVersion;
          Ops_7Heap := Ops_7Heap[null, Q(l_2):=freshVersion];
        }
        Ops_7Heap := Ops_7Heap[null, Q#sm(l_2):=Ops_7Heap[null, Q#sm(l_2)][l_2, h:=true]];
        assume state(Ops_7Heap, Ops_7Mask);
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(Q(l), write)
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_31 := b_31 && state(Used_16Heap, Used_16Mask);
    
    // -- Transfer of acc(Q(l), write)
      arg_4 := l_2;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_16Mask[null, Q(arg_4)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(l), write) might be negative. (eval_states.vpr@60.3--63.6) [131390]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_31) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, Q(arg_4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_16Mask := Used_16Mask[null, Q(arg_4):=Used_16Mask[null, Q(arg_4)] + takeTransfer];
            b_31 := b_31 && state(Used_16Heap, Used_16Mask);
            TempMask := ZeroMask[null, Q(arg_4):=FullPerm];
            b_31 := b_31 && IdenticalOnKnownLocations(Ops_7Heap, Used_16Heap, TempMask);
            Ops_7Mask := Ops_7Mask[null, Q(arg_4):=Ops_7Mask[null, Q(arg_4)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_31) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_16Mask := Used_16Mask[null, Q(arg_4):=Used_16Mask[null, Q(arg_4)] + takeTransfer];
            b_31 := b_31 && state(Used_16Heap, Used_16Mask);
            TempMask := ZeroMask[null, Q(arg_4):=FullPerm];
            b_31 := b_31 && IdenticalOnKnownLocations(Heap, Used_16Heap, TempMask);
            Mask := Mask[null, Q(arg_4):=Mask[null, Q(arg_4)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
              { newPMask[o_26, f_29] }
              Heap[null, wand_6#sm(l_2, l_2)][o_26, f_29] || Heap[null, Q#sm(l_2)][o_26, f_29] ==> newPMask[o_26, f_29]
            );
            Heap := Heap[null, wand_6#sm(l_2, l_2):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(l) (eval_states.vpr@60.3--63.6) [131391]"}
        (b_26 && b_26) && b_31 ==> neededTransfer == 0.000000000 && Used_16Mask[null, Q(arg_4)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_32 := b_26 && b_31;
        b_32 := b_32 && state(Result_11Heap, Result_11Mask);
        b_32 := b_32 && sumMask(Result_11Mask, Ops_7Mask, Used_16Mask);
        b_32 := (b_32 && IdenticalOnKnownLocations(Ops_7Heap, Result_11Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_16Heap, Result_11Heap, Used_16Mask);
        b_32 := b_32 && state(Result_11Heap, Result_11Mask);
      b_26 := b_26 && b_32;
    Mask := Mask[null, wand_6(l_2, l_2):=Mask[null, wand_6(l_2, l_2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}