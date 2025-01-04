// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:54:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/conditionals1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/conditionals1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_80: Ref, f_192: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_80, f_192] }
  Heap[o_80, $allocated] ==> Heap[Heap[o_80, f_192], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_83: Ref, f_193: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_83, f_193] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_83, f_193) ==> Heap[o_83, f_193] == ExhaleHeap[o_83, f_193]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_46), ExhaleHeap[null, PredicateMaskField(pm_f_46)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsPredicateField(pm_f_46) ==> Heap[null, PredicateMaskField(pm_f_46)] == ExhaleHeap[null, PredicateMaskField(pm_f_46)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_46) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsPredicateField(pm_f_46) ==> (forall <A, B> o2_46: Ref, f_193: (Field A B) ::
    { ExhaleHeap[o2_46, f_193] }
    Heap[null, PredicateMaskField(pm_f_46)][o2_46, f_193] ==> Heap[o2_46, f_193] == ExhaleHeap[o2_46, f_193]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_46), ExhaleHeap[null, WandMaskField(pm_f_46)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsWandField(pm_f_46) ==> Heap[null, WandMaskField(pm_f_46)] == ExhaleHeap[null, WandMaskField(pm_f_46)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_46) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsWandField(pm_f_46) ==> (forall <A, B> o2_46: Ref, f_193: (Field A B) ::
    { ExhaleHeap[o2_46, f_193] }
    Heap[null, WandMaskField(pm_f_46)][o2_46, f_193] ==> Heap[o2_46, f_193] == ExhaleHeap[o2_46, f_193]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_83: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_83, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_83, $allocated] ==> ExhaleHeap[o_83, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_80: Ref, f_57: (Field A B), v: B ::
  { Heap[o_80, f_57:=v] }
  succHeap(Heap, Heap[o_80, f_57:=v])
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
// - height 0: get
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
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_5;
function  wand_5(arg1: bool, arg2: bool, arg3: Ref, arg4: Ref): Field WandType_wand_5 int;
function  wand_5#sm(arg1: bool, arg2: bool, arg3: Ref, arg4: Ref): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: bool, arg2: bool, arg3: Ref, arg4: Ref): Field WandType_wand_5 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_5(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_5(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4)) }
  wand_5#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_5(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4)) == 5
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref, arg1_2: bool, arg2_2: bool, arg3_2: Ref, arg4_2: Ref ::
  { wand_5(arg1, arg2, arg3, arg4), wand_5(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_5(arg1, arg2, arg3, arg4) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_4;
function  wand_4(arg1: bool, arg2: bool, arg3: Ref, arg4: Ref): Field WandType_wand_4 int;
function  wand_4#sm(arg1: bool, arg2: bool, arg3: Ref, arg4: Ref): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: bool, arg2: bool, arg3: Ref, arg4: Ref): Field WandType_wand_4 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_4(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_4(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4)) }
  wand_4#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref ::
  { wand_4(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4)) == 6
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Ref, arg1_2: bool, arg2_2: bool, arg3_2: Ref, arg4_2: Ref ::
  { wand_4(arg1, arg2, arg3, arg4), wand_4(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_4(arg1, arg2, arg3, arg4) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: bool, arg3: bool, arg4: Ref): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: bool, arg3: bool, arg4: Ref): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: bool, arg3: bool, arg4: Ref): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: Ref ::
  { wand_2(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: Ref ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: Ref ::
  { wand_2(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: Ref ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: Ref ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4)) }
  wand_2#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: Ref ::
  { wand_2(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4)) == 7
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: Ref, arg1_2: bool, arg2_2: bool, arg3_2: bool, arg4_2: Ref ::
  { wand_2(arg1, arg2, arg3, arg4), wand_2(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_2(arg1, arg2, arg3, arg4) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: bool, arg3: Ref, arg4: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: bool, arg3: Ref, arg4: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: bool, arg3: Ref, arg4: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: bool ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: bool ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: bool ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 8
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: bool, arg1_2: bool, arg2_2: bool, arg3_2: Ref, arg4_2: bool ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_3;
function  wand_3(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 9
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg5: bool, arg6: Ref, arg7: Perm, arg1_2: bool, arg2_2: bool, arg3_2: Ref, arg4_2: Perm, arg5_2: bool, arg6_2: Ref, arg7_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand_6;
function  wand_6(arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref): Field WandType_wand_6 int;
function  wand_6#sm(arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref): Field WandType_wand_6 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref ::
  { wand_6(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_6(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref ::
  { wand_6#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_6#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref ::
  { wand_6(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_6(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref ::
  { wand_6#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_6#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref ::
  { WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_6#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref ::
  { wand_6(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_6(arg1, arg2, arg3, arg4, arg5)) == 10
);
axiom (forall arg1: Ref, arg2: Ref, arg3: bool, arg4: Ref, arg5: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: bool, arg4_2: Ref, arg5_2: Ref ::
  { wand_6(arg1, arg2, arg3, arg4, arg5), wand_6(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_6(arg1, arg2, arg3, arg4, arg5) == wand_6(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
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
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, x: Ref, i: int): bool;
function  get'(Heap: HeapType, x: Ref, i: int): bool;
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { get(Heap, x, i) }
  get(Heap, x, i) == get'(Heap, x, i) && dummyFunction(get#triggerStateless(x, i))
);
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { get'(Heap, x, i) }
  dummyFunction(get#triggerStateless(x, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, i: int ::
  { state(Heap, Mask), get(Heap, x, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, x, i) == (i != 0)
);

// Framing axioms
function  get#frame(frame: FrameType, x: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, i: int ::
  { state(Heap, Mask), get'(Heap, x, i) }
  state(Heap, Mask) ==> get'(Heap, x, i) == get#frame(EmptyFrame, x, i)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, x: Ref, i: int): bool;

// State-independent trigger function
function  get#triggerStateless(x: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure get#definedness(x: Ref, i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := i != 0;
}

// ==================================================
// Translation of predicate M
// ==================================================

type PredicateType_M;
function  M_2(x: Ref): Field PredicateType_M FrameType;
function  M#sm(x: Ref): Field PredicateType_M PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(M_2(x)) }
  PredicateMaskField(M_2(x)) == M#sm(x)
);
axiom (forall x: Ref ::
  { M_2(x) }
  IsPredicateField(M_2(x))
);
axiom (forall x: Ref ::
  { M_2(x) }
  getPredWandId(M_2(x)) == 0
);
function  M#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  M#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { M_2(x), M_2(x2) }
  M_2(x) == M_2(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { M#sm(x), M#sm(x2) }
  M#sm(x) == M#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { M#trigger(Heap, M_2(x)) }
  M#everUsed(M_2(x))
);

procedure M#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of M
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate B
// ==================================================

type PredicateType_B;
function  B_1(x: Ref): Field PredicateType_B FrameType;
function  B#sm(x: Ref): Field PredicateType_B PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(B_1(x)) }
  PredicateMaskField(B_1(x)) == B#sm(x)
);
axiom (forall x: Ref ::
  { B_1(x) }
  IsPredicateField(B_1(x))
);
axiom (forall x: Ref ::
  { B_1(x) }
  getPredWandId(B_1(x)) == 1
);
function  B#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  B#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { B_1(x), B_1(x2) }
  B_1(x) == B_1(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { B#sm(x), B#sm(x2) }
  B#sm(x) == B#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { B#trigger(Heap, B_1(x)) }
  B#everUsed(B_1(x))
);

procedure B#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of B
    
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
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate T
// ==================================================

type PredicateType_T;
function  T_1(x: Ref): Field PredicateType_T FrameType;
function  T#sm(x: Ref): Field PredicateType_T PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(T_1(x)) }
  PredicateMaskField(T_1(x)) == T#sm(x)
);
axiom (forall x: Ref ::
  { T_1(x) }
  IsPredicateField(T_1(x))
);
axiom (forall x: Ref ::
  { T_1(x) }
  getPredWandId(T_1(x)) == 2
);
function  T#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  T#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { T_1(x), T_1(x2) }
  T_1(x) == T_1(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { T#sm(x), T#sm(x2) }
  T#sm(x) == T#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { T#trigger(Heap, T_1(x)) }
  T#everUsed(T_1(x))
);

procedure T#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of T
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate E
// ==================================================

type PredicateType_E;
function  E(x: Ref): Field PredicateType_E FrameType;
function  E#sm(x: Ref): Field PredicateType_E PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(E(x)) }
  PredicateMaskField(E(x)) == E#sm(x)
);
axiom (forall x: Ref ::
  { E(x) }
  IsPredicateField(E(x))
);
axiom (forall x: Ref ::
  { E(x) }
  getPredWandId(E(x)) == 3
);
function  E#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  E#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { E(x), E(x2) }
  E(x) == E(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { E#sm(x), E#sm(x2) }
  E#sm(x) == E#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { E#trigger(Heap, E(x)) }
  E#everUsed(E(x))
);

procedure E#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of E
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test15
// ==================================================

procedure test15(x: Ref, b_24: bool) returns ()
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
  
  // -- Translating statement: package acc(x.f, (b ? write : none)) --* acc(x.g, write) {
  // } -- conditionals1.vpr@16.3--16.50
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := (if b_24 then FullPerm else NoPerm);
      assert {:msg "  Packaging wand might fail. Fraction (b ? write : none) might be negative. (conditionals1.vpr@16.3--16.50) [124120]"}
        perm >= NoPerm;
      b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
      Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- conditionals1.vpr@16.11--16.50
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.g, write)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (conditionals1.vpr@16.3--16.50) [124121]"}
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
            Heap := Heap[null, wand#sm(x, (if b_24 then FullPerm else NoPerm), x, FullPerm):=Heap[null, wand#sm(x, (if b_24 then FullPerm else NoPerm), x, FullPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals1.vpr@16.3--16.50) [124122]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    Mask := Mask[null, wand(x, (if b_24 then FullPerm else NoPerm), x, FullPerm):=Mask[null, wand(x, (if b_24 then FullPerm else NoPerm), x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01a
// ==================================================

procedure test01a(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
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
    perm := FullPerm;
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* (i == 0 ? acc(M(x), write) : true) {
  // } -- conditionals1.vpr@26.3--26.47
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      b_5 := b_5;
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- conditionals1.vpr@26.11--26.47
      lhs3:
      Labellhs3Mask := Ops_3Mask;
      Labellhs3Heap := Ops_3Heap;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(M(x), write) : true)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    if (b_5 && b_5) {
      if (i == 0) {
        
        // -- Transfer of acc(M(x), write)
          arg_1 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_3Mask[null, M_2(arg_1)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), write) might be negative. (conditionals1.vpr@26.3--26.47) [124123]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, M_2(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[null, M_2(arg_1):=Used_3Mask[null, M_2(arg_1)] + takeTransfer];
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                TempMask := ZeroMask[null, M_2(arg_1):=FullPerm];
                b_6 := b_6 && IdenticalOnKnownLocations(Ops_3Heap, Used_3Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, M_2(arg_1):=Ops_3Mask[null, M_2(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_2(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[null, M_2(arg_1):=Used_3Mask[null, M_2(arg_1)] + takeTransfer];
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                TempMask := ZeroMask[null, M_2(arg_1):=FullPerm];
                b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                Mask := Mask[null, M_2(arg_1):=Mask[null, M_2(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand_1#sm(true, i == 0, x, true)][o_15, f_20] || Heap[null, M#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand_1#sm(true, i == 0, x, true):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@26.3--26.47) [124124]"}
            (b_5 && b_5) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, M_2(arg_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_7 := b_5 && b_6;
            b_7 := b_7 && state(Result_1Heap, Result_1Mask);
            b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
            b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
            b_7 := b_7 && state(Result_1Heap, Result_1Mask);
          b_5 := b_5 && b_7;
      }
    }
    Mask := Mask[null, wand_1(true, i == 0, x, true):=Mask[null, wand_1(true, i == 0, x, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true --* (i == 0 ? acc(M(x), write) : true) -- conditionals1.vpr@28.3--28.46
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of true --* (i == 0 ? acc(M(x), write) : true)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs5 -- conditionals1.vpr@28.10--28.46
          lhs5:
          Labellhs5Mask := WandDefLHSMask;
          Labellhs5Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        if (i == 0) {
          perm := FullPerm;
          WandDefRHSMask := WandDefRHSMask[null, M_2(x):=WandDefRHSMask[null, M_2(x)] + perm];
          assume state(WandDefRHSHeap, WandDefRHSMask);
        }
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (conditionals1.vpr@28.10--28.46) [124126]"}
      FullPerm <= AssertMask[null, wand_1(true, i == 0, x, true)];
    AssertMask := AssertMask[null, wand_1(true, i == 0, x, true):=AssertMask[null, wand_1(true, i == 0, x, true)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i != 0 ==> acc(M(x), write) -- conditionals1.vpr@29.3--29.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (i != 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@29.10--29.30) [124128]"}
          perm <= AssertMask[null, M_2(x)];
      }
      AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(M(x), write) -- conditionals1.vpr@32.3--32.19
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@32.10--32.19) [124130]"}
        perm <= AssertMask[null, M_2(x)];
    }
    AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01b
// ==================================================

procedure test01b(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var arg_1_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_11: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs8Mask: MaskType;
  var Labellhs8Heap: HeapType;
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
    perm := FullPerm;
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* (i == 0 ? true : acc(M(x), write)) {
  // } -- conditionals1.vpr@38.3--38.47
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      b_9 := b_9;
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs6 -- conditionals1.vpr@38.11--38.47
      lhs6:
      Labellhs6Mask := Ops_5Mask;
      Labellhs6Heap := Ops_5Heap;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operation(i == 0 ? true : acc(M(x), write))
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    if (b_9 && b_9) {
      if (i == 0) {
      } else {
        
        // -- Transfer of acc(M(x), write)
          arg_1_1 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_5Mask[null, M_2(arg_1_1)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), write) might be negative. (conditionals1.vpr@38.3--38.47) [124132]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, M_2(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[null, M_2(arg_1_1):=Used_5Mask[null, M_2(arg_1_1)] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                TempMask := ZeroMask[null, M_2(arg_1_1):=FullPerm];
                b_10 := b_10 && IdenticalOnKnownLocations(Ops_5Heap, Used_5Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, M_2(arg_1_1):=Ops_5Mask[null, M_2(arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_2(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[null, M_2(arg_1_1):=Used_5Mask[null, M_2(arg_1_1)] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                TempMask := ZeroMask[null, M_2(arg_1_1):=FullPerm];
                b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
                Mask := Mask[null, M_2(arg_1_1):=Mask[null, M_2(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Heap[null, wand_2#sm(true, i == 0, true, x)][o_16, f_21] || Heap[null, M#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Heap := Heap[null, wand_2#sm(true, i == 0, true, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@38.3--38.47) [124133]"}
            (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[null, M_2(arg_1_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_11 := b_9 && b_10;
            b_11 := b_11 && state(Result_2Heap, Result_2Mask);
            b_11 := b_11 && sumMask(Result_2Mask, Ops_5Mask, Used_5Mask);
            b_11 := (b_11 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_2Heap, Used_5Mask);
            b_11 := b_11 && state(Result_2Heap, Result_2Mask);
          b_9 := b_9 && b_11;
      }
    }
    Mask := Mask[null, wand_2(true, i == 0, true, x):=Mask[null, wand_2(true, i == 0, true, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true --* (i == 0 ? true : acc(M(x), write)) -- conditionals1.vpr@40.3--40.46
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of true --* (i == 0 ? true : acc(M(x), write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs8 -- conditionals1.vpr@40.10--40.46
          lhs8:
          Labellhs8Mask := WandDefLHSMask;
          Labellhs8Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        if (i == 0) {
        } else {
          perm := FullPerm;
          WandDefRHSMask := WandDefRHSMask[null, M_2(x):=WandDefRHSMask[null, M_2(x)] + perm];
          assume state(WandDefRHSHeap, WandDefRHSMask);
        }
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (conditionals1.vpr@40.10--40.46) [124134]"}
      FullPerm <= AssertMask[null, wand_2(true, i == 0, true, x)];
    AssertMask := AssertMask[null, wand_2(true, i == 0, true, x):=AssertMask[null, wand_2(true, i == 0, true, x)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i == 0 ==> acc(M(x), write) -- conditionals1.vpr@41.3--41.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@41.10--41.30) [124136]"}
          perm <= AssertMask[null, M_2(x)];
      }
      AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(M(x), write) -- conditionals1.vpr@44.3--44.19
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@44.10--44.19) [124138]"}
        perm <= AssertMask[null, M_2(x)];
    }
    AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_13: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_12: bool;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var arg_2: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_15: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var arg_3: Ref;
  var b_16: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
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
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* (b1 ==> acc(M(x), 1 / 2)) && (b2 ==> acc(M(x), 1 / 4)) {
  // } -- conditionals1.vpr@50.3--50.70
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_12 := b_12 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_13) {
      b_13 := b_13;
    }
    b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs9 -- conditionals1.vpr@50.11--50.70
      lhs9:
      Labellhs9Mask := Ops_7Mask;
      Labellhs9Heap := Ops_7Heap;
      b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operation(b1 ==> acc(M(x), 1 / 2)) && (b2 ==> acc(M(x), 1 / 4))
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_14 := b_14 && state(Used_7Heap, Used_7Mask);
    if (b_13 && b_13) {
      if (b1) {
        
        // -- Transfer of acc(M(x), 1 / 2)
          arg_2 := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_7Mask[null, M_2(arg_2)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), 1 / 2) might be negative. (conditionals1.vpr@50.3--50.70) [124139]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[null, M_2(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_2(arg_2):=Used_7Mask[null, M_2(arg_2)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_2(arg_2):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Ops_7Heap, Used_7Heap, TempMask);
                Ops_7Mask := Ops_7Mask[null, M_2(arg_2):=Ops_7Mask[null, M_2(arg_2)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_2(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_2(arg_2):=Used_7Mask[null, M_2(arg_2)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_2(arg_2):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                Mask := Mask[null, M_2(arg_2):=Mask[null, M_2(arg_2)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                  { newPMask[o_52, f_55] }
                  Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4)][o_52, f_55] || Heap[null, M#sm(x)][o_52, f_55] ==> newPMask[o_52, f_55]
                );
                Heap := Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@50.3--50.70) [124140]"}
            (b_13 && b_13) && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[null, M_2(arg_2)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_15 := b_13 && b_14;
            b_15 := b_15 && state(Result_3Heap, Result_3Mask);
            b_15 := b_15 && sumMask(Result_3Mask, Ops_7Mask, Used_7Mask);
            b_15 := (b_15 && IdenticalOnKnownLocations(Ops_7Heap, Result_3Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_3Heap, Used_7Mask);
            b_15 := b_15 && state(Result_3Heap, Result_3Mask);
          b_13 := b_13 && b_15;
      }
    }
    if (b_13 && b_13) {
      if (b2) {
        
        // -- Transfer of acc(M(x), 1 / 4)
          arg_3 := x;
          neededTransfer := 1 / 4;
          initNeededTransfer := Used_7Mask[null, M_2(arg_3)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), 1 / 4) might be negative. (conditionals1.vpr@50.3--50.70) [124141]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[null, M_2(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_2(arg_3):=Used_7Mask[null, M_2(arg_3)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_2(arg_3):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Ops_7Heap, Used_7Heap, TempMask);
                Ops_7Mask := Ops_7Mask[null, M_2(arg_3):=Ops_7Mask[null, M_2(arg_3)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_2(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_2(arg_3):=Used_7Mask[null, M_2(arg_3)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_2(arg_3):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                Mask := Mask[null, M_2(arg_3):=Mask[null, M_2(arg_3)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                  { newPMask[o_53, f_56] }
                  Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4)][o_53, f_56] || Heap[null, M#sm(x)][o_53, f_56] ==> newPMask[o_53, f_56]
                );
                Heap := Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@50.3--50.70) [124142]"}
            (b_13 && b_13) && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[null, M_2(arg_3)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_16 := b_13 && b_14;
            b_16 := b_16 && state(Result_4Heap, Result_4Mask);
            b_16 := b_16 && sumMask(Result_4Mask, Ops_7Mask, Used_7Mask);
            b_16 := (b_16 && IdenticalOnKnownLocations(Ops_7Heap, Result_4Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_4Heap, Used_7Mask);
            b_16 := b_16 && state(Result_4Heap, Result_4Mask);
          b_13 := b_13 && b_16;
      }
    }
    Mask := Mask[null, wand_3(true, b1, x, 1 / 2, b2, x, 1 / 4):=Mask[null, wand_3(true, b1, x, 1 / 2, b2, x, 1 / 4)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && b2 ==> acc(M(x), 1 / 4) -- conditionals1.vpr@52.3--52.37
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (b1 && b2) {
      perm := 1 / 4;
      assert {:msg "  Assert might fail. Fraction 1 / 4 might be negative. (conditionals1.vpr@52.10--52.37) [124143]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@52.10--52.37) [124144]"}
          perm <= AssertMask[null, M_2(x)];
      }
      AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && !b2 ==> acc(M(x), 1 / 2) -- conditionals1.vpr@53.3--53.38
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (b1 && !b2) {
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (conditionals1.vpr@53.10--53.38) [124145]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@53.10--53.38) [124146]"}
          perm <= AssertMask[null, M_2(x)];
      }
      AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && b2 ==> acc(M(x), 3 / 4) -- conditionals1.vpr@54.3--54.38
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (!b1 && b2) {
      perm := 3 / 4;
      assert {:msg "  Assert might fail. Fraction 3 / 4 might be negative. (conditionals1.vpr@54.10--54.38) [124147]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@54.10--54.38) [124148]"}
          perm <= AssertMask[null, M_2(x)];
      }
      AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && !b2 ==> acc(M(x), write) -- conditionals1.vpr@55.3--55.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (!b1 && !b2) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@55.10--55.34) [124150]"}
          perm <= AssertMask[null, M_2(x)];
      }
      AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test08
// ==================================================

procedure test08(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_18: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_17: bool;
  var Labellhs11Mask: MaskType;
  var Labellhs11Heap: HeapType;
  var boolCur_4: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_19: bool;
  var arg_4: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_20: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var arg_5: Ref;
  var b_21: bool;
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
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* (i == 0 ? acc(M(x), write) : acc(B(x), write)) {
  // } -- conditionals1.vpr@60.3--60.52
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_17 := b_17 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_18) {
      b_18 := b_18;
    }
    b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs11 -- conditionals1.vpr@60.11--60.52
      lhs11:
      Labellhs11Mask := Ops_9Mask;
      Labellhs11Heap := Ops_9Heap;
      b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(M(x), write) : acc(B(x), write))
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_19 := b_19 && state(Used_9Heap, Used_9Mask);
    if (b_18 && b_18) {
      if (i == 0) {
        
        // -- Transfer of acc(M(x), write)
          arg_4 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[null, M_2(arg_4)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), write) might be negative. (conditionals1.vpr@60.3--60.52) [124151]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[null, M_2(arg_4)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, M_2(arg_4):=Used_9Mask[null, M_2(arg_4)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, M_2(arg_4):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Ops_9Heap, Used_9Heap, TempMask);
                Ops_9Mask := Ops_9Mask[null, M_2(arg_4):=Ops_9Mask[null, M_2(arg_4)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_2(arg_4)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, M_2(arg_4):=Used_9Mask[null, M_2(arg_4)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, M_2(arg_4):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                Mask := Mask[null, M_2(arg_4):=Mask[null, M_2(arg_4)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                  { newPMask[o_26, f_29] }
                  Heap[null, wand_4#sm(true, i == 0, x, x)][o_26, f_29] || Heap[null, M#sm(x)][o_26, f_29] ==> newPMask[o_26, f_29]
                );
                Heap := Heap[null, wand_4#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@60.3--60.52) [124152]"}
            (b_18 && b_18) && b_19 ==> neededTransfer == 0.000000000 && Used_9Mask[null, M_2(arg_4)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_20 := b_18 && b_19;
            b_20 := b_20 && state(Result_5Heap, Result_5Mask);
            b_20 := b_20 && sumMask(Result_5Mask, Ops_9Mask, Used_9Mask);
            b_20 := (b_20 && IdenticalOnKnownLocations(Ops_9Heap, Result_5Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_5Heap, Used_9Mask);
            b_20 := b_20 && state(Result_5Heap, Result_5Mask);
          b_18 := b_18 && b_20;
      } else {
        
        // -- Transfer of acc(B(x), write)
          arg_5 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[null, B_1(arg_5)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@60.3--60.52) [124153]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[null, B_1(arg_5)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, B_1(arg_5):=Used_9Mask[null, B_1(arg_5)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, B_1(arg_5):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Ops_9Heap, Used_9Heap, TempMask);
                Ops_9Mask := Ops_9Mask[null, B_1(arg_5):=Ops_9Mask[null, B_1(arg_5)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, B_1(arg_5)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, B_1(arg_5):=Used_9Mask[null, B_1(arg_5)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, B_1(arg_5):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                Mask := Mask[null, B_1(arg_5):=Mask[null, B_1(arg_5)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o: Ref, f_85: (Field A B) ::
                  { newPMask[o, f_85] }
                  Heap[null, wand_4#sm(true, i == 0, x, x)][o, f_85] || Heap[null, B#sm(x)][o, f_85] ==> newPMask[o, f_85]
                );
                Heap := Heap[null, wand_4#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@60.3--60.52) [124154]"}
            (b_18 && b_18) && b_19 ==> neededTransfer == 0.000000000 && Used_9Mask[null, B_1(arg_5)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_21 := b_18 && b_19;
            b_21 := b_21 && state(Result_6Heap, Result_6Mask);
            b_21 := b_21 && sumMask(Result_6Mask, Ops_9Mask, Used_9Mask);
            b_21 := (b_21 && IdenticalOnKnownLocations(Ops_9Heap, Result_6Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_6Heap, Used_9Mask);
            b_21 := b_21 && state(Result_6Heap, Result_6Mask);
          b_18 := b_18 && b_21;
      }
    }
    Mask := Mask[null, wand_4(true, i == 0, x, x):=Mask[null, wand_4(true, i == 0, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* (i == 0 ? acc(M(x), write) : acc(B(x), write)) -- conditionals1.vpr@61.3--61.52
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@61.3--61.52) [124155]"}
        FullPerm <= Mask[null, wand_4(true, i == 0, x, x)];
      Mask := Mask[null, wand_4(true, i == 0, x, x):=Mask[null, wand_4(true, i == 0, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      if (i == 0) {
        perm := FullPerm;
        Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
        assume state(Heap, Mask);
      } else {
        perm := FullPerm;
        Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(M(x), write) && acc(B(x), write) -- conditionals1.vpr@63.3--63.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@63.10--63.32) [124160]"}
        perm <= AssertMask[null, M_2(x)];
    }
    AssertMask := AssertMask[null, M_2(x):=AssertMask[null, M_2(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@63.10--63.32) [124162]"}
        perm <= AssertMask[null, B_1(x)];
    }
    AssertMask := AssertMask[null, B_1(x):=AssertMask[null, B_1(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_23: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_22: bool;
  var Labellhs14Mask: MaskType;
  var Labellhs14Heap: HeapType;
  var boolCur_5: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_24_1: bool;
  var arg_6: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_25: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var arg_7: Ref;
  var b_26: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
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
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* (i == 0 ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@69.3--69.52
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_22 := b_22 && state(Used_10Heap, Used_10Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_23) {
      b_23 := b_23;
    }
    b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs14 -- conditionals1.vpr@69.11--69.52
      lhs14:
      Labellhs14Mask := Ops_11Mask;
      Labellhs14Heap := Ops_11Heap;
      b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(T(x), write) : acc(E(x), write))
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
    if (b_23 && b_23) {
      if (i == 0) {
        
        // -- Transfer of acc(T(x), write)
          arg_6 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_11Mask[null, T_1(arg_6)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@69.3--69.52) [124163]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[null, T_1(arg_6)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, T_1(arg_6):=Used_11Mask[null, T_1(arg_6)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, T_1(arg_6):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Ops_11Heap, Used_11Heap, TempMask);
                Ops_11Mask := Ops_11Mask[null, T_1(arg_6):=Ops_11Mask[null, T_1(arg_6)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_6)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, T_1(arg_6):=Used_11Mask[null, T_1(arg_6)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, T_1(arg_6):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Heap, Used_11Heap, TempMask);
                Mask := Mask[null, T_1(arg_6):=Mask[null, T_1(arg_6)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
                  { newPMask[o_11, f_3] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_11, f_3] || Heap[null, T#sm(x)][o_11, f_3] ==> newPMask[o_11, f_3]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@69.3--69.52) [124164]"}
            (b_23 && b_23) && b_24_1 ==> neededTransfer == 0.000000000 && Used_11Mask[null, T_1(arg_6)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_25 := b_23 && b_24_1;
            b_25 := b_25 && state(Result_7Heap, Result_7Mask);
            b_25 := b_25 && sumMask(Result_7Mask, Ops_11Mask, Used_11Mask);
            b_25 := (b_25 && IdenticalOnKnownLocations(Ops_11Heap, Result_7Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_7Heap, Used_11Mask);
            b_25 := b_25 && state(Result_7Heap, Result_7Mask);
          b_23 := b_23 && b_25;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_7 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_11Mask[null, E(arg_7)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@69.3--69.52) [124165]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[null, E(arg_7)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, E(arg_7):=Used_11Mask[null, E(arg_7)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, E(arg_7):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Ops_11Heap, Used_11Heap, TempMask);
                Ops_11Mask := Ops_11Mask[null, E(arg_7):=Ops_11Mask[null, E(arg_7)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_7)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, E(arg_7):=Used_11Mask[null, E(arg_7)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, E(arg_7):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Heap, Used_11Heap, TempMask);
                Mask := Mask[null, E(arg_7):=Mask[null, E(arg_7)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
                  { newPMask[o_35, f_17] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_35, f_17] || Heap[null, E#sm(x)][o_35, f_17] ==> newPMask[o_35, f_17]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@69.3--69.52) [124166]"}
            (b_23 && b_23) && b_24_1 ==> neededTransfer == 0.000000000 && Used_11Mask[null, E(arg_7)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_26 := b_23 && b_24_1;
            b_26 := b_26 && state(Result_8Heap, Result_8Mask);
            b_26 := b_26 && sumMask(Result_8Mask, Ops_11Mask, Used_11Mask);
            b_26 := (b_26 && IdenticalOnKnownLocations(Ops_11Heap, Result_8Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_8Heap, Used_11Mask);
            b_26 := b_26 && state(Result_8Heap, Result_8Mask);
          b_23 := b_23 && b_26;
      }
    }
    Mask := Mask[null, wand_5(true, i == 0, x, x):=Mask[null, wand_5(true, i == 0, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i == 0 ==> acc(T(x), write) -- conditionals1.vpr@72.3--72.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@72.10--72.30) [124168]"}
          perm <= AssertMask[null, T_1(x)];
      }
      AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_28: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_27: bool;
  var Labellhs16Mask: MaskType;
  var Labellhs16Heap: HeapType;
  var boolCur_6: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_29: bool;
  var arg_8: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_30: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var arg_9: Ref;
  var b_31: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
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
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package true --* (i == 0 ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@78.3--78.52
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_27 := b_27 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_28) {
      b_28 := b_28;
    }
    b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs16 -- conditionals1.vpr@78.11--78.52
      lhs16:
      Labellhs16Mask := Ops_13Mask;
      Labellhs16Heap := Ops_13Heap;
      b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(T(x), write) : acc(E(x), write))
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_29 := b_29 && state(Used_13Heap, Used_13Mask);
    if (b_28 && b_28) {
      if (i == 0) {
        
        // -- Transfer of acc(T(x), write)
          arg_8 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_13Mask[null, T_1(arg_8)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@78.3--78.52) [124169]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28 && b_28) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[null, T_1(arg_8)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, T_1(arg_8):=Used_13Mask[null, T_1(arg_8)] + takeTransfer];
                b_29 := b_29 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, T_1(arg_8):=FullPerm];
                b_29 := b_29 && IdenticalOnKnownLocations(Ops_13Heap, Used_13Heap, TempMask);
                Ops_13Mask := Ops_13Mask[null, T_1(arg_8):=Ops_13Mask[null, T_1(arg_8)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28 && b_28) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_8)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, T_1(arg_8):=Used_13Mask[null, T_1(arg_8)] + takeTransfer];
                b_29 := b_29 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, T_1(arg_8):=FullPerm];
                b_29 := b_29 && IdenticalOnKnownLocations(Heap, Used_13Heap, TempMask);
                Mask := Mask[null, T_1(arg_8):=Mask[null, T_1(arg_8)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
                  { newPMask[o_1, f_11] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_1, f_11] || Heap[null, T#sm(x)][o_1, f_11] ==> newPMask[o_1, f_11]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@78.3--78.52) [124170]"}
            (b_28 && b_28) && b_29 ==> neededTransfer == 0.000000000 && Used_13Mask[null, T_1(arg_8)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_30 := b_28 && b_29;
            b_30 := b_30 && state(Result_9Heap, Result_9Mask);
            b_30 := b_30 && sumMask(Result_9Mask, Ops_13Mask, Used_13Mask);
            b_30 := (b_30 && IdenticalOnKnownLocations(Ops_13Heap, Result_9Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_9Heap, Used_13Mask);
            b_30 := b_30 && state(Result_9Heap, Result_9Mask);
          b_28 := b_28 && b_30;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_9 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_13Mask[null, E(arg_9)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@78.3--78.52) [124171]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28 && b_28) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[null, E(arg_9)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, E(arg_9):=Used_13Mask[null, E(arg_9)] + takeTransfer];
                b_29 := b_29 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, E(arg_9):=FullPerm];
                b_29 := b_29 && IdenticalOnKnownLocations(Ops_13Heap, Used_13Heap, TempMask);
                Ops_13Mask := Ops_13Mask[null, E(arg_9):=Ops_13Mask[null, E(arg_9)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28 && b_28) && b_29) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_9)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, E(arg_9):=Used_13Mask[null, E(arg_9)] + takeTransfer];
                b_29 := b_29 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, E(arg_9):=FullPerm];
                b_29 := b_29 && IdenticalOnKnownLocations(Heap, Used_13Heap, TempMask);
                Mask := Mask[null, E(arg_9):=Mask[null, E(arg_9)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
                  { newPMask[o_12, f_9] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_12, f_9] || Heap[null, E#sm(x)][o_12, f_9] ==> newPMask[o_12, f_9]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@78.3--78.52) [124172]"}
            (b_28 && b_28) && b_29 ==> neededTransfer == 0.000000000 && Used_13Mask[null, E(arg_9)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_31 := b_28 && b_29;
            b_31 := b_31 && state(Result_10Heap, Result_10Mask);
            b_31 := b_31 && sumMask(Result_10Mask, Ops_13Mask, Used_13Mask);
            b_31 := (b_31 && IdenticalOnKnownLocations(Ops_13Heap, Result_10Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_10Heap, Used_13Mask);
            b_31 := b_31 && state(Result_10Heap, Result_10Mask);
          b_28 := b_28 && b_31;
      }
    }
    Mask := Mask[null, wand_5(true, i == 0, x, x):=Mask[null, wand_5(true, i == 0, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i != 0 ==> acc(T(x), write) -- conditionals1.vpr@80.3--80.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (i != 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@80.10--80.30) [124174]"}
          perm <= AssertMask[null, T_1(x)];
      }
      AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i == 0 ==> acc(E(x), write) -- conditionals1.vpr@81.3--81.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@81.10--81.30) [124176]"}
          perm <= AssertMask[null, E(x)];
      }
      AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (i == 0 ? acc(E(x), write) : acc(T(x), write)) -- conditionals1.vpr@83.3--83.40
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@83.10--83.40) [124178]"}
          perm <= AssertMask[null, E(x)];
      }
      AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@83.10--83.40) [124180]"}
          perm <= AssertMask[null, T_1(x)];
      }
      AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(E(x), write) && acc(T(x), write) -- conditionals1.vpr@86.3--86.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@86.10--86.32) [124182]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@86.10--86.32) [124184]"}
        perm <= AssertMask[null, T_1(x)];
    }
    AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_33: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_32: bool;
  var Labellhs18Mask: MaskType;
  var Labellhs18Heap: HeapType;
  var boolCur_7: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_34: bool;
  var arg_10: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_35: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var arg_11: Ref;
  var b_36: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var arg_12: Ref;
  var b_37: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
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
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(M(x), write) --*
  // acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@92.3--92.73
    havoc Ops_15Heap;
    Ops_15Mask := ZeroMask;
    b_33 := b_33 && state(Ops_15Heap, Ops_15Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_32 := b_32 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_33) {
      perm := FullPerm;
      b_33 := b_33;
      Ops_15Mask := Ops_15Mask[null, M_2(x):=Ops_15Mask[null, M_2(x)] + perm];
      b_33 := b_33 && state(Ops_15Heap, Ops_15Mask);
    }
    b_33 := b_33 && state(Ops_15Heap, Ops_15Mask);
    
    // -- Translating statement: label lhs18 -- conditionals1.vpr@92.11--92.73
      lhs18:
      Labellhs18Mask := Ops_15Mask;
      Labellhs18Heap := Ops_15Heap;
      b_33 := b_33 && state(Ops_15Heap, Ops_15Mask);
    boolCur_7 := true;
    // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_34 := b_34 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(B(x), write)
      arg_10 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_15Mask[null, B_1(arg_10)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@92.3--92.73) [124185]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_33 && b_33) && b_34) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_15Mask[null, B_1(arg_10)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, B_1(arg_10):=Used_15Mask[null, B_1(arg_10)] + takeTransfer];
            b_34 := b_34 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, B_1(arg_10):=FullPerm];
            b_34 := b_34 && IdenticalOnKnownLocations(Ops_15Heap, Used_15Heap, TempMask);
            Ops_15Mask := Ops_15Mask[null, B_1(arg_10):=Ops_15Mask[null, B_1(arg_10)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_33 && b_33) && b_34) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, B_1(arg_10)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, B_1(arg_10):=Used_15Mask[null, B_1(arg_10)] + takeTransfer];
            b_34 := b_34 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, B_1(arg_10):=FullPerm];
            b_34 := b_34 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
            Mask := Mask[null, B_1(arg_10):=Mask[null, B_1(arg_10)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
              { newPMask[o_22, f_24] }
              Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_22, f_24] || Heap[null, B#sm(x)][o_22, f_24] ==> newPMask[o_22, f_24]
            );
            Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@92.3--92.73) [124186]"}
        (b_33 && b_33) && b_34 ==> neededTransfer == 0.000000000 && Used_15Mask[null, B_1(arg_10)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_35 := b_33 && b_34;
        b_35 := b_35 && state(Result_11Heap, Result_11Mask);
        b_35 := b_35 && sumMask(Result_11Mask, Ops_15Mask, Used_15Mask);
        b_35 := (b_35 && IdenticalOnKnownLocations(Ops_15Heap, Result_11Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_11Heap, Used_15Mask);
        b_35 := b_35 && state(Result_11Heap, Result_11Mask);
      b_33 := b_33 && b_35;
    if (b_33 && b_33) {
      if (get(Result_11Heap, x, i)) {
        
        // -- Transfer of acc(T(x), write)
          arg_11 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_15Mask[null, T_1(arg_11)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@92.3--92.73) [124187]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33 && b_33) && b_34) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[null, T_1(arg_11)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, T_1(arg_11):=Used_15Mask[null, T_1(arg_11)] + takeTransfer];
                b_34 := b_34 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, T_1(arg_11):=FullPerm];
                b_34 := b_34 && IdenticalOnKnownLocations(Ops_15Heap, Used_15Heap, TempMask);
                Ops_15Mask := Ops_15Mask[null, T_1(arg_11):=Ops_15Mask[null, T_1(arg_11)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33 && b_33) && b_34) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_11)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, T_1(arg_11):=Used_15Mask[null, T_1(arg_11)] + takeTransfer];
                b_34 := b_34 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, T_1(arg_11):=FullPerm];
                b_34 := b_34 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
                Mask := Mask[null, T_1(arg_11):=Mask[null, T_1(arg_11)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
                  { newPMask[o_3, f_12] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_3, f_12] || Heap[null, T#sm(x)][o_3, f_12] ==> newPMask[o_3, f_12]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@92.3--92.73) [124188]"}
            (b_33 && b_33) && b_34 ==> neededTransfer == 0.000000000 && Used_15Mask[null, T_1(arg_11)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_36 := b_33 && b_34;
            b_36 := b_36 && state(Result_12Heap, Result_12Mask);
            b_36 := b_36 && sumMask(Result_12Mask, Ops_15Mask, Used_15Mask);
            b_36 := (b_36 && IdenticalOnKnownLocations(Ops_15Heap, Result_12Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_12Heap, Used_15Mask);
            b_36 := b_36 && state(Result_12Heap, Result_12Mask);
          b_33 := b_33 && b_36;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_12 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_15Mask[null, E(arg_12)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@92.3--92.73) [124189]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33 && b_33) && b_34) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[null, E(arg_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, E(arg_12):=Used_15Mask[null, E(arg_12)] + takeTransfer];
                b_34 := b_34 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, E(arg_12):=FullPerm];
                b_34 := b_34 && IdenticalOnKnownLocations(Ops_15Heap, Used_15Heap, TempMask);
                Ops_15Mask := Ops_15Mask[null, E(arg_12):=Ops_15Mask[null, E(arg_12)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33 && b_33) && b_34) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, E(arg_12):=Used_15Mask[null, E(arg_12)] + takeTransfer];
                b_34 := b_34 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, E(arg_12):=FullPerm];
                b_34 := b_34 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
                Mask := Mask[null, E(arg_12):=Mask[null, E(arg_12)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
                  { newPMask[o_46, f_35] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_46, f_35] || Heap[null, E#sm(x)][o_46, f_35] ==> newPMask[o_46, f_35]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@92.3--92.73) [124190]"}
            (b_33 && b_33) && b_34 ==> neededTransfer == 0.000000000 && Used_15Mask[null, E(arg_12)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_37 := b_33 && b_34;
            b_37 := b_37 && state(Result_13Heap, Result_13Mask);
            b_37 := b_37 && sumMask(Result_13Mask, Ops_15Mask, Used_15Mask);
            b_37 := (b_37 && IdenticalOnKnownLocations(Ops_15Heap, Result_13Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_13Heap, Used_15Mask);
            b_37 := b_37 && state(Result_13Heap, Result_13Mask);
          b_33 := b_33 && b_37;
      }
    }
    assume state(Heap, Mask);
    Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (get(x, i) ? acc(E(x), write) : acc(T(x), write)) -- conditionals1.vpr@94.3--94.43
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of get(x, i)
      if (*) {
        // Stop execution
        assume false;
      }
    if (get(AssertHeap, x, i)) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@94.10--94.43) [124192]"}
          perm <= AssertMask[null, E(x)];
      }
      AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@94.10--94.43) [124194]"}
          perm <= AssertMask[null, T_1(x)];
      }
      AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(E(x), write) && acc(T(x), write) -- conditionals1.vpr@97.3--97.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@97.10--97.32) [124196]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@97.10--97.32) [124198]"}
        perm <= AssertMask[null, T_1(x)];
    }
    AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_39: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_38: bool;
  var Labellhs20Mask: MaskType;
  var Labellhs20Heap: HeapType;
  var boolCur_8: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_40: bool;
  var arg_13: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_41: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var arg_14: Ref;
  var b_42: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var arg_15: Ref;
  var b_43: bool;
  var Result_16Heap: HeapType;
  var Result_16Mask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(M(x), write) --*
  // acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@103.3--103.73
    havoc Ops_17Heap;
    Ops_17Mask := ZeroMask;
    b_39 := b_39 && state(Ops_17Heap, Ops_17Mask);
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_38 := b_38 && state(Used_16Heap, Used_16Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_39) {
      perm := FullPerm;
      b_39 := b_39;
      Ops_17Mask := Ops_17Mask[null, M_2(x):=Ops_17Mask[null, M_2(x)] + perm];
      b_39 := b_39 && state(Ops_17Heap, Ops_17Mask);
    }
    b_39 := b_39 && state(Ops_17Heap, Ops_17Mask);
    
    // -- Translating statement: label lhs20 -- conditionals1.vpr@103.11--103.73
      lhs20:
      Labellhs20Mask := Ops_17Mask;
      Labellhs20Heap := Ops_17Heap;
      b_39 := b_39 && state(Ops_17Heap, Ops_17Mask);
    boolCur_8 := true;
    // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_40 := b_40 && state(Used_17Heap, Used_17Mask);
    
    // -- Transfer of acc(B(x), write)
      arg_13 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_17Mask[null, B_1(arg_13)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@103.3--103.73) [124199]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_17Mask[null, B_1(arg_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_17Mask := Used_17Mask[null, B_1(arg_13):=Used_17Mask[null, B_1(arg_13)] + takeTransfer];
            b_40 := b_40 && state(Used_17Heap, Used_17Mask);
            TempMask := ZeroMask[null, B_1(arg_13):=FullPerm];
            b_40 := b_40 && IdenticalOnKnownLocations(Ops_17Heap, Used_17Heap, TempMask);
            Ops_17Mask := Ops_17Mask[null, B_1(arg_13):=Ops_17Mask[null, B_1(arg_13)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, B_1(arg_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_17Mask := Used_17Mask[null, B_1(arg_13):=Used_17Mask[null, B_1(arg_13)] + takeTransfer];
            b_40 := b_40 && state(Used_17Heap, Used_17Mask);
            TempMask := ZeroMask[null, B_1(arg_13):=FullPerm];
            b_40 := b_40 && IdenticalOnKnownLocations(Heap, Used_17Heap, TempMask);
            Mask := Mask[null, B_1(arg_13):=Mask[null, B_1(arg_13)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
              { newPMask[o_41, f_25] }
              Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_41, f_25] || Heap[null, B#sm(x)][o_41, f_25] ==> newPMask[o_41, f_25]
            );
            Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@103.3--103.73) [124200]"}
        (b_39 && b_39) && b_40 ==> neededTransfer == 0.000000000 && Used_17Mask[null, B_1(arg_13)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_41 := b_39 && b_40;
        b_41 := b_41 && state(Result_14Heap, Result_14Mask);
        b_41 := b_41 && sumMask(Result_14Mask, Ops_17Mask, Used_17Mask);
        b_41 := (b_41 && IdenticalOnKnownLocations(Ops_17Heap, Result_14Heap, Ops_17Mask)) && IdenticalOnKnownLocations(Used_17Heap, Result_14Heap, Used_17Mask);
        b_41 := b_41 && state(Result_14Heap, Result_14Mask);
      b_39 := b_39 && b_41;
    if (b_39 && b_39) {
      if (get(Result_14Heap, x, i)) {
        
        // -- Transfer of acc(T(x), write)
          arg_14 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_17Mask[null, T_1(arg_14)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@103.3--103.73) [124201]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_17Mask[null, T_1(arg_14)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_17Mask := Used_17Mask[null, T_1(arg_14):=Used_17Mask[null, T_1(arg_14)] + takeTransfer];
                b_40 := b_40 && state(Used_17Heap, Used_17Mask);
                TempMask := ZeroMask[null, T_1(arg_14):=FullPerm];
                b_40 := b_40 && IdenticalOnKnownLocations(Ops_17Heap, Used_17Heap, TempMask);
                Ops_17Mask := Ops_17Mask[null, T_1(arg_14):=Ops_17Mask[null, T_1(arg_14)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_14)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_17Mask := Used_17Mask[null, T_1(arg_14):=Used_17Mask[null, T_1(arg_14)] + takeTransfer];
                b_40 := b_40 && state(Used_17Heap, Used_17Mask);
                TempMask := ZeroMask[null, T_1(arg_14):=FullPerm];
                b_40 := b_40 && IdenticalOnKnownLocations(Heap, Used_17Heap, TempMask);
                Mask := Mask[null, T_1(arg_14):=Mask[null, T_1(arg_14)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
                  { newPMask[o_34, f_44] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_34, f_44] || Heap[null, T#sm(x)][o_34, f_44] ==> newPMask[o_34, f_44]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@103.3--103.73) [124202]"}
            (b_39 && b_39) && b_40 ==> neededTransfer == 0.000000000 && Used_17Mask[null, T_1(arg_14)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_42 := b_39 && b_40;
            b_42 := b_42 && state(Result_15Heap, Result_15Mask);
            b_42 := b_42 && sumMask(Result_15Mask, Ops_17Mask, Used_17Mask);
            b_42 := (b_42 && IdenticalOnKnownLocations(Ops_17Heap, Result_15Heap, Ops_17Mask)) && IdenticalOnKnownLocations(Used_17Heap, Result_15Heap, Used_17Mask);
            b_42 := b_42 && state(Result_15Heap, Result_15Mask);
          b_39 := b_39 && b_42;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_15 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_17Mask[null, E(arg_15)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@103.3--103.73) [124203]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_17Mask[null, E(arg_15)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_17Mask := Used_17Mask[null, E(arg_15):=Used_17Mask[null, E(arg_15)] + takeTransfer];
                b_40 := b_40 && state(Used_17Heap, Used_17Mask);
                TempMask := ZeroMask[null, E(arg_15):=FullPerm];
                b_40 := b_40 && IdenticalOnKnownLocations(Ops_17Heap, Used_17Heap, TempMask);
                Ops_17Mask := Ops_17Mask[null, E(arg_15):=Ops_17Mask[null, E(arg_15)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_15)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_17Mask := Used_17Mask[null, E(arg_15):=Used_17Mask[null, E(arg_15)] + takeTransfer];
                b_40 := b_40 && state(Used_17Heap, Used_17Mask);
                TempMask := ZeroMask[null, E(arg_15):=FullPerm];
                b_40 := b_40 && IdenticalOnKnownLocations(Heap, Used_17Heap, TempMask);
                Mask := Mask[null, E(arg_15):=Mask[null, E(arg_15)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
                  { newPMask[o_55, f_36] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_55, f_36] || Heap[null, E#sm(x)][o_55, f_36] ==> newPMask[o_55, f_36]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@103.3--103.73) [124204]"}
            (b_39 && b_39) && b_40 ==> neededTransfer == 0.000000000 && Used_17Mask[null, E(arg_15)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_43 := b_39 && b_40;
            b_43 := b_43 && state(Result_16Heap, Result_16Mask);
            b_43 := b_43 && sumMask(Result_16Mask, Ops_17Mask, Used_17Mask);
            b_43 := (b_43 && IdenticalOnKnownLocations(Ops_17Heap, Result_16Heap, Ops_17Mask)) && IdenticalOnKnownLocations(Used_17Heap, Result_16Heap, Used_17Mask);
            b_43 := b_43 && state(Result_16Heap, Result_16Mask);
          b_39 := b_39 && b_43;
      }
    }
    assume state(Heap, Mask);
    Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(M(x), write) --*
  //   acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) -- conditionals1.vpr@104.3--104.71
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@104.3--104.71) [124205]"}
        FullPerm <= Mask[null, wand_6(x, x, get(Heap, x, i), x, x)];
      Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@104.3--104.71) [124207]"}
          perm <= Mask[null, M_2(x)];
      }
      Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
      assume state(Heap, Mask);
      if (get(Heap, x, i)) {
        perm := FullPerm;
        Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
        assume state(Heap, Mask);
      } else {
        perm := FullPerm;
        Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(B(x), write) && (acc(E(x), write) && acc(T(x), write)) -- conditionals1.vpr@106.3--106.45
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@106.10--106.45) [124212]"}
        perm <= AssertMask[null, B_1(x)];
    }
    AssertMask := AssertMask[null, B_1(x):=AssertMask[null, B_1(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@106.10--106.45) [124214]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@106.10--106.45) [124216]"}
        perm <= AssertMask[null, T_1(x)];
    }
    AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_19Heap: HeapType;
  var Ops_19Mask: MaskType;
  var b_45: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_44: bool;
  var Labellhs23Mask: MaskType;
  var Labellhs23Heap: HeapType;
  var boolCur_9: bool;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_46: bool;
  var arg_16: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_47: bool;
  var Result_17Heap: HeapType;
  var Result_17Mask: MaskType;
  var arg_17: Ref;
  var b_48: bool;
  var Result_18Heap: HeapType;
  var Result_18Mask: MaskType;
  var arg_18: Ref;
  var b_49: bool;
  var Result_19Heap: HeapType;
  var Result_19Mask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(M(x), write) --*
  // acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@112.3--112.73
    havoc Ops_19Heap;
    Ops_19Mask := ZeroMask;
    b_45 := b_45 && state(Ops_19Heap, Ops_19Mask);
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_44 := b_44 && state(Used_18Heap, Used_18Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_45) {
      perm := FullPerm;
      b_45 := b_45;
      Ops_19Mask := Ops_19Mask[null, M_2(x):=Ops_19Mask[null, M_2(x)] + perm];
      b_45 := b_45 && state(Ops_19Heap, Ops_19Mask);
    }
    b_45 := b_45 && state(Ops_19Heap, Ops_19Mask);
    
    // -- Translating statement: label lhs23 -- conditionals1.vpr@112.11--112.73
      lhs23:
      Labellhs23Mask := Ops_19Mask;
      Labellhs23Heap := Ops_19Heap;
      b_45 := b_45 && state(Ops_19Heap, Ops_19Mask);
    boolCur_9 := true;
    // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
    havoc Used_19Heap;
    Used_19Mask := ZeroMask;
    b_46 := b_46 && state(Used_19Heap, Used_19Mask);
    
    // -- Transfer of acc(B(x), write)
      arg_16 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_19Mask[null, B_1(arg_16)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@112.3--112.73) [124217]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_19Mask[null, B_1(arg_16)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[null, B_1(arg_16):=Used_19Mask[null, B_1(arg_16)] + takeTransfer];
            b_46 := b_46 && state(Used_19Heap, Used_19Mask);
            TempMask := ZeroMask[null, B_1(arg_16):=FullPerm];
            b_46 := b_46 && IdenticalOnKnownLocations(Ops_19Heap, Used_19Heap, TempMask);
            Ops_19Mask := Ops_19Mask[null, B_1(arg_16):=Ops_19Mask[null, B_1(arg_16)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, B_1(arg_16)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[null, B_1(arg_16):=Used_19Mask[null, B_1(arg_16)] + takeTransfer];
            b_46 := b_46 && state(Used_19Heap, Used_19Mask);
            TempMask := ZeroMask[null, B_1(arg_16):=FullPerm];
            b_46 := b_46 && IdenticalOnKnownLocations(Heap, Used_19Heap, TempMask);
            Mask := Mask[null, B_1(arg_16):=Mask[null, B_1(arg_16)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
              { newPMask[o_42, f_26] }
              Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_42, f_26] || Heap[null, B#sm(x)][o_42, f_26] ==> newPMask[o_42, f_26]
            );
            Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@112.3--112.73) [124218]"}
        (b_45 && b_45) && b_46 ==> neededTransfer == 0.000000000 && Used_19Mask[null, B_1(arg_16)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_47 := b_45 && b_46;
        b_47 := b_47 && state(Result_17Heap, Result_17Mask);
        b_47 := b_47 && sumMask(Result_17Mask, Ops_19Mask, Used_19Mask);
        b_47 := (b_47 && IdenticalOnKnownLocations(Ops_19Heap, Result_17Heap, Ops_19Mask)) && IdenticalOnKnownLocations(Used_19Heap, Result_17Heap, Used_19Mask);
        b_47 := b_47 && state(Result_17Heap, Result_17Mask);
      b_45 := b_45 && b_47;
    if (b_45 && b_45) {
      if (get(Result_17Heap, x, i)) {
        
        // -- Transfer of acc(T(x), write)
          arg_17 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_19Mask[null, T_1(arg_17)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@112.3--112.73) [124219]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_19Mask[null, T_1(arg_17)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_19Mask := Used_19Mask[null, T_1(arg_17):=Used_19Mask[null, T_1(arg_17)] + takeTransfer];
                b_46 := b_46 && state(Used_19Heap, Used_19Mask);
                TempMask := ZeroMask[null, T_1(arg_17):=FullPerm];
                b_46 := b_46 && IdenticalOnKnownLocations(Ops_19Heap, Used_19Heap, TempMask);
                Ops_19Mask := Ops_19Mask[null, T_1(arg_17):=Ops_19Mask[null, T_1(arg_17)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_17)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_19Mask := Used_19Mask[null, T_1(arg_17):=Used_19Mask[null, T_1(arg_17)] + takeTransfer];
                b_46 := b_46 && state(Used_19Heap, Used_19Mask);
                TempMask := ZeroMask[null, T_1(arg_17):=FullPerm];
                b_46 := b_46 && IdenticalOnKnownLocations(Heap, Used_19Heap, TempMask);
                Mask := Mask[null, T_1(arg_17):=Mask[null, T_1(arg_17)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
                  { newPMask[o_13, f_45] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_13, f_45] || Heap[null, T#sm(x)][o_13, f_45] ==> newPMask[o_13, f_45]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@112.3--112.73) [124220]"}
            (b_45 && b_45) && b_46 ==> neededTransfer == 0.000000000 && Used_19Mask[null, T_1(arg_17)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_48 := b_45 && b_46;
            b_48 := b_48 && state(Result_18Heap, Result_18Mask);
            b_48 := b_48 && sumMask(Result_18Mask, Ops_19Mask, Used_19Mask);
            b_48 := (b_48 && IdenticalOnKnownLocations(Ops_19Heap, Result_18Heap, Ops_19Mask)) && IdenticalOnKnownLocations(Used_19Heap, Result_18Heap, Used_19Mask);
            b_48 := b_48 && state(Result_18Heap, Result_18Mask);
          b_45 := b_45 && b_48;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_18 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_19Mask[null, E(arg_18)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@112.3--112.73) [124221]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_19Mask[null, E(arg_18)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_19Mask := Used_19Mask[null, E(arg_18):=Used_19Mask[null, E(arg_18)] + takeTransfer];
                b_46 := b_46 && state(Used_19Heap, Used_19Mask);
                TempMask := ZeroMask[null, E(arg_18):=FullPerm];
                b_46 := b_46 && IdenticalOnKnownLocations(Ops_19Heap, Used_19Heap, TempMask);
                Ops_19Mask := Ops_19Mask[null, E(arg_18):=Ops_19Mask[null, E(arg_18)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_18)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_19Mask := Used_19Mask[null, E(arg_18):=Used_19Mask[null, E(arg_18)] + takeTransfer];
                b_46 := b_46 && state(Used_19Heap, Used_19Mask);
                TempMask := ZeroMask[null, E(arg_18):=FullPerm];
                b_46 := b_46 && IdenticalOnKnownLocations(Heap, Used_19Heap, TempMask);
                Mask := Mask[null, E(arg_18):=Mask[null, E(arg_18)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
                  { newPMask[o_43, f_13] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_43, f_13] || Heap[null, E#sm(x)][o_43, f_13] ==> newPMask[o_43, f_13]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@112.3--112.73) [124222]"}
            (b_45 && b_45) && b_46 ==> neededTransfer == 0.000000000 && Used_19Mask[null, E(arg_18)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_49 := b_45 && b_46;
            b_49 := b_49 && state(Result_19Heap, Result_19Mask);
            b_49 := b_49 && sumMask(Result_19Mask, Ops_19Mask, Used_19Mask);
            b_49 := (b_49 && IdenticalOnKnownLocations(Ops_19Heap, Result_19Heap, Ops_19Mask)) && IdenticalOnKnownLocations(Used_19Heap, Result_19Heap, Used_19Mask);
            b_49 := b_49 && state(Result_19Heap, Result_19Mask);
          b_45 := b_45 && b_49;
      }
    }
    assume state(Heap, Mask);
    Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(M(x), write) --*
  //   acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) -- conditionals1.vpr@113.3--113.71
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@113.3--113.71) [124223]"}
        FullPerm <= Mask[null, wand_6(x, x, get(Heap, x, i), x, x)];
      Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@113.3--113.71) [124225]"}
          perm <= Mask[null, M_2(x)];
      }
      Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
      assume state(Heap, Mask);
      if (get(Heap, x, i)) {
        perm := FullPerm;
        Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
        assume state(Heap, Mask);
      } else {
        perm := FullPerm;
        Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(B(x), write) && (acc(E(x), write) && acc(T(x), write)) -- conditionals1.vpr@115.3--115.45
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@115.10--115.45) [124230]"}
        perm <= AssertMask[null, B_1(x)];
    }
    AssertMask := AssertMask[null, B_1(x):=AssertMask[null, B_1(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@115.10--115.45) [124232]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@115.10--115.45) [124234]"}
        perm <= AssertMask[null, T_1(x)];
    }
    AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- conditionals1.vpr@118.3--118.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals1.vpr@118.10--118.15) [124235]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test10
// ==================================================

procedure test10(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_21Heap: HeapType;
  var Ops_21Mask: MaskType;
  var b_51: bool;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_50: bool;
  var Labellhs26Mask: MaskType;
  var Labellhs26Heap: HeapType;
  var boolCur_10: bool;
  var Used_21Heap: HeapType;
  var Used_21Mask: MaskType;
  var b_52: bool;
  var arg_19: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_53: bool;
  var Result_20Heap: HeapType;
  var Result_20Mask: MaskType;
  var arg_20: Ref;
  var b_54: bool;
  var Result_21Heap: HeapType;
  var Result_21Mask: MaskType;
  var arg_21: Ref;
  var b_55: bool;
  var Result_22Heap: HeapType;
  var Result_22Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Ops_23Heap: HeapType;
  var Ops_23Mask: MaskType;
  var b_57: bool;
  var Used_22Heap: HeapType;
  var Used_22Mask: MaskType;
  var b_56: bool;
  var Labellhs28Mask: MaskType;
  var Labellhs28Heap: HeapType;
  var boolCur_11: bool;
  var Used_23Heap: HeapType;
  var Used_23Mask: MaskType;
  var b_58: bool;
  var arg_22: Ref;
  var b_59: bool;
  var Result_23Heap: HeapType;
  var Result_23Mask: MaskType;
  var arg_23: Ref;
  var b_60: bool;
  var Result_24Heap: HeapType;
  var Result_24Mask: MaskType;
  var arg_24: Ref;
  var b_61: bool;
  var Result_25Heap: HeapType;
  var Result_25Mask: MaskType;
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
    Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (i == 0) -- conditionals1.vpr@124.3--130.4
    if (i == 0) {
      
      // -- Translating statement: package acc(M(x), write) --*
  // acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@125.5--125.75
        havoc Ops_21Heap;
        Ops_21Mask := ZeroMask;
        b_51 := b_51 && state(Ops_21Heap, Ops_21Mask);
        havoc Used_20Heap;
        Used_20Mask := ZeroMask;
        b_50 := b_50 && state(Used_20Heap, Used_20Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_51) {
          perm := FullPerm;
          b_51 := b_51;
          Ops_21Mask := Ops_21Mask[null, M_2(x):=Ops_21Mask[null, M_2(x)] + perm];
          b_51 := b_51 && state(Ops_21Heap, Ops_21Mask);
        }
        b_51 := b_51 && state(Ops_21Heap, Ops_21Mask);
        
        // -- Translating statement: label lhs26 -- conditionals1.vpr@125.13--125.75
          lhs26:
          Labellhs26Mask := Ops_21Mask;
          Labellhs26Heap := Ops_21Heap;
          b_51 := b_51 && state(Ops_21Heap, Ops_21Mask);
        boolCur_10 := true;
        // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
        havoc Used_21Heap;
        Used_21Mask := ZeroMask;
        b_52 := b_52 && state(Used_21Heap, Used_21Mask);
        
        // -- Transfer of acc(B(x), write)
          arg_19 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_21Mask[null, B_1(arg_19)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@125.5--125.75) [124236]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_21Mask[null, B_1(arg_19)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_21Mask := Used_21Mask[null, B_1(arg_19):=Used_21Mask[null, B_1(arg_19)] + takeTransfer];
                b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                TempMask := ZeroMask[null, B_1(arg_19):=FullPerm];
                b_52 := b_52 && IdenticalOnKnownLocations(Ops_21Heap, Used_21Heap, TempMask);
                Ops_21Mask := Ops_21Mask[null, B_1(arg_19):=Ops_21Mask[null, B_1(arg_19)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, B_1(arg_19)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_21Mask := Used_21Mask[null, B_1(arg_19):=Used_21Mask[null, B_1(arg_19)] + takeTransfer];
                b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                TempMask := ZeroMask[null, B_1(arg_19):=FullPerm];
                b_52 := b_52 && IdenticalOnKnownLocations(Heap, Used_21Heap, TempMask);
                Mask := Mask[null, B_1(arg_19):=Mask[null, B_1(arg_19)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
                  { newPMask[o_47, f_41] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_47, f_41] || Heap[null, B#sm(x)][o_47, f_41] ==> newPMask[o_47, f_41]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@125.5--125.75) [124237]"}
            (b_51 && b_51) && b_52 ==> neededTransfer == 0.000000000 && Used_21Mask[null, B_1(arg_19)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_53 := b_51 && b_52;
            b_53 := b_53 && state(Result_20Heap, Result_20Mask);
            b_53 := b_53 && sumMask(Result_20Mask, Ops_21Mask, Used_21Mask);
            b_53 := (b_53 && IdenticalOnKnownLocations(Ops_21Heap, Result_20Heap, Ops_21Mask)) && IdenticalOnKnownLocations(Used_21Heap, Result_20Heap, Used_21Mask);
            b_53 := b_53 && state(Result_20Heap, Result_20Mask);
          b_51 := b_51 && b_53;
        if (b_51 && b_51) {
          if (get(Result_20Heap, x, i)) {
            
            // -- Transfer of acc(T(x), write)
              arg_20 := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_21Mask[null, T_1(arg_20)] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@125.5--125.75) [124238]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_21Mask[null, T_1(arg_20)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_21Mask := Used_21Mask[null, T_1(arg_20):=Used_21Mask[null, T_1(arg_20)] + takeTransfer];
                    b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                    TempMask := ZeroMask[null, T_1(arg_20):=FullPerm];
                    b_52 := b_52 && IdenticalOnKnownLocations(Ops_21Heap, Used_21Heap, TempMask);
                    Ops_21Mask := Ops_21Mask[null, T_1(arg_20):=Ops_21Mask[null, T_1(arg_20)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, T_1(arg_20)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_21Mask := Used_21Mask[null, T_1(arg_20):=Used_21Mask[null, T_1(arg_20)] + takeTransfer];
                    b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                    TempMask := ZeroMask[null, T_1(arg_20):=FullPerm];
                    b_52 := b_52 && IdenticalOnKnownLocations(Heap, Used_21Heap, TempMask);
                    Mask := Mask[null, T_1(arg_20):=Mask[null, T_1(arg_20)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
                      { newPMask[o_14, f_51] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_14, f_51] || Heap[null, T#sm(x)][o_14, f_51] ==> newPMask[o_14, f_51]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@125.5--125.75) [124239]"}
                (b_51 && b_51) && b_52 ==> neededTransfer == 0.000000000 && Used_21Mask[null, T_1(arg_20)] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_54 := b_51 && b_52;
                b_54 := b_54 && state(Result_21Heap, Result_21Mask);
                b_54 := b_54 && sumMask(Result_21Mask, Ops_21Mask, Used_21Mask);
                b_54 := (b_54 && IdenticalOnKnownLocations(Ops_21Heap, Result_21Heap, Ops_21Mask)) && IdenticalOnKnownLocations(Used_21Heap, Result_21Heap, Used_21Mask);
                b_54 := b_54 && state(Result_21Heap, Result_21Mask);
              b_51 := b_51 && b_54;
          } else {
            
            // -- Transfer of acc(E(x), write)
              arg_21 := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_21Mask[null, E(arg_21)] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@125.5--125.75) [124240]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_21Mask[null, E(arg_21)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_21Mask := Used_21Mask[null, E(arg_21):=Used_21Mask[null, E(arg_21)] + takeTransfer];
                    b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                    TempMask := ZeroMask[null, E(arg_21):=FullPerm];
                    b_52 := b_52 && IdenticalOnKnownLocations(Ops_21Heap, Used_21Heap, TempMask);
                    Ops_21Mask := Ops_21Mask[null, E(arg_21):=Ops_21Mask[null, E(arg_21)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, E(arg_21)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_21Mask := Used_21Mask[null, E(arg_21):=Used_21Mask[null, E(arg_21)] + takeTransfer];
                    b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                    TempMask := ZeroMask[null, E(arg_21):=FullPerm];
                    b_52 := b_52 && IdenticalOnKnownLocations(Heap, Used_21Heap, TempMask);
                    Mask := Mask[null, E(arg_21):=Mask[null, E(arg_21)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
                      { newPMask[o_44, f_14] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_44, f_14] || Heap[null, E#sm(x)][o_44, f_14] ==> newPMask[o_44, f_14]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@125.5--125.75) [124241]"}
                (b_51 && b_51) && b_52 ==> neededTransfer == 0.000000000 && Used_21Mask[null, E(arg_21)] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_55 := b_51 && b_52;
                b_55 := b_55 && state(Result_22Heap, Result_22Mask);
                b_55 := b_55 && sumMask(Result_22Mask, Ops_21Mask, Used_21Mask);
                b_55 := (b_55 && IdenticalOnKnownLocations(Ops_21Heap, Result_22Heap, Ops_21Mask)) && IdenticalOnKnownLocations(Used_21Heap, Result_22Heap, Used_21Mask);
                b_55 := b_55 && state(Result_22Heap, Result_22Mask);
              b_51 := b_51 && b_55;
          }
        }
        assume state(Heap, Mask);
        Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(T(x), write) -- conditionals1.vpr@126.5--126.21
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@126.12--126.21) [124243]"}
            perm <= AssertMask[null, T_1(x)];
        }
        AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: package acc(M(x), write) --*
  // acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@128.5--128.75
        havoc Ops_23Heap;
        Ops_23Mask := ZeroMask;
        b_57 := b_57 && state(Ops_23Heap, Ops_23Mask);
        havoc Used_22Heap;
        Used_22Mask := ZeroMask;
        b_56 := b_56 && state(Used_22Heap, Used_22Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_57) {
          perm := FullPerm;
          b_57 := b_57;
          Ops_23Mask := Ops_23Mask[null, M_2(x):=Ops_23Mask[null, M_2(x)] + perm];
          b_57 := b_57 && state(Ops_23Heap, Ops_23Mask);
        }
        b_57 := b_57 && state(Ops_23Heap, Ops_23Mask);
        
        // -- Translating statement: label lhs28 -- conditionals1.vpr@128.13--128.75
          lhs28:
          Labellhs28Mask := Ops_23Mask;
          Labellhs28Heap := Ops_23Heap;
          b_57 := b_57 && state(Ops_23Heap, Ops_23Mask);
        boolCur_11 := true;
        // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
        havoc Used_23Heap;
        Used_23Mask := ZeroMask;
        b_58 := b_58 && state(Used_23Heap, Used_23Mask);
        
        // -- Transfer of acc(B(x), write)
          arg_22 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_23Mask[null, B_1(arg_22)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@128.5--128.75) [124244]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_23Mask[null, B_1(arg_22)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_23Mask := Used_23Mask[null, B_1(arg_22):=Used_23Mask[null, B_1(arg_22)] + takeTransfer];
                b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                TempMask := ZeroMask[null, B_1(arg_22):=FullPerm];
                b_58 := b_58 && IdenticalOnKnownLocations(Ops_23Heap, Used_23Heap, TempMask);
                Ops_23Mask := Ops_23Mask[null, B_1(arg_22):=Ops_23Mask[null, B_1(arg_22)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, B_1(arg_22)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_23Mask := Used_23Mask[null, B_1(arg_22):=Used_23Mask[null, B_1(arg_22)] + takeTransfer];
                b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                TempMask := ZeroMask[null, B_1(arg_22):=FullPerm];
                b_58 := b_58 && IdenticalOnKnownLocations(Heap, Used_23Heap, TempMask);
                Mask := Mask[null, B_1(arg_22):=Mask[null, B_1(arg_22)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
                  { newPMask[o_28, f_42] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_28, f_42] || Heap[null, B#sm(x)][o_28, f_42] ==> newPMask[o_28, f_42]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@128.5--128.75) [124245]"}
            (b_57 && b_57) && b_58 ==> neededTransfer == 0.000000000 && Used_23Mask[null, B_1(arg_22)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_59 := b_57 && b_58;
            b_59 := b_59 && state(Result_23Heap, Result_23Mask);
            b_59 := b_59 && sumMask(Result_23Mask, Ops_23Mask, Used_23Mask);
            b_59 := (b_59 && IdenticalOnKnownLocations(Ops_23Heap, Result_23Heap, Ops_23Mask)) && IdenticalOnKnownLocations(Used_23Heap, Result_23Heap, Used_23Mask);
            b_59 := b_59 && state(Result_23Heap, Result_23Mask);
          b_57 := b_57 && b_59;
        if (b_57 && b_57) {
          if (get(Result_23Heap, x, i)) {
            
            // -- Transfer of acc(T(x), write)
              arg_23 := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_23Mask[null, T_1(arg_23)] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@128.5--128.75) [124246]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_23Mask[null, T_1(arg_23)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_23Mask := Used_23Mask[null, T_1(arg_23):=Used_23Mask[null, T_1(arg_23)] + takeTransfer];
                    b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                    TempMask := ZeroMask[null, T_1(arg_23):=FullPerm];
                    b_58 := b_58 && IdenticalOnKnownLocations(Ops_23Heap, Used_23Heap, TempMask);
                    Ops_23Mask := Ops_23Mask[null, T_1(arg_23):=Ops_23Mask[null, T_1(arg_23)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, T_1(arg_23)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_23Mask := Used_23Mask[null, T_1(arg_23):=Used_23Mask[null, T_1(arg_23)] + takeTransfer];
                    b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                    TempMask := ZeroMask[null, T_1(arg_23):=FullPerm];
                    b_58 := b_58 && IdenticalOnKnownLocations(Heap, Used_23Heap, TempMask);
                    Mask := Mask[null, T_1(arg_23):=Mask[null, T_1(arg_23)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
                      { newPMask[o_76, f_34] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_76, f_34] || Heap[null, T#sm(x)][o_76, f_34] ==> newPMask[o_76, f_34]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@128.5--128.75) [124247]"}
                (b_57 && b_57) && b_58 ==> neededTransfer == 0.000000000 && Used_23Mask[null, T_1(arg_23)] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_60 := b_57 && b_58;
                b_60 := b_60 && state(Result_24Heap, Result_24Mask);
                b_60 := b_60 && sumMask(Result_24Mask, Ops_23Mask, Used_23Mask);
                b_60 := (b_60 && IdenticalOnKnownLocations(Ops_23Heap, Result_24Heap, Ops_23Mask)) && IdenticalOnKnownLocations(Used_23Heap, Result_24Heap, Used_23Mask);
                b_60 := b_60 && state(Result_24Heap, Result_24Mask);
              b_57 := b_57 && b_60;
          } else {
            
            // -- Transfer of acc(E(x), write)
              arg_24 := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_23Mask[null, E(arg_24)] + neededTransfer;
              assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@128.5--128.75) [124248]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_23Mask[null, E(arg_24)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_23Mask := Used_23Mask[null, E(arg_24):=Used_23Mask[null, E(arg_24)] + takeTransfer];
                    b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                    TempMask := ZeroMask[null, E(arg_24):=FullPerm];
                    b_58 := b_58 && IdenticalOnKnownLocations(Ops_23Heap, Used_23Heap, TempMask);
                    Ops_23Mask := Ops_23Mask[null, E(arg_24):=Ops_23Mask[null, E(arg_24)] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[null, E(arg_24)];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_23Mask := Used_23Mask[null, E(arg_24):=Used_23Mask[null, E(arg_24)] + takeTransfer];
                    b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                    TempMask := ZeroMask[null, E(arg_24):=FullPerm];
                    b_58 := b_58 && IdenticalOnKnownLocations(Heap, Used_23Heap, TempMask);
                    Mask := Mask[null, E(arg_24):=Mask[null, E(arg_24)] - takeTransfer];
                    havoc newPMask;
                    assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
                      { newPMask[o_51, f_46] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_51, f_46] || Heap[null, E#sm(x)][o_51, f_46] ==> newPMask[o_51, f_46]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@128.5--128.75) [124249]"}
                (b_57 && b_57) && b_58 ==> neededTransfer == 0.000000000 && Used_23Mask[null, E(arg_24)] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_61 := b_57 && b_58;
                b_61 := b_61 && state(Result_25Heap, Result_25Mask);
                b_61 := b_61 && sumMask(Result_25Mask, Ops_23Mask, Used_23Mask);
                b_61 := (b_61 && IdenticalOnKnownLocations(Ops_23Heap, Result_25Heap, Ops_23Mask)) && IdenticalOnKnownLocations(Used_23Heap, Result_25Heap, Used_23Mask);
                b_61 := b_61 && state(Result_25Heap, Result_25Mask);
              b_57 := b_57 && b_61;
          }
        }
        assume state(Heap, Mask);
        Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(E(x), write) -- conditionals1.vpr@129.5--129.21
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@129.12--129.21) [124251]"}
            perm <= AssertMask[null, E(x)];
        }
        AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(M(x), write) --*
  //   acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) -- conditionals1.vpr@132.3--132.71
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@132.3--132.71) [124252]"}
        FullPerm <= Mask[null, wand_6(x, x, get(Heap, x, i), x, x)];
      Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@132.3--132.71) [124254]"}
          perm <= Mask[null, M_2(x)];
      }
      Mask := Mask[null, M_2(x):=Mask[null, M_2(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, B_1(x):=Mask[null, B_1(x)] + perm];
      assume state(Heap, Mask);
      if (get(Heap, x, i)) {
        perm := FullPerm;
        Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
        assume state(Heap, Mask);
      } else {
        perm := FullPerm;
        Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(B(x), write) && (acc(T(x), write) && acc(E(x), write)) -- conditionals1.vpr@134.3--134.45
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@134.10--134.45) [124259]"}
        perm <= AssertMask[null, B_1(x)];
    }
    AssertMask := AssertMask[null, B_1(x):=AssertMask[null, B_1(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@134.10--134.45) [124261]"}
        perm <= AssertMask[null, T_1(x)];
    }
    AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@134.10--134.45) [124263]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- conditionals1.vpr@137.3--137.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals1.vpr@137.10--137.15) [124264]"}
      false;
    assume state(Heap, Mask);
}