// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:48:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/closures_encoded.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/closures_encoded-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand_4(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand_4(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4)) }
  wand_4#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand_4(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4)) == 6
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Ref, arg4_2: Ref ::
  { wand_4(arg1, arg2, arg3, arg4), wand_4(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_4(arg1, arg2, arg3, arg4) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6)) == 7
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_6;
function  wand_6(arg1: bool, arg2: bool, arg3: bool): Field WandType_wand_6 int;
function  wand_6#sm(arg1: bool, arg2: bool, arg3: bool): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: bool, arg2: bool, arg3: bool): Field WandType_wand_6 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_6(arg1, arg2, arg3) }
  IsWandField(wand_6(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_6#ft(arg1, arg2, arg3) }
  IsWandField(wand_6#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_6(arg1, arg2, arg3) }
  !IsPredicateField(wand_6(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_6#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_6#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { WandMaskField(wand_6#ft(arg1, arg2, arg3)) }
  wand_6#sm(arg1, arg2, arg3) == WandMaskField(wand_6#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_6(arg1, arg2, arg3) }
  getPredWandId(wand_6(arg1, arg2, arg3)) == 8
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg1_2: bool, arg2_2: bool, arg3_2: bool ::
  { wand_6(arg1, arg2, arg3), wand_6(arg1_2, arg2_2, arg3_2) }
  wand_6(arg1, arg2, arg3) == wand_6(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand;
function  wand(arg1: Ref, arg2: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 9
);
axiom (forall arg1: Ref, arg2: Ref, arg1_2: Ref, arg2_2: Ref ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_5;
function  wand_5(arg1: bool, arg2: bool): Field WandType_wand_5 int;
function  wand_5#sm(arg1: bool, arg2: bool): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: bool, arg2: bool): Field WandType_wand_5 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_5(arg1, arg2) }
  IsWandField(wand_5(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_5#ft(arg1, arg2) }
  IsWandField(wand_5#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_5(arg1, arg2) }
  !IsPredicateField(wand_5(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_5#ft(arg1, arg2) }
  !IsPredicateField(wand_5#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_5#ft(arg1, arg2)) }
  wand_5#sm(arg1, arg2) == WandMaskField(wand_5#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_5(arg1, arg2) }
  getPredWandId(wand_5(arg1, arg2)) == 10
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_5(arg1, arg2), wand_5(arg1_2, arg2_2) }
  wand_5(arg1, arg2) == wand_5(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Ref): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Ref): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Ref): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1(arg1, arg2) }
  IsWandField(wand_1(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1#ft(arg1, arg2) }
  IsWandField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1(arg1, arg2) }
  !IsPredicateField(wand_1(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1#ft(arg1, arg2) }
  !IsPredicateField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { WandMaskField(wand_1#ft(arg1, arg2)) }
  wand_1#sm(arg1, arg2) == WandMaskField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1(arg1, arg2) }
  getPredWandId(wand_1(arg1, arg2)) == 11
);
axiom (forall arg1: Ref, arg2: Ref, arg1_2: Ref, arg2_2: Ref ::
  { wand_1(arg1, arg2), wand_1(arg1_2, arg2_2) }
  wand_1(arg1, arg2) == wand_1(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 12
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of predicate c1_pre
// ==================================================

type PredicateType_c1_pre;
function  c1_pre(x: Ref): Field PredicateType_c1_pre FrameType;
function  c1_pre#sm(x: Ref): Field PredicateType_c1_pre PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(c1_pre(x)) }
  PredicateMaskField(c1_pre(x)) == c1_pre#sm(x)
);
axiom (forall x: Ref ::
  { c1_pre(x) }
  IsPredicateField(c1_pre(x))
);
axiom (forall x: Ref ::
  { c1_pre(x) }
  getPredWandId(c1_pre(x)) == 0
);
function  c1_pre#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  c1_pre#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { c1_pre(x), c1_pre(x2) }
  c1_pre(x) == c1_pre(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { c1_pre#sm(x), c1_pre#sm(x2) }
  c1_pre#sm(x) == c1_pre#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { c1_pre#trigger(Heap, c1_pre(x)) }
  c1_pre#everUsed(c1_pre(x))
);

procedure c1_pre#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of c1_pre
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate c1_post
// ==================================================

type PredicateType_c1_post;
function  c1_post(x: Ref): Field PredicateType_c1_post FrameType;
function  c1_post#sm(x: Ref): Field PredicateType_c1_post PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(c1_post(x)) }
  PredicateMaskField(c1_post(x)) == c1_post#sm(x)
);
axiom (forall x: Ref ::
  { c1_post(x) }
  IsPredicateField(c1_post(x))
);
axiom (forall x: Ref ::
  { c1_post(x) }
  getPredWandId(c1_post(x)) == 1
);
function  c1_post#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  c1_post#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { c1_post(x), c1_post(x2) }
  c1_post(x) == c1_post(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { c1_post#sm(x), c1_post#sm(x2) }
  c1_post#sm(x) == c1_post#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { c1_post#trigger(Heap, c1_post(x)) }
  c1_post#everUsed(c1_post(x))
);

procedure c1_post#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of c1_post
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate c2_pre
// ==================================================

type PredicateType_c2_pre;
function  c2_pre(x: Ref): Field PredicateType_c2_pre FrameType;
function  c2_pre#sm(x: Ref): Field PredicateType_c2_pre PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(c2_pre(x)) }
  PredicateMaskField(c2_pre(x)) == c2_pre#sm(x)
);
axiom (forall x: Ref ::
  { c2_pre(x) }
  IsPredicateField(c2_pre(x))
);
axiom (forall x: Ref ::
  { c2_pre(x) }
  getPredWandId(c2_pre(x)) == 2
);
function  c2_pre#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  c2_pre#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { c2_pre(x), c2_pre(x2) }
  c2_pre(x) == c2_pre(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { c2_pre#sm(x), c2_pre#sm(x2) }
  c2_pre#sm(x) == c2_pre#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { c2_pre#trigger(Heap, c2_pre(x)) }
  c2_pre#everUsed(c2_pre(x))
);

procedure c2_pre#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of c2_pre
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate c2_post
// ==================================================

type PredicateType_c2_post;
function  c2_post(x: Ref): Field PredicateType_c2_post FrameType;
function  c2_post#sm(x: Ref): Field PredicateType_c2_post PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(c2_post(x)) }
  PredicateMaskField(c2_post(x)) == c2_post#sm(x)
);
axiom (forall x: Ref ::
  { c2_post(x) }
  IsPredicateField(c2_post(x))
);
axiom (forall x: Ref ::
  { c2_post(x) }
  getPredWandId(c2_post(x)) == 3
);
function  c2_post#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  c2_post#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { c2_post(x), c2_post(x2) }
  c2_post(x) == c2_post(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { c2_post#sm(x), c2_post#sm(x2) }
  c2_post#sm(x) == c2_post#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { c2_post#trigger(Heap, c2_post(x)) }
  c2_post#everUsed(c2_post(x))
);

procedure c2_post#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of c2_post
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate c3_pre
// ==================================================

type PredicateType_c3_pre;
function  c3_pre(x: Ref): Field PredicateType_c3_pre FrameType;
function  c3_pre#sm(x: Ref): Field PredicateType_c3_pre PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(c3_pre(x)) }
  PredicateMaskField(c3_pre(x)) == c3_pre#sm(x)
);
axiom (forall x: Ref ::
  { c3_pre(x) }
  IsPredicateField(c3_pre(x))
);
axiom (forall x: Ref ::
  { c3_pre(x) }
  getPredWandId(c3_pre(x)) == 4
);
function  c3_pre#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  c3_pre#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { c3_pre(x), c3_pre(x2) }
  c3_pre(x) == c3_pre(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { c3_pre#sm(x), c3_pre#sm(x2) }
  c3_pre#sm(x) == c3_pre#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { c3_pre#trigger(Heap, c3_pre(x)) }
  c3_pre#everUsed(c3_pre(x))
);

procedure c3_pre#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of c3_pre
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate c3_post
// ==================================================

type PredicateType_c3_post;
function  c3_post(x: Ref): Field PredicateType_c3_post FrameType;
function  c3_post#sm(x: Ref): Field PredicateType_c3_post PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(c3_post(x)) }
  PredicateMaskField(c3_post(x)) == c3_post#sm(x)
);
axiom (forall x: Ref ::
  { c3_post(x) }
  IsPredicateField(c3_post(x))
);
axiom (forall x: Ref ::
  { c3_post(x) }
  getPredWandId(c3_post(x)) == 5
);
function  c3_post#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  c3_post#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { c3_post(x), c3_post(x2) }
  c3_post(x) == c3_post(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { c3_post#sm(x), c3_post#sm(x2) }
  c3_post#sm(x) == c3_post#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { c3_post#trigger(Heap, c3_post(x)) }
  c3_post#everUsed(c3_post(x))
);

procedure c3_post#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of c3_post
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method triple_not_nested
// ==================================================

procedure triple_not_nested(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, c1_pre(x):=Mask[null, c1_pre(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(c1_post(x), write) --* acc(c2_pre(x), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, c1_post(x):=WandDefLHSMask[null, c1_post(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- closures_encoded.vpr@16.12--16.46
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, c2_pre(x):=WandDefRHSMask[null, c2_pre(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, x):=Mask[null, wand(x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(c2_post(x), write) --* acc(c3_pre(x), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, c2_post(x):=WandDefLHSMask[null, c2_post(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs2 -- closures_encoded.vpr@17.12--17.46
          lhs2:
          Labellhs2Heap := WandDefLHSHeap;
          Labellhs2Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, c3_pre(x):=WandDefRHSMask[null, c3_pre(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, x):=Mask[null, wand_1(x, x)] + FullPerm];
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
    PostMask := PostMask[null, c3_post(x):=PostMask[null, c3_post(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: exhale acc(c1_pre(x), write) -- closures_encoded.vpr@20.3--20.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access c1_pre(x) (closures_encoded.vpr@20.10--20.24) [216037]"}
        perm <= Mask[null, c1_pre(x)];
    }
    Mask := Mask[null, c1_pre(x):=Mask[null, c1_pre(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(c1_post(x), write) -- closures_encoded.vpr@21.3--21.25
    perm := FullPerm;
    Mask := Mask[null, c1_post(x):=Mask[null, c1_post(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(c1_post(x), write) --* acc(c2_pre(x), write) -- closures_encoded.vpr@23.3--23.43
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (closures_encoded.vpr@23.3--23.43) [216039]"}
        FullPerm <= Mask[null, wand(x, x)];
      Mask := Mask[null, wand(x, x):=Mask[null, wand(x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access c1_post(x) (closures_encoded.vpr@23.3--23.43) [216041]"}
          perm <= Mask[null, c1_post(x)];
      }
      Mask := Mask[null, c1_post(x):=Mask[null, c1_post(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, c2_pre(x):=Mask[null, c2_pre(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(c2_pre(x), write) -- closures_encoded.vpr@25.3--25.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access c2_pre(x) (closures_encoded.vpr@25.10--25.24) [216044]"}
        perm <= Mask[null, c2_pre(x)];
    }
    Mask := Mask[null, c2_pre(x):=Mask[null, c2_pre(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(c2_post(x), write) -- closures_encoded.vpr@26.3--26.25
    perm := FullPerm;
    Mask := Mask[null, c2_post(x):=Mask[null, c2_post(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(c2_post(x), write) --* acc(c3_pre(x), write) -- closures_encoded.vpr@28.3--28.43
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (closures_encoded.vpr@28.3--28.43) [216046]"}
        FullPerm <= Mask[null, wand_1(x, x)];
      Mask := Mask[null, wand_1(x, x):=Mask[null, wand_1(x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access c2_post(x) (closures_encoded.vpr@28.3--28.43) [216048]"}
          perm <= Mask[null, c2_post(x)];
      }
      Mask := Mask[null, c2_post(x):=Mask[null, c2_post(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, c3_pre(x):=Mask[null, c3_pre(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(c3_pre(x), write) -- closures_encoded.vpr@30.3--30.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access c3_pre(x) (closures_encoded.vpr@30.10--30.24) [216051]"}
        perm <= Mask[null, c3_pre(x)];
    }
    Mask := Mask[null, c3_pre(x):=Mask[null, c3_pre(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(c3_post(x), write) -- closures_encoded.vpr@31.3--31.25
    perm := FullPerm;
    Mask := Mask[null, c3_post(x):=Mask[null, c3_post(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of triple_not_nested might not hold. There might be insufficient permission to access c3_post(x) (closures_encoded.vpr@18.11--18.26) [216053]"}
        perm <= Mask[null, c3_post(x)];
    }
    Mask := Mask[null, c3_post(x):=Mask[null, c3_post(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method call_triple_not_nested
// ==================================================

procedure call_triple_not_nested() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var w_2: int;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var perm: Perm;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
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
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(f) -- closures_encoded.vpr@36.3--36.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 1 -- closures_encoded.vpr@38.3--38.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@38.3--38.11) [216054]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: w := x.f -- closures_encoded.vpr@39.3--39.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@39.3--39.20) [216055]"}
        HasDirectPerm(Mask, x, f_7);
    w_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f == w - 2 --* acc(x.f, write) {
  // } -- closures_encoded.vpr@41.3--41.48
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
          
          // -- Check definedness of x.f == w - 2
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@41.3--41.48) [216056]"}
              HasDirectPerm(Ops_1Mask, x, f_7);
        }
        b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == w_2 - 2;
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs5 -- closures_encoded.vpr@41.11--41.48
      lhs5:
      Labellhs5Heap := Ops_1Heap;
      Labellhs5Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (closures_encoded.vpr@41.3--41.48) [216057]"}
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
            Heap := Heap[null, wand_2#sm(x, FullPerm, x, w_2 - 2, x, FullPerm):=Heap[null, wand_2#sm(x, FullPerm, x, w_2 - 2, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@41.3--41.48) [216058]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    Mask := Mask[null, wand_2(x, FullPerm, x, w_2 - 2, x, FullPerm):=Mask[null, wand_2(x, FullPerm, x, w_2 - 2, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && x.f == w + 1 --* acc(x.f, write) && x.f > 0 {
  // } -- closures_encoded.vpr@42.3--42.59
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      if (b_5) {
        perm := FullPerm;
        b_5 := b_5 && x != null;
        Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_5) {
        if (b_5) {
          
          // -- Check definedness of x.f == w + 1
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@42.3--42.59) [216059]"}
              HasDirectPerm(Ops_3Mask, x, f_7);
        }
        b_5 := b_5 && Ops_3Heap[x, f_7] == w_2 + 1;
      }
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs7 -- closures_encoded.vpr@42.11--42.59
      lhs7:
      Labellhs7Heap := Ops_3Heap;
      Labellhs7Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f > 0
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (closures_encoded.vpr@42.3--42.59) [216060]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_3Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(x, FullPerm, x, w_2 + 1, x, FullPerm, x, 0):=Heap[null, wand_3#sm(x, FullPerm, x, w_2 + 1, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@42.3--42.59) [216061]"}
        (b_5 && b_5) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_5 && b_6;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_5 := b_5 && b_7;
    if ((b_5 && b_5) && b_6) {
      if (b_5) {
        
        // -- Check definedness of x.f > 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@42.3--42.59) [216062]"}
            HasDirectPerm(Result_1Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f > 0 might not hold. (closures_encoded.vpr@42.3--42.59) [216063]"}
      (b_5 && b_5) && b_6 ==> Result_1Heap[x, f_7] > 0;
    Mask := Mask[null, wand_3(x, FullPerm, x, w_2 + 1, x, FullPerm, x, 0):=Mask[null, wand_3(x, FullPerm, x, w_2 + 1, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := -10 -- closures_encoded.vpr@44.3--44.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@44.3--44.13) [216064]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=-10];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) &&
  //   ((acc(x.f, write) && x.f == w + 1 --* acc(x.f, write) && x.f > 0) &&
  //   (acc(x.f, write) && x.f == w - 2 --* acc(x.f, write))) -- closures_encoded.vpr@47.3--49.52
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@47.14--49.52) [216066]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    
    // -- Check definedness of acc(x.f, write) && x.f == w + 1 --* acc(x.f, write) && x.f > 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of x.f == w + 1
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@47.14--49.52) [216067]"}
            HasDirectPerm(WandDefLHSMask, x, f_7);
        assume WandDefLHSHeap[x, f_7] == w_2 + 1;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- closures_encoded.vpr@48.14--48.62
          lhs9:
          Labellhs9Heap := WandDefLHSHeap;
          Labellhs9Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f > 0
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@47.14--49.52) [216068]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        assume WandDefRHSHeap[x, f_7] > 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (closures_encoded.vpr@47.14--49.52) [216069]"}
      FullPerm <= Mask[null, wand_3(x, FullPerm, x, w_2 + 1, x, FullPerm, x, 0)];
    Mask := Mask[null, wand_3(x, FullPerm, x, w_2 + 1, x, FullPerm, x, 0):=Mask[null, wand_3(x, FullPerm, x, w_2 + 1, x, FullPerm, x, 0)] - FullPerm];
    
    // -- Check definedness of acc(x.f, write) && x.f == w - 2 --* acc(x.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of x.f == w - 2
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@47.14--49.52) [216070]"}
            HasDirectPerm(WandDefLHSMask, x, f_7);
        assume WandDefLHSHeap[x, f_7] == w_2 - 2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs10 -- closures_encoded.vpr@49.14--49.51
          lhs10:
          Labellhs10Heap := WandDefLHSHeap;
          Labellhs10Mask := WandDefLHSMask;
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
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (closures_encoded.vpr@47.14--49.52) [216071]"}
      FullPerm <= Mask[null, wand_2(x, FullPerm, x, w_2 - 2, x, FullPerm)];
    Mask := Mask[null, wand_2(x, FullPerm, x, w_2 - 2, x, FullPerm):=Mask[null, wand_2(x, FullPerm, x, w_2 - 2, x, FullPerm)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method triple_nested
// ==================================================

procedure triple_nested(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs12Heap: HeapType;
  var Labellhs12Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, c1_pre(x):=Mask[null, c1_pre(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(c1_post(x), write) --* acc(c2_pre(x), write) && (acc(c2_post(x), write) --* acc(c3_pre(x), write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, c1_post(x):=WandDefLHSMask[null, c1_post(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs11 -- closures_encoded.vpr@54.12--56.54
          lhs11:
          Labellhs11Heap := WandDefLHSHeap;
          Labellhs11Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, c2_pre(x):=WandDefRHSMask[null, c2_pre(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(c2_post(x), write) --* acc(c3_pre(x), write)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            WandDefLHSMask := WandDefLHSMask[null, c2_post(x):=WandDefLHSMask[null, c2_post(x)] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs12 -- closures_encoded.vpr@56.18--56.52
              lhs12:
              Labellhs12Heap := WandDefLHSHeap;
              Labellhs12Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, c3_pre(x):=WandDefRHSMask[null, c3_pre(x)] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand_1(x, x):=WandDefRHSMask[null, wand_1(x, x)] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_4(x, x, x, x):=Mask[null, wand_4(x, x, x, x)] + FullPerm];
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
    PostMask := PostMask[null, c3_post(x):=PostMask[null, c3_post(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: exhale acc(c1_pre(x), write) -- closures_encoded.vpr@59.3--59.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access c1_pre(x) (closures_encoded.vpr@59.10--59.24) [216073]"}
        perm <= Mask[null, c1_pre(x)];
    }
    Mask := Mask[null, c1_pre(x):=Mask[null, c1_pre(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(c1_post(x), write) -- closures_encoded.vpr@60.3--60.25
    perm := FullPerm;
    Mask := Mask[null, c1_post(x):=Mask[null, c1_post(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(c1_post(x), write) --*
  //   acc(c2_pre(x), write) &&
  //   (acc(c2_post(x), write) --* acc(c3_pre(x), write)) -- closures_encoded.vpr@62.3--64.53
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (closures_encoded.vpr@62.3--64.53) [216075]"}
        FullPerm <= Mask[null, wand_4(x, x, x, x)];
      Mask := Mask[null, wand_4(x, x, x, x):=Mask[null, wand_4(x, x, x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access c1_post(x) (closures_encoded.vpr@62.3--64.53) [216077]"}
          perm <= Mask[null, c1_post(x)];
      }
      Mask := Mask[null, c1_post(x):=Mask[null, c1_post(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, c2_pre(x):=Mask[null, c2_pre(x)] + perm];
      assume state(Heap, Mask);
      Mask := Mask[null, wand_1(x, x):=Mask[null, wand_1(x, x)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(c2_pre(x), write) -- closures_encoded.vpr@66.3--66.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access c2_pre(x) (closures_encoded.vpr@66.10--66.24) [216080]"}
        perm <= Mask[null, c2_pre(x)];
    }
    Mask := Mask[null, c2_pre(x):=Mask[null, c2_pre(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(c2_post(x), write) -- closures_encoded.vpr@67.3--67.25
    perm := FullPerm;
    Mask := Mask[null, c2_post(x):=Mask[null, c2_post(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(c2_post(x), write) --* acc(c3_pre(x), write) -- closures_encoded.vpr@69.3--69.43
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (closures_encoded.vpr@69.3--69.43) [216082]"}
        FullPerm <= Mask[null, wand_1(x, x)];
      Mask := Mask[null, wand_1(x, x):=Mask[null, wand_1(x, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access c2_post(x) (closures_encoded.vpr@69.3--69.43) [216084]"}
          perm <= Mask[null, c2_post(x)];
      }
      Mask := Mask[null, c2_post(x):=Mask[null, c2_post(x)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, c3_pre(x):=Mask[null, c3_pre(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(c3_pre(x), write) -- closures_encoded.vpr@71.3--71.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access c3_pre(x) (closures_encoded.vpr@71.10--71.24) [216087]"}
        perm <= Mask[null, c3_pre(x)];
    }
    Mask := Mask[null, c3_pre(x):=Mask[null, c3_pre(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(c3_post(x), write) -- closures_encoded.vpr@72.3--72.25
    perm := FullPerm;
    Mask := Mask[null, c3_post(x):=Mask[null, c3_post(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of triple_nested might not hold. There might be insufficient permission to access c3_post(x) (closures_encoded.vpr@57.11--57.26) [216089]"}
        perm <= Mask[null, c3_post(x)];
    }
    Mask := Mask[null, c3_post(x):=Mask[null, c3_post(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method call_triple_nested
// ==================================================

procedure call_triple_nested() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var a_2: int;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_12: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var Labellhs18Heap: HeapType;
  var Labellhs18Mask: MaskType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs20Heap: HeapType;
  var Labellhs20Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_14: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(f) -- closures_encoded.vpr@77.3--77.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 1 -- closures_encoded.vpr@79.3--79.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@79.3--79.11) [216090]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: a := x.f -- closures_encoded.vpr@80.3--80.20
    
    // -- Check definedness of x.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (closures_encoded.vpr@80.3--80.20) [216091]"}
        HasDirectPerm(Mask, x, f_7);
    a_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true {
  // } -- closures_encoded.vpr@85.3--85.24
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
    
    // -- Translating statement: label lhs15 -- closures_encoded.vpr@85.11--85.24
      lhs15:
      Labellhs15Heap := Ops_5Heap;
      Labellhs15Mask := Ops_5Mask;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    Mask := Mask[null, wand_5(true, true):=Mask[null, wand_5(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true --* true {
  // } -- closures_encoded.vpr@86.3--86.35
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_11 := b_11 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      b_12 := b_12;
    }
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs18 -- closures_encoded.vpr@86.11--86.35
      lhs18:
      Labellhs18Heap := Ops_7Heap;
      Labellhs18Mask := Ops_7Mask;
      b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationtrue --* true
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_13 := b_13 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of true --* true
      
      // -- checking if access predicate defined in used state
        if ((b_12 && b_12) && b_13) {
          if (b_12) {
            
            // -- Check definedness of true --* true
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs20 -- closures_encoded.vpr@86.21--86.34
                  lhs20:
                  Labellhs20Heap := WandDefLHSHeap;
                  Labellhs20Mask := WandDefLHSMask;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_7Mask[null, wand_5(true, true)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction true --* true might be negative. (closures_encoded.vpr@86.3--86.35) [216093]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, wand_5(true, true)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, wand_5(true, true):=Used_7Mask[null, wand_5(true, true)] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            Ops_7Mask := Ops_7Mask[null, wand_5(true, true):=Ops_7Mask[null, wand_5(true, true)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_5(true, true)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, wand_5(true, true):=Used_7Mask[null, wand_5(true, true)] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            Mask := Mask[null, wand_5(true, true):=Mask[null, wand_5(true, true)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (closures_encoded.vpr@86.3--86.35) [216094]"}
        (b_12 && b_12) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[null, wand_5(true, true)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_12 && b_13;
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
        b_14 := b_14 && sumMask(Result_2Mask, Ops_7Mask, Used_7Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_7Heap, Result_2Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_2Heap, Used_7Mask);
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
      b_12 := b_12 && b_14;
    Mask := Mask[null, wand_6(true, true, true):=Mask[null, wand_6(true, true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}