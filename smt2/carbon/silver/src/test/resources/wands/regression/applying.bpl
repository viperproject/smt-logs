// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:09:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/applying.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/applying-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5, arg6) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_5;
function  wand_5(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int): Field WandType_wand_5 int;
function  wand_5#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int): Field WandType_wand_5 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)) }
  wand_5#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Ref, arg11: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm, arg9_2: Ref, arg10_2: Ref, arg11_2: int ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11), wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2) }
  wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && arg11 == arg11_2)))))))))
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
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand;
function  wand(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5)) == 6
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand(arg1, arg2, arg3, arg4, arg5) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Pair(p) (applying.vpr@11.1--15.2) [126010]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.f (applying.vpr@11.1--15.2) [126011]"}
        HasDirectPerm(UnfoldingMask, p_1, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.g (applying.vpr@11.1--15.2) [126012]"}
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
// Translation of method test02
// ==================================================

procedure test02(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var boolCur: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
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
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of true --* acc(p.f, write) && p.f > 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- applying.vpr@18.12--18.40
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of p.f > 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.f (applying.vpr@18.12--18.40) [126013]"}
            HasDirectPerm(WandDefRHSMask, p_1, f_7);
        assume WandDefRHSHeap[p_1, f_7] > 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(true, p_1, FullPerm, p_1, 0):=Mask[null, wand(true, p_1, FullPerm, p_1, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* acc(p.f, write) && p.f > 0 {
  //   apply true --* acc(p.f, write) && p.f > 0
  // } -- applying.vpr@20.3--22.4
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
    
    // -- Translating statement: label lhs2 -- applying.vpr@20.11--20.41
      lhs2:
      Labellhs2Heap := Ops_1Heap;
      Labellhs2Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: apply true --* acc(p.f, write) && p.f > 0 -- applying.vpr@21.7--21.41
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_1Heap;
          ExhaleWellDef0Mask := Ops_1Mask;
          havoc Used_1Heap;
          Used_1Mask := ZeroMask;
          b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
          
          // -- Transfer of true --* acc(p.f, write) && p.f > 0
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_2_1) {
                if (b_1_1) {
                  
                  // -- Check definedness of true --* acc(p.f, write) && p.f > 0
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs5 -- applying.vpr@21.13--21.41
                        lhs5:
                        Labellhs5Heap := WandDefLHSHeap;
                        Labellhs5Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      
                      // -- Check definedness of p.f > 0
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.f (applying.vpr@21.7--21.41) [126014]"}
                          HasDirectPerm(WandDefRHSMask, p_1, f_7);
                      assume WandDefRHSHeap[p_1, f_7] > 0;
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_1Mask[null, wand(true, p_1, FullPerm, p_1, 0)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction true --* acc(p.f, write) && p.f > 0 might be negative. (applying.vpr@21.7--21.41) [126015]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, wand(true, p_1, FullPerm, p_1, 0)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand(true, p_1, FullPerm, p_1, 0):=Used_1Mask[null, wand(true, p_1, FullPerm, p_1, 0)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Ops_1Mask := Ops_1Mask[null, wand(true, p_1, FullPerm, p_1, 0):=Ops_1Mask[null, wand(true, p_1, FullPerm, p_1, 0)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand(true, p_1, FullPerm, p_1, 0)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand(true, p_1, FullPerm, p_1, 0):=Used_1Mask[null, wand(true, p_1, FullPerm, p_1, 0)] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Mask := Mask[null, wand(true, p_1, FullPerm, p_1, 0):=Mask[null, wand(true, p_1, FullPerm, p_1, 0)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (applying.vpr@21.7--21.41) [126016]"}
              b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, wand(true, p_1, FullPerm, p_1, 0)] == initNeededTransfer;
            
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
          ExhaleWellDef0Heap := Ops_1Heap;
          ExhaleWellDef0Mask := Ops_1Mask;
          havoc Used_2Heap;
          Used_2Mask := ZeroMask;
          b_4 := b_4 && state(Used_2Heap, Used_2Mask);
          b_1_1 := b_1_1 && b_4;
          b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_1_1 := b_1_1 && p_1 != null;
          Ops_1Mask := Ops_1Mask[p_1, f_7:=Ops_1Mask[p_1, f_7] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && Ops_1Heap[p_1, f_7] > 0;
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(p.f, write) && p.f > 0
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(p.f, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.f, write) might be negative. (applying.vpr@20.3--22.4) [126019]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Ops_1Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(true, p_1, FullPerm, p_1, 0):=Heap[null, wand#sm(true, p_1, FullPerm, p_1, 0)][p_1, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (applying.vpr@20.3--22.4) [126020]"}
        (b_1_1 && b_1_1) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_1_1 && b_5;
        b_6 := b_6 && state(Result_1Heap, Result_1Mask);
        b_6 := b_6 && sumMask(Result_1Mask, Ops_1Mask, Used_3Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_6 := b_6 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_6;
    if ((b_1_1 && b_1_1) && b_5) {
      if (b_1_1) {
        
        // -- Check definedness of p.f > 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (applying.vpr@20.3--22.4) [126021]"}
            HasDirectPerm(Result_1Mask, p_1, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion p.f > 0 might not hold. (applying.vpr@20.3--22.4) [126022]"}
      (b_1_1 && b_1_1) && b_5 ==> Result_1Heap[p_1, f_7] > 0;
    Mask := Mask[null, wand(true, p_1, FullPerm, p_1, 0):=Mask[null, wand(true, p_1, FullPerm, p_1, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true --* acc(p.f, write) && p.f > 0 -- applying.vpr@23.3--23.38
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of true --* acc(p.f, write) && p.f > 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- applying.vpr@23.10--23.38
          lhs6:
          Labellhs6Heap := WandDefLHSHeap;
          Labellhs6Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of p.f > 0
          assert {:msg "  Assert might fail. There might be insufficient permission to access p.f (applying.vpr@23.10--23.38) [126023]"}
            HasDirectPerm(WandDefRHSMask, p_1, f_7);
        assume WandDefRHSHeap[p_1, f_7] > 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (applying.vpr@23.10--23.38) [126024]"}
      FullPerm <= AssertMask[null, wand(true, p_1, FullPerm, p_1, 0)];
    AssertMask := AssertMask[null, wand(true, p_1, FullPerm, p_1, 0):=AssertMask[null, wand(true, p_1, FullPerm, p_1, 0)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- applying.vpr@26.3--26.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (applying.vpr@26.10--26.15) [126025]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_8: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  var boolCur_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
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
  var b_13: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var b_15: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var b_16: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, g:=WandDefLHSMask[p_1, g] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- applying.vpr@30.12--30.57
          lhs7:
          Labellhs7Heap := WandDefLHSHeap;
          Labellhs7Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, g:=WandDefRHSMask[p_1, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, g:=Mask[p_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(p.f, write) --* acc(p.f, write) && (acc(p.g, write) && false) {
  //   apply acc(p.f, write) && acc(p.g, write) --*
  //     acc(p.f, write) && acc(p.g, write)
  // } -- applying.vpr@34.3--36.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_8) {
      perm := FullPerm;
      b_8 := b_8 && p_1 != null;
      Ops_3Mask := Ops_3Mask[p_1, f_7:=Ops_3Mask[p_1, f_7] + perm];
      b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    }
    b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs8 -- applying.vpr@34.11--34.55
      lhs8:
      Labellhs8Heap := Ops_3Heap;
      Labellhs8Mask := Ops_3Mask;
      b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_8) {
      
      // -- Translating statement: apply acc(p.f, write) && acc(p.g, write) --*
  //   acc(p.f, write) && acc(p.g, write) -- applying.vpr@35.7--35.58
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_3Heap;
          ExhaleWellDef0Mask := Ops_3Mask;
          havoc Used_5Heap;
          Used_5Mask := ZeroMask;
          b_9 := b_9 && state(Used_5Heap, Used_5Mask);
          
          // -- Transfer of acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write)
            
            // -- checking if access predicate defined in used state
              if (b_8 && b_9) {
                if (b_8) {
                  
                  // -- Check definedness of acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefLHSMask := WandDefLHSMask[p_1, g:=WandDefLHSMask[p_1, g] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs11 -- applying.vpr@35.13--35.58
                        lhs11:
                        Labellhs11Heap := WandDefLHSHeap;
                        Labellhs11Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
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
            initNeededTransfer := Used_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write) might be negative. (applying.vpr@35.7--35.58) [126026]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_9) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Used_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_9 := b_9 && state(Used_5Heap, Used_5Mask);
                  Ops_3Mask := Ops_3Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Ops_3Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_9) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Used_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_9 := b_9 && state(Used_5Heap, Used_5Mask);
                  Mask := Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (applying.vpr@35.7--35.58) [126027]"}
              b_8 && b_9 ==> neededTransfer == 0.000000000 && Used_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] == initNeededTransfer;
            
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
          ExhaleWellDef0Heap := Ops_3Heap;
          ExhaleWellDef0Mask := Ops_3Mask;
          havoc Used_6Heap;
          Used_6Mask := ZeroMask;
          b_11 := b_11 && state(Used_6Heap, Used_6Mask);
          
          // -- Transfer of acc(p.f, write)
            rcvLocal := p_1;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_6Mask[rcvLocal, f_7] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, write) might be negative. (applying.vpr@35.7--35.58) [126028]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                  b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                  b_11 := b_11 && Ops_3Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                  Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                  b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                  b_11 := b_11 && Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                  Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                  Heap := Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false):=Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false)][p_1, f_7:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.f (applying.vpr@35.7--35.58) [126029]"}
              b_8 && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, f_7] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_12 := b_8 && b_11;
              b_12 := b_12 && state(Result_3Heap, Result_3Mask);
              b_12 := b_12 && sumMask(Result_3Mask, Ops_3Mask, Used_6Mask);
              b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_3Heap, Used_6Mask);
              b_12 := b_12 && state(Result_3Heap, Result_3Mask);
            b_8 := b_8 && b_12;
          b_8 := b_8 && b_11;
          b_8 := b_8 && Used_6Heap == Ops_3Heap;
          
          // -- Transfer of acc(p.g, write)
            rcvLocal := p_1;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_6Mask[rcvLocal, g] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.g, write) might be negative. (applying.vpr@35.7--35.58) [126030]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_6Mask := Used_6Mask[rcvLocal, g:=Used_6Mask[rcvLocal, g] + takeTransfer];
                  b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                  b_11 := b_11 && Ops_3Heap[rcvLocal, g] == Used_6Heap[rcvLocal, g];
                  Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_8 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_6Mask := Used_6Mask[rcvLocal, g:=Used_6Mask[rcvLocal, g] + takeTransfer];
                  b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                  b_11 := b_11 && Heap[rcvLocal, g] == Used_6Heap[rcvLocal, g];
                  Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                  Heap := Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false):=Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false)][p_1, g:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.g (applying.vpr@35.7--35.58) [126031]"}
              b_8 && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, g] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_13 := b_8 && b_11;
              b_13 := b_13 && state(Result_4Heap, Result_4Mask);
              b_13 := b_13 && sumMask(Result_4Mask, Ops_3Mask, Used_6Mask);
              b_13 := (b_13 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_4Heap, Used_6Mask);
              b_13 := b_13 && state(Result_4Heap, Result_4Mask);
            b_8 := b_8 && b_13;
          b_8 := b_8 && b_11;
          b_8 := b_8 && Used_6Heap == Ops_3Heap;
        b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_8 := b_8 && p_1 != null;
          Ops_3Mask := Ops_3Mask[p_1, f_7:=Ops_3Mask[p_1, f_7] + perm];
          b_8 := b_8 && state(Ops_3Heap, Ops_3Mask);
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
    // Translating exec of non-ghost operationacc(p.f, write) && (acc(p.g, write) && false)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_14 := b_14 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(p.f, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.f, write) might be negative. (applying.vpr@34.3--36.4) [126034]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
            b_14 := b_14 && state(Used_7Heap, Used_7Mask);
            b_14 := b_14 && Ops_3Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_14) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false):=Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false)][p_1, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (applying.vpr@34.3--36.4) [126035]"}
        (b_8 && b_8) && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_8 && b_14;
        b_15 := b_15 && state(Result_5Heap, Result_5Mask);
        b_15 := b_15 && sumMask(Result_5Mask, Ops_3Mask, Used_7Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_5Heap, Used_7Mask);
        b_15 := b_15 && state(Result_5Heap, Result_5Mask);
      b_8 := b_8 && b_15;
    
    // -- Transfer of acc(p.g, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.g, write) might be negative. (applying.vpr@34.3--36.4) [126036]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
            b_14 := b_14 && state(Used_7Heap, Used_7Mask);
            b_14 := b_14 && Ops_3Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
            Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, g:=Used_7Mask[rcvLocal, g] + takeTransfer];
            b_14 := b_14 && state(Used_7Heap, Used_7Mask);
            b_14 := b_14 && Heap[rcvLocal, g] == Used_7Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false):=Heap[null, wand_2#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false)][p_1, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (applying.vpr@34.3--36.4) [126037]"}
        (b_8 && b_8) && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_16 := b_8 && b_14;
        b_16 := b_16 && state(Result_6Heap, Result_6Mask);
        b_16 := b_16 && sumMask(Result_6Mask, Ops_3Mask, Used_7Mask);
        b_16 := (b_16 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_6Heap, Used_7Mask);
        b_16 := b_16 && state(Result_6Heap, Result_6Mask);
      b_8 := b_8 && b_16;
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (applying.vpr@34.3--36.4) [126038]"}
      (b_8 && b_8) && b_14 ==> false;
    Mask := Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false):=Mask[null, wand_2(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs12Heap: HeapType;
  var Labellhs12Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_18: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_17: bool;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var boolCur_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_19: bool;
  var Labellhs16Heap: HeapType;
  var Labellhs16Mask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_20: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_21: bool;
  var rcvLocal: Ref;
  var b_22: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var b_23: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_24_1: bool;
  var b_25: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var b_26: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Labellhs17Heap: HeapType;
  var Labellhs17Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, g:=WandDefLHSMask[p_1, g] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs12 -- applying.vpr@40.12--40.57
          lhs12:
          Labellhs12Heap := WandDefLHSHeap;
          Labellhs12Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, g:=WandDefRHSMask[p_1, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, g:=Mask[p_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(p.f, write) --* acc(p.f, write) && acc(p.g, write) {
  //   apply acc(p.f, write) && acc(p.g, write) --*
  //     acc(p.f, write) && acc(p.g, write)
  // } -- applying.vpr@43.3--45.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_17 := b_17 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_18) {
      perm := FullPerm;
      b_18 := b_18 && p_1 != null;
      Ops_5Mask := Ops_5Mask[p_1, f_7:=Ops_5Mask[p_1, f_7] + perm];
      b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
    }
    b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs13 -- applying.vpr@43.11--43.46
      lhs13:
      Labellhs13Heap := Ops_5Heap;
      Labellhs13Mask := Ops_5Mask;
      b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_18) {
      
      // -- Translating statement: apply acc(p.f, write) && acc(p.g, write) --*
  //   acc(p.f, write) && acc(p.g, write) -- applying.vpr@44.7--44.58
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_5Heap;
          ExhaleWellDef0Mask := Ops_5Mask;
          havoc Used_9Heap;
          Used_9Mask := ZeroMask;
          b_19 := b_19 && state(Used_9Heap, Used_9Mask);
          
          // -- Transfer of acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write)
            
            // -- checking if access predicate defined in used state
              if (b_18 && b_19) {
                if (b_18) {
                  
                  // -- Check definedness of acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefLHSMask := WandDefLHSMask[p_1, g:=WandDefLHSMask[p_1, g] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs16 -- applying.vpr@44.13--44.58
                        lhs16:
                        Labellhs16Heap := WandDefLHSHeap;
                        Labellhs16Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
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
            initNeededTransfer := Used_9Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, write) && acc(p.g, write) --* acc(p.f, write) && acc(p.g, write) might be negative. (applying.vpr@44.7--44.58) [126039]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_19) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_9Mask := Used_9Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Used_9Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                  Ops_5Mask := Ops_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Ops_5Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_19) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_9Mask := Used_9Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Used_9Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + takeTransfer];
                  b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                  Mask := Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (applying.vpr@44.7--44.58) [126040]"}
              b_18 && b_19 ==> neededTransfer == 0.000000000 && Used_9Mask[null, wand_1(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_20 := b_18 && b_19;
              b_20 := b_20 && state(Result_7Heap, Result_7Mask);
              b_20 := b_20 && sumMask(Result_7Mask, Ops_5Mask, Used_9Mask);
              b_20 := (b_20 && IdenticalOnKnownLocations(Ops_5Heap, Result_7Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_7Heap, Used_9Mask);
              b_20 := b_20 && state(Result_7Heap, Result_7Mask);
            b_18 := b_18 && b_20;
          b_18 := b_18 && b_19;
          b_18 := b_18 && Used_9Heap == Ops_5Heap;
        b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_5Heap;
          ExhaleWellDef0Mask := Ops_5Mask;
          havoc Used_10Heap;
          Used_10Mask := ZeroMask;
          b_21 := b_21 && state(Used_10Heap, Used_10Mask);
          
          // -- Transfer of acc(p.f, write)
            rcvLocal := p_1;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, write) might be negative. (applying.vpr@44.7--44.58) [126041]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_21) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_5Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                  b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                  b_21 := b_21 && Ops_5Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                  Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_21) && accVar2) && neededTransfer > 0.000000000) {
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
                  Heap := Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)][p_1, f_7:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.f (applying.vpr@44.7--44.58) [126042]"}
              b_18 && b_21 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_22 := b_18 && b_21;
              b_22 := b_22 && state(Result_8Heap, Result_8Mask);
              b_22 := b_22 && sumMask(Result_8Mask, Ops_5Mask, Used_10Mask);
              b_22 := (b_22 && IdenticalOnKnownLocations(Ops_5Heap, Result_8Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_8Heap, Used_10Mask);
              b_22 := b_22 && state(Result_8Heap, Result_8Mask);
            b_18 := b_18 && b_22;
          b_18 := b_18 && b_21;
          b_18 := b_18 && Used_10Heap == Ops_5Heap;
          
          // -- Transfer of acc(p.g, write)
            rcvLocal := p_1;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_10Mask[rcvLocal, g] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.g, write) might be negative. (applying.vpr@44.7--44.58) [126043]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_21) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_5Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
                  b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                  b_21 := b_21 && Ops_5Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
                  Ops_5Mask := Ops_5Mask[rcvLocal, g:=Ops_5Mask[rcvLocal, g] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_21) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
                  b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                  b_21 := b_21 && Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
                  Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                  Heap := Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)][p_1, g:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.g (applying.vpr@44.7--44.58) [126044]"}
              b_18 && b_21 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, g] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_23 := b_18 && b_21;
              b_23 := b_23 && state(Result_9Heap, Result_9Mask);
              b_23 := b_23 && sumMask(Result_9Mask, Ops_5Mask, Used_10Mask);
              b_23 := (b_23 && IdenticalOnKnownLocations(Ops_5Heap, Result_9Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_9Heap, Used_10Mask);
              b_23 := b_23 && state(Result_9Heap, Result_9Mask);
            b_18 := b_18 && b_23;
          b_18 := b_18 && b_21;
          b_18 := b_18 && Used_10Heap == Ops_5Heap;
        b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_18 := b_18 && p_1 != null;
          Ops_5Mask := Ops_5Mask[p_1, f_7:=Ops_5Mask[p_1, f_7] + perm];
          b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
          perm := FullPerm;
          b_18 := b_18 && p_1 != null;
          Ops_5Mask := Ops_5Mask[p_1, g:=Ops_5Mask[p_1, g] + perm];
          b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
          b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_5Heap, ExhaleHeap, Ops_5Mask);
        Ops_5Heap := ExhaleHeap;
        b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
        b_18 := b_18 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(p.f, write) && acc(p.g, write)
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(p.f, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_11Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.f, write) might be negative. (applying.vpr@43.3--45.4) [126047]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
            b_24_1 := b_24_1 && Ops_5Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
            b_24_1 := b_24_1 && Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)][p_1, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (applying.vpr@43.3--45.4) [126048]"}
        (b_18 && b_18) && b_24_1 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_25 := b_18 && b_24_1;
        b_25 := b_25 && state(Result_10Heap, Result_10Mask);
        b_25 := b_25 && sumMask(Result_10Mask, Ops_5Mask, Used_11Mask);
        b_25 := (b_25 && IdenticalOnKnownLocations(Ops_5Heap, Result_10Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_10Heap, Used_11Mask);
        b_25 := b_25 && state(Result_10Heap, Result_10Mask);
      b_18 := b_18 && b_25;
    
    // -- Transfer of acc(p.g, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_11Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.g, write) might be negative. (applying.vpr@43.3--45.4) [126049]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, g:=Used_11Mask[rcvLocal, g] + takeTransfer];
            b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
            b_24_1 := b_24_1 && Ops_5Heap[rcvLocal, g] == Used_11Heap[rcvLocal, g];
            Ops_5Mask := Ops_5Mask[rcvLocal, g:=Ops_5Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, g:=Used_11Mask[rcvLocal, g] + takeTransfer];
            b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
            b_24_1 := b_24_1 && Heap[rcvLocal, g] == Used_11Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Heap[null, wand_3#sm(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)][p_1, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (applying.vpr@43.3--45.4) [126050]"}
        (b_18 && b_18) && b_24_1 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_26 := b_18 && b_24_1;
        b_26 := b_26 && state(Result_11Heap, Result_11Mask);
        b_26 := b_26 && sumMask(Result_11Mask, Ops_5Mask, Used_11Mask);
        b_26 := (b_26 && IdenticalOnKnownLocations(Ops_5Heap, Result_11Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_11Heap, Used_11Mask);
        b_26 := b_26 && state(Result_11Heap, Result_11Mask);
      b_18 := b_18 && b_26;
    Mask := Mask[null, wand_3(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=Mask[null, wand_3(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(p.f, write) --* acc(p.f, write) && acc(p.g, write) -- applying.vpr@46.3--46.43
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of acc(p.f, write) --* acc(p.f, write) && acc(p.g, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs17 -- applying.vpr@46.10--46.43
          lhs17:
          Labellhs17Heap := WandDefLHSHeap;
          Labellhs17Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, g:=WandDefRHSMask[p_1, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (applying.vpr@46.10--46.43) [126051]"}
      FullPerm <= AssertMask[null, wand_3(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)];
    AssertMask := AssertMask[null, wand_3(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm):=AssertMask[null, wand_3(p_1, FullPerm, p_1, FullPerm, p_1, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(p.g, write) -- applying.vpr@49.3--49.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access p.g (applying.vpr@49.10--49.18) [126053]"}
        perm <= AssertMask[p_1, g];
    }
    AssertMask := AssertMask[p_1, g:=AssertMask[p_1, g] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(p_1: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs18Heap: HeapType;
  var Labellhs18Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_28: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_27: bool;
  var Labellhs19Heap: HeapType;
  var Labellhs19Mask: MaskType;
  var boolCur_3: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_29: bool;
  var Labellhs22Heap: HeapType;
  var Labellhs22Mask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_30: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_31: bool;
  var rcvLocal: Ref;
  var b_32: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_33: bool;
  var b_34: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var b_35: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[p_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(p.f, 1 / 2) --* acc(p.f, write) && p.f > 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (applying.vpr@53.12--53.49) [126054]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> p_1 != null;
        WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs18 -- applying.vpr@53.12--53.49
          lhs18:
          Labellhs18Heap := WandDefLHSHeap;
          Labellhs18Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume p_1 != null;
        WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of p.f > 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.f (applying.vpr@53.12--53.49) [126055]"}
            HasDirectPerm(WandDefRHSMask, p_1, f_7);
        assume WandDefRHSHeap[p_1, f_7] > 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0):=Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (applying.vpr@54.12--54.25) [126056]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> p_1 != null;
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume p_1 != null;
    Mask := Mask[p_1, g:=Mask[p_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: p.g := 1 -- applying.vpr@57.3--57.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access p.g (applying.vpr@57.3--57.11) [126057]"}
      FullPerm == Mask[p_1, g];
    Heap := Heap[p_1, g:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(p.g, 1 / 2) && acc(p.f, 1 / 2) --*
  // acc(p.f, write) && (acc(p.g, write) && p.f + p.g > 0) {
  //   apply acc(p.f, 1 / 2) --* acc(p.f, write) && p.f > 0
  // } -- applying.vpr@59.3--61.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_27 := b_27 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_28) {
      if (b_28) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (applying.vpr@59.3--61.4) [126058]"}
          perm >= NoPerm;
        b_28 := b_28 && (perm > NoPerm ==> p_1 != null);
        Ops_7Mask := Ops_7Mask[p_1, g:=Ops_7Mask[p_1, g] + perm];
        b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
      }
      if (b_28) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (applying.vpr@59.3--61.4) [126059]"}
          perm >= NoPerm;
        b_28 := b_28 && (perm > NoPerm ==> p_1 != null);
        Ops_7Mask := Ops_7Mask[p_1, f_7:=Ops_7Mask[p_1, f_7] + perm];
        b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
      }
    }
    b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs19 -- applying.vpr@59.11--59.85
      lhs19:
      Labellhs19Heap := Ops_7Heap;
      Labellhs19Mask := Ops_7Mask;
      b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_28) {
      
      // -- Translating statement: apply acc(p.f, 1 / 2) --* acc(p.f, write) && p.f > 0 -- applying.vpr@60.7--60.50
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_7Heap;
          ExhaleWellDef0Mask := Ops_7Mask;
          havoc Used_13Heap;
          Used_13Mask := ZeroMask;
          b_29 := b_29 && state(Used_13Heap, Used_13Mask);
          
          // -- Transfer of acc(p.f, 1 / 2) --* acc(p.f, write) && p.f > 0
            
            // -- checking if access predicate defined in used state
              if (b_28 && b_29) {
                if (b_28) {
                  
                  // -- Check definedness of acc(p.f, 1 / 2) --* acc(p.f, write) && p.f > 0
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := 1 / 2;
                      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (applying.vpr@60.7--60.50) [126060]"}
                        perm >= NoPerm;
                      assume perm > NoPerm ==> p_1 != null;
                      WandDefLHSMask := WandDefLHSMask[p_1, f_7:=WandDefLHSMask[p_1, f_7] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs22 -- applying.vpr@60.13--60.50
                        lhs22:
                        Labellhs22Heap := WandDefLHSHeap;
                        Labellhs22Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume p_1 != null;
                      WandDefRHSMask := WandDefRHSMask[p_1, f_7:=WandDefRHSMask[p_1, f_7] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      
                      // -- Check definedness of p.f > 0
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.f (applying.vpr@60.7--60.50) [126061]"}
                          HasDirectPerm(WandDefRHSMask, p_1, f_7);
                      assume WandDefRHSHeap[p_1, f_7] > 0;
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_13Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, 1 / 2) --* acc(p.f, write) && p.f > 0 might be negative. (applying.vpr@60.7--60.50) [126062]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_28 && b_29) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_7Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_13Mask := Used_13Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0):=Used_13Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)] + takeTransfer];
                  b_29 := b_29 && state(Used_13Heap, Used_13Mask);
                  Ops_7Mask := Ops_7Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0):=Ops_7Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_28 && b_29) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_13Mask := Used_13Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0):=Used_13Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)] + takeTransfer];
                  b_29 := b_29 && state(Used_13Heap, Used_13Mask);
                  Mask := Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0):=Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (applying.vpr@60.7--60.50) [126063]"}
              b_28 && b_29 ==> neededTransfer == 0.000000000 && Used_13Mask[null, wand_4(p_1, 1 / 2, p_1, FullPerm, p_1, 0)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_30 := b_28 && b_29;
              b_30 := b_30 && state(Result_12Heap, Result_12Mask);
              b_30 := b_30 && sumMask(Result_12Mask, Ops_7Mask, Used_13Mask);
              b_30 := (b_30 && IdenticalOnKnownLocations(Ops_7Heap, Result_12Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_12Heap, Used_13Mask);
              b_30 := b_30 && state(Result_12Heap, Result_12Mask);
            b_28 := b_28 && b_30;
          b_28 := b_28 && b_29;
          b_28 := b_28 && Used_13Heap == Ops_7Heap;
        b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_7Heap;
          ExhaleWellDef0Mask := Ops_7Mask;
          havoc Used_14Heap;
          Used_14Mask := ZeroMask;
          b_31 := b_31 && state(Used_14Heap, Used_14Mask);
          
          // -- Transfer of acc(p.f, 1 / 2)
            rcvLocal := p_1;
            neededTransfer := 1 / 2;
            initNeededTransfer := Used_14Mask[rcvLocal, f_7] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(p.f, 1 / 2) might be negative. (applying.vpr@60.7--60.50) [126064]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_28 && b_31) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_7Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                  b_31 := b_31 && state(Used_14Heap, Used_14Mask);
                  b_31 := b_31 && Ops_7Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                  Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_28 && b_31) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, f_7];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                  b_31 := b_31 && state(Used_14Heap, Used_14Mask);
                  b_31 := b_31 && Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                  Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                  Heap := Heap[null, wand_5#sm(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0):=Heap[null, wand_5#sm(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0)][p_1, f_7:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.f (applying.vpr@60.7--60.50) [126065]"}
              b_28 && b_31 ==> neededTransfer == 0.000000000 && Used_14Mask[rcvLocal, f_7] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_32 := b_28 && b_31;
              b_32 := b_32 && state(Result_13Heap, Result_13Mask);
              b_32 := b_32 && sumMask(Result_13Mask, Ops_7Mask, Used_14Mask);
              b_32 := (b_32 && IdenticalOnKnownLocations(Ops_7Heap, Result_13Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_13Heap, Used_14Mask);
              b_32 := b_32 && state(Result_13Heap, Result_13Mask);
            b_28 := b_28 && b_32;
          b_28 := b_28 && b_31;
          b_28 := b_28 && Used_14Heap == Ops_7Heap;
        b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_28 := b_28 && p_1 != null;
          Ops_7Mask := Ops_7Mask[p_1, f_7:=Ops_7Mask[p_1, f_7] + perm];
          b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
          b_28 := b_28 && Ops_7Heap[p_1, f_7] > 0;
          b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_7Heap, ExhaleHeap, Ops_7Mask);
        Ops_7Heap := ExhaleHeap;
        b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
        b_28 := b_28 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(p.f, write) && (acc(p.g, write) && p.f + p.g > 0)
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_33 := b_33 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(p.f, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_15Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.f, write) might be negative. (applying.vpr@59.3--61.4) [126067]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_33) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_33 := b_33 && state(Used_15Heap, Used_15Mask);
            b_33 := b_33 && Ops_7Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_33) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_33 := b_33 && state(Used_15Heap, Used_15Mask);
            b_33 := b_33 && Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_5#sm(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0):=Heap[null, wand_5#sm(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0)][p_1, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (applying.vpr@59.3--61.4) [126068]"}
        (b_28 && b_28) && b_33 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_34 := b_28 && b_33;
        b_34 := b_34 && state(Result_14Heap, Result_14Mask);
        b_34 := b_34 && sumMask(Result_14Mask, Ops_7Mask, Used_15Mask);
        b_34 := (b_34 && IdenticalOnKnownLocations(Ops_7Heap, Result_14Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_14Heap, Used_15Mask);
        b_34 := b_34 && state(Result_14Heap, Result_14Mask);
      b_28 := b_28 && b_34;
    
    // -- Transfer of acc(p.g, write)
      rcvLocal := p_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_15Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(p.g, write) might be negative. (applying.vpr@59.3--61.4) [126069]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_33) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, g:=Used_15Mask[rcvLocal, g] + takeTransfer];
            b_33 := b_33 && state(Used_15Heap, Used_15Mask);
            b_33 := b_33 && Ops_7Heap[rcvLocal, g] == Used_15Heap[rcvLocal, g];
            Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_33) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, g:=Used_15Mask[rcvLocal, g] + takeTransfer];
            b_33 := b_33 && state(Used_15Heap, Used_15Mask);
            b_33 := b_33 && Heap[rcvLocal, g] == Used_15Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_5#sm(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0):=Heap[null, wand_5#sm(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0)][p_1, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (applying.vpr@59.3--61.4) [126070]"}
        (b_28 && b_28) && b_33 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_35 := b_28 && b_33;
        b_35 := b_35 && state(Result_15Heap, Result_15Mask);
        b_35 := b_35 && sumMask(Result_15Mask, Ops_7Mask, Used_15Mask);
        b_35 := (b_35 && IdenticalOnKnownLocations(Ops_7Heap, Result_15Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_15Heap, Used_15Mask);
        b_35 := b_35 && state(Result_15Heap, Result_15Mask);
      b_28 := b_28 && b_35;
    if ((b_28 && b_28) && b_33) {
      if (b_28) {
        
        // -- Check definedness of p.f + p.g > 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.f (applying.vpr@59.3--61.4) [126071]"}
            HasDirectPerm(Result_15Mask, p_1, f_7);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access p.g (applying.vpr@59.3--61.4) [126072]"}
            HasDirectPerm(Result_15Mask, p_1, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion p.f + p.g > 0 might not hold. (applying.vpr@59.3--61.4) [126073]"}
      (b_28 && b_28) && b_33 ==> Result_15Heap[p_1, f_7] + Result_15Heap[p_1, g] > 0;
    Mask := Mask[null, wand_5(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0):=Mask[null, wand_5(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(p.g, 1 / 2) && acc(p.f, 1 / 2) --*
  //   acc(p.f, write) && (acc(p.g, write) && p.f + p.g > 0) -- applying.vpr@63.3--66.42
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (applying.vpr@63.3--66.42) [126074]"}
        FullPerm <= Mask[null, wand_5(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0)];
      Mask := Mask[null, wand_5(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0):=Mask[null, wand_5(p_1, 1 / 2, p_1, 1 / 2, p_1, FullPerm, p_1, FullPerm, p_1, p_1, 0)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 1 / 2;
      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (applying.vpr@63.3--66.42) [126075]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.g (applying.vpr@63.3--66.42) [126076]"}
          perm <= Mask[p_1, g];
      }
      Mask := Mask[p_1, g:=Mask[p_1, g] - perm];
      perm := 1 / 2;
      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (applying.vpr@63.3--66.42) [126077]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access p.f (applying.vpr@63.3--66.42) [126078]"}
          perm <= Mask[p_1, f_7];
      }
      Mask := Mask[p_1, f_7:=Mask[p_1, f_7] - perm];
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
      assume Heap[p_1, f_7] + Heap[p_1, g] > 0;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Pair(p), write) -- applying.vpr@68.3--68.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.f (applying.vpr@68.3--68.20) [126083]"}
        perm <= Mask[p_1, f_7];
    }
    Mask := Mask[p_1, f_7:=Mask[p_1, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Pair(p) might fail. There might be insufficient permission to access p.g (applying.vpr@68.3--68.20) [126085]"}
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
  
  // -- Translating statement: assert sum(p) > 0 -- applying.vpr@69.3--69.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of sum(p) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Pair(p) (applying.vpr@69.10--69.16) [126087]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Pair(p_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(p) > 0 might not hold. (applying.vpr@69.10--69.20) [126088]"}
      sum(Heap, p_1) > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- applying.vpr@72.3--72.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (applying.vpr@72.10--72.15) [126089]"}
      false;
    assume state(Heap, Mask);
}