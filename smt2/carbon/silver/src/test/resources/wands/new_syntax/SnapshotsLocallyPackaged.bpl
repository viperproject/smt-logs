// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:33:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsLocallyPackaged.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsLocallyPackaged-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

// Function heights (higher height means its body is available earlier):
// - height 1: sum
// - height 0: length
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

type WandType_wand_6;
function  wand_6(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_6 int;
function  wand_6#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_6 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6(arg1, arg2, arg3, arg4) }
  IsWandField(wand_6(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_6#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_6(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_6#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4)) }
  wand_6#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_6(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_6(arg1, arg2, arg3, arg4), wand_6(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_6(arg1, arg2, arg3, arg4) == wand_6(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_5;
function  wand_5(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_5 int;
function  wand_5#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_5 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_5#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Ref): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Ref): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Ref): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_3(arg1, arg2) }
  IsWandField(wand_3(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_3#ft(arg1, arg2) }
  IsWandField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_3(arg1, arg2) }
  !IsPredicateField(wand_3(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_3#ft(arg1, arg2) }
  !IsPredicateField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { WandMaskField(wand_3#ft(arg1, arg2)) }
  wand_3#sm(arg1, arg2) == WandMaskField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_3(arg1, arg2) }
  getPredWandId(wand_3(arg1, arg2)) == 4
);
axiom (forall arg1: Ref, arg2: Ref, arg1_2: Ref, arg2_2: Ref ::
  { wand_3(arg1, arg2), wand_3(arg1_2, arg2_2) }
  wand_3(arg1, arg2) == wand_3(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_7;
function  wand_7(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_7 int;
function  wand_7#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_7 PMaskType;
function  wand_7#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_7 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_7#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_7#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_7#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_7#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { WandMaskField(wand_7#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_7#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_7#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: bool ::
  { wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_7(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_7(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_7(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand(arg1, arg2, arg3) }
  IsWandField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand#ft(arg1, arg2, arg3) }
  IsWandField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand(arg1, arg2, arg3) }
  !IsPredicateField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3)) }
  wand#sm(arg1, arg2, arg3) == WandMaskField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand(arg1, arg2, arg3) }
  getPredWandId(wand(arg1, arg2, arg3)) == 6
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref ::
  { wand(arg1, arg2, arg3), wand(arg1_2, arg2_2, arg3_2) }
  wand(arg1, arg2, arg3) == wand(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  IsWandField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2#ft(arg1, arg2) }
  IsWandField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  !IsPredicateField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2#ft(arg1, arg2) }
  !IsPredicateField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { WandMaskField(wand_2#ft(arg1, arg2)) }
  wand_2#sm(arg1, arg2) == WandMaskField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  getPredWandId(wand_2(arg1, arg2)) == 7
);
axiom (forall arg1: bool, arg2: Ref, arg1_2: bool, arg2_2: Ref ::
  { wand_2(arg1, arg2), wand_2(arg1_2, arg2_2) }
  wand_2(arg1, arg2) == wand_2(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4)) }
  wand_4#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4)) == 8
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_4(arg1, arg2, arg3, arg4), wand_4(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_4(arg1, arg2, arg3, arg4) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 9
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
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
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length(Heap: HeapType, x: Ref): int;
function  length'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { length(Heap, x) }
  length(Heap, x) == length'(Heap, x) && dummyFunction(length#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { length'(Heap, x) }
  dummyFunction(length#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), length(Heap, x) } { state(Heap, Mask), length#triggerStateless(x), List#trigger(Heap, List(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> length(Heap, x) == (if Heap[x, next] == null then 1 else 1 + length'(Heap, Heap[x, next]))
);

// Framing axioms
function  length#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), length'(Heap, x) } { state(Heap, Mask), length#triggerStateless(x), List#trigger(Heap, List(x)) }
  state(Heap, Mask) ==> length'(Heap, x) == length#frame(Heap[null, List(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(x):=Mask[null, List(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(x), write) in (x.next == null ? 1 : 1 + length(x.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(x));
      assume UnfoldingHeap[null, List(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, List(UnfoldingHeap[x, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(x) (SnapshotsLocallyPackaged.vpr@13.1--17.2) [139903]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, List(UnfoldingHeap[x, next]):=UnfoldingMask[null, List(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List(x), UnfoldingHeap[null, List(x)], List(UnfoldingHeap[x, next]), UnfoldingHeap[null, List(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (SnapshotsLocallyPackaged.vpr@13.1--17.2) [139904]"}
        HasDirectPerm(UnfoldingMask, x, next);
      if (UnfoldingHeap[x, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (SnapshotsLocallyPackaged.vpr@13.1--17.2) [139905]"}
          HasDirectPerm(UnfoldingMask, x, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(x.next) (SnapshotsLocallyPackaged.vpr@16.52--16.66) [139906]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(UnfoldingHeap[x, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, List(UnfoldingHeap[x, next])], UnfoldingHeap[x, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(x):=Heap[null, List#sm(x)][x, f_7:=true]];
        Heap := Heap[null, List#sm(x):=Heap[null, List#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, List#sm(x)][o_15, f_20] || Heap[null, List#sm(Heap[x, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, List#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[x, next] == null then 1 else 1 + length(Heap, Heap[x, next]));
}

// ==================================================
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum(Heap: HeapType, x: Ref): int;
function  sum'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { sum(Heap, x) }
  sum(Heap, x) == sum'(Heap, x) && dummyFunction(sum#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { sum'(Heap, x) }
  dummyFunction(sum#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), sum(Heap, x) } { state(Heap, Mask), sum#triggerStateless(x), pair#trigger(Heap, pair(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> sum(Heap, x) == Heap[x, f_7] + Heap[x, g]
);

// Framing axioms
function  sum#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), sum'(Heap, x) }
  state(Heap, Mask) ==> sum'(Heap, x) == sum#frame(Heap[null, pair(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  sum#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  sum#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure sum#definedness(x: Ref) returns (Result: int)
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
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(pair(x), write) in x.f + x.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pair#trigger(UnfoldingHeap, pair(x));
      assume UnfoldingHeap[null, pair(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[x, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(x) (SnapshotsLocallyPackaged.vpr@23.1--26.2) [139907]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, pair(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@23.1--26.2) [139908]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@23.1--26.2) [139909]"}
        HasDirectPerm(UnfoldingMask, x, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, f_7:=true]];
        Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[x, g];
}

// ==================================================
// Translation of predicate List
// ==================================================

type PredicateType_List;
function  List(x: Ref): Field PredicateType_List FrameType;
function  List#sm(x: Ref): Field PredicateType_List PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(List(x)) }
  PredicateMaskField(List(x)) == List#sm(x)
);
axiom (forall x: Ref ::
  { List(x) }
  IsPredicateField(List(x))
);
axiom (forall x: Ref ::
  { List(x) }
  getPredWandId(List(x)) == 0
);
function  List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { List(x), List(x2) }
  List(x) == List(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { List#sm(x), List#sm(x2) }
  List#sm(x) == List#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { List#trigger(Heap, List(x)) }
  List#everUsed(List(x))
);

procedure List#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (SnapshotsLocallyPackaged.vpr@9.1--11.2) [139910]"}
        HasDirectPerm(Mask, x, next);
    if (Heap[x, next] != null) {
      
      // -- Check definedness of acc(List(x.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (SnapshotsLocallyPackaged.vpr@9.1--11.2) [139911]"}
          HasDirectPerm(Mask, x, next);
      perm := FullPerm;
      Mask := Mask[null, List(Heap[x, next]):=Mask[null, List(Heap[x, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate pair
// ==================================================

type PredicateType_pair;
function  pair(x: Ref): Field PredicateType_pair FrameType;
function  pair#sm(x: Ref): Field PredicateType_pair PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(pair(x)) }
  PredicateMaskField(pair(x)) == pair#sm(x)
);
axiom (forall x: Ref ::
  { pair(x) }
  IsPredicateField(pair(x))
);
axiom (forall x: Ref ::
  { pair(x) }
  getPredWandId(pair(x)) == 1
);
function  pair#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pair#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { pair(x), pair(x2) }
  pair(x) == pair(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { pair#sm(x), pair#sm(x2) }
  pair#sm(x) == pair#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { pair#trigger(Heap, pair(x)) }
  pair#everUsed(pair(x))
);

procedure pair#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pair
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var b_4: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var freshVersion: FrameType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_5: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_6: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
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
  
  // -- Translating statement: x.g := 1 -- SnapshotsLocallyPackaged.vpr@30.5--30.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@30.5--30.13) [139912]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) --* acc(pair(x), write) {
  //   fold acc(pair(x), write)
  // } -- SnapshotsLocallyPackaged.vpr@31.5--33.6
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
    
    // -- Translating statement: label lhs1 -- SnapshotsLocallyPackaged.vpr@31.13--31.33
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(pair(x), write) -- SnapshotsLocallyPackaged.vpr@32.9--32.21
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding pair(x) might fail. Fraction acc(x.f, write) might be negative. (SnapshotsLocallyPackaged.vpr@32.9--32.21) [139914]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand#sm(x, FullPerm, x):=Heap[null, wand#sm(x, FullPerm, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@32.9--32.21) [139915]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Folding pair(x) might fail. Fraction acc(x.g, write) might be negative. (SnapshotsLocallyPackaged.vpr@32.9--32.21) [139916]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
                Ops_1Mask := Ops_1Mask[rcvLocal, g:=Ops_1Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand#sm(x, FullPerm, x):=Heap[null, wand#sm(x, FullPerm, x)][x, g:=true]];
              }
            }
          assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@32.9--32.21) [139917]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_2_1;
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
            b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, pair(x):=Ops_1Mask[null, pair(x)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume pair#trigger(Ops_1Heap, pair(x));
        assume Ops_1Heap[null, pair(x)] == CombineFrames(FrameFragment(Ops_1Heap[x, f_7]), FrameFragment(Ops_1Heap[x, g]));
        if (!HasDirectPerm(Ops_1Mask, null, pair(x))) {
          Ops_1Heap := Ops_1Heap[null, pair#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, pair(x):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, pair#sm(x):=Ops_1Heap[null, pair#sm(x)][x, f_7:=true]];
        Ops_1Heap := Ops_1Heap[null, pair#sm(x):=Ops_1Heap[null, pair#sm(x)][x, g:=true]];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(pair(x), write)
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_5 := b_5 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(pair(x), write)
      arg_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[null, pair(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(pair(x), write) might be negative. (SnapshotsLocallyPackaged.vpr@31.5--33.6) [139919]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, pair(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, pair(arg_1):=Used_2Mask[null, pair(arg_1)] + takeTransfer];
            b_5 := b_5 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, pair(arg_1):=FullPerm];
            b_5 := b_5 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, pair(arg_1):=Ops_1Mask[null, pair(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, pair(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, pair(arg_1):=Used_2Mask[null, pair(arg_1)] + takeTransfer];
            b_5 := b_5 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, pair(arg_1):=FullPerm];
            b_5 := b_5 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
            Mask := Mask[null, pair(arg_1):=Mask[null, pair(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, wand#sm(x, FullPerm, x)][o_16, f_21] || Heap[null, pair#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand#sm(x, FullPerm, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access pair(x) (SnapshotsLocallyPackaged.vpr@31.5--33.6) [139920]"}
        (b_1_1 && b_1_1) && b_5 ==> neededTransfer == 0.000000000 && Used_2Mask[null, pair(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_1_1 && b_5;
        b_6 := b_6 && state(Result_2Heap, Result_2Mask);
        b_6 := b_6 && sumMask(Result_2Mask, Ops_1Mask, Used_2Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_2Heap, Used_2Mask);
        b_6 := b_6 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_6;
    Mask := Mask[null, wand(x, FullPerm, x):=Mask[null, wand(x, FullPerm, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 2 -- SnapshotsLocallyPackaged.vpr@34.5--34.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@34.5--34.13) [139921]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(pair(x), write) -- SnapshotsLocallyPackaged.vpr@35.5--35.31
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@35.5--35.31) [139922]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x)];
      Mask := Mask[null, wand(x, FullPerm, x):=Mask[null, wand(x, FullPerm, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@35.5--35.31) [139924]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sum(x) == 3 -- SnapshotsLocallyPackaged.vpr@36.5--36.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of sum(x) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(x) (SnapshotsLocallyPackaged.vpr@36.12--36.18) [139926]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(x) == 3 might not hold. (SnapshotsLocallyPackaged.vpr@36.12--36.23) [139927]"}
      sum(Heap, x) == 3;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_8: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_7: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_9: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_10: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_11: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.g := 1 -- SnapshotsLocallyPackaged.vpr@41.5--41.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@41.5--41.13) [139928]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && acc(x.g, write) {
  // } -- SnapshotsLocallyPackaged.vpr@42.5--42.46
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_7 := b_7 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_8) {
      perm := FullPerm;
      b_8 := b_8 && x != null;
      Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
      b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    }
    b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- SnapshotsLocallyPackaged.vpr@42.13--42.46
      lhs4:
      Labellhs4Heap := Ops_3Heap;
      Labellhs4Mask := Ops_3Mask;
      b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && acc(x.g, write)
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_9 := b_9 && state(Used_4Heap, Used_4Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_4Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsLocallyPackaged.vpr@42.5--42.46) [139929]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_9 := b_9 && state(Used_4Heap, Used_4Mask);
            b_9 := b_9 && Ops_3Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_9 := b_9 && state(Used_4Heap, Used_4Mask);
            b_9 := b_9 && Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@42.5--42.46) [139930]"}
        (b_8 && b_8) && b_9 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_10 := b_8 && b_9;
        b_10 := b_10 && state(Result_3Heap, Result_3Mask);
        b_10 := b_10 && sumMask(Result_3Mask, Ops_3Mask, Used_4Mask);
        b_10 := (b_10 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_3Heap, Used_4Mask);
        b_10 := b_10 && state(Result_3Heap, Result_3Mask);
      b_8 := b_8 && b_10;
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_4Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (SnapshotsLocallyPackaged.vpr@42.5--42.46) [139931]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, g:=Used_4Mask[rcvLocal, g] + takeTransfer];
            b_9 := b_9 && state(Used_4Heap, Used_4Mask);
            b_9 := b_9 && Ops_3Heap[rcvLocal, g] == Used_4Heap[rcvLocal, g];
            Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, g:=Used_4Mask[rcvLocal, g] + takeTransfer];
            b_9 := b_9 && state(Used_4Heap, Used_4Mask);
            b_9 := b_9 && Heap[rcvLocal, g] == Used_4Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@42.5--42.46) [139932]"}
        (b_8 && b_8) && b_9 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_8 && b_9;
        b_11 := b_11 && state(Result_4Heap, Result_4Mask);
        b_11 := b_11 && sumMask(Result_4Mask, Ops_3Mask, Used_4Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_4Heap, Used_4Mask);
        b_11 := b_11 && state(Result_4Heap, Result_4Mask);
      b_8 := b_8 && b_11;
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 2 -- SnapshotsLocallyPackaged.vpr@43.5--43.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@43.5--43.13) [139933]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && acc(x.g, write) -- SnapshotsLocallyPackaged.vpr@44.5--44.44
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@44.5--44.44) [139934]"}
        FullPerm <= Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@44.5--44.44) [139936]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == 2 && x.g == 1 -- SnapshotsLocallyPackaged.vpr@45.5--45.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@45.12--45.32) [139939]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == 2 might not hold. (SnapshotsLocallyPackaged.vpr@45.12--45.32) [139940]"}
      Heap[x, f_7] == 2;
    
    // -- Check definedness of x.g == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@45.12--45.32) [139941]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion x.g == 1 might not hold. (SnapshotsLocallyPackaged.vpr@45.12--45.32) [139942]"}
      Heap[x, g] == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_13: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_12: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_2: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_14: bool;
  var arg_1_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_15: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
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
  
  // -- Translating statement: x.f := 2 -- SnapshotsLocallyPackaged.vpr@50.5--50.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@50.5--50.13) [139943]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := 1 -- SnapshotsLocallyPackaged.vpr@51.5--51.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@51.5--51.13) [139944]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(x), write) -- SnapshotsLocallyPackaged.vpr@52.5--52.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@52.5--52.17) [139947]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (SnapshotsLocallyPackaged.vpr@52.5--52.17) [139949]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pair#trigger(Heap, pair(x));
    assume Heap[null, pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    if (!HasDirectPerm(Mask, null, pair(x))) {
      Heap := Heap[null, pair#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pair(x):=freshVersion];
    }
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, f_7:=true]];
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(pair(x), write) {
  // } -- SnapshotsLocallyPackaged.vpr@53.5--53.29
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_13 := b_13 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_12 := b_12 && state(Used_5Heap, Used_5Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_13) {
      b_13 := b_13;
    }
    b_13 := b_13 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs7 -- SnapshotsLocallyPackaged.vpr@53.13--53.29
      lhs7:
      Labellhs7Heap := Ops_5Heap;
      Labellhs7Mask := Ops_5Mask;
      b_13 := b_13 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(pair(x), write)
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_14 := b_14 && state(Used_6Heap, Used_6Mask);
    
    // -- Transfer of acc(pair(x), write)
      arg_1_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_6Mask[null, pair(arg_1_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(pair(x), write) might be negative. (SnapshotsLocallyPackaged.vpr@53.5--53.29) [139951]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, pair(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, pair(arg_1_1):=Used_6Mask[null, pair(arg_1_1)] + takeTransfer];
            b_14 := b_14 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, pair(arg_1_1):=FullPerm];
            b_14 := b_14 && IdenticalOnKnownLocations(Ops_5Heap, Used_6Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, pair(arg_1_1):=Ops_5Mask[null, pair(arg_1_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, pair(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, pair(arg_1_1):=Used_6Mask[null, pair(arg_1_1)] + takeTransfer];
            b_14 := b_14 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, pair(arg_1_1):=FullPerm];
            b_14 := b_14 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
            Mask := Mask[null, pair(arg_1_1):=Mask[null, pair(arg_1_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand_2#sm(true, x)][o_52, f_55] || Heap[null, pair#sm(x)][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand_2#sm(true, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access pair(x) (SnapshotsLocallyPackaged.vpr@53.5--53.29) [139952]"}
        (b_13 && b_13) && b_14 ==> neededTransfer == 0.000000000 && Used_6Mask[null, pair(arg_1_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_13 && b_14;
        b_15 := b_15 && state(Result_5Heap, Result_5Mask);
        b_15 := b_15 && sumMask(Result_5Mask, Ops_5Mask, Used_6Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_5Heap, Used_6Mask);
        b_15 := b_15 && state(Result_5Heap, Result_5Mask);
      b_13 := b_13 && b_15;
    Mask := Mask[null, wand_2(true, x):=Mask[null, wand_2(true, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(pair(x), write) -- SnapshotsLocallyPackaged.vpr@54.5--54.27
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@54.5--54.27) [139953]"}
        FullPerm <= Mask[null, wand_2(true, x)];
      Mask := Mask[null, wand_2(true, x):=Mask[null, wand_2(true, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sum(x) == 3 -- SnapshotsLocallyPackaged.vpr@55.5--55.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of sum(x) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(x) (SnapshotsLocallyPackaged.vpr@55.12--55.18) [139956]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(x) == 3 might not hold. (SnapshotsLocallyPackaged.vpr@55.12--55.23) [139957]"}
      sum(Heap, x) == 3;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_17: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_16: bool;
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
  var boolCur_3: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_18: bool;
  var arg_2: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_19: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, List(x):=Mask[null, List(x)] + perm];
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
    PostMask := PostMask[null, List(x):=PostMask[null, List(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(x) == old(length(x))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(x) (SnapshotsLocallyPackaged.vpr@60.20--60.29) [139958]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List(x)];
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
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(x) (SnapshotsLocallyPackaged.vpr@60.37--60.46) [139959]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(x)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length(PostHeap, x) == length(oldHeap, x);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(List(x), write) --* acc(List(x), write) {
  // } -- SnapshotsLocallyPackaged.vpr@61.5--61.32
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_16 := b_16 && state(Used_7Heap, Used_7Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      perm := FullPerm;
      b_17 := b_17;
      Ops_7Mask := Ops_7Mask[null, List(x):=Ops_7Mask[null, List(x)] + perm];
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    }
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs10 -- SnapshotsLocallyPackaged.vpr@61.13--61.32
      lhs10:
      Labellhs10Heap := Ops_7Heap;
      Labellhs10Mask := Ops_7Mask;
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationacc(List(x), write)
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_18 := b_18 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(List(x), write)
      arg_2 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[null, List(arg_2)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(List(x), write) might be negative. (SnapshotsLocallyPackaged.vpr@61.5--61.32) [139960]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, List(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, List(arg_2):=Used_8Mask[null, List(arg_2)] + takeTransfer];
            b_18 := b_18 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, List(arg_2):=FullPerm];
            b_18 := b_18 && IdenticalOnKnownLocations(Ops_7Heap, Used_8Heap, TempMask);
            Ops_7Mask := Ops_7Mask[null, List(arg_2):=Ops_7Mask[null, List(arg_2)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, List(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, List(arg_2):=Used_8Mask[null, List(arg_2)] + takeTransfer];
            b_18 := b_18 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, List(arg_2):=FullPerm];
            b_18 := b_18 && IdenticalOnKnownLocations(Heap, Used_8Heap, TempMask);
            Mask := Mask[null, List(arg_2):=Mask[null, List(arg_2)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, wand_3#sm(x, x)][o_53, f_56] || Heap[null, List#sm(x)][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, wand_3#sm(x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List(x) (SnapshotsLocallyPackaged.vpr@61.5--61.32) [139961]"}
        (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_8Mask[null, List(arg_2)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_19 := b_17 && b_18;
        b_19 := b_19 && state(Result_6Heap, Result_6Mask);
        b_19 := b_19 && sumMask(Result_6Mask, Ops_7Mask, Used_8Mask);
        b_19 := (b_19 && IdenticalOnKnownLocations(Ops_7Heap, Result_6Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_6Heap, Used_8Mask);
        b_19 := b_19 && state(Result_6Heap, Result_6Mask);
      b_17 := b_17 && b_19;
    Mask := Mask[null, wand_3(x, x):=Mask[null, wand_3(x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(List(x), write) --* acc(List(x), write) -- SnapshotsLocallyPackaged.vpr@62.5--62.30
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@62.5--62.30) [139962]"}
        FullPerm <= Mask[null, wand_3(x, x)];
      Mask := Mask[null, wand_3(x, x):=Mask[null, wand_3(x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access List(x) (SnapshotsLocallyPackaged.vpr@62.5--62.30) [139964]"}
          perm <= Mask[null, List(x)];
      }
      Mask := Mask[null, List(x):=Mask[null, List(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, List(x):=Mask[null, List(x)] + perm];
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
      assert {:msg "  Postcondition of test3 might not hold. There might be insufficient permission to access List(x) (SnapshotsLocallyPackaged.vpr@60.9--60.47) [139966]"}
        perm <= Mask[null, List(x)];
    }
    Mask := Mask[null, List(x):=Mask[null, List(x)] - perm];
    assert {:msg "  Postcondition of test3 might not hold. Assertion length(x) == old(length(x)) might not hold. (SnapshotsLocallyPackaged.vpr@60.9--60.47) [139967]"}
      length(Heap, x) == length(oldHeap, x);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_21: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_20: bool;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var boolCur_4: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_22: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_23: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_25: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_24_1: bool;
  var Labellhs16Heap: HeapType;
  var Labellhs16Mask: MaskType;
  var boolCur_5: bool;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_27: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_26: bool;
  var Labellhs18Heap: HeapType;
  var Labellhs18Mask: MaskType;
  var boolCur_6: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_28: bool;
  var b_29: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_30: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs21Heap: HeapType;
  var Labellhs21Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_31: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_32: bool;
  var b_33: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_35: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_34: bool;
  var Labellhs22Heap: HeapType;
  var Labellhs22Mask: MaskType;
  var boolCur_7: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_36: bool;
  var Labellhs25Heap: HeapType;
  var Labellhs25Mask: MaskType;
  var b_37: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_38: bool;
  var b_39: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_40: bool;
  var b_41: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_42: bool;
  var b_43: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var Labellhs26Heap: HeapType;
  var Labellhs26Mask: MaskType;
  var b_44: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  
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
    
    // -- Check definedness of x.f == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@66.10--66.30) [139968]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) {
  // } -- SnapshotsLocallyPackaged.vpr@67.5--67.44
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_21 := b_21 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_20 := b_20 && state(Used_9Heap, Used_9Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_21) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@67.5--67.44) [139969]"}
        perm >= NoPerm;
      b_21 := b_21 && (perm > NoPerm ==> x != null);
      Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
      b_21 := b_21 && state(Ops_9Heap, Ops_9Mask);
    }
    b_21 := b_21 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs13 -- SnapshotsLocallyPackaged.vpr@67.13--67.44
      lhs13:
      Labellhs13Heap := Ops_9Heap;
      Labellhs13Mask := Ops_9Mask;
      b_21 := b_21 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operationacc(x.f, 1 / 2)
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_22 := b_22 && state(Used_10Heap, Used_10Mask);
    
    // -- Transfer of acc(x.f, 1 / 2)
      rcvLocal := x;
      neededTransfer := 1 / 2;
      initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (SnapshotsLocallyPackaged.vpr@67.5--67.44) [139970]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_21 && b_21) && b_22) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_22 := b_22 && state(Used_10Heap, Used_10Mask);
            b_22 := b_22 && Ops_9Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
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
            Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
            b_22 := b_22 && state(Used_10Heap, Used_10Mask);
            b_22 := b_22 && Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_4#sm(x, 1 / 2, x, 1 / 2):=Heap[null, wand_4#sm(x, 1 / 2, x, 1 / 2)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@67.5--67.44) [139971]"}
        (b_21 && b_21) && b_22 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_23 := b_21 && b_22;
        b_23 := b_23 && state(Result_7Heap, Result_7Mask);
        b_23 := b_23 && sumMask(Result_7Mask, Ops_9Mask, Used_10Mask);
        b_23 := (b_23 && IdenticalOnKnownLocations(Ops_9Heap, Result_7Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_7Heap, Used_10Mask);
        b_23 := b_23 && state(Result_7Heap, Result_7Mask);
      b_21 := b_21 && b_23;
    Mask := Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) --*
  // acc(x.f, write) && (acc(x.f, write) --* acc(x.f, write)) {
  //   package acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) {
  //   }
  //   apply acc(x.f, 1 / 2) --* acc(x.f, 1 / 2)
  //   package acc(x.f, write) --* acc(x.f, write) {
  //     apply acc(x.f, 1 / 2) --* acc(x.f, 1 / 2)
  //   }
  // } -- SnapshotsLocallyPackaged.vpr@68.5--74.6
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_25) {
      perm := FullPerm;
      b_25 := b_25 && x != null;
      Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
      b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    }
    b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs16 -- SnapshotsLocallyPackaged.vpr@68.13--68.61
      lhs16:
      Labellhs16Heap := Ops_11Heap;
      Labellhs16Mask := Ops_11Mask;
      b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    if (b_25) {
      
      // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) {
  // } -- SnapshotsLocallyPackaged.vpr@69.13--69.52
        havoc Ops_13Heap;
        Ops_13Mask := ZeroMask;
        b_27 := b_27 && state(Ops_13Heap, Ops_13Mask);
        havoc Used_12Heap;
        Used_12Mask := ZeroMask;
        b_26 := b_26 && state(Used_12Heap, Used_12Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_27) {
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@69.13--69.52) [139972]"}
            perm >= NoPerm;
          b_27 := b_27 && (perm > NoPerm ==> x != null);
          Ops_13Mask := Ops_13Mask[x, f_7:=Ops_13Mask[x, f_7] + perm];
          b_27 := b_27 && state(Ops_13Heap, Ops_13Mask);
        }
        b_27 := b_27 && state(Ops_13Heap, Ops_13Mask);
        
        // -- Translating statement: label lhs18 -- SnapshotsLocallyPackaged.vpr@69.21--69.52
          lhs18:
          Labellhs18Heap := Ops_13Heap;
          Labellhs18Mask := Ops_13Mask;
          b_27 := b_27 && state(Ops_13Heap, Ops_13Mask);
        boolCur_6 := true;
        // Translating exec of non-ghost operationacc(x.f, 1 / 2)
        havoc Used_13Heap;
        Used_13Mask := ZeroMask;
        b_28 := b_28 && state(Used_13Heap, Used_13Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_13Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (SnapshotsLocallyPackaged.vpr@69.13--69.52) [139973]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_27 && (b_27 && b_25)) && b_28) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
                b_28 := b_28 && state(Used_13Heap, Used_13Mask);
                b_28 := b_28 && Ops_13Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
                Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_27 && (b_27 && b_25)) && b_28) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
                b_28 := b_28 && state(Used_13Heap, Used_13Mask);
                b_28 := b_28 && Ops_11Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
                Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
                Ops_11Heap := Ops_11Heap[null, wand_4#sm(x, 1 / 2, x, 1 / 2):=Ops_11Heap[null, wand_4#sm(x, 1 / 2, x, 1 / 2)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_27 && (b_27 && b_25)) && b_28) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
                b_28 := b_28 && state(Used_13Heap, Used_13Mask);
                b_28 := b_28 && Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_4#sm(x, 1 / 2, x, 1 / 2):=Heap[null, wand_4#sm(x, 1 / 2, x, 1 / 2)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@69.13--69.52) [139974]"}
            (b_27 && (b_27 && b_25)) && b_28 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_29 := b_27 && b_28;
            b_29 := b_29 && state(Result_8Heap, Result_8Mask);
            b_29 := b_29 && sumMask(Result_8Mask, Ops_13Mask, Used_13Mask);
            b_29 := (b_29 && IdenticalOnKnownLocations(Ops_13Heap, Result_8Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_8Heap, Used_13Mask);
            b_29 := b_29 && state(Result_8Heap, Result_8Mask);
          b_27 := b_27 && b_29;
        Ops_11Mask := Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + FullPerm];
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    }
    if (b_25) {
      
      // -- Translating statement: apply acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) -- SnapshotsLocallyPackaged.vpr@70.13--70.50
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_11Heap;
          ExhaleWellDef0Mask := Ops_11Mask;
          havoc Used_14Heap;
          Used_14Mask := ZeroMask;
          b_30 := b_30 && state(Used_14Heap, Used_14Mask);
          
          // -- Transfer of acc(x.f, 1 / 2) --* acc(x.f, 1 / 2)
            
            // -- checking if access predicate defined in used state
              if (b_25 && b_30) {
                if (b_25) {
                  
                  // -- Check definedness of acc(x.f, 1 / 2) --* acc(x.f, 1 / 2)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := 1 / 2;
                      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@70.13--70.50) [139975]"}
                        perm >= NoPerm;
                      assume perm > NoPerm ==> x != null;
                      WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs21 -- SnapshotsLocallyPackaged.vpr@70.19--70.50
                        lhs21:
                        Labellhs21Heap := WandDefLHSHeap;
                        Labellhs21Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := 1 / 2;
                      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@70.13--70.50) [139976]"}
                        perm >= NoPerm;
                      assume perm > NoPerm ==> x != null;
                      WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_14Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) might be negative. (SnapshotsLocallyPackaged.vpr@70.13--70.50) [139977]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_25 && b_30) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Used_14Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + takeTransfer];
                  b_30 := b_30 && state(Used_14Heap, Used_14Mask);
                  Ops_11Mask := Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_25 && b_30) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_4(x, 1 / 2, x, 1 / 2)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Used_14Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + takeTransfer];
                  b_30 := b_30 && state(Used_14Heap, Used_14Mask);
                  Mask := Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@70.13--70.50) [139978]"}
              b_25 && b_30 ==> neededTransfer == 0.000000000 && Used_14Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_31 := b_25 && b_30;
              b_31 := b_31 && state(Result_9Heap, Result_9Mask);
              b_31 := b_31 && sumMask(Result_9Mask, Ops_11Mask, Used_14Mask);
              b_31 := (b_31 && IdenticalOnKnownLocations(Ops_11Heap, Result_9Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_9Heap, Used_14Mask);
              b_31 := b_31 && state(Result_9Heap, Result_9Mask);
            b_25 := b_25 && b_31;
          b_25 := b_25 && b_30;
          b_25 := b_25 && Used_14Heap == Ops_11Heap;
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_11Heap;
          ExhaleWellDef0Mask := Ops_11Mask;
          havoc Used_15Heap;
          Used_15Mask := ZeroMask;
          b_32 := b_32 && state(Used_15Heap, Used_15Mask);
          
          // -- Transfer of acc(x.f, 1 / 2)
            rcvLocal := x;
            neededTransfer := 1 / 2;
            initNeededTransfer := Used_15Mask[rcvLocal, f_7] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (SnapshotsLocallyPackaged.vpr@70.13--70.50) [139979]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_25 && b_32) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_11Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
                  b_32 := b_32 && state(Used_15Heap, Used_15Mask);
                  b_32 := b_32 && Ops_11Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
                  Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_25 && b_32) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
                  b_32 := b_32 && state(Used_15Heap, Used_15Mask);
                  b_32 := b_32 && Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
                  Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                  Heap := Heap[null, wand_5#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand_5#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)][x, f_7:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@70.13--70.50) [139980]"}
              b_25 && b_32 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, f_7] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_33 := b_25 && b_32;
              b_33 := b_33 && state(Result_10Heap, Result_10Mask);
              b_33 := b_33 && sumMask(Result_10Mask, Ops_11Mask, Used_15Mask);
              b_33 := (b_33 && IdenticalOnKnownLocations(Ops_11Heap, Result_10Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_10Heap, Used_15Mask);
              b_33 := b_33 && state(Result_10Heap, Result_10Mask);
            b_25 := b_25 && b_33;
          b_25 := b_25 && b_32;
          b_25 := b_25 && Used_15Heap == Ops_11Heap;
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        
        // -- inhale the RHS of the wand
          perm := 1 / 2;
          assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@70.13--70.50) [139981]"}
            perm >= NoPerm;
          b_25 := b_25 && (perm > NoPerm ==> x != null);
          Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
          b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
          b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_11Heap, ExhaleHeap, Ops_11Mask);
        Ops_11Heap := ExhaleHeap;
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    }
    if (b_25) {
      
      // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) {
  //   apply acc(x.f, 1 / 2) --* acc(x.f, 1 / 2)
  // } -- SnapshotsLocallyPackaged.vpr@71.13--73.14
        havoc Ops_15Heap;
        Ops_15Mask := ZeroMask;
        b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
        havoc Used_16Heap;
        Used_16Mask := ZeroMask;
        b_34 := b_34 && state(Used_16Heap, Used_16Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_35) {
          perm := FullPerm;
          b_35 := b_35 && x != null;
          Ops_15Mask := Ops_15Mask[x, f_7:=Ops_15Mask[x, f_7] + perm];
          b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
        }
        b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
        
        // -- Translating statement: label lhs22 -- SnapshotsLocallyPackaged.vpr@71.21--71.42
          lhs22:
          Labellhs22Heap := Ops_15Heap;
          Labellhs22Mask := Ops_15Mask;
          b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
        boolCur_7 := true;
        if (b_35 && b_25) {
          
          // -- Translating statement: apply acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) -- SnapshotsLocallyPackaged.vpr@72.17--72.54
            
            // -- check if wand is held and remove an instance
              ExhaleWellDef0Heap := Ops_15Heap;
              ExhaleWellDef0Mask := Ops_15Mask;
              havoc Used_17Heap;
              Used_17Mask := ZeroMask;
              b_36 := b_36 && state(Used_17Heap, Used_17Mask);
              
              // -- Transfer of acc(x.f, 1 / 2) --* acc(x.f, 1 / 2)
                
                // -- checking if access predicate defined in used state
                  if (b_35 && b_36) {
                    if (b_35) {
                      
                      // -- Check definedness of acc(x.f, 1 / 2) --* acc(x.f, 1 / 2)
                        if (*) {
                          havoc WandDefLHSHeap;
                          WandDefLHSMask := ZeroMask;
                          perm := 1 / 2;
                          assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@72.17--72.54) [139982]"}
                            perm >= NoPerm;
                          assume perm > NoPerm ==> x != null;
                          WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          
                          // -- Translating statement: label lhs25 -- SnapshotsLocallyPackaged.vpr@72.23--72.54
                            lhs25:
                            Labellhs25Heap := WandDefLHSHeap;
                            Labellhs25Mask := WandDefLHSMask;
                            assume state(WandDefLHSHeap, WandDefLHSMask);
                          havoc WandDefRHSHeap;
                          WandDefRHSMask := ZeroMask;
                          perm := 1 / 2;
                          assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@72.17--72.54) [139983]"}
                            perm >= NoPerm;
                          assume perm > NoPerm ==> x != null;
                          WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume false;
                        }
                    }
                  }
                neededTransfer := 1.000000000;
                initNeededTransfer := Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) might be negative. (SnapshotsLocallyPackaged.vpr@72.17--72.54) [139984]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_35 && b_36) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_15Mask[null, wand_4(x, 1 / 2, x, 1 / 2)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_17Mask := Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + takeTransfer];
                      b_36 := b_36 && state(Used_17Heap, Used_17Mask);
                      Ops_15Mask := Ops_15Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Ops_15Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_35 && b_36) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_17Mask := Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + takeTransfer];
                      b_36 := b_36 && state(Used_17Heap, Used_17Mask);
                      Ops_11Mask := Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Ops_11Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_35 && b_36) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Mask[null, wand_4(x, 1 / 2, x, 1 / 2)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_17Mask := Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] + takeTransfer];
                      b_36 := b_36 && state(Used_17Heap, Used_17Mask);
                      Mask := Mask[null, wand_4(x, 1 / 2, x, 1 / 2):=Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] - takeTransfer];
                    }
                  }
                assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@72.17--72.54) [139985]"}
                  b_35 && b_36 ==> neededTransfer == 0.000000000 && Used_17Mask[null, wand_4(x, 1 / 2, x, 1 / 2)] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_37 := b_35 && b_36;
                  b_37 := b_37 && state(Result_11Heap, Result_11Mask);
                  b_37 := b_37 && sumMask(Result_11Mask, Ops_15Mask, Used_17Mask);
                  b_37 := (b_37 && IdenticalOnKnownLocations(Ops_15Heap, Result_11Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_17Heap, Result_11Heap, Used_17Mask);
                  b_37 := b_37 && state(Result_11Heap, Result_11Mask);
                b_35 := b_35 && b_37;
              b_35 := b_35 && b_36;
              b_35 := b_35 && Used_17Heap == Ops_15Heap;
            b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
            
            // -- check if LHS holds and remove permissions 
              ExhaleWellDef0Heap := Ops_15Heap;
              ExhaleWellDef0Mask := Ops_15Mask;
              havoc Used_18Heap;
              Used_18Mask := ZeroMask;
              b_38 := b_38 && state(Used_18Heap, Used_18Mask);
              
              // -- Transfer of acc(x.f, 1 / 2)
                rcvLocal := x;
                neededTransfer := 1 / 2;
                initNeededTransfer := Used_18Mask[rcvLocal, f_7] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (SnapshotsLocallyPackaged.vpr@72.17--72.54) [139986]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_35 && b_38) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_15Mask[rcvLocal, f_7];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_18Mask := Used_18Mask[rcvLocal, f_7:=Used_18Mask[rcvLocal, f_7] + takeTransfer];
                      b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                      b_38 := b_38 && Ops_15Heap[rcvLocal, f_7] == Used_18Heap[rcvLocal, f_7];
                      Ops_15Mask := Ops_15Mask[rcvLocal, f_7:=Ops_15Mask[rcvLocal, f_7] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_35 && b_38) && accVar2) && neededTransfer > 0.000000000) {
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
                      Ops_11Heap := Ops_11Heap[null, wand_6#sm(x, FullPerm, x, FullPerm):=Ops_11Heap[null, wand_6#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_35 && b_38) && accVar2) && neededTransfer > 0.000000000) {
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
                      Heap := Heap[null, wand_6#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_6#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
                    }
                  }
                assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@72.17--72.54) [139987]"}
                  b_35 && b_38 ==> neededTransfer == 0.000000000 && Used_18Mask[rcvLocal, f_7] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_39 := b_35 && b_38;
                  b_39 := b_39 && state(Result_12Heap, Result_12Mask);
                  b_39 := b_39 && sumMask(Result_12Mask, Ops_15Mask, Used_18Mask);
                  b_39 := (b_39 && IdenticalOnKnownLocations(Ops_15Heap, Result_12Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_18Heap, Result_12Heap, Used_18Mask);
                  b_39 := b_39 && state(Result_12Heap, Result_12Mask);
                b_35 := b_35 && b_39;
              b_35 := b_35 && b_38;
              b_35 := b_35 && Used_18Heap == Ops_15Heap;
            b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
            
            // -- inhale the RHS of the wand
              perm := 1 / 2;
              assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@72.17--72.54) [139988]"}
                perm >= NoPerm;
              b_35 := b_35 && (perm > NoPerm ==> x != null);
              Ops_15Mask := Ops_15Mask[x, f_7:=Ops_15Mask[x, f_7] + perm];
              b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
              b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Ops_15Heap, ExhaleHeap, Ops_15Mask);
            Ops_15Heap := ExhaleHeap;
            b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
            b_35 := b_35 && state(Ops_15Heap, Ops_15Mask);
        }
        // Translating exec of non-ghost operationacc(x.f, write)
        havoc Used_19Heap;
        Used_19Mask := ZeroMask;
        b_40 := b_40 && state(Used_19Heap, Used_19Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_19Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsLocallyPackaged.vpr@71.13--73.14) [139989]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_35 && (b_35 && b_25)) && b_40) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_19Mask := Used_19Mask[rcvLocal, f_7:=Used_19Mask[rcvLocal, f_7] + takeTransfer];
                b_40 := b_40 && state(Used_19Heap, Used_19Mask);
                b_40 := b_40 && Ops_15Heap[rcvLocal, f_7] == Used_19Heap[rcvLocal, f_7];
                Ops_15Mask := Ops_15Mask[rcvLocal, f_7:=Ops_15Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_35 && (b_35 && b_25)) && b_40) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_19Mask := Used_19Mask[rcvLocal, f_7:=Used_19Mask[rcvLocal, f_7] + takeTransfer];
                b_40 := b_40 && state(Used_19Heap, Used_19Mask);
                b_40 := b_40 && Ops_11Heap[rcvLocal, f_7] == Used_19Heap[rcvLocal, f_7];
                Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
                Ops_11Heap := Ops_11Heap[null, wand_6#sm(x, FullPerm, x, FullPerm):=Ops_11Heap[null, wand_6#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_35 && (b_35 && b_25)) && b_40) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_19Mask := Used_19Mask[rcvLocal, f_7:=Used_19Mask[rcvLocal, f_7] + takeTransfer];
                b_40 := b_40 && state(Used_19Heap, Used_19Mask);
                b_40 := b_40 && Heap[rcvLocal, f_7] == Used_19Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_6#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_6#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@71.13--73.14) [139990]"}
            (b_35 && (b_35 && b_25)) && b_40 ==> neededTransfer == 0.000000000 && Used_19Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_41 := b_35 && b_40;
            b_41 := b_41 && state(Result_13Heap, Result_13Mask);
            b_41 := b_41 && sumMask(Result_13Mask, Ops_15Mask, Used_19Mask);
            b_41 := (b_41 && IdenticalOnKnownLocations(Ops_15Heap, Result_13Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_19Heap, Result_13Heap, Used_19Mask);
            b_41 := b_41 && state(Result_13Heap, Result_13Mask);
          b_35 := b_35 && b_41;
        Ops_11Mask := Ops_11Mask[null, wand_6(x, FullPerm, x, FullPerm):=Ops_11Mask[null, wand_6(x, FullPerm, x, FullPerm)] + FullPerm];
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.f, write) --* acc(x.f, write))
    havoc Used_20Heap;
    Used_20Mask := ZeroMask;
    b_42 := b_42 && state(Used_20Heap, Used_20Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_20Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsLocallyPackaged.vpr@68.5--74.6) [139991]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_25 && b_25) && b_42) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_20Mask := Used_20Mask[rcvLocal, f_7:=Used_20Mask[rcvLocal, f_7] + takeTransfer];
            b_42 := b_42 && state(Used_20Heap, Used_20Mask);
            b_42 := b_42 && Ops_11Heap[rcvLocal, f_7] == Used_20Heap[rcvLocal, f_7];
            Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_25 && b_25) && b_42) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_20Mask := Used_20Mask[rcvLocal, f_7:=Used_20Mask[rcvLocal, f_7] + takeTransfer];
            b_42 := b_42 && state(Used_20Heap, Used_20Mask);
            b_42 := b_42 && Heap[rcvLocal, f_7] == Used_20Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_5#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand_5#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@68.5--74.6) [139992]"}
        (b_25 && b_25) && b_42 ==> neededTransfer == 0.000000000 && Used_20Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_43 := b_25 && b_42;
        b_43 := b_43 && state(Result_14Heap, Result_14Mask);
        b_43 := b_43 && sumMask(Result_14Mask, Ops_11Mask, Used_20Mask);
        b_43 := (b_43 && IdenticalOnKnownLocations(Ops_11Heap, Result_14Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_20Heap, Result_14Heap, Used_20Mask);
        b_43 := b_43 && state(Result_14Heap, Result_14Mask);
      b_25 := b_25 && b_43;
    
    // -- Transfer of acc(x.f, write) --* acc(x.f, write)
      
      // -- checking if access predicate defined in used state
        if ((b_25 && b_25) && b_42) {
          if (b_25) {
            
            // -- Check definedness of acc(x.f, write) --* acc(x.f, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs26 -- SnapshotsLocallyPackaged.vpr@68.39--68.60
                  lhs26:
                  Labellhs26Heap := WandDefLHSHeap;
                  Labellhs26Mask := WandDefLHSMask;
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
      initNeededTransfer := Used_20Mask[null, wand_6(x, FullPerm, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) --* acc(x.f, write) might be negative. (SnapshotsLocallyPackaged.vpr@68.5--74.6) [139993]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_25 && b_25) && b_42) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[null, wand_6(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_20Mask := Used_20Mask[null, wand_6(x, FullPerm, x, FullPerm):=Used_20Mask[null, wand_6(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_42 := b_42 && state(Used_20Heap, Used_20Mask);
            Ops_11Mask := Ops_11Mask[null, wand_6(x, FullPerm, x, FullPerm):=Ops_11Mask[null, wand_6(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_25 && b_25) && b_42) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_6(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_20Mask := Used_20Mask[null, wand_6(x, FullPerm, x, FullPerm):=Used_20Mask[null, wand_6(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_42 := b_42 && state(Used_20Heap, Used_20Mask);
            Mask := Mask[null, wand_6(x, FullPerm, x, FullPerm):=Mask[null, wand_6(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@68.5--74.6) [139994]"}
        (b_25 && b_25) && b_42 ==> neededTransfer == 0.000000000 && Used_20Mask[null, wand_6(x, FullPerm, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_44 := b_25 && b_42;
        b_44 := b_44 && state(Result_15Heap, Result_15Mask);
        b_44 := b_44 && sumMask(Result_15Mask, Ops_11Mask, Used_20Mask);
        b_44 := (b_44 && IdenticalOnKnownLocations(Ops_11Heap, Result_15Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_20Heap, Result_15Heap, Used_20Mask);
        b_44 := b_44 && state(Result_15Heap, Result_15Mask);
      b_25 := b_25 && b_44;
    Mask := Mask[null, wand_5(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_5(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --*
  //   acc(x.f, write) && (acc(x.f, write) --* acc(x.f, write)) -- SnapshotsLocallyPackaged.vpr@75.5--75.59
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@75.5--75.59) [139995]"}
        FullPerm <= Mask[null, wand_5(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_5(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_5(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@75.5--75.59) [139997]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      Mask := Mask[null, wand_6(x, FullPerm, x, FullPerm):=Mask[null, wand_6(x, FullPerm, x, FullPerm)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 2 -- SnapshotsLocallyPackaged.vpr@76.5--76.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@76.5--76.13) [139999]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) -- SnapshotsLocallyPackaged.vpr@77.5--77.32
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLocallyPackaged.vpr@77.5--77.32) [140000]"}
        FullPerm <= Mask[null, wand_6(x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_6(x, FullPerm, x, FullPerm):=Mask[null, wand_6(x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@77.5--77.32) [140002]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
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
  
  // -- Translating statement: assert x.f == 2 -- SnapshotsLocallyPackaged.vpr@78.5--78.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@78.12--78.20) [140004]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == 2 might not hold. (SnapshotsLocallyPackaged.vpr@78.12--78.20) [140005]"}
      Heap[x, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- SnapshotsLocallyPackaged.vpr@81.5--81.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (SnapshotsLocallyPackaged.vpr@81.12--81.17) [140006]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_46: bool;
  var Used_21Heap: HeapType;
  var Used_21Mask: MaskType;
  var b_45: bool;
  var Labellhs29Heap: HeapType;
  var Labellhs29Mask: MaskType;
  var boolCur_8: bool;
  var Used_22Heap: HeapType;
  var Used_22Mask: MaskType;
  var b_47: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_48: bool;
  var Result_16Heap: HeapType;
  var Result_16Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@85.10--85.30) [140007]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 1 --* acc(x.f, write) && false {
  // } -- SnapshotsLocallyPackaged.vpr@86.5--86.60
    havoc Ops_17Heap;
    Ops_17Mask := ZeroMask;
    b_46 := b_46 && state(Ops_17Heap, Ops_17Mask);
    havoc Used_21Heap;
    Used_21Mask := ZeroMask;
    b_45 := b_45 && state(Used_21Heap, Used_21Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_46) {
      if (b_46) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (SnapshotsLocallyPackaged.vpr@86.5--86.60) [140008]"}
          perm >= NoPerm;
        b_46 := b_46 && (perm > NoPerm ==> x != null);
        Ops_17Mask := Ops_17Mask[x, f_7:=Ops_17Mask[x, f_7] + perm];
        b_46 := b_46 && state(Ops_17Heap, Ops_17Mask);
      }
      if (b_46) {
        if (b_46) {
          
          // -- Check definedness of x.f == 1
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@86.5--86.60) [140009]"}
              HasDirectPerm(Ops_17Mask, x, f_7);
        }
        b_46 := b_46 && Ops_17Heap[x, f_7] == 1;
      }
    }
    b_46 := b_46 && state(Ops_17Heap, Ops_17Mask);
    
    // -- Translating statement: label lhs29 -- SnapshotsLocallyPackaged.vpr@86.13--86.60
      lhs29:
      Labellhs29Heap := Ops_17Heap;
      Labellhs29Mask := Ops_17Mask;
      b_46 := b_46 && state(Ops_17Heap, Ops_17Mask);
    boolCur_8 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && false
    havoc Used_22Heap;
    Used_22Mask := ZeroMask;
    b_47 := b_47 && state(Used_22Heap, Used_22Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_22Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsLocallyPackaged.vpr@86.5--86.60) [140010]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_46 && b_46) && b_47) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_17Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_22Mask := Used_22Mask[rcvLocal, f_7:=Used_22Mask[rcvLocal, f_7] + takeTransfer];
            b_47 := b_47 && state(Used_22Heap, Used_22Mask);
            b_47 := b_47 && Ops_17Heap[rcvLocal, f_7] == Used_22Heap[rcvLocal, f_7];
            Ops_17Mask := Ops_17Mask[rcvLocal, f_7:=Ops_17Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_46 && b_46) && b_47) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_22Mask := Used_22Mask[rcvLocal, f_7:=Used_22Mask[rcvLocal, f_7] + takeTransfer];
            b_47 := b_47 && state(Used_22Heap, Used_22Mask);
            b_47 := b_47 && Heap[rcvLocal, f_7] == Used_22Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_7#sm(x, 1 / 2, x, 1, x, FullPerm, false):=Heap[null, wand_7#sm(x, 1 / 2, x, 1, x, FullPerm, false)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsLocallyPackaged.vpr@86.5--86.60) [140011]"}
        (b_46 && b_46) && b_47 ==> neededTransfer == 0.000000000 && Used_22Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_48 := b_46 && b_47;
        b_48 := b_48 && state(Result_16Heap, Result_16Mask);
        b_48 := b_48 && sumMask(Result_16Mask, Ops_17Mask, Used_22Mask);
        b_48 := (b_48 && IdenticalOnKnownLocations(Ops_17Heap, Result_16Heap, Ops_17Mask)) && IdenticalOnKnownLocations(Used_22Heap, Result_16Heap, Used_22Mask);
        b_48 := b_48 && state(Result_16Heap, Result_16Mask);
      b_46 := b_46 && b_48;
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (SnapshotsLocallyPackaged.vpr@86.5--86.60) [140012]"}
      (b_46 && b_46) && b_47 ==> false;
    Mask := Mask[null, wand_7(x, 1 / 2, x, 1, x, FullPerm, false):=Mask[null, wand_7(x, 1 / 2, x, 1, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- SnapshotsLocallyPackaged.vpr@89.5--89.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (SnapshotsLocallyPackaged.vpr@89.12--89.17) [140013]"}
      false;
    assume state(Heap, Mask);
}