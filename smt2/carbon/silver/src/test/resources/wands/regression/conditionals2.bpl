// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:46:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/conditionals2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/conditionals2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Ref, arg7_2: Perm, arg8_2: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Ref, arg7_2: Perm, arg8_2: Perm, arg9_2: Ref, arg10_2: Ref, arg11_2: Perm, arg12_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg7: Perm, arg8: Perm, arg9: Ref, arg10: Ref, arg11: Perm, arg12: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Ref, arg7_2: Perm, arg8_2: Perm, arg9_2: Ref, arg10_2: Ref, arg11_2: Perm, arg12_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
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
// Translation of method test5a
// ==================================================

procedure test5a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --*
  // acc(x.f, write) && acc(x.g, (x.f ? write : none)) {
  // } -- conditionals2.vpr@15.3--15.18
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
    
    // -- Translating statement: label lhs1 -- conditionals2.vpr@15.11--15.18
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.f, write) && acc(x.g, (x.f ? write : none))
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (conditionals2.vpr@15.3--15.18) [127617]"}
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
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@15.3--15.18) [127618]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    
    // -- Transfer of acc(x.g, (x.f ? write : none))
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_2_1) {
          if (b_1_1) {
            
            // -- Check definedness of acc(x.g, (x.f ? write : none))
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@15.3--15.18) [127619]"}
                HasDirectPerm(ResultMask, x, f_7);
          }
        }
      rcvLocal := x;
      neededTransfer := (if Used_1Heap[x, f_7] then FullPerm else NoPerm);
      initNeededTransfer := Used_1Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, (x.f ? write : none)) might be negative. (conditionals2.vpr@15.3--15.18) [127620]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals2.vpr@15.3--15.18) [127621]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_4 := b_1_1 && b_2_1;
        b_4 := b_4 && state(Result_1Heap, Result_1Mask);
        b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
        b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
        b_4 := b_4 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_4;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && acc(x.g, (x.f ? write : none)) -- conditionals2.vpr@17.3--17.16
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals2.vpr@17.3--17.16) [127622]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)];
      Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@17.3--17.16) [127624]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      perm := (if Heap[x, f_7] then FullPerm else NoPerm);
      assert {:msg "  Applying wand might fail. Fraction (x.f ? write : none) might be negative. (conditionals2.vpr@17.3--17.16) [127626]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.g, 1 / 1000) -- conditionals2.vpr@22.3--22.26
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 1 / 1000;
    assert {:msg "  Assert might fail. Fraction 1 / 1000 might be negative. (conditionals2.vpr@22.10--22.26) [127627]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (conditionals2.vpr@22.10--22.26) [127628]"}
        perm <= AssertMask[x, g];
    }
    AssertMask := AssertMask[x, g:=AssertMask[x, g] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5b
// ==================================================

procedure test5b(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_6: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_5: bool;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_7: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_8: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --*
  // acc(x.f, write) && acc(x.g, (x.f ? write : none)) {
  // } -- conditionals2.vpr@31.3--31.18
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_5 := b_5 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_6) {
      perm := FullPerm;
      b_6 := b_6 && x != null;
      Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    }
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- conditionals2.vpr@31.11--31.18
      lhs4:
      Labellhs4Mask := Ops_3Mask;
      Labellhs4Heap := Ops_3Heap;
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && acc(x.g, (x.f ? write : none))
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_7 := b_7 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (conditionals2.vpr@31.3--31.18) [127629]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Ops_3Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@31.3--31.18) [127630]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_6 && b_7;
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
        b_8 := b_8 && sumMask(Result_2Mask, Ops_3Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
      b_6 := b_6 && b_8;
    
    // -- Transfer of acc(x.g, (x.f ? write : none))
      
      // -- checking if access predicate defined in used state
        if ((b_6 && b_6) && b_7) {
          if (b_6) {
            
            // -- Check definedness of acc(x.g, (x.f ? write : none))
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@31.3--31.18) [127631]"}
                HasDirectPerm(Result_2Mask, x, f_7);
          }
        }
      rcvLocal := x;
      neededTransfer := (if Used_3Heap[x, f_7] then FullPerm else NoPerm);
      initNeededTransfer := Used_3Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, (x.f ? write : none)) might be negative. (conditionals2.vpr@31.3--31.18) [127632]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Ops_3Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
            Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals2.vpr@31.3--31.18) [127633]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_9 := b_6 && b_7;
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
        b_9 := b_9 && sumMask(Result_3Mask, Ops_3Mask, Used_3Mask);
        b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
      b_6 := b_6 && b_9;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && acc(x.g, (x.f ? write : none)) -- conditionals2.vpr@32.3--32.16
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals2.vpr@32.3--32.16) [127634]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)];
      Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@32.3--32.16) [127636]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      perm := (if Heap[x, f_7] then FullPerm else NoPerm);
      assert {:msg "  Applying wand might fail. Fraction (x.f ? write : none) might be negative. (conditionals2.vpr@32.3--32.16) [127638]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x.f) -- conditionals2.vpr@37.3--39.4
    
    // -- Check definedness of x.f
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.f (conditionals2.vpr@37.7--37.10) [127639]"}
        HasDirectPerm(Mask, x, f_7);
    if (Heap[x, f_7]) {
      
      // -- Translating statement: assert acc(x.g, write) -- conditionals2.vpr@38.5--38.20
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (conditionals2.vpr@38.12--38.20) [127641]"}
            perm <= AssertMask[x, g];
        }
        AssertMask := AssertMask[x, g:=AssertMask[x, g] - perm];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test20a
// ==================================================

procedure test20a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_11: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_10: bool;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_12: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
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
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, h:=Mask[x, h] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --*
  // acc(x.f, write) &&
  // (acc(x.g, (x.f ? write : none)) && acc(x.h, (!x.f ? write : none))) {
  // } -- conditionals2.vpr@49.3--49.18
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_10 := b_10 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_11) {
      perm := FullPerm;
      b_11 := b_11 && x != null;
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
    }
    b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs7 -- conditionals2.vpr@49.11--49.18
      lhs7:
      Labellhs7Mask := Ops_5Mask;
      Labellhs7Heap := Ops_5Heap;
      b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.g, (x.f ? write : none)) && acc(x.h, (!x.f ? write : none)))
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_12 := b_12 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (conditionals2.vpr@49.3--49.18) [127642]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_11 && b_11) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_12 := b_12 && state(Used_5Heap, Used_5Mask);
            b_12 := b_12 && Ops_5Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_11 && b_11) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_12 := b_12 && state(Used_5Heap, Used_5Mask);
            b_12 := b_12 && Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@49.3--49.18) [127643]"}
        (b_11 && b_11) && b_12 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_13 := b_11 && b_12;
        b_13 := b_13 && state(Result_4Heap, Result_4Mask);
        b_13 := b_13 && sumMask(Result_4Mask, Ops_5Mask, Used_5Mask);
        b_13 := (b_13 && IdenticalOnKnownLocations(Ops_5Heap, Result_4Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_4Heap, Used_5Mask);
        b_13 := b_13 && state(Result_4Heap, Result_4Mask);
      b_11 := b_11 && b_13;
    
    // -- Transfer of acc(x.g, (x.f ? write : none))
      
      // -- checking if access predicate defined in used state
        if ((b_11 && b_11) && b_12) {
          if (b_11) {
            
            // -- Check definedness of acc(x.g, (x.f ? write : none))
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@49.3--49.18) [127644]"}
                HasDirectPerm(Result_4Mask, x, f_7);
          }
        }
      rcvLocal := x;
      neededTransfer := (if Used_5Heap[x, f_7] then FullPerm else NoPerm);
      initNeededTransfer := Used_5Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, (x.f ? write : none)) might be negative. (conditionals2.vpr@49.3--49.18) [127645]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_11 && b_11) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, g:=Used_5Mask[rcvLocal, g] + takeTransfer];
            b_12 := b_12 && state(Used_5Heap, Used_5Mask);
            b_12 := b_12 && Ops_5Heap[rcvLocal, g] == Used_5Heap[rcvLocal, g];
            Ops_5Mask := Ops_5Mask[rcvLocal, g:=Ops_5Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_11 && b_11) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, g:=Used_5Mask[rcvLocal, g] + takeTransfer];
            b_12 := b_12 && state(Used_5Heap, Used_5Mask);
            b_12 := b_12 && Heap[rcvLocal, g] == Used_5Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals2.vpr@49.3--49.18) [127646]"}
        (b_11 && b_11) && b_12 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_11 && b_12;
        b_14 := b_14 && state(Result_5Heap, Result_5Mask);
        b_14 := b_14 && sumMask(Result_5Mask, Ops_5Mask, Used_5Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_5Heap, Used_5Mask);
        b_14 := b_14 && state(Result_5Heap, Result_5Mask);
      b_11 := b_11 && b_14;
    
    // -- Transfer of acc(x.h, (!x.f ? write : none))
      
      // -- checking if access predicate defined in used state
        if ((b_11 && b_11) && b_12) {
          if (b_11) {
            
            // -- Check definedness of acc(x.h, (!x.f ? write : none))
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@49.3--49.18) [127647]"}
                HasDirectPerm(Result_5Mask, x, f_7);
          }
        }
      rcvLocal := x;
      neededTransfer := (if !Used_5Heap[x, f_7] then FullPerm else NoPerm);
      initNeededTransfer := Used_5Mask[rcvLocal, h] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.h, (!x.f ? write : none)) might be negative. (conditionals2.vpr@49.3--49.18) [127648]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_11 && b_11) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, h:=Used_5Mask[rcvLocal, h] + takeTransfer];
            b_12 := b_12 && state(Used_5Heap, Used_5Mask);
            b_12 := b_12 && Ops_5Heap[rcvLocal, h] == Used_5Heap[rcvLocal, h];
            Ops_5Mask := Ops_5Mask[rcvLocal, h:=Ops_5Mask[rcvLocal, h] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_11 && b_11) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, h:=Used_5Mask[rcvLocal, h] + takeTransfer];
            b_12 := b_12 && state(Used_5Heap, Used_5Mask);
            b_12 := b_12 && Heap[rcvLocal, h] == Used_5Heap[rcvLocal, h];
            Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)][x, h:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.h (conditionals2.vpr@49.3--49.18) [127649]"}
        (b_11 && b_11) && b_12 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, h] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_11 && b_12;
        b_15 := b_15 && state(Result_6Heap, Result_6Mask);
        b_15 := b_15 && sumMask(Result_6Mask, Ops_5Mask, Used_5Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_5Heap, Result_6Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_6Heap, Used_5Mask);
        b_15 := b_15 && state(Result_6Heap, Result_6Mask);
      b_11 := b_11 && b_15;
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --*
  //   acc(x.f, write) &&
  //   (acc(x.g, (x.f ? write : none)) && acc(x.h, (!x.f ? write : none))) -- conditionals2.vpr@51.3--51.16
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals2.vpr@51.3--51.16) [127650]"}
        FullPerm <= Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)];
      Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@51.3--51.16) [127652]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      perm := (if Heap[x, f_7] then FullPerm else NoPerm);
      assert {:msg "  Applying wand might fail. Fraction (x.f ? write : none) might be negative. (conditionals2.vpr@51.3--51.16) [127654]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
      perm := (if !Heap[x, f_7] then FullPerm else NoPerm);
      assert {:msg "  Applying wand might fail. Fraction (!x.f ? write : none) might be negative. (conditionals2.vpr@51.3--51.16) [127655]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, h:=Mask[x, h] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.g, write) -- conditionals2.vpr@76.3--76.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (conditionals2.vpr@76.10--76.18) [127657]"}
        perm <= AssertMask[x, g];
    }
    AssertMask := AssertMask[x, g:=AssertMask[x, g] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, write) && (acc(x.g, write) && acc(x.h, write)) -- conditionals2.vpr@77.3--77.42
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (conditionals2.vpr@77.10--77.42) [127659]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (conditionals2.vpr@77.10--77.42) [127661]"}
        perm <= AssertMask[x, g];
    }
    AssertMask := AssertMask[x, g:=AssertMask[x, g] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.h (conditionals2.vpr@77.10--77.42) [127663]"}
        perm <= AssertMask[x, h];
    }
    AssertMask := AssertMask[x, h:=AssertMask[x, h] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- conditionals2.vpr@80.3--80.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals2.vpr@80.10--80.15) [127664]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test20b
// ==================================================

procedure test20b(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_17: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_16: bool;
  var Labellhs10Mask: MaskType;
  var Labellhs10Heap: HeapType;
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, h:=Mask[x, h] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --*
  // acc(x.f, write) &&
  // (acc(x.g, (x.f ? write : none)) && acc(x.h, (!x.f ? write : none))) {
  // } -- conditionals2.vpr@90.3--90.18
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_16 := b_16 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      perm := FullPerm;
      b_17 := b_17 && x != null;
      Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    }
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs10 -- conditionals2.vpr@90.11--90.18
      lhs10:
      Labellhs10Mask := Ops_7Mask;
      Labellhs10Heap := Ops_7Heap;
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.g, (x.f ? write : none)) && acc(x.h, (!x.f ? write : none)))
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_18 := b_18 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (conditionals2.vpr@90.3--90.18) [127665]"}
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
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@90.3--90.18) [127666]"}
        (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_19 := b_17 && b_18;
        b_19 := b_19 && state(Result_7Heap, Result_7Mask);
        b_19 := b_19 && sumMask(Result_7Mask, Ops_7Mask, Used_7Mask);
        b_19 := (b_19 && IdenticalOnKnownLocations(Ops_7Heap, Result_7Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_7Heap, Used_7Mask);
        b_19 := b_19 && state(Result_7Heap, Result_7Mask);
      b_17 := b_17 && b_19;
    
    // -- Transfer of acc(x.g, (x.f ? write : none))
      
      // -- checking if access predicate defined in used state
        if ((b_17 && b_17) && b_18) {
          if (b_17) {
            
            // -- Check definedness of acc(x.g, (x.f ? write : none))
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@90.3--90.18) [127667]"}
                HasDirectPerm(Result_7Mask, x, f_7);
          }
        }
      rcvLocal := x;
      neededTransfer := (if Used_7Heap[x, f_7] then FullPerm else NoPerm);
      initNeededTransfer := Used_7Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, (x.f ? write : none)) might be negative. (conditionals2.vpr@90.3--90.18) [127668]"}
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
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals2.vpr@90.3--90.18) [127669]"}
        (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_20 := b_17 && b_18;
        b_20 := b_20 && state(Result_8Heap, Result_8Mask);
        b_20 := b_20 && sumMask(Result_8Mask, Ops_7Mask, Used_7Mask);
        b_20 := (b_20 && IdenticalOnKnownLocations(Ops_7Heap, Result_8Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_8Heap, Used_7Mask);
        b_20 := b_20 && state(Result_8Heap, Result_8Mask);
      b_17 := b_17 && b_20;
    
    // -- Transfer of acc(x.h, (!x.f ? write : none))
      
      // -- checking if access predicate defined in used state
        if ((b_17 && b_17) && b_18) {
          if (b_17) {
            
            // -- Check definedness of acc(x.h, (!x.f ? write : none))
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@90.3--90.18) [127670]"}
                HasDirectPerm(Result_8Mask, x, f_7);
          }
        }
      rcvLocal := x;
      neededTransfer := (if !Used_7Heap[x, f_7] then FullPerm else NoPerm);
      initNeededTransfer := Used_7Mask[rcvLocal, h] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.h, (!x.f ? write : none)) might be negative. (conditionals2.vpr@90.3--90.18) [127671]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, h:=Used_7Mask[rcvLocal, h] + takeTransfer];
            b_18 := b_18 && state(Used_7Heap, Used_7Mask);
            b_18 := b_18 && Ops_7Heap[rcvLocal, h] == Used_7Heap[rcvLocal, h];
            Ops_7Mask := Ops_7Mask[rcvLocal, h:=Ops_7Mask[rcvLocal, h] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, h:=Used_7Mask[rcvLocal, h] + takeTransfer];
            b_18 := b_18 && state(Used_7Heap, Used_7Mask);
            b_18 := b_18 && Heap[rcvLocal, h] == Used_7Heap[rcvLocal, h];
            Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)][x, h:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.h (conditionals2.vpr@90.3--90.18) [127672]"}
        (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, h] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_21 := b_17 && b_18;
        b_21 := b_21 && state(Result_9Heap, Result_9Mask);
        b_21 := b_21 && sumMask(Result_9Mask, Ops_7Mask, Used_7Mask);
        b_21 := (b_21 && IdenticalOnKnownLocations(Ops_7Heap, Result_9Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_9Heap, Used_7Mask);
        b_21 := b_21 && state(Result_9Heap, Result_9Mask);
      b_17 := b_17 && b_21;
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, FullPerm, NoPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) == write && perm(x.h) == none ||
  //   perm(x.h) == write && perm(x.g) == none -- conditionals2.vpr@93.3--94.54
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) == write && perm(x.h) == none || perm(x.h) == write && perm(x.g) == none might not hold. (conditionals2.vpr@93.13--94.54) [127673]"}
      (Mask[x, g] == FullPerm && Mask[x, h] == NoPerm) || (Mask[x, h] == FullPerm && Mask[x, g] == NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (perm(x.g) == write || perm(x.h) == write) &&
  //   perm(x.g) + perm(x.h) == write -- conditionals2.vpr@96.3--97.43
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) == write || perm(x.h) == write might not hold. (conditionals2.vpr@96.13--97.43) [127674]"}
      Mask[x, g] == FullPerm || Mask[x, h] == FullPerm;
    assert {:msg "  Assert might fail. Assertion perm(x.g) + perm(x.h) == write might not hold. (conditionals2.vpr@96.13--97.43) [127675]"}
      Mask[x, g] + Mask[x, h] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x.f) -- conditionals2.vpr@99.3--102.4
    
    // -- Check definedness of x.f
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.f (conditionals2.vpr@99.7--99.10) [127676]"}
        HasDirectPerm(Mask, x, f_7);
    if (Heap[x, f_7]) {
      
      // -- Translating statement: assert acc(x.h, write) -- conditionals2.vpr@101.5--101.20
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.h (conditionals2.vpr@101.12--101.20) [127678]"}
            perm <= AssertMask[x, h];
        }
        AssertMask := AssertMask[x, h:=AssertMask[x, h] - perm];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test30
// ==================================================

procedure test30(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs12Mask: MaskType;
  var Labellhs12Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.f, write) --* acc(x.f, write) && (acc(x.g, (x.f ? write : none)) && acc(x.h, (x.f ? none : write)))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs12 -- conditionals2.vpr@107.12--111.40
          lhs12:
          Labellhs12Mask := WandDefLHSMask;
          Labellhs12Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(x.g, (x.f ? write : none))
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (conditionals2.vpr@107.12--111.40) [127679]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        perm := (if WandDefRHSHeap[x, f_7] then FullPerm else NoPerm);
        assert {:msg "  Contract might not be well-formed. Fraction (x.f ? write : none) might be negative. (conditionals2.vpr@107.12--111.40) [127680]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(x.h, (x.f ? none : write))
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (conditionals2.vpr@107.12--111.40) [127681]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        perm := (if WandDefRHSHeap[x, f_7] then NoPerm else FullPerm);
        assert {:msg "  Contract might not be well-formed. Fraction (x.f ? none : write) might be negative. (conditionals2.vpr@107.12--111.40) [127682]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        WandDefRHSMask := WandDefRHSMask[x, h:=WandDefRHSMask[x, h] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, NoPerm, FullPerm):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, NoPerm, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: apply acc(x.f, write) --*
  //   acc(x.f, write) &&
  //   (acc(x.g, (x.f ? write : none)) && acc(x.h, (x.f ? none : write))) -- conditionals2.vpr@113.3--117.37
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals2.vpr@113.3--117.37) [127683]"}
        FullPerm <= Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, NoPerm, FullPerm)];
      Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, NoPerm, FullPerm):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x, FullPerm, NoPerm, x, x, NoPerm, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (conditionals2.vpr@113.3--117.37) [127685]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      perm := (if Heap[x, f_7] then FullPerm else NoPerm);
      assert {:msg "  Applying wand might fail. Fraction (x.f ? write : none) might be negative. (conditionals2.vpr@113.3--117.37) [127687]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
      perm := (if Heap[x, f_7] then NoPerm else FullPerm);
      assert {:msg "  Applying wand might fail. Fraction (x.f ? none : write) might be negative. (conditionals2.vpr@113.3--117.37) [127688]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, h:=Mask[x, h] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (x.f ? perm(x.g) == write : perm(x.h) == write) -- conditionals2.vpr@119.3--119.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (conditionals2.vpr@119.10--119.55) [127689]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    if (Heap[x, f_7]) {
      assert {:msg "  Assert might fail. Assertion perm(x.g) == write might not hold. (conditionals2.vpr@119.10--119.55) [127690]"}
        Mask[x, g] == FullPerm;
    } else {
      assert {:msg "  Assert might fail. Assertion perm(x.h) == write might not hold. (conditionals2.vpr@119.10--119.55) [127691]"}
        Mask[x, h] == FullPerm;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.g) == write && perm(x.h) == write -- conditionals2.vpr@122.3--122.50
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(x.g) == write might not hold. (conditionals2.vpr@122.10--122.50) [127692]"}
      Mask[x, g] == FullPerm;
    assert {:msg "  Assert might fail. Assertion perm(x.h) == write might not hold. (conditionals2.vpr@122.10--122.50) [127693]"}
      Mask[x, h] == FullPerm;
    assume state(Heap, Mask);
}