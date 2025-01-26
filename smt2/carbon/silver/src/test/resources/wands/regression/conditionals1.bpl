// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:45:00
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
axiom (forall o_69: Ref, f_130: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_69, f_130] }
  Heap[o_69, $allocated] ==> Heap[Heap[o_69, f_130], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_72: Ref, f_100: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_72, f_100] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_72, f_100) ==> Heap[o_72, f_100] == ExhaleHeap[o_72, f_100]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_59), ExhaleHeap[null, PredicateMaskField(pm_f_59)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsPredicateField(pm_f_59) ==> Heap[null, PredicateMaskField(pm_f_59)] == ExhaleHeap[null, PredicateMaskField(pm_f_59)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_59) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsPredicateField(pm_f_59) ==> (forall <A, B> o2_60: Ref, f_100: (Field A B) ::
    { ExhaleHeap[o2_60, f_100] }
    Heap[null, PredicateMaskField(pm_f_59)][o2_60, f_100] ==> Heap[o2_60, f_100] == ExhaleHeap[o2_60, f_100]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_59), ExhaleHeap[null, WandMaskField(pm_f_59)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsWandField(pm_f_59) ==> Heap[null, WandMaskField(pm_f_59)] == ExhaleHeap[null, WandMaskField(pm_f_59)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_59) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsWandField(pm_f_59) ==> (forall <A, B> o2_60: Ref, f_100: (Field A B) ::
    { ExhaleHeap[o2_60, f_100] }
    Heap[null, WandMaskField(pm_f_59)][o2_60, f_100] ==> Heap[o2_60, f_100] == ExhaleHeap[o2_60, f_100]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_72: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_72, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_72, $allocated] ==> ExhaleHeap[o_72, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_69: Ref, f_78: (Field A B), v: B ::
  { Heap[o_69, f_78:=v] }
  succHeap(Heap, Heap[o_69, f_78:=v])
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
function  M_3(x: Ref): Field PredicateType_M FrameType;
function  M#sm(x: Ref): Field PredicateType_M PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(M_3(x)) }
  PredicateMaskField(M_3(x)) == M#sm(x)
);
axiom (forall x: Ref ::
  { M_3(x) }
  IsPredicateField(M_3(x))
);
axiom (forall x: Ref ::
  { M_3(x) }
  getPredWandId(M_3(x)) == 0
);
function  M#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  M#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { M_3(x), M_3(x2) }
  M_3(x) == M_3(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { M#sm(x), M#sm(x2) }
  M#sm(x) == M#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { M#trigger(Heap, M_3(x)) }
  M#everUsed(M_3(x))
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
function  B_3(x: Ref): Field PredicateType_B FrameType;
function  B#sm(x: Ref): Field PredicateType_B PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(B_3(x)) }
  PredicateMaskField(B_3(x)) == B#sm(x)
);
axiom (forall x: Ref ::
  { B_3(x) }
  IsPredicateField(B_3(x))
);
axiom (forall x: Ref ::
  { B_3(x) }
  getPredWandId(B_3(x)) == 1
);
function  B#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  B#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { B_3(x), B_3(x2) }
  B_3(x) == B_3(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { B#sm(x), B#sm(x2) }
  B#sm(x) == B#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { B#trigger(Heap, B_3(x)) }
  B#everUsed(B_3(x))
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
      oldHeap := Heap;
      oldMask := Mask;
  
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
      assert {:msg "  Packaging wand might fail. Fraction (b ? write : none) might be negative. (conditionals1.vpr@16.3--16.50) [214584]"}
        perm >= NoPerm;
      b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
      Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- conditionals1.vpr@16.11--16.50
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
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
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (conditionals1.vpr@16.3--16.50) [214585]"}
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
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (conditionals1.vpr@16.3--16.50) [214586]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var arg: Ref;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
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
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(M(x), write) : true)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    if (b_5 && b_5) {
      if (i == 0) {
        
        // -- Transfer of acc(M(x), write)
          arg := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_3Mask[null, M_3(arg)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), write) might be negative. (conditionals1.vpr@26.3--26.47) [214587]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, M_3(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[null, M_3(arg):=Used_3Mask[null, M_3(arg)] + takeTransfer];
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                TempMask := ZeroMask[null, M_3(arg):=FullPerm];
                b_6 := b_6 && IdenticalOnKnownLocations(Ops_3Heap, Used_3Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, M_3(arg):=Ops_3Mask[null, M_3(arg)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_3(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[null, M_3(arg):=Used_3Mask[null, M_3(arg)] + takeTransfer];
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                TempMask := ZeroMask[null, M_3(arg):=FullPerm];
                b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                Mask := Mask[null, M_3(arg):=Mask[null, M_3(arg)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                  { newPMask[o_5, f_11] }
                  Heap[null, wand_1#sm(true, i == 0, x, true)][o_5, f_11] || Heap[null, M#sm(x)][o_5, f_11] ==> newPMask[o_5, f_11]
                );
                Heap := Heap[null, wand_1#sm(true, i == 0, x, true):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@26.3--26.47) [214588]"}
            (b_5 && b_5) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, M_3(arg)] == initNeededTransfer;
          
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of true --* (i == 0 ? acc(M(x), write) : true)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs5 -- conditionals1.vpr@28.10--28.46
          lhs5:
          Labellhs5Heap := WandDefLHSHeap;
          Labellhs5Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        if (i == 0) {
          perm := FullPerm;
          WandDefRHSMask := WandDefRHSMask[null, M_3(x):=WandDefRHSMask[null, M_3(x)] + perm];
          assume state(WandDefRHSHeap, WandDefRHSMask);
        }
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (conditionals1.vpr@28.10--28.46) [214590]"}
      FullPerm <= AssertMask[null, wand_1(true, i == 0, x, true)];
    AssertMask := AssertMask[null, wand_1(true, i == 0, x, true):=AssertMask[null, wand_1(true, i == 0, x, true)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i != 0 ==> acc(M(x), write) -- conditionals1.vpr@29.3--29.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (i != 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@29.10--29.30) [214592]"}
          perm <= AssertMask[null, M_3(x)];
      }
      AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(M(x), write) -- conditionals1.vpr@32.3--32.19
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@32.10--32.19) [214594]"}
        perm <= AssertMask[null, M_3(x)];
    }
    AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01b
// ==================================================

procedure test01b(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var arg_1_13: Ref;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
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
      Labellhs6Heap := Ops_5Heap;
      Labellhs6Mask := Ops_5Mask;
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
          arg_1_13 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_5Mask[null, M_3(arg_1_13)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), write) might be negative. (conditionals1.vpr@38.3--38.47) [214596]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, M_3(arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[null, M_3(arg_1_13):=Used_5Mask[null, M_3(arg_1_13)] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                TempMask := ZeroMask[null, M_3(arg_1_13):=FullPerm];
                b_10 := b_10 && IdenticalOnKnownLocations(Ops_5Heap, Used_5Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, M_3(arg_1_13):=Ops_5Mask[null, M_3(arg_1_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_3(arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[null, M_3(arg_1_13):=Used_5Mask[null, M_3(arg_1_13)] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                TempMask := ZeroMask[null, M_3(arg_1_13):=FullPerm];
                b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
                Mask := Mask[null, M_3(arg_1_13):=Mask[null, M_3(arg_1_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                  { newPMask[o_6, f_12] }
                  Heap[null, wand_2#sm(true, i == 0, true, x)][o_6, f_12] || Heap[null, M#sm(x)][o_6, f_12] ==> newPMask[o_6, f_12]
                );
                Heap := Heap[null, wand_2#sm(true, i == 0, true, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@38.3--38.47) [214597]"}
            (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[null, M_3(arg_1_13)] == initNeededTransfer;
          
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of true --* (i == 0 ? true : acc(M(x), write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs8 -- conditionals1.vpr@40.10--40.46
          lhs8:
          Labellhs8Heap := WandDefLHSHeap;
          Labellhs8Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        if (i == 0) {
        } else {
          perm := FullPerm;
          WandDefRHSMask := WandDefRHSMask[null, M_3(x):=WandDefRHSMask[null, M_3(x)] + perm];
          assume state(WandDefRHSHeap, WandDefRHSMask);
        }
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (conditionals1.vpr@40.10--40.46) [214598]"}
      FullPerm <= AssertMask[null, wand_2(true, i == 0, true, x)];
    AssertMask := AssertMask[null, wand_2(true, i == 0, true, x):=AssertMask[null, wand_2(true, i == 0, true, x)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i == 0 ==> acc(M(x), write) -- conditionals1.vpr@41.3--41.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@41.10--41.30) [214600]"}
          perm <= AssertMask[null, M_3(x)];
      }
      AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(M(x), write) -- conditionals1.vpr@44.3--44.19
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@44.10--44.19) [214602]"}
        perm <= AssertMask[null, M_3(x)];
    }
    AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_13: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_12: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var arg_2_13: Ref;
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
  var arg_3_13: Ref;
  var b_16: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
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
      Labellhs9Heap := Ops_7Heap;
      Labellhs9Mask := Ops_7Mask;
      b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operation(b1 ==> acc(M(x), 1 / 2)) && (b2 ==> acc(M(x), 1 / 4))
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_14 := b_14 && state(Used_7Heap, Used_7Mask);
    if (b_13 && b_13) {
      if (b1) {
        
        // -- Transfer of acc(M(x), 1 / 2)
          arg_2_13 := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_7Mask[null, M_3(arg_2_13)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), 1 / 2) might be negative. (conditionals1.vpr@50.3--50.70) [214603]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[null, M_3(arg_2_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_3(arg_2_13):=Used_7Mask[null, M_3(arg_2_13)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_3(arg_2_13):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Ops_7Heap, Used_7Heap, TempMask);
                Ops_7Mask := Ops_7Mask[null, M_3(arg_2_13):=Ops_7Mask[null, M_3(arg_2_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_3(arg_2_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_3(arg_2_13):=Used_7Mask[null, M_3(arg_2_13)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_3(arg_2_13):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                Mask := Mask[null, M_3(arg_2_13):=Mask[null, M_3(arg_2_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
                  { newPMask[o_40, f_52] }
                  Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4)][o_40, f_52] || Heap[null, M#sm(x)][o_40, f_52] ==> newPMask[o_40, f_52]
                );
                Heap := Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@50.3--50.70) [214604]"}
            (b_13 && b_13) && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[null, M_3(arg_2_13)] == initNeededTransfer;
          
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
          arg_3_13 := x;
          neededTransfer := 1 / 4;
          initNeededTransfer := Used_7Mask[null, M_3(arg_3_13)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), 1 / 4) might be negative. (conditionals1.vpr@50.3--50.70) [214605]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[null, M_3(arg_3_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_3(arg_3_13):=Used_7Mask[null, M_3(arg_3_13)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_3(arg_3_13):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Ops_7Heap, Used_7Heap, TempMask);
                Ops_7Mask := Ops_7Mask[null, M_3(arg_3_13):=Ops_7Mask[null, M_3(arg_3_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_13 && b_13) && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_3(arg_3_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, M_3(arg_3_13):=Used_7Mask[null, M_3(arg_3_13)] + takeTransfer];
                b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, M_3(arg_3_13):=FullPerm];
                b_14 := b_14 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                Mask := Mask[null, M_3(arg_3_13):=Mask[null, M_3(arg_3_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                  { newPMask[o_42, f_55] }
                  Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4)][o_42, f_55] || Heap[null, M#sm(x)][o_42, f_55] ==> newPMask[o_42, f_55]
                );
                Heap := Heap[null, wand_3#sm(true, b1, x, 1 / 2, b2, x, 1 / 4):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@50.3--50.70) [214606]"}
            (b_13 && b_13) && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[null, M_3(arg_3_13)] == initNeededTransfer;
          
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (b1 && b2) {
      perm := 1 / 4;
      assert {:msg "  Assert might fail. Fraction 1 / 4 might be negative. (conditionals1.vpr@52.10--52.37) [214607]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@52.10--52.37) [214608]"}
          perm <= AssertMask[null, M_3(x)];
      }
      AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && !b2 ==> acc(M(x), 1 / 2) -- conditionals1.vpr@53.3--53.38
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (b1 && !b2) {
      perm := 1 / 2;
      assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (conditionals1.vpr@53.10--53.38) [214609]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@53.10--53.38) [214610]"}
          perm <= AssertMask[null, M_3(x)];
      }
      AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && b2 ==> acc(M(x), 3 / 4) -- conditionals1.vpr@54.3--54.38
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (!b1 && b2) {
      perm := 3 / 4;
      assert {:msg "  Assert might fail. Fraction 3 / 4 might be negative. (conditionals1.vpr@54.10--54.38) [214611]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@54.10--54.38) [214612]"}
          perm <= AssertMask[null, M_3(x)];
      }
      AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !b1 && !b2 ==> acc(M(x), write) -- conditionals1.vpr@55.3--55.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (!b1 && !b2) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@55.10--55.34) [214614]"}
          perm <= AssertMask[null, M_3(x)];
      }
      AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_18: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_17: bool;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var boolCur_4: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_19: bool;
  var arg_4_13: Ref;
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
  var arg_5_12: Ref;
  var b_21: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
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
      Labellhs11Heap := Ops_9Heap;
      Labellhs11Mask := Ops_9Mask;
      b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(M(x), write) : acc(B(x), write))
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_19 := b_19 && state(Used_9Heap, Used_9Mask);
    if (b_18 && b_18) {
      if (i == 0) {
        
        // -- Transfer of acc(M(x), write)
          arg_4_13 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[null, M_3(arg_4_13)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(M(x), write) might be negative. (conditionals1.vpr@60.3--60.52) [214615]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[null, M_3(arg_4_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, M_3(arg_4_13):=Used_9Mask[null, M_3(arg_4_13)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, M_3(arg_4_13):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Ops_9Heap, Used_9Heap, TempMask);
                Ops_9Mask := Ops_9Mask[null, M_3(arg_4_13):=Ops_9Mask[null, M_3(arg_4_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, M_3(arg_4_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, M_3(arg_4_13):=Used_9Mask[null, M_3(arg_4_13)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, M_3(arg_4_13):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                Mask := Mask[null, M_3(arg_4_13):=Mask[null, M_3(arg_4_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
                  { newPMask[o_46, f_60] }
                  Heap[null, wand_4#sm(true, i == 0, x, x)][o_46, f_60] || Heap[null, M#sm(x)][o_46, f_60] ==> newPMask[o_46, f_60]
                );
                Heap := Heap[null, wand_4#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@60.3--60.52) [214616]"}
            (b_18 && b_18) && b_19 ==> neededTransfer == 0.000000000 && Used_9Mask[null, M_3(arg_4_13)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_20 := b_18 && b_19;
            b_20 := b_20 && state(Result_5Heap, Result_5Mask);
            b_20 := b_20 && sumMask(Result_5Mask, Ops_9Mask, Used_9Mask);
            b_20 := (b_20 && IdenticalOnKnownLocations(Ops_9Heap, Result_5Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_5Heap, Used_9Mask);
            b_20 := b_20 && state(Result_5Heap, Result_5Mask);
          b_18 := b_18 && b_20;
      } else {
        
        // -- Transfer of acc(B(x), write)
          arg_5_12 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[null, B_3(arg_5_12)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@60.3--60.52) [214617]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[null, B_3(arg_5_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, B_3(arg_5_12):=Used_9Mask[null, B_3(arg_5_12)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, B_3(arg_5_12):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Ops_9Heap, Used_9Heap, TempMask);
                Ops_9Mask := Ops_9Mask[null, B_3(arg_5_12):=Ops_9Mask[null, B_3(arg_5_12)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, B_3(arg_5_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[null, B_3(arg_5_12):=Used_9Mask[null, B_3(arg_5_12)] + takeTransfer];
                b_19 := b_19 && state(Used_9Heap, Used_9Mask);
                TempMask := ZeroMask[null, B_3(arg_5_12):=FullPerm];
                b_19 := b_19 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                Mask := Mask[null, B_3(arg_5_12):=Mask[null, B_3(arg_5_12)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o: Ref, f_61: (Field A B) ::
                  { newPMask[o, f_61] }
                  Heap[null, wand_4#sm(true, i == 0, x, x)][o, f_61] || Heap[null, B#sm(x)][o, f_61] ==> newPMask[o, f_61]
                );
                Heap := Heap[null, wand_4#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@60.3--60.52) [214618]"}
            (b_18 && b_18) && b_19 ==> neededTransfer == 0.000000000 && Used_9Mask[null, B_3(arg_5_12)] == initNeededTransfer;
          
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@61.3--61.52) [214619]"}
        FullPerm <= Mask[null, wand_4(true, i == 0, x, x)];
      Mask := Mask[null, wand_4(true, i == 0, x, x):=Mask[null, wand_4(true, i == 0, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      if (i == 0) {
        perm := FullPerm;
        Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
        assume state(Heap, Mask);
      } else {
        perm := FullPerm;
        Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@63.10--63.32) [214624]"}
        perm <= AssertMask[null, M_3(x)];
    }
    AssertMask := AssertMask[null, M_3(x):=AssertMask[null, M_3(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@63.10--63.32) [214626]"}
        perm <= AssertMask[null, B_3(x)];
    }
    AssertMask := AssertMask[null, B_3(x):=AssertMask[null, B_3(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_23: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_22: bool;
  var Labellhs14Heap: HeapType;
  var Labellhs14Mask: MaskType;
  var boolCur_5: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_24_1: bool;
  var arg_6_12: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_25_1: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var arg_7_12: Ref;
  var b_26_1: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
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
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
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
      Labellhs14Heap := Ops_11Heap;
      Labellhs14Mask := Ops_11Mask;
      b_23 := b_23 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(T(x), write) : acc(E(x), write))
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
    if (b_23 && b_23) {
      if (i == 0) {
        
        // -- Transfer of acc(T(x), write)
          arg_6_12 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_11Mask[null, T_1(arg_6_12)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@69.3--69.52) [214627]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[null, T_1(arg_6_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, T_1(arg_6_12):=Used_11Mask[null, T_1(arg_6_12)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, T_1(arg_6_12):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Ops_11Heap, Used_11Heap, TempMask);
                Ops_11Mask := Ops_11Mask[null, T_1(arg_6_12):=Ops_11Mask[null, T_1(arg_6_12)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_6_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, T_1(arg_6_12):=Used_11Mask[null, T_1(arg_6_12)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, T_1(arg_6_12):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Heap, Used_11Heap, TempMask);
                Mask := Mask[null, T_1(arg_6_12):=Mask[null, T_1(arg_6_12)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
                  { newPMask[o_14, f_3] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_14, f_3] || Heap[null, T#sm(x)][o_14, f_3] ==> newPMask[o_14, f_3]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@69.3--69.52) [214628]"}
            (b_23 && b_23) && b_24_1 ==> neededTransfer == 0.000000000 && Used_11Mask[null, T_1(arg_6_12)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_25_1 := b_23 && b_24_1;
            b_25_1 := b_25_1 && state(Result_7Heap, Result_7Mask);
            b_25_1 := b_25_1 && sumMask(Result_7Mask, Ops_11Mask, Used_11Mask);
            b_25_1 := (b_25_1 && IdenticalOnKnownLocations(Ops_11Heap, Result_7Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_7Heap, Used_11Mask);
            b_25_1 := b_25_1 && state(Result_7Heap, Result_7Mask);
          b_23 := b_23 && b_25_1;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_7_12 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_11Mask[null, E(arg_7_12)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@69.3--69.52) [214629]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[null, E(arg_7_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, E(arg_7_12):=Used_11Mask[null, E(arg_7_12)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, E(arg_7_12):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Ops_11Heap, Used_11Heap, TempMask);
                Ops_11Mask := Ops_11Mask[null, E(arg_7_12):=Ops_11Mask[null, E(arg_7_12)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_23 && b_23) && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_7_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[null, E(arg_7_12):=Used_11Mask[null, E(arg_7_12)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                TempMask := ZeroMask[null, E(arg_7_12):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Heap, Used_11Heap, TempMask);
                Mask := Mask[null, E(arg_7_12):=Mask[null, E(arg_7_12)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
                  { newPMask[o_3, f_24] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_3, f_24] || Heap[null, E#sm(x)][o_3, f_24] ==> newPMask[o_3, f_24]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@69.3--69.52) [214630]"}
            (b_23 && b_23) && b_24_1 ==> neededTransfer == 0.000000000 && Used_11Mask[null, E(arg_7_12)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_26_1 := b_23 && b_24_1;
            b_26_1 := b_26_1 && state(Result_8Heap, Result_8Mask);
            b_26_1 := b_26_1 && sumMask(Result_8Mask, Ops_11Mask, Used_11Mask);
            b_26_1 := (b_26_1 && IdenticalOnKnownLocations(Ops_11Heap, Result_8Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_8Heap, Used_11Mask);
            b_26_1 := b_26_1 && state(Result_8Heap, Result_8Mask);
          b_23 := b_23 && b_26_1;
      }
    }
    Mask := Mask[null, wand_5(true, i == 0, x, x):=Mask[null, wand_5(true, i == 0, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i == 0 ==> acc(T(x), write) -- conditionals1.vpr@72.3--72.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@72.10--72.30) [214632]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_28_1: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_27_1: bool;
  var Labellhs16Heap: HeapType;
  var Labellhs16Mask: MaskType;
  var boolCur_6: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_29_1: bool;
  var arg_8_12: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_30_1: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var arg_9_12: Ref;
  var b_31_1: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
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
    Mask := Mask[null, T_1(x):=Mask[null, T_1(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, E(x):=Mask[null, E(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* (i == 0 ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@78.3--78.52
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_28_1 := b_28_1 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_27_1 := b_27_1 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_28_1) {
      b_28_1 := b_28_1;
    }
    b_28_1 := b_28_1 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs16 -- conditionals1.vpr@78.11--78.52
      lhs16:
      Labellhs16Heap := Ops_13Heap;
      Labellhs16Mask := Ops_13Mask;
      b_28_1 := b_28_1 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    // Translating exec of non-ghost operation(i == 0 ? acc(T(x), write) : acc(E(x), write))
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_29_1 := b_29_1 && state(Used_13Heap, Used_13Mask);
    if (b_28_1 && b_28_1) {
      if (i == 0) {
        
        // -- Transfer of acc(T(x), write)
          arg_8_12 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_13Mask[null, T_1(arg_8_12)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@78.3--78.52) [214633]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28_1 && b_28_1) && b_29_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[null, T_1(arg_8_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, T_1(arg_8_12):=Used_13Mask[null, T_1(arg_8_12)] + takeTransfer];
                b_29_1 := b_29_1 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, T_1(arg_8_12):=FullPerm];
                b_29_1 := b_29_1 && IdenticalOnKnownLocations(Ops_13Heap, Used_13Heap, TempMask);
                Ops_13Mask := Ops_13Mask[null, T_1(arg_8_12):=Ops_13Mask[null, T_1(arg_8_12)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28_1 && b_28_1) && b_29_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_8_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, T_1(arg_8_12):=Used_13Mask[null, T_1(arg_8_12)] + takeTransfer];
                b_29_1 := b_29_1 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, T_1(arg_8_12):=FullPerm];
                b_29_1 := b_29_1 && IdenticalOnKnownLocations(Heap, Used_13Heap, TempMask);
                Mask := Mask[null, T_1(arg_8_12):=Mask[null, T_1(arg_8_12)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
                  { newPMask[o_1, f_10] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_1, f_10] || Heap[null, T#sm(x)][o_1, f_10] ==> newPMask[o_1, f_10]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@78.3--78.52) [214634]"}
            (b_28_1 && b_28_1) && b_29_1 ==> neededTransfer == 0.000000000 && Used_13Mask[null, T_1(arg_8_12)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_30_1 := b_28_1 && b_29_1;
            b_30_1 := b_30_1 && state(Result_9Heap, Result_9Mask);
            b_30_1 := b_30_1 && sumMask(Result_9Mask, Ops_13Mask, Used_13Mask);
            b_30_1 := (b_30_1 && IdenticalOnKnownLocations(Ops_13Heap, Result_9Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_9Heap, Used_13Mask);
            b_30_1 := b_30_1 && state(Result_9Heap, Result_9Mask);
          b_28_1 := b_28_1 && b_30_1;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_9_12 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_13Mask[null, E(arg_9_12)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@78.3--78.52) [214635]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28_1 && b_28_1) && b_29_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[null, E(arg_9_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, E(arg_9_12):=Used_13Mask[null, E(arg_9_12)] + takeTransfer];
                b_29_1 := b_29_1 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, E(arg_9_12):=FullPerm];
                b_29_1 := b_29_1 && IdenticalOnKnownLocations(Ops_13Heap, Used_13Heap, TempMask);
                Ops_13Mask := Ops_13Mask[null, E(arg_9_12):=Ops_13Mask[null, E(arg_9_12)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_28_1 && b_28_1) && b_29_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_9_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[null, E(arg_9_12):=Used_13Mask[null, E(arg_9_12)] + takeTransfer];
                b_29_1 := b_29_1 && state(Used_13Heap, Used_13Mask);
                TempMask := ZeroMask[null, E(arg_9_12):=FullPerm];
                b_29_1 := b_29_1 && IdenticalOnKnownLocations(Heap, Used_13Heap, TempMask);
                Mask := Mask[null, E(arg_9_12):=Mask[null, E(arg_9_12)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
                  { newPMask[o_15, f_51] }
                  Heap[null, wand_5#sm(true, i == 0, x, x)][o_15, f_51] || Heap[null, E#sm(x)][o_15, f_51] ==> newPMask[o_15, f_51]
                );
                Heap := Heap[null, wand_5#sm(true, i == 0, x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@78.3--78.52) [214636]"}
            (b_28_1 && b_28_1) && b_29_1 ==> neededTransfer == 0.000000000 && Used_13Mask[null, E(arg_9_12)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_31_1 := b_28_1 && b_29_1;
            b_31_1 := b_31_1 && state(Result_10Heap, Result_10Mask);
            b_31_1 := b_31_1 && sumMask(Result_10Mask, Ops_13Mask, Used_13Mask);
            b_31_1 := (b_31_1 && IdenticalOnKnownLocations(Ops_13Heap, Result_10Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_10Heap, Used_13Mask);
            b_31_1 := b_31_1 && state(Result_10Heap, Result_10Mask);
          b_28_1 := b_28_1 && b_31_1;
      }
    }
    Mask := Mask[null, wand_5(true, i == 0, x, x):=Mask[null, wand_5(true, i == 0, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i != 0 ==> acc(T(x), write) -- conditionals1.vpr@80.3--80.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (i != 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@80.10--80.30) [214638]"}
          perm <= AssertMask[null, T_1(x)];
      }
      AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i == 0 ==> acc(E(x), write) -- conditionals1.vpr@81.3--81.30
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@81.10--81.30) [214640]"}
          perm <= AssertMask[null, E(x)];
      }
      AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (i == 0 ? acc(E(x), write) : acc(T(x), write)) -- conditionals1.vpr@83.3--83.40
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (i == 0) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@83.10--83.40) [214642]"}
          perm <= AssertMask[null, E(x)];
      }
      AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@83.10--83.40) [214644]"}
          perm <= AssertMask[null, T_1(x)];
      }
      AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(E(x), write) && acc(T(x), write) -- conditionals1.vpr@86.3--86.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@86.10--86.32) [214646]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@86.10--86.32) [214648]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_33_1: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_32_1: bool;
  var Labellhs18Heap: HeapType;
  var Labellhs18Mask: MaskType;
  var boolCur_7: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_34_1: bool;
  var arg_10_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_35_1: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var arg_11: Ref;
  var b_36_1: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var arg_12: Ref;
  var b_37_1: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(M(x), write) --*
  // acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) {
  // } -- conditionals1.vpr@92.3--92.73
    havoc Ops_15Heap;
    Ops_15Mask := ZeroMask;
    b_33_1 := b_33_1 && state(Ops_15Heap, Ops_15Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_32_1 := b_32_1 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_33_1) {
      perm := FullPerm;
      b_33_1 := b_33_1;
      Ops_15Mask := Ops_15Mask[null, M_3(x):=Ops_15Mask[null, M_3(x)] + perm];
      b_33_1 := b_33_1 && state(Ops_15Heap, Ops_15Mask);
    }
    b_33_1 := b_33_1 && state(Ops_15Heap, Ops_15Mask);
    
    // -- Translating statement: label lhs18 -- conditionals1.vpr@92.11--92.73
      lhs18:
      Labellhs18Heap := Ops_15Heap;
      Labellhs18Mask := Ops_15Mask;
      b_33_1 := b_33_1 && state(Ops_15Heap, Ops_15Mask);
    boolCur_7 := true;
    // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_34_1 := b_34_1 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(B(x), write)
      arg_10_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_15Mask[null, B_3(arg_10_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@92.3--92.73) [214649]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_15Mask[null, B_3(arg_10_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, B_3(arg_10_1):=Used_15Mask[null, B_3(arg_10_1)] + takeTransfer];
            b_34_1 := b_34_1 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, B_3(arg_10_1):=FullPerm];
            b_34_1 := b_34_1 && IdenticalOnKnownLocations(Ops_15Heap, Used_15Heap, TempMask);
            Ops_15Mask := Ops_15Mask[null, B_3(arg_10_1):=Ops_15Mask[null, B_3(arg_10_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, B_3(arg_10_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, B_3(arg_10_1):=Used_15Mask[null, B_3(arg_10_1)] + takeTransfer];
            b_34_1 := b_34_1 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, B_3(arg_10_1):=FullPerm];
            b_34_1 := b_34_1 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
            Mask := Mask[null, B_3(arg_10_1):=Mask[null, B_3(arg_10_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
              { newPMask[o_4, f_54] }
              Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_4, f_54] || Heap[null, B#sm(x)][o_4, f_54] ==> newPMask[o_4, f_54]
            );
            Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@92.3--92.73) [214650]"}
        (b_33_1 && b_33_1) && b_34_1 ==> neededTransfer == 0.000000000 && Used_15Mask[null, B_3(arg_10_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_35_1 := b_33_1 && b_34_1;
        b_35_1 := b_35_1 && state(Result_11Heap, Result_11Mask);
        b_35_1 := b_35_1 && sumMask(Result_11Mask, Ops_15Mask, Used_15Mask);
        b_35_1 := (b_35_1 && IdenticalOnKnownLocations(Ops_15Heap, Result_11Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_11Heap, Used_15Mask);
        b_35_1 := b_35_1 && state(Result_11Heap, Result_11Mask);
      b_33_1 := b_33_1 && b_35_1;
    if (b_33_1 && b_33_1) {
      if (get(Result_11Heap, x, i)) {
        
        // -- Transfer of acc(T(x), write)
          arg_11 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_15Mask[null, T_1(arg_11)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@92.3--92.73) [214651]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[null, T_1(arg_11)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, T_1(arg_11):=Used_15Mask[null, T_1(arg_11)] + takeTransfer];
                b_34_1 := b_34_1 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, T_1(arg_11):=FullPerm];
                b_34_1 := b_34_1 && IdenticalOnKnownLocations(Ops_15Heap, Used_15Heap, TempMask);
                Ops_15Mask := Ops_15Mask[null, T_1(arg_11):=Ops_15Mask[null, T_1(arg_11)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, T_1(arg_11)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, T_1(arg_11):=Used_15Mask[null, T_1(arg_11)] + takeTransfer];
                b_34_1 := b_34_1 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, T_1(arg_11):=FullPerm];
                b_34_1 := b_34_1 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
                Mask := Mask[null, T_1(arg_11):=Mask[null, T_1(arg_11)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
                  { newPMask[o_12, f_25] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_12, f_25] || Heap[null, T#sm(x)][o_12, f_25] ==> newPMask[o_12, f_25]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@92.3--92.73) [214652]"}
            (b_33_1 && b_33_1) && b_34_1 ==> neededTransfer == 0.000000000 && Used_15Mask[null, T_1(arg_11)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_36_1 := b_33_1 && b_34_1;
            b_36_1 := b_36_1 && state(Result_12Heap, Result_12Mask);
            b_36_1 := b_36_1 && sumMask(Result_12Mask, Ops_15Mask, Used_15Mask);
            b_36_1 := (b_36_1 && IdenticalOnKnownLocations(Ops_15Heap, Result_12Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_12Heap, Used_15Mask);
            b_36_1 := b_36_1 && state(Result_12Heap, Result_12Mask);
          b_33_1 := b_33_1 && b_36_1;
      } else {
        
        // -- Transfer of acc(E(x), write)
          arg_12 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_15Mask[null, E(arg_12)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@92.3--92.73) [214653]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[null, E(arg_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, E(arg_12):=Used_15Mask[null, E(arg_12)] + takeTransfer];
                b_34_1 := b_34_1 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, E(arg_12):=FullPerm];
                b_34_1 := b_34_1 && IdenticalOnKnownLocations(Ops_15Heap, Used_15Heap, TempMask);
                Ops_15Mask := Ops_15Mask[null, E(arg_12):=Ops_15Mask[null, E(arg_12)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_33_1 && b_33_1) && b_34_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, E(arg_12)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_15Mask := Used_15Mask[null, E(arg_12):=Used_15Mask[null, E(arg_12)] + takeTransfer];
                b_34_1 := b_34_1 && state(Used_15Heap, Used_15Mask);
                TempMask := ZeroMask[null, E(arg_12):=FullPerm];
                b_34_1 := b_34_1 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
                Mask := Mask[null, E(arg_12):=Mask[null, E(arg_12)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
                  { newPMask[o_41, f_21] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_41, f_21] || Heap[null, E#sm(x)][o_41, f_21] ==> newPMask[o_41, f_21]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@92.3--92.73) [214654]"}
            (b_33_1 && b_33_1) && b_34_1 ==> neededTransfer == 0.000000000 && Used_15Mask[null, E(arg_12)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_37_1 := b_33_1 && b_34_1;
            b_37_1 := b_37_1 && state(Result_13Heap, Result_13Mask);
            b_37_1 := b_37_1 && sumMask(Result_13Mask, Ops_15Mask, Used_15Mask);
            b_37_1 := (b_37_1 && IdenticalOnKnownLocations(Ops_15Heap, Result_13Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_13Heap, Used_15Mask);
            b_37_1 := b_37_1 && state(Result_13Heap, Result_13Mask);
          b_33_1 := b_33_1 && b_37_1;
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    
    // -- Check definedness of get(x, i)
      if (*) {
        // Stop execution
        assume false;
      }
    if (get(AssertHeap, x, i)) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@94.10--94.43) [214656]"}
          perm <= AssertMask[null, E(x)];
      }
      AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@94.10--94.43) [214658]"}
          perm <= AssertMask[null, T_1(x)];
      }
      AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(E(x), write) && acc(T(x), write) -- conditionals1.vpr@97.3--97.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@97.10--97.32) [214660]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@97.10--97.32) [214662]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_39: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_38: bool;
  var Labellhs20Heap: HeapType;
  var Labellhs20Mask: MaskType;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
      oldHeap := Heap;
      oldMask := Mask;
  
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
      Ops_17Mask := Ops_17Mask[null, M_3(x):=Ops_17Mask[null, M_3(x)] + perm];
      b_39 := b_39 && state(Ops_17Heap, Ops_17Mask);
    }
    b_39 := b_39 && state(Ops_17Heap, Ops_17Mask);
    
    // -- Translating statement: label lhs20 -- conditionals1.vpr@103.11--103.73
      lhs20:
      Labellhs20Heap := Ops_17Heap;
      Labellhs20Mask := Ops_17Mask;
      b_39 := b_39 && state(Ops_17Heap, Ops_17Mask);
    boolCur_8 := true;
    // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_40 := b_40 && state(Used_17Heap, Used_17Mask);
    
    // -- Transfer of acc(B(x), write)
      arg_13 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_17Mask[null, B_3(arg_13)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@103.3--103.73) [214663]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_17Mask[null, B_3(arg_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_17Mask := Used_17Mask[null, B_3(arg_13):=Used_17Mask[null, B_3(arg_13)] + takeTransfer];
            b_40 := b_40 && state(Used_17Heap, Used_17Mask);
            TempMask := ZeroMask[null, B_3(arg_13):=FullPerm];
            b_40 := b_40 && IdenticalOnKnownLocations(Ops_17Heap, Used_17Heap, TempMask);
            Ops_17Mask := Ops_17Mask[null, B_3(arg_13):=Ops_17Mask[null, B_3(arg_13)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_39 && b_39) && b_40) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, B_3(arg_13)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_17Mask := Used_17Mask[null, B_3(arg_13):=Used_17Mask[null, B_3(arg_13)] + takeTransfer];
            b_40 := b_40 && state(Used_17Heap, Used_17Mask);
            TempMask := ZeroMask[null, B_3(arg_13):=FullPerm];
            b_40 := b_40 && IdenticalOnKnownLocations(Heap, Used_17Heap, TempMask);
            Mask := Mask[null, B_3(arg_13):=Mask[null, B_3(arg_13)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
              { newPMask[o_23, f_13] }
              Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_23, f_13] || Heap[null, B#sm(x)][o_23, f_13] ==> newPMask[o_23, f_13]
            );
            Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@103.3--103.73) [214664]"}
        (b_39 && b_39) && b_40 ==> neededTransfer == 0.000000000 && Used_17Mask[null, B_3(arg_13)] == initNeededTransfer;
      
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
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@103.3--103.73) [214665]"}
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
                assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
                  { newPMask[o_13, f_65] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_13, f_65] || Heap[null, T#sm(x)][o_13, f_65] ==> newPMask[o_13, f_65]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@103.3--103.73) [214666]"}
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
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@103.3--103.73) [214667]"}
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
                assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
                  { newPMask[o_51, f_66] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_51, f_66] || Heap[null, E#sm(x)][o_51, f_66] ==> newPMask[o_51, f_66]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@103.3--103.73) [214668]"}
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@104.3--104.71) [214669]"}
        FullPerm <= Mask[null, wand_6(x, x, get(Heap, x, i), x, x)];
      Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@104.3--104.71) [214671]"}
          perm <= Mask[null, M_3(x)];
      }
      Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@106.10--106.45) [214676]"}
        perm <= AssertMask[null, B_3(x)];
    }
    AssertMask := AssertMask[null, B_3(x):=AssertMask[null, B_3(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@106.10--106.45) [214678]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@106.10--106.45) [214680]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_19Heap: HeapType;
  var Ops_19Mask: MaskType;
  var b_45: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_44: bool;
  var Labellhs23Heap: HeapType;
  var Labellhs23Mask: MaskType;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
      oldHeap := Heap;
      oldMask := Mask;
  
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
      Ops_19Mask := Ops_19Mask[null, M_3(x):=Ops_19Mask[null, M_3(x)] + perm];
      b_45 := b_45 && state(Ops_19Heap, Ops_19Mask);
    }
    b_45 := b_45 && state(Ops_19Heap, Ops_19Mask);
    
    // -- Translating statement: label lhs23 -- conditionals1.vpr@112.11--112.73
      lhs23:
      Labellhs23Heap := Ops_19Heap;
      Labellhs23Mask := Ops_19Mask;
      b_45 := b_45 && state(Ops_19Heap, Ops_19Mask);
    boolCur_9 := true;
    // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
    havoc Used_19Heap;
    Used_19Mask := ZeroMask;
    b_46 := b_46 && state(Used_19Heap, Used_19Mask);
    
    // -- Transfer of acc(B(x), write)
      arg_16 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_19Mask[null, B_3(arg_16)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@112.3--112.73) [214681]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_19Mask[null, B_3(arg_16)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[null, B_3(arg_16):=Used_19Mask[null, B_3(arg_16)] + takeTransfer];
            b_46 := b_46 && state(Used_19Heap, Used_19Mask);
            TempMask := ZeroMask[null, B_3(arg_16):=FullPerm];
            b_46 := b_46 && IdenticalOnKnownLocations(Ops_19Heap, Used_19Heap, TempMask);
            Ops_19Mask := Ops_19Mask[null, B_3(arg_16):=Ops_19Mask[null, B_3(arg_16)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_45 && b_45) && b_46) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, B_3(arg_16)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_19Mask := Used_19Mask[null, B_3(arg_16):=Used_19Mask[null, B_3(arg_16)] + takeTransfer];
            b_46 := b_46 && state(Used_19Heap, Used_19Mask);
            TempMask := ZeroMask[null, B_3(arg_16):=FullPerm];
            b_46 := b_46 && IdenticalOnKnownLocations(Heap, Used_19Heap, TempMask);
            Mask := Mask[null, B_3(arg_16):=Mask[null, B_3(arg_16)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
              { newPMask[o_52, f_14] }
              Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_52, f_14] || Heap[null, B#sm(x)][o_52, f_14] ==> newPMask[o_52, f_14]
            );
            Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@112.3--112.73) [214682]"}
        (b_45 && b_45) && b_46 ==> neededTransfer == 0.000000000 && Used_19Mask[null, B_3(arg_16)] == initNeededTransfer;
      
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
          assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@112.3--112.73) [214683]"}
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
                assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
                  { newPMask[o_20, f_50] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_20, f_50] || Heap[null, T#sm(x)][o_20, f_50] ==> newPMask[o_20, f_50]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@112.3--112.73) [214684]"}
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
          assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@112.3--112.73) [214685]"}
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
                assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
                  { newPMask[o_58, f_30] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_58, f_30] || Heap[null, E#sm(x)][o_58, f_30] ==> newPMask[o_58, f_30]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@112.3--112.73) [214686]"}
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
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@113.3--113.71) [214687]"}
        FullPerm <= Mask[null, wand_6(x, x, get(Heap, x, i), x, x)];
      Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@113.3--113.71) [214689]"}
          perm <= Mask[null, M_3(x)];
      }
      Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@115.10--115.45) [214694]"}
        perm <= AssertMask[null, B_3(x)];
    }
    AssertMask := AssertMask[null, B_3(x):=AssertMask[null, B_3(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@115.10--115.45) [214696]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@115.10--115.45) [214698]"}
        perm <= AssertMask[null, T_1(x)];
    }
    AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- conditionals1.vpr@118.3--118.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals1.vpr@118.10--118.15) [214699]"}
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_21Heap: HeapType;
  var Ops_21Mask: MaskType;
  var b_51: bool;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_50: bool;
  var Labellhs26Heap: HeapType;
  var Labellhs26Mask: MaskType;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Ops_23Heap: HeapType;
  var Ops_23Mask: MaskType;
  var b_57: bool;
  var Used_22Heap: HeapType;
  var Used_22Mask: MaskType;
  var b_56: bool;
  var Labellhs28Heap: HeapType;
  var Labellhs28Mask: MaskType;
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
    Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
      oldHeap := Heap;
      oldMask := Mask;
  
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
          Ops_21Mask := Ops_21Mask[null, M_3(x):=Ops_21Mask[null, M_3(x)] + perm];
          b_51 := b_51 && state(Ops_21Heap, Ops_21Mask);
        }
        b_51 := b_51 && state(Ops_21Heap, Ops_21Mask);
        
        // -- Translating statement: label lhs26 -- conditionals1.vpr@125.13--125.75
          lhs26:
          Labellhs26Heap := Ops_21Heap;
          Labellhs26Mask := Ops_21Mask;
          b_51 := b_51 && state(Ops_21Heap, Ops_21Mask);
        boolCur_10 := true;
        // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
        havoc Used_21Heap;
        Used_21Mask := ZeroMask;
        b_52 := b_52 && state(Used_21Heap, Used_21Mask);
        
        // -- Transfer of acc(B(x), write)
          arg_19 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_21Mask[null, B_3(arg_19)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@125.5--125.75) [214700]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_21Mask[null, B_3(arg_19)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_21Mask := Used_21Mask[null, B_3(arg_19):=Used_21Mask[null, B_3(arg_19)] + takeTransfer];
                b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                TempMask := ZeroMask[null, B_3(arg_19):=FullPerm];
                b_52 := b_52 && IdenticalOnKnownLocations(Ops_21Heap, Used_21Heap, TempMask);
                Ops_21Mask := Ops_21Mask[null, B_3(arg_19):=Ops_21Mask[null, B_3(arg_19)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_51 && b_51) && b_52) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, B_3(arg_19)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_21Mask := Used_21Mask[null, B_3(arg_19):=Used_21Mask[null, B_3(arg_19)] + takeTransfer];
                b_52 := b_52 && state(Used_21Heap, Used_21Mask);
                TempMask := ZeroMask[null, B_3(arg_19):=FullPerm];
                b_52 := b_52 && IdenticalOnKnownLocations(Heap, Used_21Heap, TempMask);
                Mask := Mask[null, B_3(arg_19):=Mask[null, B_3(arg_19)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
                  { newPMask[o_10, f_67] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_10, f_67] || Heap[null, B#sm(x)][o_10, f_67] ==> newPMask[o_10, f_67]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@125.5--125.75) [214701]"}
            (b_51 && b_51) && b_52 ==> neededTransfer == 0.000000000 && Used_21Mask[null, B_3(arg_19)] == initNeededTransfer;
          
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
              assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@125.5--125.75) [214702]"}
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
                    assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
                      { newPMask[o_18, f_18] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_18, f_18] || Heap[null, T#sm(x)][o_18, f_18] ==> newPMask[o_18, f_18]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@125.5--125.75) [214703]"}
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
              assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@125.5--125.75) [214704]"}
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
                    assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
                      { newPMask[o_66, f_28] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_66, f_28] || Heap[null, E#sm(x)][o_66, f_28] ==> newPMask[o_66, f_28]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@125.5--125.75) [214705]"}
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
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@126.12--126.21) [214707]"}
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
          Ops_23Mask := Ops_23Mask[null, M_3(x):=Ops_23Mask[null, M_3(x)] + perm];
          b_57 := b_57 && state(Ops_23Heap, Ops_23Mask);
        }
        b_57 := b_57 && state(Ops_23Heap, Ops_23Mask);
        
        // -- Translating statement: label lhs28 -- conditionals1.vpr@128.13--128.75
          lhs28:
          Labellhs28Heap := Ops_23Heap;
          Labellhs28Mask := Ops_23Mask;
          b_57 := b_57 && state(Ops_23Heap, Ops_23Mask);
        boolCur_11 := true;
        // Translating exec of non-ghost operationacc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write))
        havoc Used_23Heap;
        Used_23Mask := ZeroMask;
        b_58 := b_58 && state(Used_23Heap, Used_23Mask);
        
        // -- Transfer of acc(B(x), write)
          arg_22 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_23Mask[null, B_3(arg_22)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(B(x), write) might be negative. (conditionals1.vpr@128.5--128.75) [214708]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_23Mask[null, B_3(arg_22)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_23Mask := Used_23Mask[null, B_3(arg_22):=Used_23Mask[null, B_3(arg_22)] + takeTransfer];
                b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                TempMask := ZeroMask[null, B_3(arg_22):=FullPerm];
                b_58 := b_58 && IdenticalOnKnownLocations(Ops_23Heap, Used_23Heap, TempMask);
                Ops_23Mask := Ops_23Mask[null, B_3(arg_22):=Ops_23Mask[null, B_3(arg_22)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_57 && b_57) && b_58) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, B_3(arg_22)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_23Mask := Used_23Mask[null, B_3(arg_22):=Used_23Mask[null, B_3(arg_22)] + takeTransfer];
                b_58 := b_58 && state(Used_23Heap, Used_23Mask);
                TempMask := ZeroMask[null, B_3(arg_22):=FullPerm];
                b_58 := b_58 && IdenticalOnKnownLocations(Heap, Used_23Heap, TempMask);
                Mask := Mask[null, B_3(arg_22):=Mask[null, B_3(arg_22)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
                  { newPMask[o_11, f_34] }
                  Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_11, f_34] || Heap[null, B#sm(x)][o_11, f_34] ==> newPMask[o_11, f_34]
                );
                Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@128.5--128.75) [214709]"}
            (b_57 && b_57) && b_58 ==> neededTransfer == 0.000000000 && Used_23Mask[null, B_3(arg_22)] == initNeededTransfer;
          
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
              assert {:msg "  Packaging wand might fail. Fraction acc(T(x), write) might be negative. (conditionals1.vpr@128.5--128.75) [214710]"}
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
                    assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
                      { newPMask[o_19, f_57] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_19, f_57] || Heap[null, T#sm(x)][o_19, f_57] ==> newPMask[o_19, f_57]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@128.5--128.75) [214711]"}
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
              assert {:msg "  Packaging wand might fail. Fraction acc(E(x), write) might be negative. (conditionals1.vpr@128.5--128.75) [214712]"}
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
                    assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
                      { newPMask[o_21, f_58] }
                      Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x)][o_21, f_58] || Heap[null, E#sm(x)][o_21, f_58] ==> newPMask[o_21, f_58]
                    );
                    Heap := Heap[null, wand_6#sm(x, x, get(Heap, x, i), x, x):=newPMask];
                  }
                }
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@128.5--128.75) [214713]"}
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
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@129.12--129.21) [214715]"}
            perm <= AssertMask[null, E(x)];
        }
        AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(M(x), write) --*
  //   acc(B(x), write) && (get(x, i) ? acc(T(x), write) : acc(E(x), write)) -- conditionals1.vpr@132.3--132.71
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (conditionals1.vpr@132.3--132.71) [214716]"}
        FullPerm <= Mask[null, wand_6(x, x, get(Heap, x, i), x, x)];
      Mask := Mask[null, wand_6(x, x, get(Heap, x, i), x, x):=Mask[null, wand_6(x, x, get(Heap, x, i), x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access M(x) (conditionals1.vpr@132.3--132.71) [214718]"}
          perm <= Mask[null, M_3(x)];
      }
      Mask := Mask[null, M_3(x):=Mask[null, M_3(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, B_3(x):=Mask[null, B_3(x)] + perm];
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
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access B(x) (conditionals1.vpr@134.10--134.45) [214723]"}
        perm <= AssertMask[null, B_3(x)];
    }
    AssertMask := AssertMask[null, B_3(x):=AssertMask[null, B_3(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access T(x) (conditionals1.vpr@134.10--134.45) [214725]"}
        perm <= AssertMask[null, T_1(x)];
    }
    AssertMask := AssertMask[null, T_1(x):=AssertMask[null, T_1(x)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access E(x) (conditionals1.vpr@134.10--134.45) [214727]"}
        perm <= AssertMask[null, E(x)];
    }
    AssertMask := AssertMask[null, E(x):=AssertMask[null, E(x)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- conditionals1.vpr@137.3--137.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (conditionals1.vpr@137.10--137.15) [214728]"}
      false;
    assume state(Heap, Mask);
}