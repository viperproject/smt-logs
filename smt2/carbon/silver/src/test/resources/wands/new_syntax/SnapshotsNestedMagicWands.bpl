// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:02:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsNestedMagicWands.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsNestedMagicWands-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

type WandType_wand_6;
function  wand_6(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_6 int;
function  wand_6#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_6 PMaskType;
function  wand_6#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_6 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6(arg1, arg2, arg3, arg4) }
  IsWandField(wand_6(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_6#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_6(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_6#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4)) }
  wand_6#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_6#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_6(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_6(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_6(arg1, arg2, arg3, arg4), wand_6(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_6(arg1, arg2, arg3, arg4) == wand_6(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_5;
function  wand_5(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_5 int;
function  wand_5#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_5 PMaskType;
function  wand_5#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_5 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_5(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_5(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_5#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4)) }
  wand_5#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_5#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_5(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_5(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_5(arg1, arg2, arg3, arg4), wand_5(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_5(arg1, arg2, arg3, arg4) == wand_5(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand;
function  wand(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: bool, arg5: Ref, arg6: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: bool, arg5_2: Ref, arg6_2: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: bool, arg3: Ref, arg4: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4)) }
  wand_2#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4)) == 4
);
axiom (forall arg1: bool, arg2: bool, arg3: Ref, arg4: Perm, arg1_2: bool, arg2_2: bool, arg3_2: Ref, arg4_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4), wand_2(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_2(arg1, arg2, arg3, arg4) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 5
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
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
  getPredWandId(wand_3(arg1, arg2, arg3)) == 6
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand_3(arg1, arg2, arg3), wand_3(arg1_2, arg2_2, arg3_2) }
  wand_3(arg1, arg2, arg3) == wand_3(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_7;
function  wand_7(arg1: bool, arg2: bool): Field WandType_wand_7 int;
function  wand_7#sm(arg1: bool, arg2: bool): Field WandType_wand_7 PMaskType;
function  wand_7#ft(arg1: bool, arg2: bool): Field WandType_wand_7 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_7(arg1, arg2) }
  IsWandField(wand_7(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7#ft(arg1, arg2) }
  IsWandField(wand_7#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7(arg1, arg2) }
  !IsPredicateField(wand_7(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7#ft(arg1, arg2) }
  !IsPredicateField(wand_7#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_7#ft(arg1, arg2)) }
  wand_7#sm(arg1, arg2) == WandMaskField(wand_7#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_7(arg1, arg2) }
  getPredWandId(wand_7(arg1, arg2)) == 7
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_7(arg1, arg2), wand_7(arg1_2, arg2_2) }
  wand_7(arg1, arg2) == wand_7(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) }
  wand_4#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12)) == 8
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg11: Ref, arg12: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm, arg9_2: Ref, arg10_2: Perm, arg11_2: Ref, arg12_2: Perm ::
  { wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12), wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) }
  wand_4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && arg12 == arg12_2))))))))))
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
// Translation of predicate Cell
// ==================================================

type PredicateType_Cell;
function  Cell(x: Ref): Field PredicateType_Cell FrameType;
function  Cell#sm(x: Ref): Field PredicateType_Cell PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Cell(x)) }
  PredicateMaskField(Cell(x)) == Cell#sm(x)
);
axiom (forall x: Ref ::
  { Cell(x) }
  IsPredicateField(Cell(x))
);
axiom (forall x: Ref ::
  { Cell(x) }
  getPredWandId(Cell(x)) == 0
);
function  Cell#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Cell#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Cell(x), Cell(x2) }
  Cell(x) == Cell(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Cell#sm(x), Cell#sm(x2) }
  Cell#sm(x) == Cell#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Cell#trigger(Heap, Cell(x)) }
  Cell#everUsed(Cell(x))
);

procedure Cell#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Cell
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

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
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_8: bool;
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, g:=PostMask[x, g] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139075]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139076]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    
    // -- Check definedness of x.g == old(x.g)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139077]"}
        HasDirectPerm(PostMask, x, g);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139078]"}
        HasDirectPerm(oldMask, x, g);
    assume PostHeap[x, g] == oldHeap[x, g];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package true --* acc(x.f, write) && (true --* acc(x.g, write)) {
  //   package true --* acc(x.g, write) {
  //   }
  // } -- SnapshotsNestedMagicWands.vpr@15.5--17.6
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
    
    // -- Translating statement: label lhs2 -- SnapshotsNestedMagicWands.vpr@15.13--15.53
      lhs2:
      Labellhs2Mask := Ops_1Mask;
      Labellhs2Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: package true --* acc(x.g, write) {
  // } -- SnapshotsNestedMagicWands.vpr@16.9--16.36
        havoc Ops_3Heap;
        Ops_3Mask := ZeroMask;
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_3) {
          b_3 := b_3;
        }
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        
        // -- Translating statement: label lhs4 -- SnapshotsNestedMagicWands.vpr@16.18--16.35
          lhs4:
          Labellhs4Mask := Ops_3Mask;
          Labellhs4Heap := Ops_3Heap;
          b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        boolCur_1 := true;
        // Translating exec of non-ghost operationacc(x.g, write)
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (SnapshotsNestedMagicWands.vpr@16.9--16.36) [139079]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, g:=Used_2Mask[rcvLocal, g] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Ops_3Heap[rcvLocal, g] == Used_2Heap[rcvLocal, g];
                Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, g:=Used_2Mask[rcvLocal, g] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Ops_1Heap[rcvLocal, g] == Used_2Heap[rcvLocal, g];
                Ops_1Mask := Ops_1Mask[rcvLocal, g:=Ops_1Mask[rcvLocal, g] - takeTransfer];
                Ops_1Heap := Ops_1Heap[null, wand_1#sm(true, x, FullPerm):=Ops_1Heap[null, wand_1#sm(true, x, FullPerm)][x, g:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, g:=Used_2Mask[rcvLocal, g] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Heap[rcvLocal, g] == Used_2Heap[rcvLocal, g];
                Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                Heap := Heap[null, wand_1#sm(true, x, FullPerm):=Heap[null, wand_1#sm(true, x, FullPerm)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@16.9--16.36) [139080]"}
            (b_3 && (b_3 && b_1_1)) && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_3 && b_4;
            b_5 := b_5 && state(ResultHeap, ResultMask);
            b_5 := b_5 && sumMask(ResultMask, Ops_3Mask, Used_2Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_2Heap, ResultHeap, Used_2Mask);
            b_5 := b_5 && state(ResultHeap, ResultMask);
          b_3 := b_3 && b_5;
        Ops_1Mask := Ops_1Mask[null, wand_1(true, x, FullPerm):=Ops_1Mask[null, wand_1(true, x, FullPerm)] + FullPerm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && (true --* acc(x.g, write))
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@15.5--17.6) [139081]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_1Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand#sm(true, x, FullPerm, true, x, FullPerm):=Heap[null, wand#sm(true, x, FullPerm, true, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@15.5--17.6) [139082]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_1_1 && b_6;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_1Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_7;
    
    // -- Transfer of true --* acc(x.g, write)
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_6) {
          if (b_1_1) {
            
            // -- Check definedness of true --* acc(x.g, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs6 -- SnapshotsNestedMagicWands.vpr@15.35--15.52
                  lhs6:
                  Labellhs6Mask := WandDefLHSMask;
                  Labellhs6Heap := WandDefLHSHeap;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_3Mask[null, wand_1(true, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction true --* acc(x.g, write) might be negative. (SnapshotsNestedMagicWands.vpr@15.5--17.6) [139083]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, wand_1(true, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, wand_1(true, x, FullPerm):=Used_3Mask[null, wand_1(true, x, FullPerm)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            Ops_1Mask := Ops_1Mask[null, wand_1(true, x, FullPerm):=Ops_1Mask[null, wand_1(true, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_1(true, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, wand_1(true, x, FullPerm):=Used_3Mask[null, wand_1(true, x, FullPerm)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            Mask := Mask[null, wand_1(true, x, FullPerm):=Mask[null, wand_1(true, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@15.5--17.6) [139084]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, wand_1(true, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_1_1 && b_6;
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
        b_8 := b_8 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_8;
    Mask := Mask[null, wand(true, x, FullPerm, true, x, FullPerm):=Mask[null, wand(true, x, FullPerm, true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(x.f, write) && (true --* acc(x.g, write)) -- SnapshotsNestedMagicWands.vpr@18.5--18.51
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@18.5--18.51) [139085]"}
        FullPerm <= Mask[null, wand(true, x, FullPerm, true, x, FullPerm)];
      Mask := Mask[null, wand(true, x, FullPerm, true, x, FullPerm):=Mask[null, wand(true, x, FullPerm, true, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      Mask := Mask[null, wand_1(true, x, FullPerm):=Mask[null, wand_1(true, x, FullPerm)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(x.g, write) -- SnapshotsNestedMagicWands.vpr@19.5--19.28
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@19.5--19.28) [139088]"}
        FullPerm <= Mask[null, wand_1(true, x, FullPerm)];
      Mask := Mask[null, wand_1(true, x, FullPerm):=Mask[null, wand_1(true, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
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
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139091]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139092]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    assert {:msg "  Postcondition of test0 might not hold. Assertion x.f == old(x.f) might not hold. (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139093]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assert {:msg "  Postcondition of test0 might not hold. Assertion x.g == old(x.g) might not hold. (SnapshotsNestedMagicWands.vpr@14.9--14.67) [139094]"}
      Heap[x, g] == oldHeap[x, g];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_10: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_9: bool;
  var Labellhs10Mask: MaskType;
  var Labellhs10Heap: HeapType;
  var boolCur_2: bool;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_12: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_11: bool;
  var Labellhs12Mask: MaskType;
  var Labellhs12Heap: HeapType;
  var boolCur_3: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_13: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_14: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_15: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs14Mask: MaskType;
  var Labellhs14Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_16: bool;
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@24.9--24.36) [139095]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@24.9--24.36) [139096]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package true --* true --* acc(x.f, write) {
  //   package true --* acc(x.f, write) {
  //   }
  // } -- SnapshotsNestedMagicWands.vpr@25.5--27.6
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_9 := b_9 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_10) {
      b_10 := b_10;
    }
    b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs10 -- SnapshotsNestedMagicWands.vpr@25.13--25.41
      lhs10:
      Labellhs10Mask := Ops_5Mask;
      Labellhs10Heap := Ops_5Heap;
      b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_10) {
      
      // -- Translating statement: package true --* acc(x.f, write) {
  // } -- SnapshotsNestedMagicWands.vpr@26.9--26.34
        havoc Ops_7Heap;
        Ops_7Mask := ZeroMask;
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_11 := b_11 && state(Used_5Heap, Used_5Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_12) {
          b_12 := b_12;
        }
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        
        // -- Translating statement: label lhs12 -- SnapshotsNestedMagicWands.vpr@26.17--26.34
          lhs12:
          Labellhs12Mask := Ops_7Mask;
          Labellhs12Heap := Ops_7Heap;
          b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        boolCur_3 := true;
        // Translating exec of non-ghost operationacc(x.f, write)
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_13 := b_13 && state(Used_6Heap, Used_6Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_6Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@26.9--26.34) [139097]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_12 && (b_12 && b_10)) && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                b_13 := b_13 && state(Used_6Heap, Used_6Mask);
                b_13 := b_13 && Ops_7Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_12 && (b_12 && b_10)) && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                b_13 := b_13 && state(Used_6Heap, Used_6Mask);
                b_13 := b_13 && Ops_5Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
                Ops_5Heap := Ops_5Heap[null, wand_3#sm(true, x, FullPerm):=Ops_5Heap[null, wand_3#sm(true, x, FullPerm)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_12 && (b_12 && b_10)) && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                b_13 := b_13 && state(Used_6Heap, Used_6Mask);
                b_13 := b_13 && Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_3#sm(true, x, FullPerm):=Heap[null, wand_3#sm(true, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@26.9--26.34) [139098]"}
            (b_12 && (b_12 && b_10)) && b_13 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_12 && b_13;
            b_14 := b_14 && state(Result_3Heap, Result_3Mask);
            b_14 := b_14 && sumMask(Result_3Mask, Ops_7Mask, Used_6Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_7Heap, Result_3Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_3Heap, Used_6Mask);
            b_14 := b_14 && state(Result_3Heap, Result_3Mask);
          b_12 := b_12 && b_14;
        Ops_5Mask := Ops_5Mask[null, wand_3(true, x, FullPerm):=Ops_5Mask[null, wand_3(true, x, FullPerm)] + FullPerm];
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationtrue --* acc(x.f, write)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_15 := b_15 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of true --* acc(x.f, write)
      
      // -- checking if access predicate defined in used state
        if ((b_10 && b_10) && b_15) {
          if (b_10) {
            
            // -- Check definedness of true --* acc(x.f, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs14 -- SnapshotsNestedMagicWands.vpr@25.23--25.40
                  lhs14:
                  Labellhs14Mask := WandDefLHSMask;
                  Labellhs14Heap := WandDefLHSHeap;
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
      initNeededTransfer := Used_7Mask[null, wand_3(true, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction true --* acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@25.5--27.6) [139099]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, wand_3(true, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, wand_3(true, x, FullPerm):=Used_7Mask[null, wand_3(true, x, FullPerm)] + takeTransfer];
            b_15 := b_15 && state(Used_7Heap, Used_7Mask);
            Ops_5Mask := Ops_5Mask[null, wand_3(true, x, FullPerm):=Ops_5Mask[null, wand_3(true, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_3(true, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, wand_3(true, x, FullPerm):=Used_7Mask[null, wand_3(true, x, FullPerm)] + takeTransfer];
            b_15 := b_15 && state(Used_7Heap, Used_7Mask);
            Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@25.5--27.6) [139100]"}
        (b_10 && b_10) && b_15 ==> neededTransfer == 0.000000000 && Used_7Mask[null, wand_3(true, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_16 := b_10 && b_15;
        b_16 := b_16 && state(Result_4Heap, Result_4Mask);
        b_16 := b_16 && sumMask(Result_4Mask, Ops_5Mask, Used_7Mask);
        b_16 := (b_16 && IdenticalOnKnownLocations(Ops_5Heap, Result_4Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_4Heap, Used_7Mask);
        b_16 := b_16 && state(Result_4Heap, Result_4Mask);
      b_10 := b_10 && b_16;
    Mask := Mask[null, wand_2(true, true, x, FullPerm):=Mask[null, wand_2(true, true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* true --* acc(x.f, write) -- SnapshotsNestedMagicWands.vpr@28.5--28.39
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@28.5--28.39) [139101]"}
        FullPerm <= Mask[null, wand_2(true, true, x, FullPerm)];
      Mask := Mask[null, wand_2(true, true, x, FullPerm):=Mask[null, wand_2(true, true, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(x.f, write) -- SnapshotsNestedMagicWands.vpr@29.5--29.28
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@29.5--29.28) [139103]"}
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
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
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
      assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@24.9--24.36) [139106]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test1 might not hold. Assertion x.f == old(x.f) might not hold. (SnapshotsNestedMagicWands.vpr@24.9--24.36) [139107]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_18: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_17: bool;
  var Labellhs18Mask: MaskType;
  var Labellhs18Heap: HeapType;
  var boolCur_4: bool;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_20: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_19: bool;
  var Labellhs20Mask: MaskType;
  var Labellhs20Heap: HeapType;
  var boolCur_5: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
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
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_23: bool;
  var b_24_1: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_25: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs22Mask: MaskType;
  var Labellhs22Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_26: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
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
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, g:=PostMask[x, g] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139108]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139109]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    
    // -- Check definedness of x.g == old(x.g)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139110]"}
        HasDirectPerm(PostMask, x, g);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139111]"}
        HasDirectPerm(oldMask, x, g);
    assume PostHeap[x, g] == oldHeap[x, g];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(x.f, write) && acc(x.g, write) --*
  // acc(x.f, write) &&
  // (acc(x.g, write) && (acc(x.g, write) --* acc(x.g, write))) {
  //   package acc(x.g, write) --* acc(x.g, write) {
  //   }
  // } -- SnapshotsNestedMagicWands.vpr@35.5--37.6
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_17 := b_17 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_18) {
      if (b_18) {
        perm := FullPerm;
        b_18 := b_18 && x != null;
        Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
        b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
      }
      if (b_18) {
        perm := FullPerm;
        b_18 := b_18 && x != null;
        Ops_9Mask := Ops_9Mask[x, g:=Ops_9Mask[x, g] + perm];
        b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
      }
    }
    b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs18 -- SnapshotsNestedMagicWands.vpr@35.13--35.85
      lhs18:
      Labellhs18Mask := Ops_9Mask;
      Labellhs18Heap := Ops_9Heap;
      b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_18) {
      
      // -- Translating statement: package acc(x.g, write) --* acc(x.g, write) {
  // } -- SnapshotsNestedMagicWands.vpr@36.9--36.40
        havoc Ops_11Heap;
        Ops_11Mask := ZeroMask;
        b_20 := b_20 && state(Ops_11Heap, Ops_11Mask);
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_19 := b_19 && state(Used_9Heap, Used_9Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_20) {
          perm := FullPerm;
          b_20 := b_20 && x != null;
          Ops_11Mask := Ops_11Mask[x, g:=Ops_11Mask[x, g] + perm];
          b_20 := b_20 && state(Ops_11Heap, Ops_11Mask);
        }
        b_20 := b_20 && state(Ops_11Heap, Ops_11Mask);
        
        // -- Translating statement: label lhs20 -- SnapshotsNestedMagicWands.vpr@36.18--36.39
          lhs20:
          Labellhs20Mask := Ops_11Mask;
          Labellhs20Heap := Ops_11Heap;
          b_20 := b_20 && state(Ops_11Heap, Ops_11Mask);
        boolCur_5 := true;
        // Translating exec of non-ghost operationacc(x.g, write)
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_21 := b_21 && state(Used_10Heap, Used_10Mask);
        
        // -- Transfer of acc(x.g, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, g] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (SnapshotsNestedMagicWands.vpr@36.9--36.40) [139112]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_20 && (b_20 && b_18)) && b_21) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
                b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                b_21 := b_21 && Ops_11Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
                Ops_11Mask := Ops_11Mask[rcvLocal, g:=Ops_11Mask[rcvLocal, g] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_20 && (b_20 && b_18)) && b_21) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, g];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, g:=Used_10Mask[rcvLocal, g] + takeTransfer];
                b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                b_21 := b_21 && Ops_9Heap[rcvLocal, g] == Used_10Heap[rcvLocal, g];
                Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] - takeTransfer];
                Ops_9Heap := Ops_9Heap[null, wand_5#sm(x, FullPerm, x, FullPerm):=Ops_9Heap[null, wand_5#sm(x, FullPerm, x, FullPerm)][x, g:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_20 && (b_20 && b_18)) && b_21) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_5#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_5#sm(x, FullPerm, x, FullPerm)][x, g:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@36.9--36.40) [139113]"}
            (b_20 && (b_20 && b_18)) && b_21 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, g] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_22 := b_20 && b_21;
            b_22 := b_22 && state(Result_5Heap, Result_5Mask);
            b_22 := b_22 && sumMask(Result_5Mask, Ops_11Mask, Used_10Mask);
            b_22 := (b_22 && IdenticalOnKnownLocations(Ops_11Heap, Result_5Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_5Heap, Used_10Mask);
            b_22 := b_22 && state(Result_5Heap, Result_5Mask);
          b_20 := b_20 && b_22;
        Ops_9Mask := Ops_9Mask[null, wand_5(x, FullPerm, x, FullPerm):=Ops_9Mask[null, wand_5(x, FullPerm, x, FullPerm)] + FullPerm];
        b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
        b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
        b_18 := b_18 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.g, write) && (acc(x.g, write) --* acc(x.g, write)))
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_23 := b_23 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_11Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@35.5--37.6) [139114]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            b_23 := b_23 && Ops_9Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            b_23 := b_23 && Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_4#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand_4#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@35.5--37.6) [139115]"}
        (b_18 && b_18) && b_23 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_24_1 := b_18 && b_23;
        b_24_1 := b_24_1 && state(Result_6Heap, Result_6Mask);
        b_24_1 := b_24_1 && sumMask(Result_6Mask, Ops_9Mask, Used_11Mask);
        b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_9Heap, Result_6Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_6Heap, Used_11Mask);
        b_24_1 := b_24_1 && state(Result_6Heap, Result_6Mask);
      b_18 := b_18 && b_24_1;
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_11Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (SnapshotsNestedMagicWands.vpr@35.5--37.6) [139116]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, g:=Used_11Mask[rcvLocal, g] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            b_23 := b_23 && Ops_9Heap[rcvLocal, g] == Used_11Heap[rcvLocal, g];
            Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[rcvLocal, g:=Used_11Mask[rcvLocal, g] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            b_23 := b_23 && Heap[rcvLocal, g] == Used_11Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_4#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand_4#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@35.5--37.6) [139117]"}
        (b_18 && b_18) && b_23 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_25 := b_18 && b_23;
        b_25 := b_25 && state(Result_7Heap, Result_7Mask);
        b_25 := b_25 && sumMask(Result_7Mask, Ops_9Mask, Used_11Mask);
        b_25 := (b_25 && IdenticalOnKnownLocations(Ops_9Heap, Result_7Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_7Heap, Used_11Mask);
        b_25 := b_25 && state(Result_7Heap, Result_7Mask);
      b_18 := b_18 && b_25;
    
    // -- Transfer of acc(x.g, write) --* acc(x.g, write)
      
      // -- checking if access predicate defined in used state
        if ((b_18 && b_18) && b_23) {
          if (b_18) {
            
            // -- Check definedness of acc(x.g, write) --* acc(x.g, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefLHSMask := WandDefLHSMask[x, g:=WandDefLHSMask[x, g] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs22 -- SnapshotsNestedMagicWands.vpr@35.63--35.84
                  lhs22:
                  Labellhs22Mask := WandDefLHSMask;
                  Labellhs22Heap := WandDefLHSHeap;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_11Mask[null, wand_5(x, FullPerm, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) --* acc(x.g, write) might be negative. (SnapshotsNestedMagicWands.vpr@35.5--37.6) [139118]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_9Mask[null, wand_5(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, wand_5(x, FullPerm, x, FullPerm):=Used_11Mask[null, wand_5(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            Ops_9Mask := Ops_9Mask[null, wand_5(x, FullPerm, x, FullPerm):=Ops_9Mask[null, wand_5(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_5(x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, wand_5(x, FullPerm, x, FullPerm):=Used_11Mask[null, wand_5(x, FullPerm, x, FullPerm)] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            Mask := Mask[null, wand_5(x, FullPerm, x, FullPerm):=Mask[null, wand_5(x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@35.5--37.6) [139119]"}
        (b_18 && b_18) && b_23 ==> neededTransfer == 0.000000000 && Used_11Mask[null, wand_5(x, FullPerm, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_26 := b_18 && b_23;
        b_26 := b_26 && state(Result_8Heap, Result_8Mask);
        b_26 := b_26 && sumMask(Result_8Mask, Ops_9Mask, Used_11Mask);
        b_26 := (b_26 && IdenticalOnKnownLocations(Ops_9Heap, Result_8Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_8Heap, Used_11Mask);
        b_26 := b_26 && state(Result_8Heap, Result_8Mask);
      b_18 := b_18 && b_26;
    Mask := Mask[null, wand_4(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_4(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) && acc(x.g, write) --*
  //   acc(x.f, write) &&
  //   (acc(x.g, write) && (acc(x.g, write) --* acc(x.g, write))) -- SnapshotsNestedMagicWands.vpr@38.5--38.83
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@38.5--38.83) [139120]"}
        FullPerm <= Mask[null, wand_4(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_4(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_4(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@38.5--38.83) [139122]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@38.5--38.83) [139124]"}
          perm <= Mask[x, g];
      }
      Mask := Mask[x, g:=Mask[x, g] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
      Mask := Mask[null, wand_5(x, FullPerm, x, FullPerm):=Mask[null, wand_5(x, FullPerm, x, FullPerm)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.g, write) --* acc(x.g, write) -- SnapshotsNestedMagicWands.vpr@39.5--39.32
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@39.5--39.32) [139127]"}
        FullPerm <= Mask[null, wand_5(x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_5(x, FullPerm, x, FullPerm):=Mask[null, wand_5(x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@39.5--39.32) [139129]"}
          perm <= Mask[x, g];
      }
      Mask := Mask[x, g:=Mask[x, g] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
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
      assert {:msg "  Postcondition of test2 might not hold. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139131]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test2 might not hold. There might be insufficient permission to access x.g (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139132]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    assert {:msg "  Postcondition of test2 might not hold. Assertion x.f == old(x.f) might not hold. (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139133]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    assert {:msg "  Postcondition of test2 might not hold. Assertion x.g == old(x.g) might not hold. (SnapshotsNestedMagicWands.vpr@34.9--34.67) [139134]"}
      Heap[x, g] == oldHeap[x, g];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_28: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_27: bool;
  var Labellhs25Mask: MaskType;
  var Labellhs25Heap: HeapType;
  var boolCur_6: bool;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_30: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_29: bool;
  var Labellhs27Mask: MaskType;
  var Labellhs27Heap: HeapType;
  var boolCur_7: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_31: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_32: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_33: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@44.9--44.36) [139135]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@44.9--44.36) [139136]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) {
  //   package true --* true {
  //   }
  // } -- SnapshotsNestedMagicWands.vpr@45.5--47.6
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_27 := b_27 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_28) {
      perm := FullPerm;
      b_28 := b_28 && x != null;
      Ops_13Mask := Ops_13Mask[x, f_7:=Ops_13Mask[x, f_7] + perm];
      b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    }
    b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs25 -- SnapshotsNestedMagicWands.vpr@45.13--45.34
      lhs25:
      Labellhs25Mask := Ops_13Mask;
      Labellhs25Heap := Ops_13Heap;
      b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    if (b_28) {
      
      // -- Translating statement: package true --* true {
  // } -- SnapshotsNestedMagicWands.vpr@46.9--46.30
        havoc Ops_15Heap;
        Ops_15Mask := ZeroMask;
        b_30 := b_30 && state(Ops_15Heap, Ops_15Mask);
        havoc Used_13Heap;
        Used_13Mask := ZeroMask;
        b_29 := b_29 && state(Used_13Heap, Used_13Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_30) {
          b_30 := b_30;
        }
        b_30 := b_30 && state(Ops_15Heap, Ops_15Mask);
        
        // -- Translating statement: label lhs27 -- SnapshotsNestedMagicWands.vpr@46.17--46.30
          lhs27:
          Labellhs27Mask := Ops_15Mask;
          Labellhs27Heap := Ops_15Heap;
          b_30 := b_30 && state(Ops_15Heap, Ops_15Mask);
        boolCur_7 := true;
        // Translating exec of non-ghost operationtrue
        havoc Used_14Heap;
        Used_14Mask := ZeroMask;
        b_31 := b_31 && state(Used_14Heap, Used_14Mask);
        Ops_13Mask := Ops_13Mask[null, wand_7(true, true):=Ops_13Mask[null, wand_7(true, true)] + FullPerm];
        b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
        b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
        b_28 := b_28 && state(Ops_13Heap, Ops_13Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_32 := b_32 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_15Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@45.5--47.6) [139138]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_32) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_13Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_32 := b_32 && state(Used_15Heap, Used_15Mask);
            b_32 := b_32 && Ops_13Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Ops_13Mask := Ops_13Mask[rcvLocal, f_7:=Ops_13Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_28 && b_28) && b_32) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[rcvLocal, f_7:=Used_15Mask[rcvLocal, f_7] + takeTransfer];
            b_32 := b_32 && state(Used_15Heap, Used_15Mask);
            b_32 := b_32 && Heap[rcvLocal, f_7] == Used_15Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_6#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_6#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@45.5--47.6) [139139]"}
        (b_28 && b_28) && b_32 ==> neededTransfer == 0.000000000 && Used_15Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_33 := b_28 && b_32;
        b_33 := b_33 && state(Result_9Heap, Result_9Mask);
        b_33 := b_33 && sumMask(Result_9Mask, Ops_13Mask, Used_15Mask);
        b_33 := (b_33 && IdenticalOnKnownLocations(Ops_13Heap, Result_9Heap, Ops_13Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_9Heap, Used_15Mask);
        b_33 := b_33 && state(Result_9Heap, Result_9Mask);
      b_28 := b_28 && b_33;
    Mask := Mask[null, wand_6(x, FullPerm, x, FullPerm):=Mask[null, wand_6(x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) -- SnapshotsNestedMagicWands.vpr@48.5--48.32
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@48.5--48.32) [139140]"}
        FullPerm <= Mask[null, wand_6(x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_6(x, FullPerm, x, FullPerm):=Mask[null, wand_6(x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@48.5--48.32) [139142]"}
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
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test3 might not hold. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@44.9--44.36) [139144]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test3 might not hold. Assertion x.f == old(x.f) might not hold. (SnapshotsNestedMagicWands.vpr@44.9--44.36) [139145]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_35: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_34: bool;
  var Labellhs30Mask: MaskType;
  var Labellhs30Heap: HeapType;
  var boolCur_8: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_36: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_37: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var Ops_19Heap: HeapType;
  var Ops_19Mask: MaskType;
  var b_39: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_38: bool;
  var Labellhs32Mask: MaskType;
  var Labellhs32Heap: HeapType;
  var boolCur_9: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_40: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs35Mask: MaskType;
  var Labellhs35Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_41: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_42: bool;
  var ExhaleHeap: HeapType;
  var Used_21Heap: HeapType;
  var Used_21Mask: MaskType;
  var b_43: bool;
  var b_44: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  
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
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@53.9--53.36) [139146]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@53.9--53.36) [139147]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package true --* acc(x.f, write) {
  // } -- SnapshotsNestedMagicWands.vpr@54.5--54.30
    havoc Ops_17Heap;
    Ops_17Mask := ZeroMask;
    b_35 := b_35 && state(Ops_17Heap, Ops_17Mask);
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_34 := b_34 && state(Used_16Heap, Used_16Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_35) {
      b_35 := b_35;
    }
    b_35 := b_35 && state(Ops_17Heap, Ops_17Mask);
    
    // -- Translating statement: label lhs30 -- SnapshotsNestedMagicWands.vpr@54.13--54.30
      lhs30:
      Labellhs30Mask := Ops_17Mask;
      Labellhs30Heap := Ops_17Heap;
      b_35 := b_35 && state(Ops_17Heap, Ops_17Mask);
    boolCur_8 := true;
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_36 := b_36 && state(Used_17Heap, Used_17Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_17Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@54.5--54.30) [139148]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_35 && b_35) && b_36) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_17Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_17Mask := Used_17Mask[rcvLocal, f_7:=Used_17Mask[rcvLocal, f_7] + takeTransfer];
            b_36 := b_36 && state(Used_17Heap, Used_17Mask);
            b_36 := b_36 && Ops_17Heap[rcvLocal, f_7] == Used_17Heap[rcvLocal, f_7];
            Ops_17Mask := Ops_17Mask[rcvLocal, f_7:=Ops_17Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_35 && b_35) && b_36) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_17Mask := Used_17Mask[rcvLocal, f_7:=Used_17Mask[rcvLocal, f_7] + takeTransfer];
            b_36 := b_36 && state(Used_17Heap, Used_17Mask);
            b_36 := b_36 && Heap[rcvLocal, f_7] == Used_17Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(true, x, FullPerm):=Heap[null, wand_3#sm(true, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@54.5--54.30) [139149]"}
        (b_35 && b_35) && b_36 ==> neededTransfer == 0.000000000 && Used_17Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_37 := b_35 && b_36;
        b_37 := b_37 && state(Result_10Heap, Result_10Mask);
        b_37 := b_37 && sumMask(Result_10Mask, Ops_17Mask, Used_17Mask);
        b_37 := (b_37 && IdenticalOnKnownLocations(Ops_17Heap, Result_10Heap, Ops_17Mask)) && IdenticalOnKnownLocations(Used_17Heap, Result_10Heap, Used_17Mask);
        b_37 := b_37 && state(Result_10Heap, Result_10Mask);
      b_35 := b_35 && b_37;
    Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(x.f, write) {
  //   apply true --* acc(x.f, write)
  // } -- SnapshotsNestedMagicWands.vpr@55.5--57.6
    havoc Ops_19Heap;
    Ops_19Mask := ZeroMask;
    b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_38 := b_38 && state(Used_18Heap, Used_18Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_39) {
      b_39 := b_39;
    }
    b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
    
    // -- Translating statement: label lhs32 -- SnapshotsNestedMagicWands.vpr@55.13--55.30
      lhs32:
      Labellhs32Mask := Ops_19Mask;
      Labellhs32Heap := Ops_19Heap;
      b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
    boolCur_9 := true;
    if (b_39) {
      
      // -- Translating statement: apply true --* acc(x.f, write) -- SnapshotsNestedMagicWands.vpr@56.9--56.32
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_19Mask;
          ExhaleWellDef0Heap := Ops_19Heap;
          havoc Used_19Heap;
          Used_19Mask := ZeroMask;
          b_40 := b_40 && state(Used_19Heap, Used_19Mask);
          
          // -- Transfer of true --* acc(x.f, write)
            
            // -- checking if access predicate defined in used state
              if (b_39 && b_40) {
                if (b_39) {
                  
                  // -- Check definedness of true --* acc(x.f, write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs35 -- SnapshotsNestedMagicWands.vpr@56.15--56.32
                        lhs35:
                        Labellhs35Mask := WandDefLHSMask;
                        Labellhs35Heap := WandDefLHSHeap;
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
            initNeededTransfer := Used_19Mask[null, wand_3(true, x, FullPerm)] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction true --* acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@56.9--56.32) [139150]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_39 && b_40) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_19Mask[null, wand_3(true, x, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_19Mask := Used_19Mask[null, wand_3(true, x, FullPerm):=Used_19Mask[null, wand_3(true, x, FullPerm)] + takeTransfer];
                  b_40 := b_40 && state(Used_19Heap, Used_19Mask);
                  Ops_19Mask := Ops_19Mask[null, wand_3(true, x, FullPerm):=Ops_19Mask[null, wand_3(true, x, FullPerm)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_39 && b_40) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_3(true, x, FullPerm)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_19Mask := Used_19Mask[null, wand_3(true, x, FullPerm):=Used_19Mask[null, wand_3(true, x, FullPerm)] + takeTransfer];
                  b_40 := b_40 && state(Used_19Heap, Used_19Mask);
                  Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@56.9--56.32) [139151]"}
              b_39 && b_40 ==> neededTransfer == 0.000000000 && Used_19Mask[null, wand_3(true, x, FullPerm)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_41 := b_39 && b_40;
              b_41 := b_41 && state(Result_11Heap, Result_11Mask);
              b_41 := b_41 && sumMask(Result_11Mask, Ops_19Mask, Used_19Mask);
              b_41 := (b_41 && IdenticalOnKnownLocations(Ops_19Heap, Result_11Heap, Ops_19Mask)) && IdenticalOnKnownLocations(Used_19Heap, Result_11Heap, Used_19Mask);
              b_41 := b_41 && state(Result_11Heap, Result_11Mask);
            b_39 := b_39 && b_41;
          b_39 := b_39 && b_40;
          b_39 := b_39 && Used_19Heap == Ops_19Heap;
        b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Ops_19Mask;
          ExhaleWellDef0Heap := Ops_19Heap;
          havoc Used_20Heap;
          Used_20Mask := ZeroMask;
          b_42 := b_42 && state(Used_20Heap, Used_20Mask);
          b_39 := b_39 && b_42;
          b_39 := b_39 && Used_20Heap == Ops_19Heap;
        b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_39 := b_39 && x != null;
          Ops_19Mask := Ops_19Mask[x, f_7:=Ops_19Mask[x, f_7] + perm];
          b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
          b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_19Heap, ExhaleHeap, Ops_19Mask);
        Ops_19Heap := ExhaleHeap;
        b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
        b_39 := b_39 && state(Ops_19Heap, Ops_19Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_21Heap;
    Used_21Mask := ZeroMask;
    b_43 := b_43 && state(Used_21Heap, Used_21Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_21Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (SnapshotsNestedMagicWands.vpr@55.5--57.6) [139154]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_39 && b_39) && b_43) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_19Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_21Mask := Used_21Mask[rcvLocal, f_7:=Used_21Mask[rcvLocal, f_7] + takeTransfer];
            b_43 := b_43 && state(Used_21Heap, Used_21Mask);
            b_43 := b_43 && Ops_19Heap[rcvLocal, f_7] == Used_21Heap[rcvLocal, f_7];
            Ops_19Mask := Ops_19Mask[rcvLocal, f_7:=Ops_19Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_39 && b_39) && b_43) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_21Mask := Used_21Mask[rcvLocal, f_7:=Used_21Mask[rcvLocal, f_7] + takeTransfer];
            b_43 := b_43 && state(Used_21Heap, Used_21Mask);
            b_43 := b_43 && Heap[rcvLocal, f_7] == Used_21Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_3#sm(true, x, FullPerm):=Heap[null, wand_3#sm(true, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@55.5--57.6) [139155]"}
        (b_39 && b_39) && b_43 ==> neededTransfer == 0.000000000 && Used_21Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_44 := b_39 && b_43;
        b_44 := b_44 && state(Result_12Heap, Result_12Mask);
        b_44 := b_44 && sumMask(Result_12Mask, Ops_19Mask, Used_21Mask);
        b_44 := (b_44 && IdenticalOnKnownLocations(Ops_19Heap, Result_12Heap, Ops_19Mask)) && IdenticalOnKnownLocations(Used_21Heap, Result_12Heap, Used_21Mask);
        b_44 := b_44 && state(Result_12Heap, Result_12Mask);
      b_39 := b_39 && b_44;
    Mask := Mask[null, wand_3(true, x, FullPerm):=Mask[null, wand_3(true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(x.f, write) -- SnapshotsNestedMagicWands.vpr@58.5--58.28
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsNestedMagicWands.vpr@58.5--58.28) [139156]"}
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
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
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
      assert {:msg "  Postcondition of test4 might not hold. There might be insufficient permission to access x.f (SnapshotsNestedMagicWands.vpr@53.9--53.36) [139159]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test4 might not hold. Assertion x.f == old(x.f) might not hold. (SnapshotsNestedMagicWands.vpr@53.9--53.36) [139160]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}