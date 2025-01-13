// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:03:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/packaging_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/packaging_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
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
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);
type WandType_wand;
function  wand(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand(arg1, arg2, arg3) }
  IsWandField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand#ft(arg1, arg2, arg3) }
  IsWandField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand(arg1, arg2, arg3) }
  !IsPredicateField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3)) }
  wand#sm(arg1, arg2, arg3) == WandMaskField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand(arg1, arg2, arg3) }
  getPredWandId(wand(arg1, arg2, arg3)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand(arg1, arg2, arg3), wand(arg1_2, arg2_2, arg3_2) }
  wand(arg1, arg2, arg3) == wand(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_5;
function  wand_5(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_5 int;
function  wand_5#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool): Field WandType_wand_5 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_5#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: bool ::
  { wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_5(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
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
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: bool ::
  { wand_4(arg1, arg2, arg3, arg4, arg5), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of method t01
// ==================================================

procedure t01(ys: Ref) returns ()
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
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_3: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_5: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[ys, $allocated];
  
  // -- Checked inhaling of precondition
    assume ys != null;
    assume state(Heap, Mask);
    perm := 1 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (packaging_1.vpr@15.12--15.25) [128038]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> ys != null;
    Mask := Mask[ys, f_7:=Mask[ys, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(ys.f, 1 / 3) --* true {
  //   package acc(ys.f, 1 / 3) --* acc(ys.f, write) {
  //   }
  // } -- packaging_1.vpr@17.3--19.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := 1 / 3;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 3 might be negative. (packaging_1.vpr@17.3--19.4) [128039]"}
        perm >= NoPerm;
      b_1_1 := b_1_1 && (perm > NoPerm ==> ys != null);
      Ops_1Mask := Ops_1Mask[ys, f_7:=Ops_1Mask[ys, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- packaging_1.vpr@17.11--17.35
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: package acc(ys.f, 1 / 3) --* acc(ys.f, write) {
  // } -- packaging_1.vpr@18.7--18.44
        havoc Ops_3Heap;
        Ops_3Mask := ZeroMask;
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_3) {
          perm := 1 / 3;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 3 might be negative. (packaging_1.vpr@18.7--18.44) [128040]"}
            perm >= NoPerm;
          b_3 := b_3 && (perm > NoPerm ==> ys != null);
          Ops_3Mask := Ops_3Mask[ys, f_7:=Ops_3Mask[ys, f_7] + perm];
          b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        }
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        
        // -- Translating statement: label lhs3 -- packaging_1.vpr@18.16--18.43
          lhs3:
          Labellhs3Heap := Ops_3Heap;
          Labellhs3Mask := Ops_3Mask;
          b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        boolCur_1 := true;
        // Translating exec of non-ghost operationacc(ys.f, write)
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(ys.f, write)
          rcvLocal := ys;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(ys.f, write) might be negative. (packaging_1.vpr@18.7--18.44) [128041]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, f_7:=Used_2Mask[rcvLocal, f_7] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Ops_3Heap[rcvLocal, f_7] == Used_2Heap[rcvLocal, f_7];
                Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
                Ops_1Heap := Ops_1Heap[null, wand_1#sm(ys, 1 / 3, ys, FullPerm):=Ops_1Heap[null, wand_1#sm(ys, 1 / 3, ys, FullPerm)][ys, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_1#sm(ys, 1 / 3, ys, FullPerm):=Heap[null, wand_1#sm(ys, 1 / 3, ys, FullPerm)][ys, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access ys.f (packaging_1.vpr@18.7--18.44) [128042]"}
            (b_3 && (b_3 && b_1_1)) && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_3 && b_4;
            b_5 := b_5 && state(ResultHeap, ResultMask);
            b_5 := b_5 && sumMask(ResultMask, Ops_3Mask, Used_2Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_2Heap, ResultHeap, Used_2Mask);
            b_5 := b_5 && state(ResultHeap, ResultMask);
          b_3 := b_3 && b_5;
        Ops_1Mask := Ops_1Mask[null, wand_1(ys, 1 / 3, ys, FullPerm):=Ops_1Mask[null, wand_1(ys, 1 / 3, ys, FullPerm)] + FullPerm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    Mask := Mask[null, wand(ys, 1 / 3, true):=Mask[null, wand(ys, 1 / 3, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- packaging_1.vpr@22.3--22.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (packaging_1.vpr@22.10--22.15) [128044]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t02
// ==================================================

procedure t02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_8: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_10: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_3: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_12: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var b_14: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
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
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- packaging_1.vpr@28.3--28.22
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (packaging_1.vpr@28.10--28.22) [128045]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 4) && x.f == 2 --* acc(x.f, 1 / 4) && x.f == 2 {
  //   package true --* acc(x.f, 1 / 2) && x.f == 2 {
  //   }
  // } -- packaging_1.vpr@32.3--34.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_8) {
      if (b_8) {
        perm := 1 / 4;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 4 might be negative. (packaging_1.vpr@32.3--34.4) [128046]"}
          perm >= NoPerm;
        b_8 := b_8 && (perm > NoPerm ==> x != null);
        Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
      }
      if (b_8) {
        if (b_8) {
          
          // -- Check definedness of x.f == 2
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@32.3--34.4) [128047]"}
              HasDirectPerm(Ops_5Mask, x, f_7);
        }
        b_8 := b_8 && Ops_5Heap[x, f_7] == 2;
      }
    }
    b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- packaging_1.vpr@32.11--32.58
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_8) {
      
      // -- Translating statement: package true --* acc(x.f, 1 / 2) && x.f == 2 {
  // } -- packaging_1.vpr@33.7--33.48
        havoc Ops_7Heap;
        Ops_7Mask := ZeroMask;
        b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_9 := b_9 && state(Used_5Heap, Used_5Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_10) {
          b_10 := b_10;
        }
        b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
        
        // -- Translating statement: label lhs7 -- packaging_1.vpr@33.16--33.47
          lhs7:
          Labellhs7Heap := Ops_7Heap;
          Labellhs7Mask := Ops_7Mask;
          b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
        boolCur_3 := true;
        // Translating exec of non-ghost operationacc(x.f, 1 / 2) && x.f == 2
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_11 := b_11 && state(Used_6Heap, Used_6Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_6Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 2) might be negative. (packaging_1.vpr@33.7--33.48) [128048]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_10 && (b_10 && b_8)) && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                b_11 := b_11 && Ops_7Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_10 && (b_10 && b_8)) && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                b_11 := b_11 && Ops_5Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
                Ops_5Heap := Ops_5Heap[null, wand_3#sm(true, x, 1 / 2, x, 2):=Ops_5Heap[null, wand_3#sm(true, x, 1 / 2, x, 2)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_10 && (b_10 && b_8)) && b_11) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_3#sm(true, x, 1 / 2, x, 2):=Heap[null, wand_3#sm(true, x, 1 / 2, x, 2)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@33.7--33.48) [128049]"}
            (b_10 && (b_10 && b_8)) && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_10 && b_11;
            b_12 := b_12 && state(Result_1Heap, Result_1Mask);
            b_12 := b_12 && sumMask(Result_1Mask, Ops_7Mask, Used_6Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_7Heap, Result_1Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_1Heap, Used_6Mask);
            b_12 := b_12 && state(Result_1Heap, Result_1Mask);
          b_10 := b_10 && b_12;
        if ((b_10 && (b_10 && b_8)) && b_11) {
          if (b_10) {
            
            // -- Check definedness of x.f == 2
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@33.7--33.48) [128050]"}
                HasDirectPerm(Result_1Mask, x, f_7);
          }
        }
        assert {:msg "  Packaging wand might fail. Assertion x.f == 2 might not hold. (packaging_1.vpr@33.7--33.48) [128051]"}
          (b_10 && (b_10 && b_8)) && b_11 ==> Result_1Heap[x, f_7] == 2;
        Ops_5Mask := Ops_5Mask[null, wand_3(true, x, 1 / 2, x, 2):=Ops_5Mask[null, wand_3(true, x, 1 / 2, x, 2)] + FullPerm];
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, 1 / 4) && x.f == 2
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_13 := b_13 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(x.f, 1 / 4)
      rcvLocal := x;
      neededTransfer := 1 / 4;
      initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 4) might be negative. (packaging_1.vpr@32.3--34.4) [128052]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_13) && accVar2) && neededTransfer > 0.000000000) {
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
        if ((((b_8 && b_8) && b_13) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_2#sm(x, 1 / 4, x, 2, x, 1 / 4, x, 2):=Heap[null, wand_2#sm(x, 1 / 4, x, 2, x, 1 / 4, x, 2)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@32.3--34.4) [128053]"}
        (b_8 && b_8) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_8 && b_13;
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
        b_14 := b_14 && sumMask(Result_2Mask, Ops_5Mask, Used_7Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_2Heap, Used_7Mask);
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
      b_8 := b_8 && b_14;
    if ((b_8 && b_8) && b_13) {
      if (b_8) {
        
        // -- Check definedness of x.f == 2
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@32.3--34.4) [128054]"}
            HasDirectPerm(Result_2Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 2 might not hold. (packaging_1.vpr@32.3--34.4) [128055]"}
      (b_8 && b_8) && b_13 ==> Result_2Heap[x, f_7] == 2;
    Mask := Mask[null, wand_2(x, 1 / 4, x, 2, x, 1 / 4, x, 2):=Mask[null, wand_2(x, 1 / 4, x, 2, x, 1 / 4, x, 2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- packaging_1.vpr@38.3--38.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (packaging_1.vpr@38.10--38.15) [128056]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t03
// ==================================================

procedure t03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_16: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_15: bool;
  var perm: Perm;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_4: bool;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_18: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_17: bool;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var boolCur_5: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_19: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_20: bool;
  
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
  
  // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 2 --* true {
  //   package acc(x.f, 1 / 2) && x.f == 3 --* false {
  //   }
  // } -- packaging_1.vpr@44.3--47.4
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_15 := b_15 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_16) {
      if (b_16) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (packaging_1.vpr@44.3--47.4) [128057]"}
          perm >= NoPerm;
        b_16 := b_16 && (perm > NoPerm ==> x != null);
        Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
      }
      if (b_16) {
        if (b_16) {
          
          // -- Check definedness of x.f == 2
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@44.3--47.4) [128058]"}
              HasDirectPerm(Ops_9Mask, x, f_7);
        }
        b_16 := b_16 && Ops_9Heap[x, f_7] == 2;
      }
    }
    b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs9 -- packaging_1.vpr@44.11--44.42
      lhs9:
      Labellhs9Heap := Ops_9Heap;
      Labellhs9Mask := Ops_9Mask;
      b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_16) {
      
      // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 3 --* false {
  // } -- packaging_1.vpr@46.7--46.47
        havoc Ops_11Heap;
        Ops_11Mask := ZeroMask;
        b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_17 := b_17 && state(Used_9Heap, Used_9Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_18) {
          if (b_18) {
            perm := 1 / 2;
            assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (packaging_1.vpr@46.7--46.47) [128059]"}
              perm >= NoPerm;
            b_18 := b_18 && (perm > NoPerm ==> x != null);
            Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
            b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
          }
          if (b_18) {
            if (b_18) {
              
              // -- Check definedness of x.f == 3
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@46.7--46.47) [128060]"}
                  HasDirectPerm(Ops_11Mask, x, f_7);
            }
            b_18 := b_18 && Ops_11Heap[x, f_7] == 3;
          }
        }
        b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        
        // -- Translating statement: label lhs11 -- packaging_1.vpr@46.16--46.46
          lhs11:
          Labellhs11Heap := Ops_11Heap;
          Labellhs11Mask := Ops_11Mask;
          b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        boolCur_5 := true;
        // Translating exec of non-ghost operationfalse
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_19 := b_19 && state(Used_10Heap, Used_10Mask);
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (packaging_1.vpr@46.7--46.47) [128061]"}
          (b_18 && (b_18 && b_16)) && b_19 ==> false;
        Ops_9Mask := Ops_9Mask[null, wand_4(x, 1 / 2, x, 3, false):=Ops_9Mask[null, wand_4(x, 1 / 2, x, 3, false)] + FullPerm];
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_20 := b_20 && state(Used_11Heap, Used_11Mask);
    Mask := Mask[null, wand_4(x, 1 / 2, x, 2, true):=Mask[null, wand_4(x, 1 / 2, x, 2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t04
// ==================================================

procedure t04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_22: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_21: bool;
  var perm: Perm;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var boolCur_6: bool;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_24_1: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_23: bool;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var boolCur_7: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_25: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_26: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_27: bool;
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
  
  // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 2 --* true {
  //   package acc(x.f, 1 / 2) && x.f == 3 --* acc(x.f, write) && false {
  //   }
  // } -- packaging_1.vpr@53.3--55.4
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_22 := b_22 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_21 := b_21 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_22) {
      if (b_22) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (packaging_1.vpr@53.3--55.4) [128063]"}
          perm >= NoPerm;
        b_22 := b_22 && (perm > NoPerm ==> x != null);
        Ops_13Mask := Ops_13Mask[x, f_7:=Ops_13Mask[x, f_7] + perm];
        b_22 := b_22 && state(Ops_13Heap, Ops_13Mask);
      }
      if (b_22) {
        if (b_22) {
          
          // -- Check definedness of x.f == 2
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@53.3--55.4) [128064]"}
              HasDirectPerm(Ops_13Mask, x, f_7);
        }
        b_22 := b_22 && Ops_13Heap[x, f_7] == 2;
      }
    }
    b_22 := b_22 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs13 -- packaging_1.vpr@53.11--53.42
      lhs13:
      Labellhs13Heap := Ops_13Heap;
      Labellhs13Mask := Ops_13Mask;
      b_22 := b_22 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    if (b_22) {
      
      // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 3 --* acc(x.f, write) && false {
  // } -- packaging_1.vpr@54.7--54.57
        havoc Ops_15Heap;
        Ops_15Mask := ZeroMask;
        b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
        havoc Used_13Heap;
        Used_13Mask := ZeroMask;
        b_23 := b_23 && state(Used_13Heap, Used_13Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_24_1) {
          if (b_24_1) {
            perm := 1 / 2;
            assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (packaging_1.vpr@54.7--54.57) [128065]"}
              perm >= NoPerm;
            b_24_1 := b_24_1 && (perm > NoPerm ==> x != null);
            Ops_15Mask := Ops_15Mask[x, f_7:=Ops_15Mask[x, f_7] + perm];
            b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
          }
          if (b_24_1) {
            if (b_24_1) {
              
              // -- Check definedness of x.f == 3
                assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@54.7--54.57) [128066]"}
                  HasDirectPerm(Ops_15Mask, x, f_7);
            }
            b_24_1 := b_24_1 && Ops_15Heap[x, f_7] == 3;
          }
        }
        b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
        
        // -- Translating statement: label lhs15 -- packaging_1.vpr@54.16--54.56
          lhs15:
          Labellhs15Heap := Ops_15Heap;
          Labellhs15Mask := Ops_15Mask;
          b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
        boolCur_7 := true;
        // Translating exec of non-ghost operationacc(x.f, write) && false
        havoc Used_14Heap;
        Used_14Mask := ZeroMask;
        b_25 := b_25 && state(Used_14Heap, Used_14Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_14Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (packaging_1.vpr@54.7--54.57) [128067]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_24_1 && (b_24_1 && b_22)) && b_25) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_25 := b_25 && state(Used_14Heap, Used_14Mask);
                b_25 := b_25 && Ops_15Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Ops_15Mask := Ops_15Mask[rcvLocal, f_7:=Ops_15Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_24_1 && (b_24_1 && b_22)) && b_25) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_25 := b_25 && state(Used_14Heap, Used_14Mask);
                b_25 := b_25 && Ops_13Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
                Ops_13Heap := Ops_13Heap[null, wand_5#sm(x, 1 / 2, x, 3, x, FullPerm, false):=Ops_13Heap[null, wand_5#sm(x, 1 / 2, x, 3, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_24_1 && (b_24_1 && b_22)) && b_25) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_25 := b_25 && state(Used_14Heap, Used_14Mask);
                b_25 := b_25 && Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_5#sm(x, 1 / 2, x, 3, x, FullPerm, false):=Heap[null, wand_5#sm(x, 1 / 2, x, 3, x, FullPerm, false)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_1.vpr@54.7--54.57) [128068]"}
            (b_24_1 && (b_24_1 && b_22)) && b_25 ==> neededTransfer == 0.000000000 && Used_14Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_26 := b_24_1 && b_25;
            b_26 := b_26 && state(Result_3Heap, Result_3Mask);
            b_26 := b_26 && sumMask(Result_3Mask, Ops_15Mask, Used_14Mask);
            b_26 := (b_26 && IdenticalOnKnownLocations(Ops_15Heap, Result_3Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_3Heap, Used_14Mask);
            b_26 := b_26 && state(Result_3Heap, Result_3Mask);
          b_24_1 := b_24_1 && b_26;
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (packaging_1.vpr@54.7--54.57) [128069]"}
          (b_24_1 && (b_24_1 && b_22)) && b_25 ==> false;
        Ops_13Mask := Ops_13Mask[null, wand_5(x, 1 / 2, x, 3, x, FullPerm, false):=Ops_13Mask[null, wand_5(x, 1 / 2, x, 3, x, FullPerm, false)] + FullPerm];
        b_22 := b_22 && state(Ops_13Heap, Ops_13Mask);
        b_22 := b_22 && state(Ops_13Heap, Ops_13Mask);
        b_22 := b_22 && state(Ops_13Heap, Ops_13Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_27 := b_27 && state(Used_15Heap, Used_15Mask);
    Mask := Mask[null, wand_4(x, 1 / 2, x, 2, true):=Mask[null, wand_4(x, 1 / 2, x, 2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- packaging_1.vpr@58.3--58.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (packaging_1.vpr@58.10--58.15) [128071]"}
      false;
    assume state(Heap, Mask);
}