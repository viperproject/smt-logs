// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/consumption.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/consumption-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_14: Ref, f_22: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_22] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_22], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref, f_23: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, f_23] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_15, f_23) ==> Heap[o_15, f_23] == ExhaleHeap[o_15, f_23]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_15, $allocated] ==> ExhaleHeap[o_15, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_24: (Field A B), v: B ::
  { Heap[o_14, f_24:=v] }
  succHeap(Heap, Heap[o_14, f_24:=v])
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

type WandType_wand_3;
function  wand_3(arg1: bool, arg2: Ref): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: Ref): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: Ref): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: Ref ::
  { wand_3(arg1, arg2) }
  IsWandField(wand_3(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_3#ft(arg1, arg2) }
  IsWandField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_3(arg1, arg2) }
  !IsPredicateField(wand_3(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_3#ft(arg1, arg2) }
  !IsPredicateField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { WandMaskField(wand_3#ft(arg1, arg2)) }
  wand_3#sm(arg1, arg2) == WandMaskField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_3(arg1, arg2) }
  getPredWandId(wand_3(arg1, arg2)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg1_2: bool, arg2_2: Ref ::
  { wand_3(arg1, arg2), wand_3(arg1_2, arg2_2) }
  wand_3(arg1, arg2) == wand_3(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_4#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5, arg6)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5, arg6) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4)) }
  wand_2#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4), wand_2(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_2(arg1, arg2, arg3, arg4) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_5;
function  wand_5(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_5 int;
function  wand_5#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_5 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_5(arg1, arg2, arg3) }
  IsWandField(wand_5(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_5#ft(arg1, arg2, arg3) }
  IsWandField(wand_5#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_5(arg1, arg2, arg3) }
  !IsPredicateField(wand_5(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_5#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3)) }
  wand_5#sm(arg1, arg2, arg3) == WandMaskField(wand_5#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_5(arg1, arg2, arg3) }
  getPredWandId(wand_5(arg1, arg2, arg3)) == 4
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_5(arg1, arg2, arg3), wand_5(arg1_2, arg2_2, arg3_2) }
  wand_5(arg1, arg2, arg3) == wand_5(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
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
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
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
  getPredWandId(wand_1(arg1, arg2)) == 6
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_1(arg1, arg2), wand_1(arg1_2, arg2_2) }
  wand_1(arg1, arg2) == wand_1(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
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
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum_1(Heap: HeapType, p_1: Ref): int;
function  sum'(Heap: HeapType, p_1: Ref): int;
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum_1(Heap, p_1) }
  sum_1(Heap, p_1) == sum'(Heap, p_1) && dummyFunction(sum#triggerStateless(p_1))
);
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum'(Heap, p_1) }
  dummyFunction(sum#triggerStateless(p_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, p_1: Ref ::
  { state(Heap, Mask), sum_1(Heap, p_1) } { state(Heap, Mask), sum#triggerStateless(p_1), Pair#trigger(Heap, Pair(p_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sum_1(Heap, p_1) == Heap[p_1, f_7] + Heap[p_1, g]
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Pair(p) (consumption.vpr@12.1--14.44) [211225]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.f (consumption.vpr@12.1--14.44) [211226]"}
        HasDirectPerm(UnfoldingMask, p_1, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.g (consumption.vpr@12.1--14.44) [211227]"}
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
// Translation of method test00
// ==================================================

procedure test00(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
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
  var Labellhs2Mask: MaskType;
  var Labellhs2Heap: HeapType;
  var boolCur: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
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
  var rcvLocal: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p.f, write) --* acc(p.g, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- consumption.vpr@18.12--18.33
          lhs1:
          Labellhs1Mask := WandDefLHSMask;
          Labellhs1Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, g:=WandDefRHSMask[p_1, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(p_1, FullPerm, p_1, FullPerm):=Mask[null, wand(p_1, FullPerm, p_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* true {
  //   apply acc(p.f, write) --* acc(p.g, write)
  // } -- consumption.vpr@21.3--23.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      b_1_1 := b_1_1;
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs2 -- consumption.vpr@21.11--21.26
      lhs2:
      Labellhs2Mask := Ops_1Mask;
      Labellhs2Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: apply acc(p.f, write) --* acc(p.g, write) -- consumption.vpr@22.7--22.34
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_1Mask;
          ExhaleWellDef0Heap := Ops_1Heap;
          havoc Used_1Heap;
          Used_1Mask := ZeroMask;
          b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
          
          // -- Transfer of acc(p.f, write) --* acc(p.g, write)
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_2_1) {
                if (b_1_1) {
                  
                  // -- Check definedness of acc(p.f, write) --* acc(p.g, write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs5 -- consumption.vpr@22.13--22.34
                        lhs5:
                        Labellhs5Mask := WandDefLHSMask;
                        Labellhs5Heap := WandDefLHSHeap;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefRHSMask := WandDefRHSMask[p_1, g:=WandDefRHSMask[p_1, g] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, write) --* acc(p.g, write) might be negative. (consumption.vpr@22.7--22.34) [211228]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm):=Used_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Ops_1Mask := Ops_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm):=Ops_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand(p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm):=Used_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Mask := Mask[null, wand(p_1, FullPerm, p_1, FullPerm):=Mask[null, wand(p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (consumption.vpr@22.7--22.34) [211229]"}
              b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, wand(p_1, FullPerm, p_1, FullPerm)] == initNeededTransfer;
            
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
          
          // -- Transfer of acc(p.f, write)
            rcvLocal := p_1;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, write) might be negative. (consumption.vpr@22.7--22.34) [211230]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_2Mask := Used_2Mask[rcvLocal, f_7:=Used_2Mask[rcvLocal, f_7] + takeTransfer];
                  b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                  b_4 := b_4 && Ops_1Heap[rcvLocal, f_7] == Used_2Heap[rcvLocal, f_7];
                  Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_2Mask := Used_2Mask[rcvLocal, f_7:=Used_2Mask[rcvLocal, f_7] + takeTransfer];
                  b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                  b_4 := b_4 && Heap[rcvLocal, f_7] == Used_2Heap[rcvLocal, f_7];
                  Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                  Heap := Heap[null, wand_1#sm(true, true):=Heap[null, wand_1#sm(true, true)][p_1, f_7:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.f (consumption.vpr@22.7--22.34) [211231]"}
              b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_5 := b_1_1 && b_4;
              b_5 := b_5 && state(Result_1Heap, Result_1Mask);
              b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
              b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
              b_5 := b_5 && state(Result_1Heap, Result_1Mask);
            b_1_1 := b_1_1 && b_5;
          b_1_1 := b_1_1 && b_4;
          b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_1_1 := b_1_1 && p_1 != null;
          Ops_1Mask := Ops_1Mask[p_1, g:=Ops_1Mask[p_1, g] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    Mask := Mask[null, wand_1(true, true):=Mask[null, wand_1(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true --* true -- consumption.vpr@27.3--27.23
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of true --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- consumption.vpr@27.10--27.23
          lhs6:
          Labellhs6Mask := WandDefLHSMask;
          Labellhs6Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (consumption.vpr@27.10--27.23) [211234]"}
      FullPerm <= AssertMask[null, wand_1(true, true)];
    AssertMask := AssertMask[null, wand_1(true, true):=AssertMask[null, wand_1(true, true)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(p.f, write) -- consumption.vpr@30.3--30.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access p.f (consumption.vpr@30.10--30.18) [211236]"}
        perm <= AssertMask[p_1, f_7];
    }
    AssertMask := AssertMask[p_1, f_7:=AssertMask[p_1, f_7] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_8: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var Labellhs8Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var boolCur_1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Labellhs11Mask: MaskType;
  var Labellhs11Heap: HeapType;
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
  var rcvLocal: Ref;
  var b_12: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var b_14: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var b_15: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var freshVersion: FrameType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var arg: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_17: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Labellhs12Mask: MaskType;
  var Labellhs12Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, h:=Mask[p_1, h] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p.h, write) --* acc(p.g, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, h:=WandDefLHSMask[p_1, h] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- consumption.vpr@35.12--35.33
          lhs7:
          Labellhs7Mask := WandDefLHSMask;
          Labellhs7Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, g:=WandDefRHSMask[p_1, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* acc(Pair(p), write) {
  //   apply acc(p.h, write) --* acc(p.g, write)
  //   fold acc(Pair(p), write)
  // } -- consumption.vpr@38.3--41.4
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
    
    // -- Translating statement: label lhs8 -- consumption.vpr@38.11--38.34
      lhs8:
      Labellhs8Mask := Ops_3Mask;
      Labellhs8Heap := Ops_3Heap;
      b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_8) {
      
      // -- Translating statement: apply acc(p.h, write) --* acc(p.g, write) -- consumption.vpr@39.7--39.34
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_3Mask;
          ExhaleWellDef0Heap := Ops_3Heap;
          havoc Used_5Heap;
          Used_5Mask := ZeroMask;
          b_9 := b_9 && state(Used_5Heap, Used_5Mask);
          
          // -- Transfer of acc(p.h, write) --* acc(p.g, write)
            
            // -- checking if access predicate defined in used state
              if (b_8 && b_9) {
                if (b_8) {
                  
                  // -- Check definedness of acc(p.h, write) --* acc(p.g, write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefLHSMask := WandDefLHSMask[p_1, h:=WandDefLHSMask[p_1, h] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs11 -- consumption.vpr@39.13--39.34
                        lhs11:
                        Labellhs11Mask := WandDefLHSMask;
                        Labellhs11Heap := WandDefLHSHeap;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefRHSMask := WandDefRHSMask[p_1, g:=WandDefRHSMask[p_1, g] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_5Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.h, write) --* acc(p.g, write) might be negative. (consumption.vpr@39.7--39.34) [211237]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_9) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm):=Used_5Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_9 := b_9 && state(Used_5Heap, Used_5Mask);
                  Ops_3Mask := Ops_3Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm):=Ops_3Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_9) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm):=Used_5Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_9 := b_9 && state(Used_5Heap, Used_5Mask);
                  Mask := Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (consumption.vpr@39.7--39.34) [211238]"}
              b_8 && b_9 ==> neededTransfer == 0.000000000 && Used_5Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm)] == initNeededTransfer;
            
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
          
          // -- Transfer of acc(p.h, write)
            rcvLocal := p_1;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_6Mask[rcvLocal, h] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.h, write) might be negative. (consumption.vpr@39.7--39.34) [211239]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[rcvLocal, h];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_6Mask := Used_6Mask[rcvLocal, h:=Used_6Mask[rcvLocal, h] + takeTransfer];
                  b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                  b_11 := b_11 && Ops_3Heap[rcvLocal, h] == Used_6Heap[rcvLocal, h];
                  Ops_3Mask := Ops_3Mask[rcvLocal, h:=Ops_3Mask[rcvLocal, h] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, h];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_6Mask := Used_6Mask[rcvLocal, h:=Used_6Mask[rcvLocal, h] + takeTransfer];
                  b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                  b_11 := b_11 && Heap[rcvLocal, h] == Used_6Heap[rcvLocal, h];
                  Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
                  Heap := Heap[null, wand_3#sm(true, p_1):=Heap[null, wand_3#sm(true, p_1)][p_1, h:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.h (consumption.vpr@39.7--39.34) [211240]"}
              b_8 && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, h] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_12 := b_8 && b_11;
              b_12 := b_12 && state(Result_3Heap, Result_3Mask);
              b_12 := b_12 && sumMask(Result_3Mask, Ops_3Mask, Used_6Mask);
              b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_3Heap, Used_6Mask);
              b_12 := b_12 && state(Result_3Heap, Result_3Mask);
            b_8 := b_8 && b_12;
          b_8 := b_8 && b_11;
          b_8 := b_8 && Used_6Heap == Ops_3Heap;
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_8 := b_8 && p_1 != null;
          Ops_3Mask := Ops_3Mask[p_1, g:=Ops_3Mask[p_1, g] + perm];
          b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
          b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
        Ops_3Heap := ExhaleHeap;
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_8) {
      
      // -- Translating statement: fold acc(Pair(p), write) -- consumption.vpr@40.7--40.24
        ExhaleWellDef0Mask := Ops_3Mask;
        ExhaleWellDef0Heap := Ops_3Heap;
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_13 := b_13 && state(Used_7Heap, Used_7Mask);
        
        // -- Transfer of acc(p.f, write)
          rcvLocal := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Pair(p) might fail. Fraction acc(p.f, write) might be negative. (consumption.vpr@40.7--40.24) [211243]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_8 && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_13 := b_13 && state(Used_7Heap, Used_7Mask);
                b_13 := b_13 && Ops_3Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_8 && b_13) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_3#sm(true, p_1):=Heap[null, wand_3#sm(true, p_1)][p_1, f_7:=true]];
              }
            }
          assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.f (consumption.vpr@40.7--40.24) [211244]"}
            b_8 && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_8 && b_13;
            b_14 := b_14 && state(Result_4Heap, Result_4Mask);
            b_14 := b_14 && sumMask(Result_4Mask, Ops_3Mask, Used_7Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_4Heap, Used_7Mask);
            b_14 := b_14 && state(Result_4Heap, Result_4Mask);
          b_8 := b_8 && b_14;
        b_8 := b_8 && b_13;
        b_8 := b_8 && Used_7Heap == Ops_3Heap;
        
        // -- Transfer of acc(p.g, write)
          rcvLocal := p_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_7Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Folding Pair(p) might fail. Fraction acc(p.g, write) might be negative. (consumption.vpr@40.7--40.24) [211245]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_8 && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
                b_13 := b_13 && state(Used_7Heap, Used_7Mask);
                b_13 := b_13 && Ops_3Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
                Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_8 && b_13) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_3#sm(true, p_1):=Heap[null, wand_3#sm(true, p_1)][p_1, g:=true]];
              }
            }
          assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.g (consumption.vpr@40.7--40.24) [211246]"}
            b_8 && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_15 := b_8 && b_13;
            b_15 := b_15 && state(Result_5Heap, Result_5Mask);
            b_15 := b_15 && sumMask(Result_5Mask, Ops_3Mask, Used_7Mask);
            b_15 := (b_15 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_5Heap, Used_7Mask);
            b_15 := b_15 && state(Result_5Heap, Result_5Mask);
          b_8 := b_8 && b_15;
        b_8 := b_8 && b_13;
        b_8 := b_8 && Used_7Heap == Ops_3Heap;
        perm := FullPerm;
        b_8 := b_8;
        Ops_3Mask := Ops_3Mask[null, Pair(p_1):=Ops_3Mask[null, Pair(p_1)] + perm];
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        assume Pair#trigger(Ops_3Heap, Pair(p_1));
        assume Ops_3Heap[null, Pair(p_1)] == CombineFrames(FrameFragment(Ops_3Heap[p_1, f_7]), FrameFragment(Ops_3Heap[p_1, g]));
        if (!HasDirectPerm(Ops_3Mask, null, Pair(p_1))) {
          Ops_3Heap := Ops_3Heap[null, Pair#sm(p_1):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, Pair(p_1):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, Pair#sm(p_1):=Ops_3Heap[null, Pair#sm(p_1)][p_1, f_7:=true]];
        Ops_3Heap := Ops_3Heap[null, Pair#sm(p_1):=Ops_3Heap[null, Pair#sm(p_1)][p_1, g:=true]];
        assume state(Ops_3Heap, Ops_3Mask);
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(Pair(p), write)
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_16 := b_16 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(Pair(p), write)
      arg := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[null, Pair(arg)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Pair(p), write) might be negative. (consumption.vpr@38.3--41.4) [211248]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, Pair(arg)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, Pair(arg):=Used_8Mask[null, Pair(arg)] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, Pair(arg):=FullPerm];
            b_16 := b_16 && IdenticalOnKnownLocations(Ops_3Heap, Used_8Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, Pair(arg):=Ops_3Mask[null, Pair(arg)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Pair(arg)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, Pair(arg):=Used_8Mask[null, Pair(arg)] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, Pair(arg):=FullPerm];
            b_16 := b_16 && IdenticalOnKnownLocations(Heap, Used_8Heap, TempMask);
            Mask := Mask[null, Pair(arg):=Mask[null, Pair(arg)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
              { newPMask[o_5, f_11] }
              Heap[null, wand_3#sm(true, p_1)][o_5, f_11] || Heap[null, Pair#sm(p_1)][o_5, f_11] ==> newPMask[o_5, f_11]
            );
            Heap := Heap[null, wand_3#sm(true, p_1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Pair(p) (consumption.vpr@38.3--41.4) [211249]"}
        (b_8 && b_8) && b_16 ==> neededTransfer == 0.000000000 && Used_8Mask[null, Pair(arg)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_17 := b_8 && b_16;
        b_17 := b_17 && state(Result_6Heap, Result_6Mask);
        b_17 := b_17 && sumMask(Result_6Mask, Ops_3Mask, Used_8Mask);
        b_17 := (b_17 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_6Heap, Used_8Mask);
        b_17 := b_17 && state(Result_6Heap, Result_6Mask);
      b_8 := b_8 && b_17;
    Mask := Mask[null, wand_3(true, p_1):=Mask[null, wand_3(true, p_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true --* acc(Pair(p), write) -- consumption.vpr@44.3--44.31
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of true --* acc(Pair(p), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs12 -- consumption.vpr@44.10--44.31
          lhs12:
          Labellhs12Mask := WandDefLHSMask;
          Labellhs12Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Pair(p_1):=WandDefRHSMask[null, Pair(p_1)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (consumption.vpr@44.10--44.31) [211250]"}
      FullPerm <= AssertMask[null, wand_3(true, p_1)];
    AssertMask := AssertMask[null, wand_3(true, p_1):=AssertMask[null, wand_3(true, p_1)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(p.f, write) -- consumption.vpr@47.3--47.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access p.f (consumption.vpr@47.10--47.18) [211252]"}
        perm <= AssertMask[p_1, f_7];
    }
    AssertMask := AssertMask[p_1, f_7:=AssertMask[p_1, f_7] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_19: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_18: bool;
  var Labellhs13Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var boolCur_2: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_20: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_21: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: x.f := 0 -- consumption.vpr@53.3--53.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (consumption.vpr@53.3--53.11) [211253]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0 {
  // } -- consumption.vpr@54.3--54.51
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_18 := b_18 && state(Used_9Heap, Used_9Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_19) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (consumption.vpr@54.3--54.51) [211254]"}
        perm >= NoPerm;
      b_19 := b_19 && (perm > NoPerm ==> x != null);
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    }
    b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs13 -- consumption.vpr@54.11--54.51
      lhs13:
      Labellhs13Mask := Ops_5Mask;
      Labellhs13Heap := Ops_5Heap;
      b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 0
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_20 := b_20 && state(Used_10Heap, Used_10Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (consumption.vpr@54.3--54.51) [211255]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_20 := b_20 && state(Used_10Heap, Used_10Mask);
            b_20 := b_20 && Ops_5Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_20) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_4#sm(x, 1 / 2, x, FullPerm, x, 0):=Heap[null, wand_4#sm(x, 1 / 2, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (consumption.vpr@54.3--54.51) [211256]"}
        (b_19 && b_19) && b_20 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_21 := b_19 && b_20;
        b_21 := b_21 && state(Result_7Heap, Result_7Mask);
        b_21 := b_21 && sumMask(Result_7Mask, Ops_5Mask, Used_10Mask);
        b_21 := (b_21 && IdenticalOnKnownLocations(Ops_5Heap, Result_7Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_7Heap, Used_10Mask);
        b_21 := b_21 && state(Result_7Heap, Result_7Mask);
      b_19 := b_19 && b_21;
    if ((b_19 && b_19) && b_20) {
      if (b_19) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (consumption.vpr@54.3--54.51) [211257]"}
            HasDirectPerm(Result_7Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (consumption.vpr@54.3--54.51) [211258]"}
      (b_19 && b_19) && b_20 ==> Result_7Heap[x, f_7] == 0;
    Mask := Mask[null, wand_4(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_4(x, 1 / 2, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, 1 / 2) -- consumption.vpr@55.3--55.23
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 1 / 2;
    assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (consumption.vpr@55.10--55.23) [211259]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (consumption.vpr@55.10--55.23) [211260]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, 2 / 3) -- consumption.vpr@57.3--57.23
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 2 / 3;
    assert {:msg "  Assert might fail. Fraction 2 / 3 might be negative. (consumption.vpr@57.10--57.23) [211261]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (consumption.vpr@57.10--57.23) [211262]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_23: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_22: bool;
  var Labellhs15Mask: MaskType;
  var Labellhs15Heap: HeapType;
  var boolCur_3: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_24_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_25_1: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var b_26_1: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var freshVersion: FrameType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_27_1: bool;
  var b_28_1: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* acc(x.f, write) {
  //   fold acc(Pair(x), write)
  // } -- consumption.vpr@64.3--66.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_23 := b_23 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_22 := b_22 && state(Used_11Heap, Used_11Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_23) {
      b_23 := b_23;
    }
    b_23 := b_23 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs15 -- consumption.vpr@64.11--64.30
      lhs15:
      Labellhs15Mask := Ops_7Mask;
      Labellhs15Heap := Ops_7Heap;
      b_23 := b_23 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_23) {
      
      // -- Translating statement: fold acc(Pair(x), write) -- consumption.vpr@65.7--65.24
        ExhaleWellDef0Mask := Ops_7Mask;
        ExhaleWellDef0Heap := Ops_7Heap;
        havoc Used_12Heap;
        Used_12Mask := ZeroMask;
        b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_12Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.f, write) might be negative. (consumption.vpr@65.7--65.24) [211264]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[rcvLocal, f_7:=Used_12Mask[rcvLocal, f_7] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
                b_24_1 := b_24_1 && Ops_7Heap[rcvLocal, f_7] == Used_12Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[rcvLocal, f_7:=Used_12Mask[rcvLocal, f_7] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
                b_24_1 := b_24_1 && Heap[rcvLocal, f_7] == Used_12Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, x, FullPerm):=Heap[null, wand_5#sm(true, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.f (consumption.vpr@65.7--65.24) [211265]"}
            b_23 && b_24_1 ==> neededTransfer == 0.000000000 && Used_12Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_25_1 := b_23 && b_24_1;
            b_25_1 := b_25_1 && state(Result_8Heap, Result_8Mask);
            b_25_1 := b_25_1 && sumMask(Result_8Mask, Ops_7Mask, Used_12Mask);
            b_25_1 := (b_25_1 && IdenticalOnKnownLocations(Ops_7Heap, Result_8Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_8Heap, Used_12Mask);
            b_25_1 := b_25_1 && state(Result_8Heap, Result_8Mask);
          b_23 := b_23 && b_25_1;
        b_23 := b_23 && b_24_1;
        b_23 := b_23 && Used_12Heap == Ops_7Heap;
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_12Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.g, write) might be negative. (consumption.vpr@65.7--65.24) [211266]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[rcvLocal, g:=Used_12Mask[rcvLocal, g] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
                b_24_1 := b_24_1 && Ops_7Heap[rcvLocal, g] == Used_12Heap[rcvLocal, g];
                Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_12Mask := Used_12Mask[rcvLocal, g:=Used_12Mask[rcvLocal, g] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_12Heap, Used_12Mask);
                b_24_1 := b_24_1 && Heap[rcvLocal, g] == Used_12Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, x, FullPerm):=Heap[null, wand_5#sm(true, x, FullPerm)][x, g:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.g (consumption.vpr@65.7--65.24) [211267]"}
            b_23 && b_24_1 ==> neededTransfer == 0.000000000 && Used_12Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_26_1 := b_23 && b_24_1;
            b_26_1 := b_26_1 && state(Result_9Heap, Result_9Mask);
            b_26_1 := b_26_1 && sumMask(Result_9Mask, Ops_7Mask, Used_12Mask);
            b_26_1 := (b_26_1 && IdenticalOnKnownLocations(Ops_7Heap, Result_9Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_9Heap, Used_12Mask);
            b_26_1 := b_26_1 && state(Result_9Heap, Result_9Mask);
          b_23 := b_23 && b_26_1;
        b_23 := b_23 && b_24_1;
        b_23 := b_23 && Used_12Heap == Ops_7Heap;
        perm := FullPerm;
        b_23 := b_23;
        Ops_7Mask := Ops_7Mask[null, Pair(x):=Ops_7Mask[null, Pair(x)] + perm];
        b_23 := b_23 && state(Ops_7Heap, Ops_7Mask);
        b_23 := b_23 && state(Ops_7Heap, Ops_7Mask);
        assume Pair#trigger(Ops_7Heap, Pair(x));
        assume Ops_7Heap[null, Pair(x)] == CombineFrames(FrameFragment(Ops_7Heap[x, f_7]), FrameFragment(Ops_7Heap[x, g]));
        if (!HasDirectPerm(Ops_7Mask, null, Pair(x))) {
          Ops_7Heap := Ops_7Heap[null, Pair#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_7Heap := Ops_7Heap[null, Pair(x):=freshVersion];
        }
        Ops_7Heap := Ops_7Heap[null, Pair#sm(x):=Ops_7Heap[null, Pair#sm(x)][x, f_7:=true]];
        Ops_7Heap := Ops_7Heap[null, Pair#sm(x):=Ops_7Heap[null, Pair#sm(x)][x, g:=true]];
        assume state(Ops_7Heap, Ops_7Mask);
        b_23 := b_23 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_27_1 := b_27_1 && state(Used_13Heap, Used_13Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_13Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (consumption.vpr@64.3--66.4) [211269]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_23 && b_23) && b_27_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_27_1 := b_27_1 && state(Used_13Heap, Used_13Mask);
            b_27_1 := b_27_1 && Ops_7Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_23 && b_23) && b_27_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_27_1 := b_27_1 && state(Used_13Heap, Used_13Mask);
            b_27_1 := b_27_1 && Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_5#sm(true, x, FullPerm):=Heap[null, wand_5#sm(true, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (consumption.vpr@64.3--66.4) [211270]"}
        (b_23 && b_23) && b_27_1 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_28_1 := b_23 && b_27_1;
        b_28_1 := b_28_1 && state(Result_10Heap, Result_10Mask);
        b_28_1 := b_28_1 && sumMask(Result_10Mask, Ops_7Mask, Used_13Mask);
        b_28_1 := (b_28_1 && IdenticalOnKnownLocations(Ops_7Heap, Result_10Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_10Heap, Used_13Mask);
        b_28_1 := b_28_1 && state(Result_10Heap, Result_10Mask);
      b_23 := b_23 && b_28_1;
    Mask := Mask[null, wand_5(true, x, FullPerm):=Mask[null, wand_5(true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_30_1: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_29_1: bool;
  var Labellhs17Mask: MaskType;
  var Labellhs17Heap: HeapType;
  var boolCur_4: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_31_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_32_1: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var b_33_1: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var freshVersion: FrameType;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_34_1: bool;
  var b_35_1: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume y != null;
    assume state(Heap, Mask);
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* acc(y.f, write) {
  //   fold acc(Pair(x), write)
  // } -- consumption.vpr@74.3--76.4
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_30_1 := b_30_1 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_29_1 := b_29_1 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_30_1) {
      b_30_1 := b_30_1;
    }
    b_30_1 := b_30_1 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs17 -- consumption.vpr@74.11--74.30
      lhs17:
      Labellhs17Mask := Ops_9Mask;
      Labellhs17Heap := Ops_9Heap;
      b_30_1 := b_30_1 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_30_1) {
      
      // -- Translating statement: fold acc(Pair(x), write) -- consumption.vpr@75.7--75.24
        ExhaleWellDef0Mask := Ops_9Mask;
        ExhaleWellDef0Heap := Ops_9Heap;
        havoc Used_15Heap;
        Used_15Mask := ZeroMask;
        b_31_1 := b_31_1 && state(Used_15Heap, Used_15Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_15Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.f, write) might be negative. (consumption.vpr@75.7--75.24) [211272]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_30_1 && b_31_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
                b_31_1 := b_31_1 && state(Used_15Heap, Used_15Mask);
                b_31_1 := b_31_1 && Ops_9Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
                Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_30_1 && b_31_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
                b_31_1 := b_31_1 && state(Used_15Heap, Used_15Mask);
                b_31_1 := b_31_1 && Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, y, FullPerm):=Heap[null, wand_5#sm(true, y, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.f (consumption.vpr@75.7--75.24) [211273]"}
            b_30_1 && b_31_1 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_32_1 := b_30_1 && b_31_1;
            b_32_1 := b_32_1 && state(Result_11Heap, Result_11Mask);
            b_32_1 := b_32_1 && sumMask(Result_11Mask, Ops_9Mask, Used_15Mask);
            b_32_1 := (b_32_1 && IdenticalOnKnownLocations(Ops_9Heap, Result_11Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_11Heap, Used_15Mask);
            b_32_1 := b_32_1 && state(Result_11Heap, Result_11Mask);
          b_30_1 := b_30_1 && b_32_1;
        b_30_1 := b_30_1 && b_31_1;
        b_30_1 := b_30_1 && Used_15Heap == Ops_9Heap;
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_15Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.g, write) might be negative. (consumption.vpr@75.7--75.24) [211274]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_30_1 && b_31_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[rcvLocal, g:=Used_15Mask[rcvLocal, g] + takeTransfer];
                b_31_1 := b_31_1 && state(Used_15Heap, Used_15Mask);
                b_31_1 := b_31_1 && Ops_9Heap[rcvLocal, g] == Used_15Heap[rcvLocal, g];
                Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_30_1 && b_31_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[rcvLocal, g:=Used_15Mask[rcvLocal, g] + takeTransfer];
                b_31_1 := b_31_1 && state(Used_15Heap, Used_15Mask);
                b_31_1 := b_31_1 && Heap[rcvLocal, g] == Used_15Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, y, FullPerm):=Heap[null, wand_5#sm(true, y, FullPerm)][x, g:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.g (consumption.vpr@75.7--75.24) [211275]"}
            b_30_1 && b_31_1 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_33_1 := b_30_1 && b_31_1;
            b_33_1 := b_33_1 && state(Result_12Heap, Result_12Mask);
            b_33_1 := b_33_1 && sumMask(Result_12Mask, Ops_9Mask, Used_15Mask);
            b_33_1 := (b_33_1 && IdenticalOnKnownLocations(Ops_9Heap, Result_12Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_12Heap, Used_15Mask);
            b_33_1 := b_33_1 && state(Result_12Heap, Result_12Mask);
          b_30_1 := b_30_1 && b_33_1;
        b_30_1 := b_30_1 && b_31_1;
        b_30_1 := b_30_1 && Used_15Heap == Ops_9Heap;
        perm := FullPerm;
        b_30_1 := b_30_1;
        Ops_9Mask := Ops_9Mask[null, Pair(x):=Ops_9Mask[null, Pair(x)] + perm];
        b_30_1 := b_30_1 && state(Ops_9Heap, Ops_9Mask);
        b_30_1 := b_30_1 && state(Ops_9Heap, Ops_9Mask);
        assume Pair#trigger(Ops_9Heap, Pair(x));
        assume Ops_9Heap[null, Pair(x)] == CombineFrames(FrameFragment(Ops_9Heap[x, f_7]), FrameFragment(Ops_9Heap[x, g]));
        if (!HasDirectPerm(Ops_9Mask, null, Pair(x))) {
          Ops_9Heap := Ops_9Heap[null, Pair#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_9Heap := Ops_9Heap[null, Pair(x):=freshVersion];
        }
        Ops_9Heap := Ops_9Heap[null, Pair#sm(x):=Ops_9Heap[null, Pair#sm(x)][x, f_7:=true]];
        Ops_9Heap := Ops_9Heap[null, Pair#sm(x):=Ops_9Heap[null, Pair#sm(x)][x, g:=true]];
        assume state(Ops_9Heap, Ops_9Mask);
        b_30_1 := b_30_1 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationacc(y.f, write)
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_34_1 := b_34_1 && state(Used_16Heap, Used_16Mask);
    
    // -- Transfer of acc(y.f, write)
      rcvLocal := y;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_16Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(y.f, write) might be negative. (consumption.vpr@74.3--76.4) [211277]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_30_1 && b_30_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_16Mask := Used_16Mask[rcvLocal, f_7:=Used_16Mask[rcvLocal, f_7] + takeTransfer];
            b_34_1 := b_34_1 && state(Used_16Heap, Used_16Mask);
            b_34_1 := b_34_1 && Ops_9Heap[rcvLocal, f_7] == Used_16Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_30_1 && b_30_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_16Mask := Used_16Mask[rcvLocal, f_7:=Used_16Mask[rcvLocal, f_7] + takeTransfer];
            b_34_1 := b_34_1 && state(Used_16Heap, Used_16Mask);
            b_34_1 := b_34_1 && Heap[rcvLocal, f_7] == Used_16Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_5#sm(true, y, FullPerm):=Heap[null, wand_5#sm(true, y, FullPerm)][y, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access y.f (consumption.vpr@74.3--76.4) [211278]"}
        (b_30_1 && b_30_1) && b_34_1 ==> neededTransfer == 0.000000000 && Used_16Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_35_1 := b_30_1 && b_34_1;
        b_35_1 := b_35_1 && state(Result_13Heap, Result_13Mask);
        b_35_1 := b_35_1 && sumMask(Result_13Mask, Ops_9Mask, Used_16Mask);
        b_35_1 := (b_35_1 && IdenticalOnKnownLocations(Ops_9Heap, Result_13Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_16Heap, Result_13Heap, Used_16Mask);
        b_35_1 := b_35_1 && state(Result_13Heap, Result_13Mask);
      b_30_1 := b_30_1 && b_35_1;
    Mask := Mask[null, wand_5(true, y, FullPerm):=Mask[null, wand_5(true, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs19Mask: MaskType;
  var Labellhs19Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_37_1: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_36_1: bool;
  var Labellhs20Mask: MaskType;
  var Labellhs20Heap: HeapType;
  var boolCur_5: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_38: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_39: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var b_40: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var freshVersion: FrameType;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_41: bool;
  var b_42: bool;
  var Result_16Heap: HeapType;
  var Result_16Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Check definedness of true --* acc(y.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs19 -- consumption.vpr@82.11--82.28
          lhs19:
          Labellhs19Mask := WandDefLHSMask;
          Labellhs19Heap := WandDefLHSHeap;
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
    PostMask := PostMask[null, wand_5(true, y, FullPerm):=PostMask[null, wand_5(true, y, FullPerm)] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package true --* acc(y.f, write) {
  //   fold acc(Pair(x), write)
  // } -- consumption.vpr@84.3--86.4
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_37_1 := b_37_1 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_36_1 := b_36_1 && state(Used_17Heap, Used_17Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_37_1) {
      b_37_1 := b_37_1;
    }
    b_37_1 := b_37_1 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs20 -- consumption.vpr@84.11--84.30
      lhs20:
      Labellhs20Mask := Ops_11Mask;
      Labellhs20Heap := Ops_11Heap;
      b_37_1 := b_37_1 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    if (b_37_1) {
      
      // -- Translating statement: fold acc(Pair(x), write) -- consumption.vpr@85.7--85.24
        ExhaleWellDef0Mask := Ops_11Mask;
        ExhaleWellDef0Heap := Ops_11Heap;
        havoc Used_18Heap;
        Used_18Mask := ZeroMask;
        b_38 := b_38 && state(Used_18Heap, Used_18Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_18Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.f, write) might be negative. (consumption.vpr@85.7--85.24) [211280]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_37_1 && b_38) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_18Mask := Used_18Mask[rcvLocal, f_7:=Used_18Mask[rcvLocal, f_7] + takeTransfer];
                b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                b_38 := b_38 && Ops_11Heap[rcvLocal, f_7] == Used_18Heap[rcvLocal, f_7];
                Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_37_1 && b_38) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_18Mask := Used_18Mask[rcvLocal, f_7:=Used_18Mask[rcvLocal, f_7] + takeTransfer];
                b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                b_38 := b_38 && Heap[rcvLocal, f_7] == Used_18Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, y, FullPerm):=Heap[null, wand_5#sm(true, y, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.f (consumption.vpr@85.7--85.24) [211281]"}
            b_37_1 && b_38 ==> neededTransfer == 0.000000000 && Used_18Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_39 := b_37_1 && b_38;
            b_39 := b_39 && state(Result_14Heap, Result_14Mask);
            b_39 := b_39 && sumMask(Result_14Mask, Ops_11Mask, Used_18Mask);
            b_39 := (b_39 && IdenticalOnKnownLocations(Ops_11Heap, Result_14Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_18Heap, Result_14Heap, Used_18Mask);
            b_39 := b_39 && state(Result_14Heap, Result_14Mask);
          b_37_1 := b_37_1 && b_39;
        b_37_1 := b_37_1 && b_38;
        b_37_1 := b_37_1 && Used_18Heap == Ops_11Heap;
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_18Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Folding Pair(x) might fail. Fraction acc(x.g, write) might be negative. (consumption.vpr@85.7--85.24) [211282]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_37_1 && b_38) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_18Mask := Used_18Mask[rcvLocal, g:=Used_18Mask[rcvLocal, g] + takeTransfer];
                b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                b_38 := b_38 && Ops_11Heap[rcvLocal, g] == Used_18Heap[rcvLocal, g];
                Ops_11Mask := Ops_11Mask[rcvLocal, g:=Ops_11Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_37_1 && b_38) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_18Mask := Used_18Mask[rcvLocal, g:=Used_18Mask[rcvLocal, g] + takeTransfer];
                b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                b_38 := b_38 && Heap[rcvLocal, g] == Used_18Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, y, FullPerm):=Heap[null, wand_5#sm(true, y, FullPerm)][x, g:=true]];
              }
            }
          assert {:msg "  Folding Pair(x) might fail. There might be insufficient permission to access x.g (consumption.vpr@85.7--85.24) [211283]"}
            b_37_1 && b_38 ==> neededTransfer == 0.000000000 && Used_18Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_40 := b_37_1 && b_38;
            b_40 := b_40 && state(Result_15Heap, Result_15Mask);
            b_40 := b_40 && sumMask(Result_15Mask, Ops_11Mask, Used_18Mask);
            b_40 := (b_40 && IdenticalOnKnownLocations(Ops_11Heap, Result_15Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_18Heap, Result_15Heap, Used_18Mask);
            b_40 := b_40 && state(Result_15Heap, Result_15Mask);
          b_37_1 := b_37_1 && b_40;
        b_37_1 := b_37_1 && b_38;
        b_37_1 := b_37_1 && Used_18Heap == Ops_11Heap;
        perm := FullPerm;
        b_37_1 := b_37_1;
        Ops_11Mask := Ops_11Mask[null, Pair(x):=Ops_11Mask[null, Pair(x)] + perm];
        b_37_1 := b_37_1 && state(Ops_11Heap, Ops_11Mask);
        b_37_1 := b_37_1 && state(Ops_11Heap, Ops_11Mask);
        assume Pair#trigger(Ops_11Heap, Pair(x));
        assume Ops_11Heap[null, Pair(x)] == CombineFrames(FrameFragment(Ops_11Heap[x, f_7]), FrameFragment(Ops_11Heap[x, g]));
        if (!HasDirectPerm(Ops_11Mask, null, Pair(x))) {
          Ops_11Heap := Ops_11Heap[null, Pair#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_11Heap := Ops_11Heap[null, Pair(x):=freshVersion];
        }
        Ops_11Heap := Ops_11Heap[null, Pair#sm(x):=Ops_11Heap[null, Pair#sm(x)][x, f_7:=true]];
        Ops_11Heap := Ops_11Heap[null, Pair#sm(x):=Ops_11Heap[null, Pair#sm(x)][x, g:=true]];
        assume state(Ops_11Heap, Ops_11Mask);
        b_37_1 := b_37_1 && state(Ops_11Heap, Ops_11Mask);
    }
    // Translating exec of non-ghost operationacc(y.f, write)
    havoc Used_19Heap;
    Used_19Mask := ZeroMask;
    b_41 := b_41 && state(Used_19Heap, Used_19Mask);
    
    // -- Transfer of acc(y.f, write)
      rcvLocal := y;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_19Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(y.f, write) might be negative. (consumption.vpr@84.3--86.4) [211285]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_37_1 && b_37_1) && b_41) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[rcvLocal, f_7:=Used_19Mask[rcvLocal, f_7] + takeTransfer];
            b_41 := b_41 && state(Used_19Heap, Used_19Mask);
            b_41 := b_41 && Ops_11Heap[rcvLocal, f_7] == Used_19Heap[rcvLocal, f_7];
            Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_37_1 && b_37_1) && b_41) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[rcvLocal, f_7:=Used_19Mask[rcvLocal, f_7] + takeTransfer];
            b_41 := b_41 && state(Used_19Heap, Used_19Mask);
            b_41 := b_41 && Heap[rcvLocal, f_7] == Used_19Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_5#sm(true, y, FullPerm):=Heap[null, wand_5#sm(true, y, FullPerm)][y, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access y.f (consumption.vpr@84.3--86.4) [211286]"}
        (b_37_1 && b_37_1) && b_41 ==> neededTransfer == 0.000000000 && Used_19Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_42 := b_37_1 && b_41;
        b_42 := b_42 && state(Result_16Heap, Result_16Mask);
        b_42 := b_42 && sumMask(Result_16Mask, Ops_11Mask, Used_19Mask);
        b_42 := (b_42 && IdenticalOnKnownLocations(Ops_11Heap, Result_16Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_19Heap, Result_16Heap, Used_19Mask);
        b_42 := b_42 && state(Result_16Heap, Result_16Mask);
      b_37_1 := b_37_1 && b_42;
    Mask := Mask[null, wand_5(true, y, FullPerm):=Mask[null, wand_5(true, y, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    // permLe
    assert {:msg "  Postcondition of test05 might not hold. Magic wand instance not found. (consumption.vpr@82.11--82.28) [211287]"}
      FullPerm <= Mask[null, wand_5(true, y, FullPerm)];
    Mask := Mask[null, wand_5(true, y, FullPerm):=Mask[null, wand_5(true, y, FullPerm)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}