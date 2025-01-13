// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:08:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/packaging.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/packaging-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand(arg1, arg2, arg3, arg4, arg5) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);
type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_3(arg1, arg2, arg3, arg4) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_3(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4)) }
  wand_3#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_3(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4), wand_3(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_3(arg1, arg2, arg3, arg4) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
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
  getPredWandId(wand_5(arg1, arg2, arg3)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_5(arg1, arg2, arg3), wand_5(arg1_2, arg2_2, arg3_2) }
  wand_5(arg1, arg2, arg3) == wand_5(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_4;
function  wand_4(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm): Field WandType_wand_4 int;
function  wand_4#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm): Field WandType_wand_4 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_4#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5, arg6)) == 5
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: bool, arg5_2: Ref, arg6_2: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5, arg6) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField Ref;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique h: Field NormalField Ref;
axiom !IsPredicateField(h);
axiom !IsWandField(h);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var perm: Perm;
  var Labellhs2Mask: MaskType;
  var Labellhs2Heap: HeapType;
  var boolCur: bool;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_3: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur_1: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_6: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) --* false {
  //   package acc(x.f, write) --* false {
  //   }
  // } -- packaging.vpr@9.3--12.4
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
    
    // -- Translating statement: label lhs2 -- packaging.vpr@9.11--9.46
      lhs2:
      Labellhs2Mask := Ops_1Mask;
      Labellhs2Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: package acc(x.f, write) --* false {
  // } -- packaging.vpr@11.7--11.35
        havoc Ops_3Heap;
        Ops_3Mask := ZeroMask;
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_3) {
          perm := FullPerm;
          b_3 := b_3 && x != null;
          Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
          b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        }
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        
        // -- Translating statement: label lhs4 -- packaging.vpr@11.16--11.34
          lhs4:
          Labellhs4Mask := Ops_3Mask;
          Labellhs4Heap := Ops_3Heap;
          b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        boolCur_1 := true;
        // Translating exec of non-ghost operationfalse
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (packaging.vpr@11.7--11.35) [130359]"}
          (b_3 && (b_3 && b_1_1)) && b_4 ==> false;
        Ops_1Mask := Ops_1Mask[null, wand_1(x, FullPerm, false):=Ops_1Mask[null, wand_1(x, FullPerm, false)] + FullPerm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) --* false
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write) --* false
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_5) {
          if (b_1_1) {
            
            // -- Check definedness of acc(x.f, write) --* false
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs6 -- packaging.vpr@9.27--9.45
                  lhs6:
                  Labellhs6Mask := WandDefLHSMask;
                  Labellhs6Heap := WandDefLHSHeap;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                assume false;
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_3Mask[null, wand_1(x, FullPerm, false)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) --* false might be negative. (packaging.vpr@9.3--12.4) [130360]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, wand_1(x, FullPerm, false)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, wand_1(x, FullPerm, false):=Used_3Mask[null, wand_1(x, FullPerm, false)] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            Ops_1Mask := Ops_1Mask[null, wand_1(x, FullPerm, false):=Ops_1Mask[null, wand_1(x, FullPerm, false)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_1(x, FullPerm, false)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, wand_1(x, FullPerm, false):=Used_3Mask[null, wand_1(x, FullPerm, false)] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            Mask := Mask[null, wand_1(x, FullPerm, false):=Mask[null, wand_1(x, FullPerm, false)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (packaging.vpr@9.3--12.4) [130361]"}
        (b_1_1 && b_1_1) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[null, wand_1(x, FullPerm, false)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_1_1 && b_5;
        b_6 := b_6 && state(ResultHeap, ResultMask);
        b_6 := b_6 && sumMask(ResultMask, Ops_1Mask, Used_3Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, ResultHeap, Used_3Mask);
        b_6 := b_6 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_6;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, false):=Mask[null, wand(x, FullPerm, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_8: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var perm: Perm;
  var Labellhs8Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var boolCur_2: bool;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_10: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Labellhs10Mask: MaskType;
  var Labellhs10Heap: HeapType;
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
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs12Mask: MaskType;
  var Labellhs12Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_14: bool;
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) --* acc(x.f, write) {
  //   package acc(x.f, write) --* acc(x.f, write) {
  //   }
  // } -- packaging.vpr@16.3--18.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_8) {
      perm := FullPerm;
      b_8 := b_8 && x != null;
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    }
    b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs8 -- packaging.vpr@16.11--16.49
      lhs8:
      Labellhs8Mask := Ops_5Mask;
      Labellhs8Heap := Ops_5Heap;
      b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_8) {
      
      // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) {
  // } -- packaging.vpr@17.7--17.38
        havoc Ops_7Heap;
        Ops_7Mask := ZeroMask;
        b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_9 := b_9 && state(Used_5Heap, Used_5Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_10) {
          perm := FullPerm;
          b_10 := b_10 && x != null;
          Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
          b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
        }
        b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
        
        // -- Translating statement: label lhs10 -- packaging.vpr@17.16--17.37
          lhs10:
          Labellhs10Mask := Ops_7Mask;
          Labellhs10Heap := Ops_7Heap;
          b_10 := b_10 && state(Ops_7Heap, Ops_7Mask);
        boolCur_3 := true;
        // Translating exec of non-ghost operationacc(x.f, write)
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_11 := b_11 && state(Used_6Heap, Used_6Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_6Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (packaging.vpr@17.7--17.38) [130362]"}
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
                Ops_5Heap := Ops_5Heap[null, wand_3#sm(x, FullPerm, x, FullPerm):=Ops_5Heap[null, wand_3#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
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
                Heap := Heap[null, wand_3#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_3#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging.vpr@17.7--17.38) [130363]"}
            (b_10 && (b_10 && b_8)) && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_10 && b_11;
            b_12 := b_12 && state(Result_1Heap, Result_1Mask);
            b_12 := b_12 && sumMask(Result_1Mask, Ops_7Mask, Used_6Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_7Heap, Result_1Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_1Heap, Used_6Mask);
            b_12 := b_12 && state(Result_1Heap, Result_1Mask);
          b_10 := b_10 && b_12;
        Ops_5Mask := Ops_5Mask[null, wand_3(x, FullPerm, x, FullPerm):=Ops_5Mask[null, wand_3(x, FullPerm, x, FullPerm)] + FullPerm];
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) --* acc(x.f, write)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_13 := b_13 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(x.f, write) --* acc(x.f, write)
      
      // -- checking if access predicate defined in used state
        if ((b_8 && b_8) && b_13) {
          if (b_8) {
            
            // -- Check definedness of acc(x.f, write) --* acc(x.f, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs12 -- packaging.vpr@16.27--16.48
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
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_7Mask[null, wand_3(x, FullPerm, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) --* acc(x.f, write) might be negative. (packaging.vpr@16.3--18.4) [130364]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, wand_3(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, wand_3(x, FullPerm, x, FullPerm):=Used_7Mask[null, wand_3(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            Ops_5Mask := Ops_5Mask[null, wand_3(x, FullPerm, x, FullPerm):=Ops_5Mask[null, wand_3(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_8 && b_8) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_3(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, wand_3(x, FullPerm, x, FullPerm):=Used_7Mask[null, wand_3(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            Mask := Mask[null, wand_3(x, FullPerm, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (packaging.vpr@16.3--18.4) [130365]"}
        (b_8 && b_8) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[null, wand_3(x, FullPerm, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_8 && b_13;
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
        b_14 := b_14 && sumMask(Result_2Mask, Ops_5Mask, Used_7Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_2Heap, Used_7Mask);
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
      b_8 := b_8 && b_14;
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- packaging.vpr@19.3--19.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) --* acc(x.f, write) -- packaging.vpr@20.3--20.45
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (packaging.vpr@20.3--20.45) [130367]"}
        FullPerm <= Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (packaging.vpr@20.3--20.45) [130369]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      Mask := Mask[null, wand_3(x, FullPerm, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, FullPerm)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) -- packaging.vpr@23.3--23.30
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (packaging.vpr@23.3--23.30) [130370]"}
        FullPerm <= Mask[null, wand_3(x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_3(x, FullPerm, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (packaging.vpr@23.3--23.30) [130372]"}
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
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_16: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_15: bool;
  var Labellhs16Mask: MaskType;
  var Labellhs16Heap: HeapType;
  var boolCur_4: bool;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_18: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_17: bool;
  var Labellhs18Mask: MaskType;
  var Labellhs18Heap: HeapType;
  var boolCur_5: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_19: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_20: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_21: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs20Mask: MaskType;
  var Labellhs20Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_22: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) --* acc(x.f, write) {
  //   package acc(x.f, write) --* acc(x.f, write) {
  //   }
  // } -- packaging.vpr@29.3--31.4
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_15 := b_15 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_16) {
      perm := FullPerm;
      b_16 := b_16 && x != null;
      Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
      b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    }
    b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs16 -- packaging.vpr@29.11--29.49
      lhs16:
      Labellhs16Mask := Ops_9Mask;
      Labellhs16Heap := Ops_9Heap;
      b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_16) {
      
      // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) {
  // } -- packaging.vpr@30.7--30.38
        havoc Ops_11Heap;
        Ops_11Mask := ZeroMask;
        b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_17 := b_17 && state(Used_9Heap, Used_9Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_18) {
          perm := FullPerm;
          b_18 := b_18 && x != null;
          Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
          b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        }
        b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        
        // -- Translating statement: label lhs18 -- packaging.vpr@30.16--30.37
          lhs18:
          Labellhs18Mask := Ops_11Mask;
          Labellhs18Heap := Ops_11Heap;
          b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        boolCur_5 := true;
        // Translating exec of non-ghost operationacc(x.f, write)
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_19 := b_19 && state(Used_10Heap, Used_10Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (packaging.vpr@30.7--30.38) [130374]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && (b_18 && b_16)) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                b_19 := b_19 && state(Used_10Heap, Used_10Mask);
                b_19 := b_19 && Ops_11Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && (b_18 && b_16)) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                b_19 := b_19 && state(Used_10Heap, Used_10Mask);
                b_19 := b_19 && Ops_9Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
                Ops_9Heap := Ops_9Heap[null, wand_3#sm(x, FullPerm, x, FullPerm):=Ops_9Heap[null, wand_3#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_18 && (b_18 && b_16)) && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                b_19 := b_19 && state(Used_10Heap, Used_10Mask);
                b_19 := b_19 && Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_3#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_3#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging.vpr@30.7--30.38) [130375]"}
            (b_18 && (b_18 && b_16)) && b_19 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_20 := b_18 && b_19;
            b_20 := b_20 && state(Result_3Heap, Result_3Mask);
            b_20 := b_20 && sumMask(Result_3Mask, Ops_11Mask, Used_10Mask);
            b_20 := (b_20 && IdenticalOnKnownLocations(Ops_11Heap, Result_3Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_3Heap, Used_10Mask);
            b_20 := b_20 && state(Result_3Heap, Result_3Mask);
          b_18 := b_18 && b_20;
        Ops_9Mask := Ops_9Mask[null, wand_3(x, FullPerm, x, FullPerm):=Ops_9Mask[null, wand_3(x, FullPerm, x, FullPerm)] + FullPerm];
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
        b_16 := b_16 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) --* acc(x.f, write)
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_21 := b_21 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(x.f, write) --* acc(x.f, write)
      
      // -- checking if access predicate defined in used state
        if ((b_16 && b_16) && b_21) {
          if (b_16) {
            
            // -- Check definedness of acc(x.f, write) --* acc(x.f, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs20 -- packaging.vpr@29.27--29.48
                  lhs20:
                  Labellhs20Mask := WandDefLHSMask;
                  Labellhs20Heap := WandDefLHSHeap;
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
      initNeededTransfer := Used_11Mask[null, wand_3(x, FullPerm, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) --* acc(x.f, write) might be negative. (packaging.vpr@29.3--31.4) [130376]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_16 && b_16) && b_21) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[null, wand_3(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, wand_3(x, FullPerm, x, FullPerm):=Used_11Mask[null, wand_3(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_21 := b_21 && state(Used_11Heap, Used_11Mask);
            Ops_9Mask := Ops_9Mask[null, wand_3(x, FullPerm, x, FullPerm):=Ops_9Mask[null, wand_3(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_16 && b_16) && b_21) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_3(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, wand_3(x, FullPerm, x, FullPerm):=Used_11Mask[null, wand_3(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_21 := b_21 && state(Used_11Heap, Used_11Mask);
            Mask := Mask[null, wand_3(x, FullPerm, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (packaging.vpr@29.3--31.4) [130377]"}
        (b_16 && b_16) && b_21 ==> neededTransfer == 0.000000000 && Used_11Mask[null, wand_3(x, FullPerm, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_22 := b_16 && b_21;
        b_22 := b_22 && state(Result_4Heap, Result_4Mask);
        b_22 := b_22 && sumMask(Result_4Mask, Ops_9Mask, Used_11Mask);
        b_22 := (b_22 && IdenticalOnKnownLocations(Ops_9Heap, Result_4Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_4Heap, Used_11Mask);
        b_22 := b_22 && state(Result_4Heap, Result_4Mask);
      b_16 := b_16 && b_22;
    Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) --* acc(x.f, write) -- packaging.vpr@32.3--32.45
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (packaging.vpr@32.3--32.45) [130378]"}
        FullPerm <= Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_2(x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (packaging.vpr@32.3--32.45) [130380]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      Mask := Mask[null, wand_3(x, FullPerm, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, FullPerm)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) -- packaging.vpr@35.3--35.30
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (packaging.vpr@35.3--35.30) [130381]"}
        FullPerm <= Mask[null, wand_3(x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_3(x, FullPerm, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (packaging.vpr@35.3--35.30) [130383]"}
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
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_24_1: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_23: bool;
  var Labellhs24Mask: MaskType;
  var Labellhs24Heap: HeapType;
  var boolCur_6: bool;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_26: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_25: bool;
  var Labellhs26Mask: MaskType;
  var Labellhs26Heap: HeapType;
  var boolCur_7: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_27: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_28: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_29: bool;
  var b_30: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs28Mask: MaskType;
  var Labellhs28Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_31: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  
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
  
  // -- Translating statement: package true --* acc(x.f, write) && (true --* acc(x.f, write)) {
  //   package true --* acc(x.f, write) {
  //   }
  // } -- packaging.vpr@42.3--44.4
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_23 := b_23 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_24_1) {
      b_24_1 := b_24_1;
    }
    b_24_1 := b_24_1 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs24 -- packaging.vpr@42.11--42.53
      lhs24:
      Labellhs24Mask := Ops_13Mask;
      Labellhs24Heap := Ops_13Heap;
      b_24_1 := b_24_1 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    if (b_24_1) {
      
      // -- Translating statement: package true --* acc(x.f, write) {
  // } -- packaging.vpr@43.7--43.34
        havoc Ops_15Heap;
        Ops_15Mask := ZeroMask;
        b_26 := b_26 && state(Ops_15Heap, Ops_15Mask);
        havoc Used_13Heap;
        Used_13Mask := ZeroMask;
        b_25 := b_25 && state(Used_13Heap, Used_13Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_26) {
          b_26 := b_26;
        }
        b_26 := b_26 && state(Ops_15Heap, Ops_15Mask);
        
        // -- Translating statement: label lhs26 -- packaging.vpr@43.16--43.33
          lhs26:
          Labellhs26Mask := Ops_15Mask;
          Labellhs26Heap := Ops_15Heap;
          b_26 := b_26 && state(Ops_15Heap, Ops_15Mask);
        boolCur_7 := true;
        // Translating exec of non-ghost operationacc(x.f, write)
        havoc Used_14Heap;
        Used_14Mask := ZeroMask;
        b_27 := b_27 && state(Used_14Heap, Used_14Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_14Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (packaging.vpr@43.7--43.34) [130385]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_26 && (b_26 && b_24_1)) && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_15Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_27 := b_27 && state(Used_14Heap, Used_14Mask);
                b_27 := b_27 && Ops_15Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Ops_15Mask := Ops_15Mask[rcvLocal, f_7:=Ops_15Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_26 && (b_26 && b_24_1)) && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_13Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_27 := b_27 && state(Used_14Heap, Used_14Mask);
                b_27 := b_27 && Ops_13Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
                Ops_13Heap := Ops_13Heap[null, wand_5#sm(true, x, FullPerm):=Ops_13Heap[null, wand_5#sm(true, x, FullPerm)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_26 && (b_26 && b_24_1)) && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_27 := b_27 && state(Used_14Heap, Used_14Mask);
                b_27 := b_27 && Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_5#sm(true, x, FullPerm):=Heap[null, wand_5#sm(true, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging.vpr@43.7--43.34) [130386]"}
            (b_26 && (b_26 && b_24_1)) && b_27 ==> neededTransfer == 0.000000000 && Used_14Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_28 := b_26 && b_27;
            b_28 := b_28 && state(Result_5Heap, Result_5Mask);
            b_28 := b_28 && sumMask(Result_5Mask, Ops_15Mask, Used_14Mask);
            b_28 := (b_28 && IdenticalOnKnownLocations(Ops_15Heap, Result_5Heap, Ops_15Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_5Heap, Used_14Mask);
            b_28 := b_28 && state(Result_5Heap, Result_5Mask);
          b_26 := b_26 && b_28;
        Ops_13Mask := Ops_13Mask[null, wand_5(true, x, FullPerm):=Ops_13Mask[null, wand_5(true, x, FullPerm)] + FullPerm];
        b_24_1 := b_24_1 && state(Ops_13Heap, Ops_13Mask);
        b_24_1 := b_24_1 && state(Ops_13Heap, Ops_13Mask);
        b_24_1 := b_24_1 && state(Ops_13Heap, Ops_13Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && (true --* acc(x.f, write))
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_29 := b_29 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_15Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (packaging.vpr@42.3--44.4) [130387]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_13Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_29 := b_29 && state(Used_15Heap, Used_15Mask);
            b_29 := b_29 && Ops_13Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_29 := b_29 && state(Used_15Heap, Used_15Mask);
            b_29 := b_29 && Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_4#sm(true, x, FullPerm, true, x, FullPerm):=Heap[null, wand_4#sm(true, x, FullPerm, true, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging.vpr@42.3--44.4) [130388]"}
        (b_24_1 && b_24_1) && b_29 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_30 := b_24_1 && b_29;
        b_30 := b_30 && state(Result_6Heap, Result_6Mask);
        b_30 := b_30 && sumMask(Result_6Mask, Ops_13Mask, Used_15Mask);
        b_30 := (b_30 && IdenticalOnKnownLocations(Ops_13Heap, Result_6Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_6Heap, Used_15Mask);
        b_30 := b_30 && state(Result_6Heap, Result_6Mask);
      b_24_1 := b_24_1 && b_30;
    
    // -- Transfer of true --* acc(x.f, write)
      
      // -- checking if access predicate defined in used state
        if ((b_24_1 && b_24_1) && b_29) {
          if (b_24_1) {
            
            // -- Check definedness of true --* acc(x.f, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs28 -- packaging.vpr@42.35--42.52
                  lhs28:
                  Labellhs28Mask := WandDefLHSMask;
                  Labellhs28Heap := WandDefLHSHeap;
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
      initNeededTransfer := Used_15Mask[null, wand_5(true, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction true --* acc(x.f, write) might be negative. (packaging.vpr@42.3--44.4) [130389]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_13Mask[null, wand_5(true, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, wand_5(true, x, FullPerm):=Used_15Mask[null, wand_5(true, x, FullPerm)] + takeTransfer];
            b_29 := b_29 && state(Used_15Heap, Used_15Mask);
            Ops_13Mask := Ops_13Mask[null, wand_5(true, x, FullPerm):=Ops_13Mask[null, wand_5(true, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_24_1 && b_24_1) && b_29) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_5(true, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, wand_5(true, x, FullPerm):=Used_15Mask[null, wand_5(true, x, FullPerm)] + takeTransfer];
            b_29 := b_29 && state(Used_15Heap, Used_15Mask);
            Mask := Mask[null, wand_5(true, x, FullPerm):=Mask[null, wand_5(true, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (packaging.vpr@42.3--44.4) [130390]"}
        (b_24_1 && b_24_1) && b_29 ==> neededTransfer == 0.000000000 && Used_15Mask[null, wand_5(true, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_31 := b_24_1 && b_29;
        b_31 := b_31 && state(Result_7Heap, Result_7Mask);
        b_31 := b_31 && sumMask(Result_7Mask, Ops_13Mask, Used_15Mask);
        b_31 := (b_31 && IdenticalOnKnownLocations(Ops_13Heap, Result_7Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_7Heap, Used_15Mask);
        b_31 := b_31 && state(Result_7Heap, Result_7Mask);
      b_24_1 := b_24_1 && b_31;
    Mask := Mask[null, wand_4(true, x, FullPerm, true, x, FullPerm):=Mask[null, wand_4(true, x, FullPerm, true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}