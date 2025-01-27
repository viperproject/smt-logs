// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:48:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue012.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue012-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_4: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_4, f_9] }
  Heap[o_4, $allocated] ==> Heap[Heap[o_4, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_15) ==> Heap[o_23, f_15] == ExhaleHeap[o_23, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10), ExhaleHeap[null, WandMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> Heap[null, WandMaskField(pm_f_10)] == ExhaleHeap[null, WandMaskField(pm_f_10)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_4: Ref, f_25: (Field A B), v: B ::
  { Heap[o_4, f_25:=v] }
  succHeap(Heap, Heap[o_4, f_25:=v])
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
function  wand(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg4: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5)) == 4
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);
type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

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
  getPredWandId(P(x)) == 0
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
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.next.next, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (issue012.vpr@6.1--6.54) [216344]"}
        HasDirectPerm(Mask, x, next);
    perm := FullPerm;
    assume Heap[x, next] != null;
    Mask := Mask[Heap[x, next], next:=Mask[Heap[x, next], next] + perm];
    assume state(Heap, Mask);
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
  getPredWandId(Q(x)) == 1
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
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(l_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var perm: Perm;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var arg: Ref;
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
  var rcvLocal: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var freshVersion: FrameType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var b_7: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var arg_1_13: Ref;
  var b_8: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(P(l), write) --* acc(l.next, write) && acc(Q(l.next), write) {
  //   unfold acc(P(l), write)
  //   fold acc(Q(l.next), write)
  // } -- issue012.vpr@11.3--14.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1;
      Ops_1Mask := Ops_1Mask[null, P(l_1):=Ops_1Mask[null, P(l_1)] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- issue012.vpr@11.11--11.56
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(P(l), write) -- issue012.vpr@12.7--12.18
        assume P#trigger(Ops_1Heap, P(l_1));
        assume Ops_1Heap[null, P(l_1)] == CombineFrames(FrameFragment(Ops_1Heap[l_1, next]), FrameFragment(Ops_1Heap[Ops_1Heap[l_1, next], next]));
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(P(l), write)
          arg := l_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, P(arg)] + neededTransfer;
          assert {:msg "  Unfolding P(l) might fail. Fraction acc(P(l), write) might be negative. (issue012.vpr@12.7--12.18) [216346]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, P(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, P(arg):=Used_1Mask[null, P(arg)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, P(arg):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, P(arg):=Ops_1Mask[null, P(arg)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, P(arg):=Used_1Mask[null, P(arg)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, P(arg):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, P(arg):=Mask[null, P(arg)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                  { newPMask[o_5, f_11] }
                  Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][o_5, f_11] || Heap[null, P#sm(l_1)][o_5, f_11] ==> newPMask[o_5, f_11]
                );
                Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(l) might fail. There might be insufficient permission to access P(l) (issue012.vpr@12.7--12.18) [216347]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, P(arg)] == initNeededTransfer;
          
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
        b_1_1 := b_1_1 && l_1 != null;
        Ops_1Mask := Ops_1Mask[l_1, next:=Ops_1Mask[l_1, next] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[l_1, next] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[l_1, next], next:=Ops_1Mask[Ops_1Heap[l_1, next], next] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: fold acc(Q(l.next), write) -- issue012.vpr@13.7--13.21
        if (b_1_1) {
          
          // -- Check definedness of acc(Q(l.next), write)
            assert {:msg "  Folding Q(l.next) might fail. There might be insufficient permission to access l.next (issue012.vpr@13.7--13.21) [216350]"}
              HasDirectPerm(Ops_1Mask, l_1, next);
        }
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(l.next.next, write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_4) {
              if (b_1_1) {
                
                // -- Check definedness of acc(l.next.next, write)
                  assert {:msg "  Folding Q(l.next) might fail. There might be insufficient permission to access l.next (issue012.vpr@13.7--13.21) [216352]"}
                    HasDirectPerm(Ops_1Mask, l_1, next);
              }
            }
          rcvLocal := Ops_1Heap[l_1, next];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, next] + neededTransfer;
          assert {:msg "  Folding Q(l.next) might fail. Fraction acc(l.next.next, write) might be negative. (issue012.vpr@13.7--13.21) [216353]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Ops_1Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
                Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
                Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][Heap[l_1, next], next:=true]];
              }
            }
          assert {:msg "  Folding Q(l.next) might fail. There might be insufficient permission to access l.next.next (issue012.vpr@13.7--13.21) [216354]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_1_1 && b_4;
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
            b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, Q(Ops_1Heap[l_1, next]):=Ops_1Mask[null, Q(Ops_1Heap[l_1, next])] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume Q#trigger(Ops_1Heap, Q(Ops_1Heap[l_1, next]));
        assume Ops_1Heap[null, Q(Ops_1Heap[l_1, next])] == FrameFragment(Ops_1Heap[Result_1Heap[l_1, next], next]);
        if (!HasDirectPerm(Ops_1Mask, null, Q(Ops_1Heap[l_1, next]))) {
          Ops_1Heap := Ops_1Heap[null, Q#sm(Ops_1Heap[l_1, next]):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, Q(Ops_1Heap[l_1, next]):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, Q#sm(Ops_1Heap[l_1, next]):=Ops_1Heap[null, Q#sm(Ops_1Heap[l_1, next])][Ops_1Heap[l_1, next], next:=true]];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(l.next, write) && acc(Q(l.next), write)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(l.next, write)
      rcvLocal := l_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, next] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.next, write) might be negative. (issue012.vpr@11.3--14.4) [216356]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_1Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
            Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
            Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
            Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][l_1, next:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.next (issue012.vpr@11.3--14.4) [216357]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, next] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_1_1 && b_6;
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
        b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_7;
    
    // -- Transfer of acc(Q(l.next), write)
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_6) {
          if (b_1_1) {
            
            // -- Check definedness of acc(Q(l.next), write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.next (issue012.vpr@11.3--14.4) [216358]"}
                HasDirectPerm(Result_2Mask, l_1, next);
          }
        }
      arg_1_13 := Result_2Heap[l_1, next];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[null, Q(arg_1_13)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(l.next), write) might be negative. (issue012.vpr@11.3--14.4) [216359]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, Q(arg_1_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, Q(arg_1_13):=Used_3Mask[null, Q(arg_1_13)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, Q(arg_1_13):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, Q(arg_1_13):=Ops_1Mask[null, Q(arg_1_13)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_1_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, Q(arg_1_13):=Used_3Mask[null, Q(arg_1_13)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, Q(arg_1_13):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
            Mask := Mask[null, Q(arg_1_13):=Mask[null, Q(arg_1_13)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
              { newPMask[o_6, f_12] }
              Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][o_6, f_12] || Heap[null, Q#sm(Heap[l_1, next])][o_6, f_12] ==> newPMask[o_6, f_12]
            );
            Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(l.next) (issue012.vpr@11.3--14.4) [216360]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, Q(arg_1_13)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_1_1 && b_6;
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
        b_8 := b_8 && sumMask(Result_3Mask, Ops_1Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
      b_1_1 := b_1_1 && b_8;
    Mask := Mask[null, wand(l_1, l_1, FullPerm, l_1):=Mask[null, wand(l_1, l_1, FullPerm, l_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(l_1: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_10: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_9: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_11: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_12: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_13: bool;
  var ExhaleHeap: HeapType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var arg_2_13: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_15: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var rcvLocal: Ref;
  var b_17: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_18: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume l_1 != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of true --* acc(l.next, write) && acc(Q(l.next), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- issue012.vpr@19.12--19.50
          lhs3:
          Labellhs3Heap := WandDefLHSHeap;
          Labellhs3Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume l_1 != null;
        WandDefRHSMask := WandDefRHSMask[l_1, next:=WandDefRHSMask[l_1, next] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(Q(l.next), write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l.next (issue012.vpr@19.12--19.50) [216361]"}
            HasDirectPerm(WandDefRHSMask, l_1, next);
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next]):=WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next])] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(true, l_1, FullPerm, l_1):=Mask[null, wand_1(true, l_1, FullPerm, l_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* acc(l.next, write) && acc(l.next.next, write) {
  //   apply true --* acc(l.next, write) && acc(Q(l.next), write)
  //   unfold acc(Q(l.next), write)
  // } -- issue012.vpr@21.3--24.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_9 := b_9 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_10) {
      b_10 := b_10;
    }
    b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- issue012.vpr@21.11--21.53
      lhs4:
      Labellhs4Heap := Ops_3Heap;
      Labellhs4Mask := Ops_3Mask;
      b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_10) {
      
      // -- Translating statement: apply true --* acc(l.next, write) && acc(Q(l.next), write) -- issue012.vpr@22.7--22.51
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_3Heap;
          ExhaleWellDef0Mask := Ops_3Mask;
          havoc Used_5Heap;
          Used_5Mask := ZeroMask;
          b_11 := b_11 && state(Used_5Heap, Used_5Mask);
          
          // -- Transfer of true --* acc(l.next, write) && acc(Q(l.next), write)
            
            // -- checking if access predicate defined in used state
              if (b_10 && b_11) {
                if (b_10) {
                  
                  // -- Check definedness of true --* acc(l.next, write) && acc(Q(l.next), write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs7 -- issue012.vpr@22.13--22.51
                        lhs7:
                        Labellhs7Heap := WandDefLHSHeap;
                        Labellhs7Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume l_1 != null;
                      WandDefRHSMask := WandDefRHSMask[l_1, next:=WandDefRHSMask[l_1, next] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      
                      // -- Check definedness of acc(Q(l.next), write)
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.next (issue012.vpr@22.7--22.51) [216362]"}
                          HasDirectPerm(WandDefRHSMask, l_1, next);
                      perm := FullPerm;
                      WandDefRHSMask := WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next]):=WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next])] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_5Mask[null, wand_1(true, l_1, FullPerm, l_1)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction true --* acc(l.next, write) && acc(Q(l.next), write) might be negative. (issue012.vpr@22.7--22.51) [216363]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, wand_1(true, l_1, FullPerm, l_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_1(true, l_1, FullPerm, l_1):=Used_5Mask[null, wand_1(true, l_1, FullPerm, l_1)] + takeTransfer];
                  b_11 := b_11 && state(Used_5Heap, Used_5Mask);
                  Ops_3Mask := Ops_3Mask[null, wand_1(true, l_1, FullPerm, l_1):=Ops_3Mask[null, wand_1(true, l_1, FullPerm, l_1)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_1(true, l_1, FullPerm, l_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_5Mask := Used_5Mask[null, wand_1(true, l_1, FullPerm, l_1):=Used_5Mask[null, wand_1(true, l_1, FullPerm, l_1)] + takeTransfer];
                  b_11 := b_11 && state(Used_5Heap, Used_5Mask);
                  Mask := Mask[null, wand_1(true, l_1, FullPerm, l_1):=Mask[null, wand_1(true, l_1, FullPerm, l_1)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue012.vpr@22.7--22.51) [216364]"}
              b_10 && b_11 ==> neededTransfer == 0.000000000 && Used_5Mask[null, wand_1(true, l_1, FullPerm, l_1)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_12 := b_10 && b_11;
              b_12 := b_12 && state(Result_4Heap, Result_4Mask);
              b_12 := b_12 && sumMask(Result_4Mask, Ops_3Mask, Used_5Mask);
              b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_4Heap, Used_5Mask);
              b_12 := b_12 && state(Result_4Heap, Result_4Mask);
            b_10 := b_10 && b_12;
          b_10 := b_10 && b_11;
          b_10 := b_10 && Used_5Heap == Ops_3Heap;
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_3Heap;
          ExhaleWellDef0Mask := Ops_3Mask;
          havoc Used_6Heap;
          Used_6Mask := ZeroMask;
          b_13 := b_13 && state(Used_6Heap, Used_6Mask);
          b_10 := b_10 && b_13;
          b_10 := b_10 && Used_6Heap == Ops_3Heap;
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_10 := b_10 && l_1 != null;
          Ops_3Mask := Ops_3Mask[l_1, next:=Ops_3Mask[l_1, next] + perm];
          b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
          perm := FullPerm;
          b_10 := b_10;
          Ops_3Mask := Ops_3Mask[null, Q(Ops_3Heap[l_1, next]):=Ops_3Mask[null, Q(Ops_3Heap[l_1, next])] + perm];
          b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
          b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
        Ops_3Heap := ExhaleHeap;
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_10) {
      
      // -- Translating statement: unfold acc(Q(l.next), write) -- issue012.vpr@23.7--23.28
        if (b_10) {
          
          // -- Check definedness of acc(Q(l.next), write)
            assert {:msg "  Unfolding Q(l.next) might fail. There might be insufficient permission to access l.next (issue012.vpr@23.7--23.28) [216368]"}
              HasDirectPerm(Ops_3Mask, l_1, next);
        }
        assume Q#trigger(Ops_3Heap, Q(Ops_3Heap[l_1, next]));
        assume Ops_3Heap[null, Q(Ops_3Heap[l_1, next])] == FrameFragment(Ops_3Heap[Ops_3Heap[l_1, next], next]);
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_14 := b_14 && state(Used_7Heap, Used_7Mask);
        
        // -- Transfer of acc(Q(l.next), write)
          
          // -- checking if access predicate defined in used state
            if (b_10 && b_14) {
              if (b_10) {
                
                // -- Check definedness of acc(Q(l.next), write)
                  assert {:msg "  Unfolding Q(l.next) might fail. There might be insufficient permission to access l.next (issue012.vpr@23.7--23.28) [216370]"}
                    HasDirectPerm(Ops_3Mask, l_1, next);
              }
            }
          arg_2_13 := Ops_3Heap[l_1, next];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_7Mask[null, Q(arg_2_13)] + neededTransfer;
          assert {:msg "  Unfolding Q(l.next) might fail. Fraction acc(Q(l.next), write) might be negative. (issue012.vpr@23.7--23.28) [216371]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, Q(arg_2_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, Q(arg_2_13):=Used_7Mask[null, Q(arg_2_13)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, Q(arg_2_13):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, Q(arg_2_13):=Ops_3Mask[null, Q(arg_2_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Q(arg_2_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, Q(arg_2_13):=Used_7Mask[null, Q(arg_2_13)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, Q(arg_2_13):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                Mask := Mask[null, Q(arg_2_13):=Mask[null, Q(arg_2_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
                  { newPMask[o_40, f_52] }
                  Heap[null, wand_2#sm(true, l_1, FullPerm, l_1, FullPerm)][o_40, f_52] || Heap[null, Q#sm(Heap[l_1, next])][o_40, f_52] ==> newPMask[o_40, f_52]
                );
                Heap := Heap[null, wand_2#sm(true, l_1, FullPerm, l_1, FullPerm):=newPMask];
              }
            }
          assert {:msg "  Unfolding Q(l.next) might fail. There might be insufficient permission to access Q(l.next) (issue012.vpr@23.7--23.28) [216372]"}
            b_10 && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[null, Q(arg_2_13)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_15 := b_10 && b_14;
            b_15 := b_15 && state(Result_5Heap, Result_5Mask);
            b_15 := b_15 && sumMask(Result_5Mask, Ops_3Mask, Used_7Mask);
            b_15 := (b_15 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_5Heap, Used_7Mask);
            b_15 := b_15 && state(Result_5Heap, Result_5Mask);
          b_10 := b_10 && b_15;
        b_10 := b_10 && b_14;
        b_10 := b_10 && Used_7Heap == Ops_3Heap;
        perm := FullPerm;
        b_10 := b_10 && Ops_3Heap[l_1, next] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[l_1, next], next:=Ops_3Mask[Ops_3Heap[l_1, next], next] + perm];
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(l.next, write) && acc(l.next.next, write)
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_16 := b_16 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(l.next, write)
      rcvLocal := l_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[rcvLocal, next] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.next, write) might be negative. (issue012.vpr@21.3--24.4) [216374]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, next:=Used_8Mask[rcvLocal, next] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            b_16 := b_16 && Ops_3Heap[rcvLocal, next] == Used_8Heap[rcvLocal, next];
            Ops_3Mask := Ops_3Mask[rcvLocal, next:=Ops_3Mask[rcvLocal, next] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, next:=Used_8Mask[rcvLocal, next] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            b_16 := b_16 && Heap[rcvLocal, next] == Used_8Heap[rcvLocal, next];
            Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, l_1, FullPerm, l_1, FullPerm):=Heap[null, wand_2#sm(true, l_1, FullPerm, l_1, FullPerm)][l_1, next:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.next (issue012.vpr@21.3--24.4) [216375]"}
        (b_10 && b_10) && b_16 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, next] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_17 := b_10 && b_16;
        b_17 := b_17 && state(Result_6Heap, Result_6Mask);
        b_17 := b_17 && sumMask(Result_6Mask, Ops_3Mask, Used_8Mask);
        b_17 := (b_17 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_6Heap, Used_8Mask);
        b_17 := b_17 && state(Result_6Heap, Result_6Mask);
      b_10 := b_10 && b_17;
    
    // -- Transfer of acc(l.next.next, write)
      
      // -- checking if access predicate defined in used state
        if ((b_10 && b_10) && b_16) {
          if (b_10) {
            
            // -- Check definedness of acc(l.next.next, write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.next (issue012.vpr@21.3--24.4) [216376]"}
                HasDirectPerm(Result_6Mask, l_1, next);
          }
        }
      rcvLocal := Result_6Heap[l_1, next];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[rcvLocal, next] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.next.next, write) might be negative. (issue012.vpr@21.3--24.4) [216377]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, next:=Used_8Mask[rcvLocal, next] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            b_16 := b_16 && Ops_3Heap[rcvLocal, next] == Used_8Heap[rcvLocal, next];
            Ops_3Mask := Ops_3Mask[rcvLocal, next:=Ops_3Mask[rcvLocal, next] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, next:=Used_8Mask[rcvLocal, next] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            b_16 := b_16 && Heap[rcvLocal, next] == Used_8Heap[rcvLocal, next];
            Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, l_1, FullPerm, l_1, FullPerm):=Heap[null, wand_2#sm(true, l_1, FullPerm, l_1, FullPerm)][Heap[l_1, next], next:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.next.next (issue012.vpr@21.3--24.4) [216378]"}
        (b_10 && b_10) && b_16 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, next] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_18 := b_10 && b_16;
        b_18 := b_18 && state(Result_7Heap, Result_7Mask);
        b_18 := b_18 && sumMask(Result_7Mask, Ops_3Mask, Used_8Mask);
        b_18 := (b_18 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_7Heap, Used_8Mask);
        b_18 := b_18 && state(Result_7Heap, Result_7Mask);
      b_10 := b_10 && b_18;
    Mask := Mask[null, wand_2(true, l_1, FullPerm, l_1, FullPerm):=Mask[null, wand_2(true, l_1, FullPerm, l_1, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(l_1: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_20: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_19: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_21: bool;
  var arg_3_13: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_22: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_23: bool;
  var Labellhs12Heap: HeapType;
  var Labellhs12Mask: MaskType;
  var b_24_1: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_25_1: bool;
  var rcvLocal: Ref;
  var b_26_1: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var b_27_1: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_28_1: bool;
  var b_29_1: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var arg_4_13: Ref;
  var b_30_1: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_1, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(l.next, write) && acc(l.next.next, write) --* acc(l.next, write) && acc(Q(l.next), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume l_1 != null;
        WandDefLHSMask := WandDefLHSMask[l_1, next:=WandDefLHSMask[l_1, next] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of acc(l.next.next, write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l.next (issue012.vpr@28.12--28.77) [216379]"}
            HasDirectPerm(WandDefLHSMask, l_1, next);
        perm := FullPerm;
        assume WandDefLHSHeap[l_1, next] != null;
        WandDefLHSMask := WandDefLHSMask[WandDefLHSHeap[l_1, next], next:=WandDefLHSMask[WandDefLHSHeap[l_1, next], next] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs8 -- issue012.vpr@28.12--28.77
          lhs8:
          Labellhs8Heap := WandDefLHSHeap;
          Labellhs8Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume l_1 != null;
        WandDefRHSMask := WandDefRHSMask[l_1, next:=WandDefRHSMask[l_1, next] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(Q(l.next), write)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l.next (issue012.vpr@28.12--28.77) [216380]"}
            HasDirectPerm(WandDefRHSMask, l_1, next);
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next]):=WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next])] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1):=Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(P(l), write) --* acc(l.next, write) && acc(Q(l.next), write) {
  //   unfold acc(P(l), write)
  //   apply acc(l.next, write) && acc(l.next.next, write) --*
  //     acc(l.next, write) && acc(Q(l.next), write)
  // } -- issue012.vpr@30.3--33.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_19 := b_19 && state(Used_9Heap, Used_9Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_20) {
      perm := FullPerm;
      b_20 := b_20;
      Ops_5Mask := Ops_5Mask[null, P(l_1):=Ops_5Mask[null, P(l_1)] + perm];
      b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    }
    b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs9 -- issue012.vpr@30.11--30.56
      lhs9:
      Labellhs9Heap := Ops_5Heap;
      Labellhs9Mask := Ops_5Mask;
      b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_20) {
      
      // -- Translating statement: unfold acc(P(l), write) -- issue012.vpr@31.7--31.18
        assume P#trigger(Ops_5Heap, P(l_1));
        assume Ops_5Heap[null, P(l_1)] == CombineFrames(FrameFragment(Ops_5Heap[l_1, next]), FrameFragment(Ops_5Heap[Ops_5Heap[l_1, next], next]));
        ExhaleWellDef0Heap := Ops_5Heap;
        ExhaleWellDef0Mask := Ops_5Mask;
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_21 := b_21 && state(Used_10Heap, Used_10Mask);
        
        // -- Transfer of acc(P(l), write)
          arg_3_13 := l_1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[null, P(arg_3_13)] + neededTransfer;
          assert {:msg "  Unfolding P(l) might fail. Fraction acc(P(l), write) might be negative. (issue012.vpr@31.7--31.18) [216382]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_20 && b_21) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, P(arg_3_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[null, P(arg_3_13):=Used_10Mask[null, P(arg_3_13)] + takeTransfer];
                b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                TempMask := ZeroMask[null, P(arg_3_13):=FullPerm];
                b_21 := b_21 && IdenticalOnKnownLocations(Ops_5Heap, Used_10Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, P(arg_3_13):=Ops_5Mask[null, P(arg_3_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_20 && b_21) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_3_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[null, P(arg_3_13):=Used_10Mask[null, P(arg_3_13)] + takeTransfer];
                b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                TempMask := ZeroMask[null, P(arg_3_13):=FullPerm];
                b_21 := b_21 && IdenticalOnKnownLocations(Heap, Used_10Heap, TempMask);
                Mask := Mask[null, P(arg_3_13):=Mask[null, P(arg_3_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                  { newPMask[o_42, f_55] }
                  Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][o_42, f_55] || Heap[null, P#sm(l_1)][o_42, f_55] ==> newPMask[o_42, f_55]
                );
                Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(l) might fail. There might be insufficient permission to access P(l) (issue012.vpr@31.7--31.18) [216383]"}
            b_20 && b_21 ==> neededTransfer == 0.000000000 && Used_10Mask[null, P(arg_3_13)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_22 := b_20 && b_21;
            b_22 := b_22 && state(Result_8Heap, Result_8Mask);
            b_22 := b_22 && sumMask(Result_8Mask, Ops_5Mask, Used_10Mask);
            b_22 := (b_22 && IdenticalOnKnownLocations(Ops_5Heap, Result_8Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_8Heap, Used_10Mask);
            b_22 := b_22 && state(Result_8Heap, Result_8Mask);
          b_20 := b_20 && b_22;
        b_20 := b_20 && b_21;
        b_20 := b_20 && Used_10Heap == Ops_5Heap;
        perm := FullPerm;
        b_20 := b_20 && l_1 != null;
        Ops_5Mask := Ops_5Mask[l_1, next:=Ops_5Mask[l_1, next] + perm];
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
        perm := FullPerm;
        b_20 := b_20 && Ops_5Heap[l_1, next] != null;
        Ops_5Mask := Ops_5Mask[Ops_5Heap[l_1, next], next:=Ops_5Mask[Ops_5Heap[l_1, next], next] + perm];
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    }
    if (b_20) {
      
      // -- Translating statement: apply acc(l.next, write) && acc(l.next.next, write) --*
  //   acc(l.next, write) && acc(Q(l.next), write) -- issue012.vpr@32.7--32.78
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_5Heap;
          ExhaleWellDef0Mask := Ops_5Mask;
          havoc Used_11Heap;
          Used_11Mask := ZeroMask;
          b_23 := b_23 && state(Used_11Heap, Used_11Mask);
          
          // -- Transfer of acc(l.next, write) && acc(l.next.next, write) --* acc(l.next, write) && acc(Q(l.next), write)
            
            // -- checking if access predicate defined in used state
              if (b_20 && b_23) {
                if (b_20) {
                  
                  // -- Check definedness of acc(l.next, write) && acc(l.next.next, write) --* acc(l.next, write) && acc(Q(l.next), write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      assume l_1 != null;
                      WandDefLHSMask := WandDefLHSMask[l_1, next:=WandDefLHSMask[l_1, next] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Check definedness of acc(l.next.next, write)
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.next (issue012.vpr@32.7--32.78) [216386]"}
                          HasDirectPerm(WandDefLHSMask, l_1, next);
                      perm := FullPerm;
                      assume WandDefLHSHeap[l_1, next] != null;
                      WandDefLHSMask := WandDefLHSMask[WandDefLHSHeap[l_1, next], next:=WandDefLHSMask[WandDefLHSHeap[l_1, next], next] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs12 -- issue012.vpr@32.13--32.78
                        lhs12:
                        Labellhs12Heap := WandDefLHSHeap;
                        Labellhs12Mask := WandDefLHSMask;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      assume l_1 != null;
                      WandDefRHSMask := WandDefRHSMask[l_1, next:=WandDefRHSMask[l_1, next] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      
                      // -- Check definedness of acc(Q(l.next), write)
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.next (issue012.vpr@32.7--32.78) [216387]"}
                          HasDirectPerm(WandDefRHSMask, l_1, next);
                      perm := FullPerm;
                      WandDefRHSMask := WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next]):=WandDefRHSMask[null, Q(WandDefRHSHeap[l_1, next])] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_11Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(l.next, write) && acc(l.next.next, write) --* acc(l.next, write) && acc(Q(l.next), write) might be negative. (issue012.vpr@32.7--32.78) [216388]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_20 && b_23) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_5Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_11Mask := Used_11Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1):=Used_11Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)] + takeTransfer];
                  b_23 := b_23 && state(Used_11Heap, Used_11Mask);
                  Ops_5Mask := Ops_5Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1):=Ops_5Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_20 && b_23) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_11Mask := Used_11Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1):=Used_11Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)] + takeTransfer];
                  b_23 := b_23 && state(Used_11Heap, Used_11Mask);
                  Mask := Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1):=Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (issue012.vpr@32.7--32.78) [216389]"}
              b_20 && b_23 ==> neededTransfer == 0.000000000 && Used_11Mask[null, wand_3(l_1, FullPerm, l_1, FullPerm, l_1, FullPerm, l_1)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_24_1 := b_20 && b_23;
              b_24_1 := b_24_1 && state(Result_9Heap, Result_9Mask);
              b_24_1 := b_24_1 && sumMask(Result_9Mask, Ops_5Mask, Used_11Mask);
              b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_5Heap, Result_9Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_9Heap, Used_11Mask);
              b_24_1 := b_24_1 && state(Result_9Heap, Result_9Mask);
            b_20 := b_20 && b_24_1;
          b_20 := b_20 && b_23;
          b_20 := b_20 && Used_11Heap == Ops_5Heap;
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Ops_5Heap;
          ExhaleWellDef0Mask := Ops_5Mask;
          havoc Used_12Heap;
          Used_12Mask := ZeroMask;
          b_25_1 := b_25_1 && state(Used_12Heap, Used_12Mask);
          
          // -- Transfer of acc(l.next, write)
            rcvLocal := l_1;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_12Mask[rcvLocal, next] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(l.next, write) might be negative. (issue012.vpr@32.7--32.78) [216390]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_20 && b_25_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_5Mask[rcvLocal, next];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_12Mask := Used_12Mask[rcvLocal, next:=Used_12Mask[rcvLocal, next] + takeTransfer];
                  b_25_1 := b_25_1 && state(Used_12Heap, Used_12Mask);
                  b_25_1 := b_25_1 && Ops_5Heap[rcvLocal, next] == Used_12Heap[rcvLocal, next];
                  Ops_5Mask := Ops_5Mask[rcvLocal, next:=Ops_5Mask[rcvLocal, next] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_20 && b_25_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, next];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_12Mask := Used_12Mask[rcvLocal, next:=Used_12Mask[rcvLocal, next] + takeTransfer];
                  b_25_1 := b_25_1 && state(Used_12Heap, Used_12Mask);
                  b_25_1 := b_25_1 && Heap[rcvLocal, next] == Used_12Heap[rcvLocal, next];
                  Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                  Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][l_1, next:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.next (issue012.vpr@32.7--32.78) [216391]"}
              b_20 && b_25_1 ==> neededTransfer == 0.000000000 && Used_12Mask[rcvLocal, next] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_26_1 := b_20 && b_25_1;
              b_26_1 := b_26_1 && state(Result_10Heap, Result_10Mask);
              b_26_1 := b_26_1 && sumMask(Result_10Mask, Ops_5Mask, Used_12Mask);
              b_26_1 := (b_26_1 && IdenticalOnKnownLocations(Ops_5Heap, Result_10Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_10Heap, Used_12Mask);
              b_26_1 := b_26_1 && state(Result_10Heap, Result_10Mask);
            b_20 := b_20 && b_26_1;
          b_20 := b_20 && b_25_1;
          b_20 := b_20 && Used_12Heap == Ops_5Heap;
          
          // -- Transfer of acc(l.next.next, write)
            
            // -- checking if access predicate defined in used state
              if (b_20 && b_25_1) {
                if (b_20) {
                  
                  // -- Check definedness of acc(l.next.next, write)
                    assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.next (issue012.vpr@32.7--32.78) [216392]"}
                      HasDirectPerm(Result_10Mask, l_1, next);
                }
              }
            rcvLocal := Result_10Heap[l_1, next];
            neededTransfer := FullPerm;
            initNeededTransfer := Used_12Mask[rcvLocal, next] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(l.next.next, write) might be negative. (issue012.vpr@32.7--32.78) [216393]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_20 && b_25_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_5Mask[rcvLocal, next];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_12Mask := Used_12Mask[rcvLocal, next:=Used_12Mask[rcvLocal, next] + takeTransfer];
                  b_25_1 := b_25_1 && state(Used_12Heap, Used_12Mask);
                  b_25_1 := b_25_1 && Ops_5Heap[rcvLocal, next] == Used_12Heap[rcvLocal, next];
                  Ops_5Mask := Ops_5Mask[rcvLocal, next:=Ops_5Mask[rcvLocal, next] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_20 && b_25_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, next];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_12Mask := Used_12Mask[rcvLocal, next:=Used_12Mask[rcvLocal, next] + takeTransfer];
                  b_25_1 := b_25_1 && state(Used_12Heap, Used_12Mask);
                  b_25_1 := b_25_1 && Heap[rcvLocal, next] == Used_12Heap[rcvLocal, next];
                  Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                  Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][Heap[l_1, next], next:=true]];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access l.next.next (issue012.vpr@32.7--32.78) [216394]"}
              b_20 && b_25_1 ==> neededTransfer == 0.000000000 && Used_12Mask[rcvLocal, next] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_27_1 := b_20 && b_25_1;
              b_27_1 := b_27_1 && state(Result_11Heap, Result_11Mask);
              b_27_1 := b_27_1 && sumMask(Result_11Mask, Ops_5Mask, Used_12Mask);
              b_27_1 := (b_27_1 && IdenticalOnKnownLocations(Ops_5Heap, Result_11Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_11Heap, Used_12Mask);
              b_27_1 := b_27_1 && state(Result_11Heap, Result_11Mask);
            b_20 := b_20 && b_27_1;
          b_20 := b_20 && b_25_1;
          b_20 := b_20 && Used_12Heap == Ops_5Heap;
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_20 := b_20 && l_1 != null;
          Ops_5Mask := Ops_5Mask[l_1, next:=Ops_5Mask[l_1, next] + perm];
          b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
          perm := FullPerm;
          b_20 := b_20;
          Ops_5Mask := Ops_5Mask[null, Q(Ops_5Heap[l_1, next]):=Ops_5Mask[null, Q(Ops_5Heap[l_1, next])] + perm];
          b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
          b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_5Heap, ExhaleHeap, Ops_5Mask);
        Ops_5Heap := ExhaleHeap;
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
        b_20 := b_20 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(l.next, write) && acc(Q(l.next), write)
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_28_1 := b_28_1 && state(Used_13Heap, Used_13Mask);
    
    // -- Transfer of acc(l.next, write)
      rcvLocal := l_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_13Mask[rcvLocal, next] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(l.next, write) might be negative. (issue012.vpr@30.3--33.4) [216397]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_28_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, next:=Used_13Mask[rcvLocal, next] + takeTransfer];
            b_28_1 := b_28_1 && state(Used_13Heap, Used_13Mask);
            b_28_1 := b_28_1 && Ops_5Heap[rcvLocal, next] == Used_13Heap[rcvLocal, next];
            Ops_5Mask := Ops_5Mask[rcvLocal, next:=Ops_5Mask[rcvLocal, next] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_28_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[rcvLocal, next:=Used_13Mask[rcvLocal, next] + takeTransfer];
            b_28_1 := b_28_1 && state(Used_13Heap, Used_13Mask);
            b_28_1 := b_28_1 && Heap[rcvLocal, next] == Used_13Heap[rcvLocal, next];
            Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
            Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][l_1, next:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.next (issue012.vpr@30.3--33.4) [216398]"}
        (b_20 && b_20) && b_28_1 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, next] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_29_1 := b_20 && b_28_1;
        b_29_1 := b_29_1 && state(Result_12Heap, Result_12Mask);
        b_29_1 := b_29_1 && sumMask(Result_12Mask, Ops_5Mask, Used_13Mask);
        b_29_1 := (b_29_1 && IdenticalOnKnownLocations(Ops_5Heap, Result_12Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_12Heap, Used_13Mask);
        b_29_1 := b_29_1 && state(Result_12Heap, Result_12Mask);
      b_20 := b_20 && b_29_1;
    
    // -- Transfer of acc(Q(l.next), write)
      
      // -- checking if access predicate defined in used state
        if ((b_20 && b_20) && b_28_1) {
          if (b_20) {
            
            // -- Check definedness of acc(Q(l.next), write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access l.next (issue012.vpr@30.3--33.4) [216399]"}
                HasDirectPerm(Result_12Mask, l_1, next);
          }
        }
      arg_4_13 := Result_12Heap[l_1, next];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_13Mask[null, Q(arg_4_13)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(l.next), write) might be negative. (issue012.vpr@30.3--33.4) [216400]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_28_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, Q(arg_4_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[null, Q(arg_4_13):=Used_13Mask[null, Q(arg_4_13)] + takeTransfer];
            b_28_1 := b_28_1 && state(Used_13Heap, Used_13Mask);
            TempMask := ZeroMask[null, Q(arg_4_13):=FullPerm];
            b_28_1 := b_28_1 && IdenticalOnKnownLocations(Ops_5Heap, Used_13Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, Q(arg_4_13):=Ops_5Mask[null, Q(arg_4_13)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_28_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_4_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_13Mask := Used_13Mask[null, Q(arg_4_13):=Used_13Mask[null, Q(arg_4_13)] + takeTransfer];
            b_28_1 := b_28_1 && state(Used_13Heap, Used_13Mask);
            TempMask := ZeroMask[null, Q(arg_4_13):=FullPerm];
            b_28_1 := b_28_1 && IdenticalOnKnownLocations(Heap, Used_13Heap, TempMask);
            Mask := Mask[null, Q(arg_4_13):=Mask[null, Q(arg_4_13)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
              { newPMask[o_46, f_60] }
              Heap[null, wand#sm(l_1, l_1, FullPerm, l_1)][o_46, f_60] || Heap[null, Q#sm(Heap[l_1, next])][o_46, f_60] ==> newPMask[o_46, f_60]
            );
            Heap := Heap[null, wand#sm(l_1, l_1, FullPerm, l_1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(l.next) (issue012.vpr@30.3--33.4) [216401]"}
        (b_20 && b_20) && b_28_1 ==> neededTransfer == 0.000000000 && Used_13Mask[null, Q(arg_4_13)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_30_1 := b_20 && b_28_1;
        b_30_1 := b_30_1 && state(Result_13Heap, Result_13Mask);
        b_30_1 := b_30_1 && sumMask(Result_13Mask, Ops_5Mask, Used_13Mask);
        b_30_1 := (b_30_1 && IdenticalOnKnownLocations(Ops_5Heap, Result_13Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_13Heap, Used_13Mask);
        b_30_1 := b_30_1 && state(Result_13Heap, Result_13Mask);
      b_20 := b_20 && b_30_1;
    Mask := Mask[null, wand(l_1, l_1, FullPerm, l_1):=Mask[null, wand(l_1, l_1, FullPerm, l_1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}