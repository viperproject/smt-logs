// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:18
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/Old.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/Old-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg7: Ref, arg8: int, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int, arg7_2: Ref, arg8_2: int, arg9_2: Ref, arg10_2: Perm, arg11_2: Ref, arg12_2: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Ref ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_3;
function  wand_3(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var first_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var y: Ref;
  var a_2: int;
  var freshObj: Ref;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
  var ExhaleHeap: HeapType;
  var LabelfirstMask: MaskType;
  var LabelfirstHeap: HeapType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_7: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_10: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_11: bool;
  var b_12: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_13: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_14: bool;
  var b_15: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_16: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_17: bool;
  var b_18: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var Labellhs5Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    first_lblGuard := false;
  
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
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
  
  // -- Translating statement: a := x.f -- Old.vpr@8.5--8.22
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (Old.vpr@8.5--8.22) [223759]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f) -- Old.vpr@10.5--10.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && (acc(y.f, write) && (x.f == 3 && y.f == 5)) --*
  // acc(x.f, write) && x.f == old[lhs](x.f) {
  //   exhale acc(x.f, write)
  //   inhale acc(x.f, write) && x.f == 5
  //   label first
  //   exhale acc(x.f, write)
  //   inhale acc(x.f, write) && x.f == y.f
  //   package acc(x.f, write) && x.f == 4 --* old[lhs](x.f) == 4 {
  //   }
  //   assert old[lhs](x.f) == 3
  //   assert x.f == old[first](x.f)
  //   exhale acc(x.f, write)
  //   inhale acc(x.f, write) && x.f == a
  //   assert x.f == old(x.f)
  //   exhale acc(x.f, write)
  //   inhale acc(x.f, write) && x.f == old[lhs](x.f)
  //   assert old[first](x.f) == 5
  // } -- Old.vpr@11.5--26.6
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
          perm := FullPerm;
          b_1_1 := b_1_1 && y != null;
          Ops_1Mask := Ops_1Mask[y, f_7:=Ops_1Mask[y, f_7] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        if (b_1_1) {
          if (b_1_1) {
            if (b_1_1) {
              
              // -- Check definedness of x.f == 3
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@11.5--26.6) [223760]"}
                  HasDirectPerm(Ops_1Mask, x, f_7);
            }
            b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == 3;
          }
          if (b_1_1) {
            if (b_1_1) {
              
              // -- Check definedness of y.f == 5
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access y.f (Old.vpr@11.5--26.6) [223761]"}
                  HasDirectPerm(Ops_1Mask, y, f_7);
            }
            b_1_1 := b_1_1 && Ops_1Heap[y, f_7] == 5;
          }
        }
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- Old.vpr@11.13--11.94
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: exhale acc(x.f, write) -- Old.vpr@12.9--12.24
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Exhale might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@12.16--12.24) [223762]"}
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
                Heap := Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x):=Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (Old.vpr@12.16--12.24) [223763]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: inhale acc(x.f, write) && x.f == 5 -- Old.vpr@13.9--13.36
        if (b_1_1) {
          if (b_1_1) {
            perm := FullPerm;
            b_1_1 := b_1_1 && x != null;
            Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            if (b_1_1) {
              
              // -- Check definedness of x.f == 5
                assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (Old.vpr@13.16--13.36) [223765]"}
                  HasDirectPerm(Ops_1Mask, x, f_7);
            }
            b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == 5;
          }
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: label first -- Old.vpr@14.9--14.20
        first_2:
        LabelfirstMask := Ops_1Mask;
        LabelfirstHeap := Ops_1Heap;
        first_lblGuard := true;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: exhale acc(x.f, write) -- Old.vpr@15.9--15.24
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Exhale might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@15.16--15.24) [223766]"}
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
                Heap := Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x):=Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (Old.vpr@15.16--15.24) [223767]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_1_1 && b_4;
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
            b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && b_4;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: inhale acc(x.f, write) && x.f == y.f -- Old.vpr@16.9--16.38
        if (b_1_1) {
          if (b_1_1) {
            perm := FullPerm;
            b_1_1 := b_1_1 && x != null;
            Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            if (b_1_1) {
              
              // -- Check definedness of x.f == y.f
                assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (Old.vpr@16.16--16.38) [223769]"}
                  HasDirectPerm(Ops_1Mask, x, f_7);
                assert {:msg "  Inhale might fail. There might be insufficient permission to access y.f (Old.vpr@16.16--16.38) [223770]"}
                  HasDirectPerm(Ops_1Mask, y, f_7);
            }
            b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == Ops_1Heap[y, f_7];
          }
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: package acc(x.f, write) && x.f == 4 --* old[lhs](x.f) == 4 {
  // } -- Old.vpr@17.9--17.60
        havoc Ops_3Heap;
        Ops_3Mask := ZeroMask;
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        havoc Used_3Heap;
        Used_3Mask := ZeroMask;
        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_7) {
          if (b_7) {
            perm := FullPerm;
            b_7 := b_7 && x != null;
            Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
            b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
          }
          if (b_7) {
            if (b_7) {
              
              // -- Check definedness of x.f == 4
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@17.9--17.60) [223771]"}
                  HasDirectPerm(Ops_3Mask, x, f_7);
            }
            b_7 := b_7 && Ops_3Heap[x, f_7] == 4;
          }
        }
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        
        // -- Translating statement: label lhs3 -- Old.vpr@17.17--17.60
          lhs3:
          Labellhs3Mask := Ops_3Mask;
          Labellhs3Heap := Ops_3Heap;
          b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        boolCur_1 := true;
        // Translating exec of non-ghost operationold[lhs](x.f) == 4
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_8 := b_8 && state(Used_4Heap, Used_4Mask);
        if ((b_7 && (b_7 && b_1_1)) && b_8) {
          if (b_7) {
            
            // -- Check definedness of old[lhs](x.f) == 4
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@17.9--17.60) [223772]"}
                HasDirectPerm(Labellhs3Mask, x, f_7);
          }
        }
        assert {:msg "  Packaging wand might fail. Assertion old[lhs](x.f) == 4 might not hold. (Old.vpr@17.9--17.60) [223773]"}
          (b_7 && (b_7 && b_1_1)) && b_8 ==> Labellhs3Heap[x, f_7] == 4;
        Ops_1Mask := Ops_1Mask[null, wand_1(x, FullPerm, x, 4, x, 4):=Ops_1Mask[null, wand_1(x, FullPerm, x, 4, x, 4)] + FullPerm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: assert old[lhs](x.f) == 3 -- Old.vpr@18.9--18.34
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_9 := b_9 && state(Used_5Heap, Used_5Mask);
        if (b_1_1 && b_9) {
          if (b_1_1) {
            
            // -- Check definedness of old[lhs](x.f) == 3
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@18.16--18.34) [223774]"}
                HasDirectPerm(Labellhs1Mask, x, f_7);
          }
        }
        assert {:msg "  Assert might fail. Assertion old[lhs](x.f) == 3 might not hold. (Old.vpr@18.16--18.34) [223775]"}
          b_1_1 && b_9 ==> Labellhs1Heap[x, f_7] == 3;
        b_1_1 := b_1_1 && b_9;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: assert x.f == old[first](x.f) -- Old.vpr@19.9--19.38
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_10 := b_10 && state(Used_6Heap, Used_6Mask);
        if (b_1_1 && b_10) {
          if (b_1_1) {
            
            // -- Check definedness of x.f == old[first](x.f)
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@19.16--19.38) [223776]"}
                HasDirectPerm(Ops_1Mask, x, f_7);
              assert {:msg "  Assert might fail. Did not reach labelled state first required to evaluate old[first](x.f). (Old.vpr@19.16--19.38) [223777]"}
                first_lblGuard;
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@19.16--19.38) [223778]"}
                HasDirectPerm(LabelfirstMask, x, f_7);
          }
        }
        assert {:msg "  Assert might fail. Assertion x.f == old[first](x.f) might not hold. (Old.vpr@19.16--19.38) [223779]"}
          b_1_1 && b_10 ==> Ops_1Heap[x, f_7] == LabelfirstHeap[x, f_7];
        b_1_1 := b_1_1 && b_10;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: exhale acc(x.f, write) -- Old.vpr@20.9--20.24
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_11 := b_11 && state(Used_7Heap, Used_7Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Exhale might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@20.16--20.24) [223780]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_11 := b_11 && state(Used_7Heap, Used_7Mask);
                b_11 := b_11 && Ops_1Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                b_11 := b_11 && state(Used_7Heap, Used_7Mask);
                b_11 := b_11 && Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x):=Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (Old.vpr@20.16--20.24) [223781]"}
            b_1_1 && b_11 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_1_1 && b_11;
            b_12 := b_12 && state(Result_2Heap, Result_2Mask);
            b_12 := b_12 && sumMask(Result_2Mask, Ops_1Mask, Used_7Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_2Heap, Used_7Mask);
            b_12 := b_12 && state(Result_2Heap, Result_2Mask);
          b_1_1 := b_1_1 && b_12;
        b_1_1 := b_1_1 && b_11;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: inhale acc(x.f, write) && x.f == a -- Old.vpr@21.9--21.36
        if (b_1_1) {
          if (b_1_1) {
            perm := FullPerm;
            b_1_1 := b_1_1 && x != null;
            Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            if (b_1_1) {
              
              // -- Check definedness of x.f == a
                assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (Old.vpr@21.16--21.36) [223783]"}
                  HasDirectPerm(Ops_1Mask, x, f_7);
            }
            b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == a_2;
          }
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: assert x.f == old(x.f) -- Old.vpr@22.9--22.31
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_13 := b_13 && state(Used_8Heap, Used_8Mask);
        if (b_1_1 && b_13) {
          if (b_1_1) {
            
            // -- Check definedness of x.f == old(x.f)
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@22.16--22.31) [223784]"}
                HasDirectPerm(Ops_1Mask, x, f_7);
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@22.16--22.31) [223785]"}
                HasDirectPerm(oldMask, x, f_7);
          }
        }
        assert {:msg "  Assert might fail. Assertion x.f == old(x.f) might not hold. (Old.vpr@22.16--22.31) [223786]"}
          b_1_1 && b_13 ==> Ops_1Heap[x, f_7] == oldHeap[x, f_7];
        b_1_1 := b_1_1 && b_13;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: exhale acc(x.f, write) -- Old.vpr@23.9--23.24
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_14 := b_14 && state(Used_9Heap, Used_9Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Exhale might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@23.16--23.24) [223787]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                b_14 := b_14 && state(Used_9Heap, Used_9Mask);
                b_14 := b_14 && Ops_1Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                b_14 := b_14 && state(Used_9Heap, Used_9Mask);
                b_14 := b_14 && Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x):=Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (Old.vpr@23.16--23.24) [223788]"}
            b_1_1 && b_14 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_15 := b_1_1 && b_14;
            b_15 := b_15 && state(Result_3Heap, Result_3Mask);
            b_15 := b_15 && sumMask(Result_3Mask, Ops_1Mask, Used_9Mask);
            b_15 := (b_15 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_3Heap, Used_9Mask);
            b_15 := b_15 && state(Result_3Heap, Result_3Mask);
          b_1_1 := b_1_1 && b_15;
        b_1_1 := b_1_1 && b_14;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: inhale acc(x.f, write) && x.f == old[lhs](x.f) -- Old.vpr@24.9--24.48
        if (b_1_1) {
          if (b_1_1) {
            perm := FullPerm;
            b_1_1 := b_1_1 && x != null;
            Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            if (b_1_1) {
              
              // -- Check definedness of x.f == old[lhs](x.f)
                assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (Old.vpr@24.16--24.48) [223790]"}
                  HasDirectPerm(Ops_1Mask, x, f_7);
                assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (Old.vpr@24.16--24.48) [223791]"}
                  HasDirectPerm(Labellhs1Mask, x, f_7);
            }
            b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == Labellhs1Heap[x, f_7];
          }
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: assert old[first](x.f) == 5 -- Old.vpr@25.9--25.36
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_16 := b_16 && state(Used_10Heap, Used_10Mask);
        if (b_1_1 && b_16) {
          if (b_1_1) {
            
            // -- Check definedness of old[first](x.f) == 5
              assert {:msg "  Assert might fail. Did not reach labelled state first required to evaluate old[first](x.f). (Old.vpr@25.16--25.36) [223792]"}
                first_lblGuard;
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@25.16--25.36) [223793]"}
                HasDirectPerm(LabelfirstMask, x, f_7);
          }
        }
        assert {:msg "  Assert might fail. Assertion old[first](x.f) == 5 might not hold. (Old.vpr@25.16--25.36) [223794]"}
          b_1_1 && b_16 ==> LabelfirstHeap[x, f_7] == 5;
        b_1_1 := b_1_1 && b_16;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == old[lhs](x.f)
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_17 := b_17 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_11Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@11.5--26.6) [223795]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_17 := b_17 && state(Used_11Heap, Used_11Mask);
            b_17 := b_17 && Ops_1Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_17 := b_17 && state(Used_11Heap, Used_11Mask);
            b_17 := b_17 && Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x):=Heap[null, wand#sm(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@11.5--26.6) [223796]"}
        (b_1_1 && b_1_1) && b_17 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_18 := b_1_1 && b_17;
        b_18 := b_18 && state(Result_4Heap, Result_4Mask);
        b_18 := b_18 && sumMask(Result_4Mask, Ops_1Mask, Used_11Mask);
        b_18 := (b_18 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_4Heap, Used_11Mask);
        b_18 := b_18 && state(Result_4Heap, Result_4Mask);
      b_1_1 := b_1_1 && b_18;
    if ((b_1_1 && b_1_1) && b_17) {
      if (b_1_1) {
        
        // -- Check definedness of x.f == old[lhs](x.f)
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@11.5--26.6) [223797]"}
            HasDirectPerm(Result_4Mask, x, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@11.5--26.6) [223798]"}
            HasDirectPerm(Labellhs1Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == old[lhs](x.f) might not hold. (Old.vpr@11.5--26.6) [223799]"}
      (b_1_1 && b_1_1) && b_17 ==> Result_4Heap[x, f_7] == Labellhs1Heap[x, f_7];
    Mask := Mask[null, wand(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x):=Mask[null, wand(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 3 -- Old.vpr@27.5--27.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (Old.vpr@27.5--27.13) [223800]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 5 -- Old.vpr@28.5--28.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (Old.vpr@28.5--28.13) [223801]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=5];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) && (acc(y.f, write) && (x.f == 3 && y.f == 5)) --*
  //   acc(x.f, write) && x.f == old[lhs](x.f) -- Old.vpr@29.5--29.92
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (Old.vpr@29.5--29.92) [223802]"}
        FullPerm <= Mask[null, wand(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)];
      Mask := Mask[null, wand(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x):=Mask[null, wand(x, FullPerm, y, FullPerm, x, 3, y, 5, x, FullPerm, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (Old.vpr@29.5--29.92) [223804]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access y.f (Old.vpr@29.5--29.92) [223806]"}
          perm <= Mask[y, f_7];
      }
      Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
      assert {:msg "  Applying wand might fail. Assertion x.f == 3 might not hold. (Old.vpr@29.5--29.92) [223807]"}
        Heap[x, f_7] == 3;
      assert {:msg "  Applying wand might fail. Assertion y.f == 5 might not hold. (Old.vpr@29.5--29.92) [223808]"}
        Heap[y, f_7] == 5;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == Labellhs5Heap[x, f_7];
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old[first](x.f) == 5 -- Old.vpr@31.5--31.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of old[first](x.f) == 5
      assert {:msg "  Assert might fail. Did not reach labelled state first required to evaluate old[first](x.f). (Old.vpr@31.12--31.32) [223810]"}
        first_lblGuard;
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@31.12--31.32) [223811]"}
        HasDirectPerm(LabelfirstMask, x, f_7);
    assert {:msg "  Assert might fail. Assertion old[first](x.f) == 5 might not hold. (Old.vpr@31.12--31.32) [223812]"}
      LabelfirstHeap[x, f_7] == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Labellhs8Heap: HeapType;
  var ExhaleHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_20: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_19: bool;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var boolCur_2: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_21: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_22: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- Old.vpr@35.10--35.55
          lhs6:
          Labellhs6Mask := WandDefLHSMask;
          Labellhs6Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == old[lhs](x.f)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (Old.vpr@35.10--35.55) [223813]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (Old.vpr@35.10--35.55) [223814]"}
            HasDirectPerm(Labellhs6Mask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == Labellhs6Heap[x, f_7];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] + FullPerm];
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
    
    // -- Check definedness of acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- Old.vpr@36.9--36.54
          lhs7:
          Labellhs7Mask := WandDefLHSMask;
          Labellhs7Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == old[lhs](x.f)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (Old.vpr@36.9--36.54) [223815]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (Old.vpr@36.9--36.54) [223816]"}
            HasDirectPerm(Labellhs7Mask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == Labellhs7Heap[x, f_7];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=PostMask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(x.f, write) -- Old.vpr@37.5--37.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f) -- Old.vpr@38.5--38.56
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (Old.vpr@38.5--38.56) [223818]"}
        FullPerm <= Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)];
      Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (Old.vpr@38.5--38.56) [223820]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == Labellhs8Heap[x, f_7];
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f) {
  // } -- Old.vpr@39.5--39.58
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_19 := b_19 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_20) {
      perm := FullPerm;
      b_20 := b_20 && x != null;
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    }
    b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs9 -- Old.vpr@39.13--39.58
      lhs9:
      Labellhs9Mask := Ops_5Mask;
      Labellhs9Heap := Ops_5Heap;
      b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == old[lhs](x.f)
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_21 := b_21 && state(Used_13Heap, Used_13Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_13Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@39.5--39.58) [223822]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_21) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_21 := b_21 && state(Used_13Heap, Used_13Mask);
            b_21 := b_21 && Ops_5Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
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
            Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
            b_21 := b_21 && state(Used_13Heap, Used_13Mask);
            b_21 := b_21 && Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(x, FullPerm, x, FullPerm, x, x):=Heap[null, wand_2#sm(x, FullPerm, x, FullPerm, x, x)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@39.5--39.58) [223823]"}
        (b_20 && b_20) && b_21 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_22 := b_20 && b_21;
        b_22 := b_22 && state(Result_5Heap, Result_5Mask);
        b_22 := b_22 && sumMask(Result_5Mask, Ops_5Mask, Used_13Mask);
        b_22 := (b_22 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_5Heap, Used_13Mask);
        b_22 := b_22 && state(Result_5Heap, Result_5Mask);
      b_20 := b_20 && b_22;
    if ((b_20 && b_20) && b_21) {
      if (b_20) {
        
        // -- Check definedness of x.f == old[lhs](x.f)
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@39.5--39.58) [223824]"}
            HasDirectPerm(Result_5Mask, x, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@39.5--39.58) [223825]"}
            HasDirectPerm(Labellhs9Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == old[lhs](x.f) might not hold. (Old.vpr@39.5--39.58) [223826]"}
      (b_20 && b_20) && b_21 ==> Result_5Heap[x, f_7] == Labellhs9Heap[x, f_7];
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    // permLe
    assert {:msg "  Postcondition of test1 might not hold. Magic wand instance not found. (Old.vpr@36.9--36.54) [223827]"}
      FullPerm <= Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)];
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_24_1: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_23: bool;
  var Labellhs11Mask: MaskType;
  var Labellhs11Heap: HeapType;
  var boolCur_3: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_25_1: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
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
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (Old.vpr@43.10--43.30) [223828]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* acc(x.f, write) && old[lhs](x.f) == 0 {
  //   assert old[lhs](x.f) == 0
  // } -- Old.vpr@44.5--47.6
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_23 := b_23 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_24_1) {
      b_24_1 := b_24_1;
    }
    b_24_1 := b_24_1 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs11 -- Old.vpr@44.13--44.52
      lhs11:
      Labellhs11Mask := Ops_7Mask;
      Labellhs11Heap := Ops_7Heap;
      b_24_1 := b_24_1 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_24_1) {
      
      // -- Translating statement: assert old[lhs](x.f) == 0 -- Old.vpr@46.9--46.34
        ExhaleWellDef0Mask := Ops_7Mask;
        ExhaleWellDef0Heap := Ops_7Heap;
        havoc Used_15Heap;
        Used_15Mask := ZeroMask;
        b_25_1 := b_25_1 && state(Used_15Heap, Used_15Mask);
        if (b_24_1 && b_25_1) {
          if (b_24_1) {
            
            // -- Check definedness of old[lhs](x.f) == 0
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (Old.vpr@46.16--46.34) [223829]"}
                HasDirectPerm(Labellhs11Mask, x, f_7);
          }
        }
        assert {:msg "  Assert might fail. Assertion old[lhs](x.f) == 0 might not hold. (Old.vpr@46.16--46.34) [223830]"}
          b_24_1 && b_25_1 ==> Labellhs11Heap[x, f_7] == 0;
        b_24_1 := b_24_1 && b_25_1;
        b_24_1 := b_24_1 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && old[lhs](x.f) == 0
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_26_1 := b_26_1 && state(Used_16Heap, Used_16Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_16Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@44.5--47.6) [223831]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_26_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_16Mask := Used_16Mask[rcvLocal, f_7:=Used_16Mask[rcvLocal, f_7] + takeTransfer];
            b_26_1 := b_26_1 && state(Used_16Heap, Used_16Mask);
            b_26_1 := b_26_1 && Ops_7Heap[rcvLocal, f_7] == Used_16Heap[rcvLocal, f_7];
            Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_26_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_16Mask := Used_16Mask[rcvLocal, f_7:=Used_16Mask[rcvLocal, f_7] + takeTransfer];
            b_26_1 := b_26_1 && state(Used_16Heap, Used_16Mask);
            b_26_1 := b_26_1 && Heap[rcvLocal, f_7] == Used_16Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(true, x, FullPerm, x, 0):=Heap[null, wand_3#sm(true, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@44.5--47.6) [223832]"}
        (b_24_1 && b_24_1) && b_26_1 ==> neededTransfer == 0.000000000 && Used_16Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_27_1 := b_24_1 && b_26_1;
        b_27_1 := b_27_1 && state(Result_6Heap, Result_6Mask);
        b_27_1 := b_27_1 && sumMask(Result_6Mask, Ops_7Mask, Used_16Mask);
        b_27_1 := (b_27_1 && IdenticalOnKnownLocations(Ops_7Heap, Result_6Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_16Heap, Result_6Heap, Used_16Mask);
        b_27_1 := b_27_1 && state(Result_6Heap, Result_6Mask);
      b_24_1 := b_24_1 && b_27_1;
    if ((b_24_1 && b_24_1) && b_26_1) {
      if (b_24_1) {
        
        // -- Check definedness of old[lhs](x.f) == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@44.5--47.6) [223833]"}
            HasDirectPerm(Labellhs11Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion old[lhs](x.f) == 0 might not hold. (Old.vpr@44.5--47.6) [223834]"}
      (b_24_1 && b_24_1) && b_26_1 ==> Labellhs11Heap[x, f_7] == 0;
    Mask := Mask[null, wand_3(true, x, FullPerm, x, 0):=Mask[null, wand_3(true, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_29_1: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_28_1: bool;
  var Labellhs13Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var boolCur_4: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Labellhs15Heap: HeapType;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (Old.vpr@52.9--52.29) [223835]"}
        HasDirectPerm(PostMask, x, f_7);
    assume PostHeap[x, f_7] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f) {
  // } -- Old.vpr@53.5--53.58
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_29_1 := b_29_1 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_28_1 := b_28_1 && state(Used_17Heap, Used_17Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_29_1) {
      perm := FullPerm;
      b_29_1 := b_29_1 && x != null;
      Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
      b_29_1 := b_29_1 && state(Ops_9Heap, Ops_9Mask);
    }
    b_29_1 := b_29_1 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs13 -- Old.vpr@53.13--53.58
      lhs13:
      Labellhs13Mask := Ops_9Mask;
      Labellhs13Heap := Ops_9Heap;
      b_29_1 := b_29_1 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == old[lhs](x.f)
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_30_1 := b_30_1 && state(Used_18Heap, Used_18Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_18Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@53.5--53.58) [223836]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_29_1 && b_29_1) && b_30_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_18Mask := Used_18Mask[rcvLocal, f_7:=Used_18Mask[rcvLocal, f_7] + takeTransfer];
            b_30_1 := b_30_1 && state(Used_18Heap, Used_18Mask);
            b_30_1 := b_30_1 && Ops_9Heap[rcvLocal, f_7] == Used_18Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
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
            Used_18Mask := Used_18Mask[rcvLocal, f_7:=Used_18Mask[rcvLocal, f_7] + takeTransfer];
            b_30_1 := b_30_1 && state(Used_18Heap, Used_18Mask);
            b_30_1 := b_30_1 && Heap[rcvLocal, f_7] == Used_18Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(x, FullPerm, x, FullPerm, x, x):=Heap[null, wand_2#sm(x, FullPerm, x, FullPerm, x, x)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@53.5--53.58) [223837]"}
        (b_29_1 && b_29_1) && b_30_1 ==> neededTransfer == 0.000000000 && Used_18Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_31_1 := b_29_1 && b_30_1;
        b_31_1 := b_31_1 && state(Result_7Heap, Result_7Mask);
        b_31_1 := b_31_1 && sumMask(Result_7Mask, Ops_9Mask, Used_18Mask);
        b_31_1 := (b_31_1 && IdenticalOnKnownLocations(Ops_9Heap, Result_7Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_18Heap, Result_7Heap, Used_18Mask);
        b_31_1 := b_31_1 && state(Result_7Heap, Result_7Mask);
      b_29_1 := b_29_1 && b_31_1;
    if ((b_29_1 && b_29_1) && b_30_1) {
      if (b_29_1) {
        
        // -- Check definedness of x.f == old[lhs](x.f)
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@53.5--53.58) [223838]"}
            HasDirectPerm(Result_7Mask, x, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@53.5--53.58) [223839]"}
            HasDirectPerm(Labellhs13Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == old[lhs](x.f) might not hold. (Old.vpr@53.5--53.58) [223840]"}
      (b_29_1 && b_29_1) && b_30_1 ==> Result_7Heap[x, f_7] == Labellhs13Heap[x, f_7];
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 0 -- Old.vpr@54.5--54.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (Old.vpr@54.5--54.13) [223841]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f) -- Old.vpr@55.5--55.56
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (Old.vpr@55.5--55.56) [223842]"}
        FullPerm <= Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)];
      Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (Old.vpr@55.5--55.56) [223844]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == Labellhs15Heap[x, f_7];
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
      assert {:msg "  Postcondition of test3 might not hold. There might be insufficient permission to access x.f (Old.vpr@52.9--52.29) [223846]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test3 might not hold. Assertion x.f == 0 might not hold. (Old.vpr@52.9--52.29) [223847]"}
      Heap[x, f_7] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_33_1: bool;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_32_1: bool;
  var Labellhs16Mask: MaskType;
  var Labellhs16Heap: HeapType;
  var boolCur_5: bool;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_34_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_35_1: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Labellhs18Heap: HeapType;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (Old.vpr@61.9--61.29) [223848]"}
        HasDirectPerm(PostMask, x, f_7);
    assume PostHeap[x, f_7] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f) {
  // } -- Old.vpr@62.5--62.58
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_33_1 := b_33_1 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_19Heap;
    Used_19Mask := ZeroMask;
    b_32_1 := b_32_1 && state(Used_19Heap, Used_19Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_33_1) {
      perm := FullPerm;
      b_33_1 := b_33_1 && x != null;
      Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
      b_33_1 := b_33_1 && state(Ops_11Heap, Ops_11Mask);
    }
    b_33_1 := b_33_1 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs16 -- Old.vpr@62.13--62.58
      lhs16:
      Labellhs16Mask := Ops_11Mask;
      Labellhs16Heap := Ops_11Heap;
      b_33_1 := b_33_1 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == old[lhs](x.f)
    havoc Used_20Heap;
    Used_20Mask := ZeroMask;
    b_34_1 := b_34_1 && state(Used_20Heap, Used_20Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_20Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (Old.vpr@62.5--62.58) [223849]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_20Mask := Used_20Mask[rcvLocal, f_7:=Used_20Mask[rcvLocal, f_7] + takeTransfer];
            b_34_1 := b_34_1 && state(Used_20Heap, Used_20Mask);
            b_34_1 := b_34_1 && Ops_11Heap[rcvLocal, f_7] == Used_20Heap[rcvLocal, f_7];
            Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_20Mask := Used_20Mask[rcvLocal, f_7:=Used_20Mask[rcvLocal, f_7] + takeTransfer];
            b_34_1 := b_34_1 && state(Used_20Heap, Used_20Mask);
            b_34_1 := b_34_1 && Heap[rcvLocal, f_7] == Used_20Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(x, FullPerm, x, FullPerm, x, x):=Heap[null, wand_2#sm(x, FullPerm, x, FullPerm, x, x)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@62.5--62.58) [223850]"}
        (b_33_1 && b_33_1) && b_34_1 ==> neededTransfer == 0.000000000 && Used_20Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_35_1 := b_33_1 && b_34_1;
        b_35_1 := b_35_1 && state(Result_8Heap, Result_8Mask);
        b_35_1 := b_35_1 && sumMask(Result_8Mask, Ops_11Mask, Used_20Mask);
        b_35_1 := (b_35_1 && IdenticalOnKnownLocations(Ops_11Heap, Result_8Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_20Heap, Result_8Heap, Used_20Mask);
        b_35_1 := b_35_1 && state(Result_8Heap, Result_8Mask);
      b_33_1 := b_33_1 && b_35_1;
    if ((b_33_1 && b_33_1) && b_34_1) {
      if (b_33_1) {
        
        // -- Check definedness of x.f == old[lhs](x.f)
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@62.5--62.58) [223851]"}
            HasDirectPerm(Result_8Mask, x, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (Old.vpr@62.5--62.58) [223852]"}
            HasDirectPerm(Labellhs16Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == old[lhs](x.f) might not hold. (Old.vpr@62.5--62.58) [223853]"}
      (b_33_1 && b_33_1) && b_34_1 ==> Result_8Heap[x, f_7] == Labellhs16Heap[x, f_7];
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && x.f == old[lhs](x.f) -- Old.vpr@63.5--63.56
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (Old.vpr@63.5--63.56) [223854]"}
        FullPerm <= Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)];
      Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (Old.vpr@63.5--63.56) [223856]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == Labellhs18Heap[x, f_7];
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
      assert {:msg "  Postcondition of test4 might not hold. There might be insufficient permission to access x.f (Old.vpr@61.9--61.29) [223858]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test4 might not hold. Assertion x.f == 0 might not hold. (Old.vpr@61.9--61.29) [223859]"}
      Heap[x, f_7] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}