// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:52:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsBranching.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsBranching-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int, arg7_2: Ref, arg8_2: Perm, arg9_2: Ref, arg10_2: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && arg10 == arg10_2))))))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: bool, arg8: Ref, arg9: Perm, arg10: bool, arg11: Ref, arg12: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int, arg7_2: bool, arg8_2: Ref, arg9_2: Perm, arg10_2: bool, arg11_2: Ref, arg12_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_2(arg1, arg2, arg3) }
  IsWandField(wand_2(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_2#ft(arg1, arg2, arg3) }
  IsWandField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_2(arg1, arg2, arg3) }
  !IsPredicateField(wand_2(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_2#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3)) }
  wand_2#sm(arg1, arg2, arg3) == WandMaskField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_2(arg1, arg2, arg3) }
  getPredWandId(wand_2(arg1, arg2, arg3)) == 2
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_2(arg1, arg2, arg3), wand_2(arg1_2, arg2_2, arg3_2) }
  wand_2(arg1, arg2, arg3) == wand_2(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_3;
function  wand_3(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_3(arg1, arg2, arg3) }
  IsWandField(wand_3(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_3#ft(arg1, arg2, arg3) }
  IsWandField(wand_3#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_3(arg1, arg2, arg3) }
  !IsPredicateField(wand_3(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_3#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3)) }
  wand_3#sm(arg1, arg2, arg3) == WandMaskField(wand_3#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_3(arg1, arg2, arg3) }
  getPredWandId(wand_3(arg1, arg2, arg3)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_3(arg1, arg2, arg3), wand_3(arg1_2, arg2_2, arg3_2) }
  wand_3(arg1, arg2, arg3) == wand_3(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique a_26: Field NormalField int;
axiom !IsPredicateField(a_26);
axiom !IsWandField(a_26);
const unique b_32: Field NormalField int;
axiom !IsPredicateField(b_32);
axiom !IsWandField(b_32);
const unique c_12: Field NormalField int;
axiom !IsPredicateField(c_12);
axiom !IsWandField(c_12);

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
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
  var b_5: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, a_26:=Mask[x, a_26] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, c_12:=Mask[x, c_12] + perm];
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
    PostMask := PostMask[x, a_26:=PostMask[x, a_26] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, b_32:=PostMask[x, b_32] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, c_12:=PostMask[x, c_12] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.a == old(x.a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@11.9--11.98) [225159]"}
        HasDirectPerm(PostMask, x, a_26);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@11.9--11.98) [225160]"}
        HasDirectPerm(oldMask, x, a_26);
    assume PostHeap[x, a_26] == oldHeap[x, a_26];
    
    // -- Check definedness of x.b == old(x.b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@11.9--11.98) [225161]"}
        HasDirectPerm(PostMask, x, b_32);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@11.9--11.98) [225162]"}
        HasDirectPerm(oldMask, x, b_32);
    assume PostHeap[x, b_32] == oldHeap[x, b_32];
    
    // -- Check definedness of x.c == old(x.c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@11.9--11.98) [225163]"}
        HasDirectPerm(PostMask, x, c_12);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@11.9--11.98) [225164]"}
        HasDirectPerm(oldMask, x, c_12);
    assume PostHeap[x, c_12] == oldHeap[x, c_12];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(x.a, write) --*
  // acc(x.a, write) && (x.a == 0 ? acc(x.b, write) : acc(x.c, write)) {
  // } -- SnapshotsBranching.vpr@12.5--12.70
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
      Ops_1Mask := Ops_1Mask[x, a_26:=Ops_1Mask[x, a_26] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- SnapshotsBranching.vpr@12.13--12.70
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.a, write) && (x.a == 0 ? acc(x.b, write) : acc(x.c, write))
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.a, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, a_26] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.a, write) might be negative. (SnapshotsBranching.vpr@12.5--12.70) [225165]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, a_26];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, a_26:=Used_1Mask[rcvLocal, a_26] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, a_26] == Used_1Heap[rcvLocal, a_26];
            Ops_1Mask := Ops_1Mask[rcvLocal, a_26:=Ops_1Mask[rcvLocal, a_26] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, a_26];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, a_26:=Used_1Mask[rcvLocal, a_26] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, a_26] == Used_1Heap[rcvLocal, a_26];
            Mask := Mask[rcvLocal, a_26:=Mask[rcvLocal, a_26] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm)][x, a_26:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@12.5--12.70) [225166]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, a_26] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if (b_1_1 && b_1_1) {
      if (ResultHeap[x, a_26] == 0) {
        
        // -- Transfer of acc(x.b, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, b_32] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.b, write) might be negative. (SnapshotsBranching.vpr@12.5--12.70) [225167]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, b_32];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, b_32:=Used_1Mask[rcvLocal, b_32] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, b_32] == Used_1Heap[rcvLocal, b_32];
                Ops_1Mask := Ops_1Mask[rcvLocal, b_32:=Ops_1Mask[rcvLocal, b_32] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, b_32];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, b_32:=Used_1Mask[rcvLocal, b_32] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, b_32] == Used_1Heap[rcvLocal, b_32];
                Mask := Mask[rcvLocal, b_32:=Mask[rcvLocal, b_32] - takeTransfer];
                Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm)][x, b_32:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@12.5--12.70) [225168]"}
            (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, b_32] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_2_1;
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
            b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_4;
      } else {
        
        // -- Transfer of acc(x.c, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, c_12] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.c, write) might be negative. (SnapshotsBranching.vpr@12.5--12.70) [225169]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, c_12];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, c_12:=Used_1Mask[rcvLocal, c_12] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, c_12] == Used_1Heap[rcvLocal, c_12];
                Ops_1Mask := Ops_1Mask[rcvLocal, c_12:=Ops_1Mask[rcvLocal, c_12] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, c_12];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, c_12:=Used_1Mask[rcvLocal, c_12] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, c_12] == Used_1Heap[rcvLocal, c_12];
                Mask := Mask[rcvLocal, c_12:=Mask[rcvLocal, c_12] - takeTransfer];
                Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm)][x, c_12:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@12.5--12.70) [225170]"}
            (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, c_12] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_1_1 && b_2_1;
            b_5 := b_5 && state(Result_2Heap, Result_2Mask);
            b_5 := b_5 && sumMask(Result_2Mask, Ops_1Mask, Used_1Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_2Heap, Used_1Mask);
            b_5 := b_5 && state(Result_2Heap, Result_2Mask);
          b_1_1 := b_1_1 && b_5;
      }
    }
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.a, write) --*
  //   acc(x.a, write) && (x.a == 0 ? acc(x.b, write) : acc(x.c, write)) -- SnapshotsBranching.vpr@13.5--13.68
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsBranching.vpr@13.5--13.68) [225171]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, 0, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@13.5--13.68) [225173]"}
          perm <= Mask[x, a_26];
      }
      Mask := Mask[x, a_26:=Mask[x, a_26] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, a_26:=Mask[x, a_26] + perm];
      assume state(Heap, Mask);
      if (Heap[x, a_26] == 0) {
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
        assume state(Heap, Mask);
      } else {
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, c_12:=Mask[x, c_12] + perm];
        assume state(Heap, Mask);
      }
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
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@11.9--11.98) [225177]"}
        perm <= Mask[x, a_26];
    }
    Mask := Mask[x, a_26:=Mask[x, a_26] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@11.9--11.98) [225178]"}
        perm <= Mask[x, b_32];
    }
    Mask := Mask[x, b_32:=Mask[x, b_32] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@11.9--11.98) [225179]"}
        perm <= Mask[x, c_12];
    }
    Mask := Mask[x, c_12:=Mask[x, c_12] - perm];
    assert {:msg "  Postcondition of test0 might not hold. Assertion x.a == old(x.a) might not hold. (SnapshotsBranching.vpr@11.9--11.98) [225180]"}
      Heap[x, a_26] == oldHeap[x, a_26];
    assert {:msg "  Postcondition of test0 might not hold. Assertion x.b == old(x.b) might not hold. (SnapshotsBranching.vpr@11.9--11.98) [225181]"}
      Heap[x, b_32] == oldHeap[x, b_32];
    assert {:msg "  Postcondition of test0 might not hold. Assertion x.c == old(x.c) might not hold. (SnapshotsBranching.vpr@11.9--11.98) [225182]"}
      Heap[x, c_12] == oldHeap[x, c_12];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_7: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_6: bool;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var boolCur_1: bool;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_8: bool;
  var Labellhs8Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var boolCur_2: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_10: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_11: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_13: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_12: bool;
  var Labellhs10Mask: MaskType;
  var Labellhs10Heap: HeapType;
  var boolCur_3: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_14: bool;
  var b_15: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_16: bool;
  var b_17: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs12Mask: MaskType;
  var Labellhs12Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_18: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var Labellhs13Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var b_19: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, a_26:=Mask[x, a_26] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, c_12:=Mask[x, c_12] + perm];
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
    PostMask := PostMask[x, a_26:=PostMask[x, a_26] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, b_32:=PostMask[x, b_32] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, c_12:=PostMask[x, c_12] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.a == old(x.a)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@18.9--18.98) [225183]"}
        HasDirectPerm(PostMask, x, a_26);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@18.9--18.98) [225184]"}
        HasDirectPerm(oldMask, x, a_26);
    assume PostHeap[x, a_26] == oldHeap[x, a_26];
    
    // -- Check definedness of x.b == old(x.b)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@18.9--18.98) [225185]"}
        HasDirectPerm(PostMask, x, b_32);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@18.9--18.98) [225186]"}
        HasDirectPerm(oldMask, x, b_32);
    assume PostHeap[x, b_32] == oldHeap[x, b_32];
    
    // -- Check definedness of x.c == old(x.c)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@18.9--18.98) [225187]"}
        HasDirectPerm(PostMask, x, c_12);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@18.9--18.98) [225188]"}
        HasDirectPerm(oldMask, x, c_12);
    assume PostHeap[x, c_12] == oldHeap[x, c_12];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(x.a, write) --*
  // acc(x.a, write) &&
  // (x.a == 0 ? true --* acc(x.b, write) : true --* acc(x.c, write)) {
  //   if (x.a == 0) {
  //     package true --* acc(x.b, write) {
  //     }
  //   } else {
  //     package true --* acc(x.c, write) {
  //     }}
  // } -- SnapshotsBranching.vpr@19.5--25.6
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_6 := b_6 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_7) {
      perm := FullPerm;
      b_7 := b_7 && x != null;
      Ops_3Mask := Ops_3Mask[x, a_26:=Ops_3Mask[x, a_26] + perm];
      b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs6 -- SnapshotsBranching.vpr@19.13--19.92
      lhs6:
      Labellhs6Mask := Ops_3Mask;
      Labellhs6Heap := Ops_3Heap;
      b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_7) {
      
      // -- Translating statement: if (x.a == 0) -- SnapshotsBranching.vpr@20.9--24.10
        if (b_7) {
          
          // -- Check definedness of x.a == 0
            assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@20.13--20.21) [225189]"}
              HasDirectPerm(Ops_3Mask, x, a_26);
        }
        if (b_7 ==> Ops_3Heap[x, a_26] == 0) {
          
          // -- Translating statement: package true --* acc(x.b, write) {
  // } -- SnapshotsBranching.vpr@21.13--21.38
            havoc Ops_5Heap;
            Ops_5Mask := ZeroMask;
            b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
            havoc Used_3Heap;
            Used_3Mask := ZeroMask;
            b_8 := b_8 && state(Used_3Heap, Used_3Mask);
            // Inhaling left hand side of current wand into hypothetical state
            if (b_9) {
              b_9 := b_9;
            }
            b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
            
            // -- Translating statement: label lhs8 -- SnapshotsBranching.vpr@21.21--21.38
              lhs8:
              Labellhs8Mask := Ops_5Mask;
              Labellhs8Heap := Ops_5Heap;
              b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
            boolCur_2 := true;
            // Translating exec of non-ghost operationacc(x.b, write)
            havoc Used_4Heap;
            Used_4Mask := ZeroMask;
            b_10 := b_10 && state(Used_4Heap, Used_4Mask);
            
            // -- Transfer of acc(x.b, write)
              rcvLocal := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_4Mask[rcvLocal, b_32] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(x.b, write) might be negative. (SnapshotsBranching.vpr@21.13--21.38) [225190]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_9 && (b_9 && b_7)) && b_10) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_5Mask[rcvLocal, b_32];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_4Mask := Used_4Mask[rcvLocal, b_32:=Used_4Mask[rcvLocal, b_32] + takeTransfer];
                    b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                    b_10 := b_10 && Ops_5Heap[rcvLocal, b_32] == Used_4Heap[rcvLocal, b_32];
                    Ops_5Mask := Ops_5Mask[rcvLocal, b_32:=Ops_5Mask[rcvLocal, b_32] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_9 && (b_9 && b_7)) && b_10) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_3Mask[rcvLocal, b_32];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_4Mask := Used_4Mask[rcvLocal, b_32:=Used_4Mask[rcvLocal, b_32] + takeTransfer];
                    b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                    b_10 := b_10 && Ops_3Heap[rcvLocal, b_32] == Used_4Heap[rcvLocal, b_32];
                    Ops_3Mask := Ops_3Mask[rcvLocal, b_32:=Ops_3Mask[rcvLocal, b_32] - takeTransfer];
                    Ops_3Heap := Ops_3Heap[null, wand_2#sm(true, x, FullPerm):=Ops_3Heap[null, wand_2#sm(true, x, FullPerm)][x, b_32:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_9 && (b_9 && b_7)) && b_10) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, b_32];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_4Mask := Used_4Mask[rcvLocal, b_32:=Used_4Mask[rcvLocal, b_32] + takeTransfer];
                    b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                    b_10 := b_10 && Heap[rcvLocal, b_32] == Used_4Heap[rcvLocal, b_32];
                    Mask := Mask[rcvLocal, b_32:=Mask[rcvLocal, b_32] - takeTransfer];
                    Heap := Heap[null, wand_2#sm(true, x, FullPerm):=Heap[null, wand_2#sm(true, x, FullPerm)][x, b_32:=true]];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@21.13--21.38) [225191]"}
                (b_9 && (b_9 && b_7)) && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, b_32] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_11 := b_9 && b_10;
                b_11 := b_11 && state(Result_3Heap, Result_3Mask);
                b_11 := b_11 && sumMask(Result_3Mask, Ops_5Mask, Used_4Mask);
                b_11 := (b_11 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_3Heap, Used_4Mask);
                b_11 := b_11 && state(Result_3Heap, Result_3Mask);
              b_9 := b_9 && b_11;
            Ops_3Mask := Ops_3Mask[null, wand_2(true, x, FullPerm):=Ops_3Mask[null, wand_2(true, x, FullPerm)] + FullPerm];
            b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
            b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
            b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        } else {
          
          // -- Translating statement: package true --* acc(x.c, write) {
  // } -- SnapshotsBranching.vpr@23.13--23.38
            havoc Ops_7Heap;
            Ops_7Mask := ZeroMask;
            b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
            havoc Used_5Heap;
            Used_5Mask := ZeroMask;
            b_12 := b_12 && state(Used_5Heap, Used_5Mask);
            // Inhaling left hand side of current wand into hypothetical state
            if (b_13) {
              b_13 := b_13;
            }
            b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
            
            // -- Translating statement: label lhs10 -- SnapshotsBranching.vpr@23.21--23.38
              lhs10:
              Labellhs10Mask := Ops_7Mask;
              Labellhs10Heap := Ops_7Heap;
              b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
            boolCur_3 := true;
            // Translating exec of non-ghost operationacc(x.c, write)
            havoc Used_6Heap;
            Used_6Mask := ZeroMask;
            b_14 := b_14 && state(Used_6Heap, Used_6Mask);
            
            // -- Transfer of acc(x.c, write)
              rcvLocal := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_6Mask[rcvLocal, c_12] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(x.c, write) might be negative. (SnapshotsBranching.vpr@23.13--23.38) [225192]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_13 && (b_13 && b_7)) && b_14) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_7Mask[rcvLocal, c_12];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[rcvLocal, c_12:=Used_6Mask[rcvLocal, c_12] + takeTransfer];
                    b_14 := b_14 && state(Used_6Heap, Used_6Mask);
                    b_14 := b_14 && Ops_7Heap[rcvLocal, c_12] == Used_6Heap[rcvLocal, c_12];
                    Ops_7Mask := Ops_7Mask[rcvLocal, c_12:=Ops_7Mask[rcvLocal, c_12] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_13 && (b_13 && b_7)) && b_14) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_3Mask[rcvLocal, c_12];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[rcvLocal, c_12:=Used_6Mask[rcvLocal, c_12] + takeTransfer];
                    b_14 := b_14 && state(Used_6Heap, Used_6Mask);
                    b_14 := b_14 && Ops_3Heap[rcvLocal, c_12] == Used_6Heap[rcvLocal, c_12];
                    Ops_3Mask := Ops_3Mask[rcvLocal, c_12:=Ops_3Mask[rcvLocal, c_12] - takeTransfer];
                    Ops_3Heap := Ops_3Heap[null, wand_3#sm(true, x, FullPerm):=Ops_3Heap[null, wand_3#sm(true, x, FullPerm)][x, c_12:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_13 && (b_13 && b_7)) && b_14) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, c_12];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[rcvLocal, c_12:=Used_6Mask[rcvLocal, c_12] + takeTransfer];
                    b_14 := b_14 && state(Used_6Heap, Used_6Mask);
                    b_14 := b_14 && Heap[rcvLocal, c_12] == Used_6Heap[rcvLocal, c_12];
                    Mask := Mask[rcvLocal, c_12:=Mask[rcvLocal, c_12] - takeTransfer];
                    Heap := Heap[null, wand_3#sm(true, x, FullPerm):=Heap[null, wand_3#sm(true, x, FullPerm)][x, c_12:=true]];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@23.13--23.38) [225193]"}
                (b_13 && (b_13 && b_7)) && b_14 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, c_12] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_15 := b_13 && b_14;
                b_15 := b_15 && state(Result_4Heap, Result_4Mask);
                b_15 := b_15 && sumMask(Result_4Mask, Ops_7Mask, Used_6Mask);
                b_15 := (b_15 && IdenticalOnKnownLocations(Ops_7Heap, Result_4Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_4Heap, Used_6Mask);
                b_15 := b_15 && state(Result_4Heap, Result_4Mask);
              b_13 := b_13 && b_15;
            Ops_3Mask := Ops_3Mask[null, wand_3(true, x, FullPerm):=Ops_3Mask[null, wand_3(true, x, FullPerm)] + FullPerm];
            b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
            b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
            b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        }
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(x.a, write) && (x.a == 0 ? true --* acc(x.b, write) : true --* acc(x.c, write))
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_16 := b_16 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(x.a, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, a_26] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.a, write) might be negative. (SnapshotsBranching.vpr@19.5--25.6) [225194]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, a_26];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, a_26:=Used_7Mask[rcvLocal, a_26] + takeTransfer];
            b_16 := b_16 && state(Used_7Heap, Used_7Mask);
            b_16 := b_16 && Ops_3Heap[rcvLocal, a_26] == Used_7Heap[rcvLocal, a_26];
            Ops_3Mask := Ops_3Mask[rcvLocal, a_26:=Ops_3Mask[rcvLocal, a_26] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, a_26];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, a_26:=Used_7Mask[rcvLocal, a_26] + takeTransfer];
            b_16 := b_16 && state(Used_7Heap, Used_7Mask);
            b_16 := b_16 && Heap[rcvLocal, a_26] == Used_7Heap[rcvLocal, a_26];
            Mask := Mask[rcvLocal, a_26:=Mask[rcvLocal, a_26] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, 0, true, x, FullPerm, true, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, 0, true, x, FullPerm, true, x, FullPerm)][x, a_26:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@19.5--25.6) [225195]"}
        (b_7 && b_7) && b_16 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, a_26] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_17 := b_7 && b_16;
        b_17 := b_17 && state(Result_5Heap, Result_5Mask);
        b_17 := b_17 && sumMask(Result_5Mask, Ops_3Mask, Used_7Mask);
        b_17 := (b_17 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_5Heap, Used_7Mask);
        b_17 := b_17 && state(Result_5Heap, Result_5Mask);
      b_7 := b_7 && b_17;
    if (b_7 && b_7) {
      if (Result_5Heap[x, a_26] == 0) {
        
        // -- Transfer of true --* acc(x.b, write)
          
          // -- checking if access predicate defined in used state
            if ((b_7 && b_7) && b_16) {
              if (b_7) {
                
                // -- Check definedness of true --* acc(x.b, write)
                  if (*) {
                    havoc WandDefLHSHeap;
                    WandDefLHSMask := ZeroMask;
                    assume state(WandDefLHSHeap, WandDefLHSMask);
                    
                    // -- Translating statement: label lhs12 -- SnapshotsBranching.vpr@19.51--19.68
                      lhs12:
                      Labellhs12Mask := WandDefLHSMask;
                      Labellhs12Heap := WandDefLHSHeap;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                    havoc WandDefRHSHeap;
                    WandDefRHSMask := ZeroMask;
                    perm := FullPerm;
                    assume x != null;
                    WandDefRHSMask := WandDefRHSMask[x, b_32:=WandDefRHSMask[x, b_32] + perm];
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    assume false;
                  }
              }
            }
          neededTransfer := 1.000000000;
          initNeededTransfer := Used_7Mask[null, wand_2(true, x, FullPerm)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction true --* acc(x.b, write) might be negative. (SnapshotsBranching.vpr@19.5--25.6) [225196]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_7 && b_7) && b_16) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, wand_2(true, x, FullPerm)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, wand_2(true, x, FullPerm):=Used_7Mask[null, wand_2(true, x, FullPerm)] + takeTransfer];
                b_16 := b_16 && state(Used_7Heap, Used_7Mask);
                Ops_3Mask := Ops_3Mask[null, wand_2(true, x, FullPerm):=Ops_3Mask[null, wand_2(true, x, FullPerm)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_7 && b_7) && b_16) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, wand_2(true, x, FullPerm)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, wand_2(true, x, FullPerm):=Used_7Mask[null, wand_2(true, x, FullPerm)] + takeTransfer];
                b_16 := b_16 && state(Used_7Heap, Used_7Mask);
                Mask := Mask[null, wand_2(true, x, FullPerm):=Mask[null, wand_2(true, x, FullPerm)] - takeTransfer];
              }
            }
          assert {:msg "  Packaging wand might fail. Magic wand instance not found. (SnapshotsBranching.vpr@19.5--25.6) [225197]"}
            (b_7 && b_7) && b_16 ==> neededTransfer == 0.000000000 && Used_7Mask[null, wand_2(true, x, FullPerm)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_18 := b_7 && b_16;
            b_18 := b_18 && state(Result_6Heap, Result_6Mask);
            b_18 := b_18 && sumMask(Result_6Mask, Ops_3Mask, Used_7Mask);
            b_18 := (b_18 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_6Heap, Used_7Mask);
            b_18 := b_18 && state(Result_6Heap, Result_6Mask);
          b_7 := b_7 && b_18;
      } else {
        
        // -- Transfer of true --* acc(x.c, write)
          
          // -- checking if access predicate defined in used state
            if ((b_7 && b_7) && b_16) {
              if (b_7) {
                
                // -- Check definedness of true --* acc(x.c, write)
                  if (*) {
                    havoc WandDefLHSHeap;
                    WandDefLHSMask := ZeroMask;
                    assume state(WandDefLHSHeap, WandDefLHSMask);
                    
                    // -- Translating statement: label lhs13 -- SnapshotsBranching.vpr@19.73--19.90
                      lhs13:
                      Labellhs13Mask := WandDefLHSMask;
                      Labellhs13Heap := WandDefLHSHeap;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                    havoc WandDefRHSHeap;
                    WandDefRHSMask := ZeroMask;
                    perm := FullPerm;
                    assume x != null;
                    WandDefRHSMask := WandDefRHSMask[x, c_12:=WandDefRHSMask[x, c_12] + perm];
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    assume false;
                  }
              }
            }
          neededTransfer := 1.000000000;
          initNeededTransfer := Used_7Mask[null, wand_3(true, x, FullPerm)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction true --* acc(x.c, write) might be negative. (SnapshotsBranching.vpr@19.5--25.6) [225198]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_7 && b_7) && b_16) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, wand_3(true, x, FullPerm)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, wand_3(true, x, FullPerm):=Used_7Mask[null, wand_3(true, x, FullPerm)] + takeTransfer];
                b_16 := b_16 && state(Used_7Heap, Used_7Mask);
                Ops_3Mask := Ops_3Mask[null, wand_3(true, x, FullPerm):=Ops_3Mask[null, wand_3(true, x, FullPerm)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_7 && b_7) && b_16) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, wand_3(true, x, FullPerm)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, wand_3(true, x, FullPerm):=Used_7Mask[null, wand_3(true, x, FullPerm)] + takeTransfer];
                b_16 := b_16 && state(Used_7Heap, Used_7Mask);
                Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] - takeTransfer];
              }
            }
          assert {:msg "  Packaging wand might fail. Magic wand instance not found. (SnapshotsBranching.vpr@19.5--25.6) [225199]"}
            (b_7 && b_7) && b_16 ==> neededTransfer == 0.000000000 && Used_7Mask[null, wand_3(true, x, FullPerm)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_19 := b_7 && b_16;
            b_19 := b_19 && state(Result_7Heap, Result_7Mask);
            b_19 := b_19 && sumMask(Result_7Mask, Ops_3Mask, Used_7Mask);
            b_19 := (b_19 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_7Heap, Used_7Mask);
            b_19 := b_19 && state(Result_7Heap, Result_7Mask);
          b_7 := b_7 && b_19;
      }
    }
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, 0, true, x, FullPerm, true, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, 0, true, x, FullPerm, true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.a, write) --*
  //   acc(x.a, write) &&
  //   (x.a == 0 ? true --* acc(x.b, write) : true --* acc(x.c, write)) -- SnapshotsBranching.vpr@26.5--26.90
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsBranching.vpr@26.5--26.90) [225200]"}
        FullPerm <= Mask[null, wand_1(x, FullPerm, x, FullPerm, x, 0, true, x, FullPerm, true, x, FullPerm)];
      Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, 0, true, x, FullPerm, true, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, 0, true, x, FullPerm, true, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@26.5--26.90) [225202]"}
          perm <= Mask[x, a_26];
      }
      Mask := Mask[x, a_26:=Mask[x, a_26] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, a_26:=Mask[x, a_26] + perm];
      assume state(Heap, Mask);
      if (Heap[x, a_26] == 0) {
        Mask := Mask[null, wand_2(true, x, FullPerm):=Mask[null, wand_2(true, x, FullPerm)] + FullPerm];
        assume state(Heap, Mask);
      } else {
        Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] + FullPerm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x.a == 0) -- SnapshotsBranching.vpr@27.5--31.6
    
    // -- Check definedness of x.a == 0
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@27.9--27.17) [225204]"}
        HasDirectPerm(Mask, x, a_26);
    if (Heap[x, a_26] == 0) {
      
      // -- Translating statement: apply true --* acc(x.b, write) -- SnapshotsBranching.vpr@28.9--28.32
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          // permLe
          assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsBranching.vpr@28.9--28.32) [225205]"}
            FullPerm <= Mask[null, wand_2(true, x, FullPerm)];
          Mask := Mask[null, wand_2(true, x, FullPerm):=Mask[null, wand_2(true, x, FullPerm)] - FullPerm];
        assume state(Heap, Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
        assume state(Heap, Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          assume x != null;
          Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: apply true --* acc(x.c, write) -- SnapshotsBranching.vpr@30.9--30.32
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          // permLe
          assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsBranching.vpr@30.9--30.32) [225208]"}
            FullPerm <= Mask[null, wand_3(true, x, FullPerm)];
          Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] - FullPerm];
        assume state(Heap, Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
        assume state(Heap, Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          assume x != null;
          Mask := Mask[x, c_12:=Mask[x, c_12] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.a (SnapshotsBranching.vpr@18.9--18.98) [225211]"}
        perm <= Mask[x, a_26];
    }
    Mask := Mask[x, a_26:=Mask[x, a_26] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.b (SnapshotsBranching.vpr@18.9--18.98) [225212]"}
        perm <= Mask[x, b_32];
    }
    Mask := Mask[x, b_32:=Mask[x, b_32] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.c (SnapshotsBranching.vpr@18.9--18.98) [225213]"}
        perm <= Mask[x, c_12];
    }
    Mask := Mask[x, c_12:=Mask[x, c_12] - perm];
    assert {:msg "  Postcondition of test1 might not hold. Assertion x.a == old(x.a) might not hold. (SnapshotsBranching.vpr@18.9--18.98) [225214]"}
      Heap[x, a_26] == oldHeap[x, a_26];
    assert {:msg "  Postcondition of test1 might not hold. Assertion x.b == old(x.b) might not hold. (SnapshotsBranching.vpr@18.9--18.98) [225215]"}
      Heap[x, b_32] == oldHeap[x, b_32];
    assert {:msg "  Postcondition of test1 might not hold. Assertion x.c == old(x.c) might not hold. (SnapshotsBranching.vpr@18.9--18.98) [225216]"}
      Heap[x, c_12] == oldHeap[x, c_12];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}