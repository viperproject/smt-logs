// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:30:42
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/packaging_nested.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/packaging_nested-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

type WandType_wand_3;
function  wand_3(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_3 int;
function  wand_3#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_3 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_3#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_3(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand;
function  wand(arg1: bool, arg2: bool, arg3: bool, arg4: bool): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: bool, arg3: bool, arg4: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: bool, arg3: bool, arg4: bool): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg4: bool, arg1_2: bool, arg2_2: bool, arg3_2: bool, arg4_2: bool ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_4;
function  wand_4(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_4 int;
function  wand_4#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_4 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4)) }
  wand_4#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_4#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_4(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_4(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_4(arg1, arg2, arg3, arg4), wand_4(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_4(arg1, arg2, arg3, arg4) == wand_4(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: bool, arg3: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: bool, arg3: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: bool, arg3: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: bool, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 3
);
axiom (forall arg1: bool, arg2: bool, arg3: bool, arg1_2: bool, arg2_2: bool, arg3_2: bool ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: bool): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: bool): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: bool): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_2(arg1, arg2) }
  IsWandField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_2#ft(arg1, arg2) }
  IsWandField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_2(arg1, arg2) }
  !IsPredicateField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_2#ft(arg1, arg2) }
  !IsPredicateField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_2#ft(arg1, arg2)) }
  wand_2#sm(arg1, arg2) == WandMaskField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_2(arg1, arg2) }
  getPredWandId(wand_2(arg1, arg2)) == 4
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_2(arg1, arg2), wand_2(arg1_2, arg2_2) }
  wand_2(arg1, arg2) == wand_2(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
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

procedure t01(x: Ref) returns ()
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
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur: bool;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_3: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var boolCur_1: bool;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  var boolCur_2: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_8: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var Labellhs12Heap: HeapType;
  var Labellhs12Mask: MaskType;
  var b_10: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var Labellhs14Heap: HeapType;
  var Labellhs14Mask: MaskType;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Translating statement: package true --* false --* true --* false {
  //   package false --* true --* false {
  //     package true --* false {
  //     }
  //   }
  // } -- packaging_nested.vpr@12.1--17.2
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
    
    // -- Translating statement: label lhs3 -- packaging_nested.vpr@12.9--12.48
      lhs3:
      Labellhs3Heap := Ops_1Heap;
      Labellhs3Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: package false --* true --* false {
  //   package true --* false {
  //   }
  // } -- packaging_nested.vpr@13.5--15.6
        havoc Ops_3Heap;
        Ops_3Mask := ZeroMask;
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_3) {
          b_3 := false;
        }
        b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        
        // -- Translating statement: label lhs6 -- packaging_nested.vpr@13.14--13.38
          lhs6:
          Labellhs6Heap := Ops_3Heap;
          Labellhs6Mask := Ops_3Mask;
          b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        boolCur_1 := true;
        if (b_3 && b_1_1) {
          
          // -- Translating statement: package true --* false {
  // } -- packaging_nested.vpr@14.9--14.33
            havoc Ops_5Heap;
            Ops_5Mask := ZeroMask;
            b_5 := b_5 && state(Ops_5Heap, Ops_5Mask);
            havoc Used_2Heap;
            Used_2Mask := ZeroMask;
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            // Inhaling left hand side of current wand into hypothetical state
            if (b_5) {
              b_5 := b_5;
            }
            b_5 := b_5 && state(Ops_5Heap, Ops_5Mask);
            
            // -- Translating statement: label lhs8 -- packaging_nested.vpr@14.18--14.32
              lhs8:
              Labellhs8Heap := Ops_5Heap;
              Labellhs8Mask := Ops_5Mask;
              b_5 := b_5 && state(Ops_5Heap, Ops_5Mask);
            boolCur_2 := true;
            // Translating exec of non-ghost operationfalse
            havoc Used_3Heap;
            Used_3Mask := ZeroMask;
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            assert {:msg "  Packaging wand might fail. Assertion false might not hold. (packaging_nested.vpr@14.9--14.33) [133420]"}
              (b_5 && (b_5 && (b_3 && b_1_1))) && b_6 ==> false;
            Ops_3Mask := Ops_3Mask[null, wand_2(true, false):=Ops_3Mask[null, wand_2(true, false)] + FullPerm];
            b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
            b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
            b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        }
        // Translating exec of non-ghost operationtrue --* false
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_7 := b_7 && state(Used_4Heap, Used_4Mask);
        
        // -- Transfer of true --* false
          
          // -- checking if access predicate defined in used state
            if ((b_3 && (b_3 && b_1_1)) && b_7) {
              if (b_3) {
                
                // -- Check definedness of true --* false
                  if (*) {
                    havoc WandDefLHSHeap;
                    WandDefLHSMask := ZeroMask;
                    assume state(WandDefLHSHeap, WandDefLHSMask);
                    
                    // -- Translating statement: label lhs10 -- packaging_nested.vpr@13.24--13.38
                      lhs10:
                      Labellhs10Heap := WandDefLHSHeap;
                      Labellhs10Mask := WandDefLHSMask;
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
          initNeededTransfer := Used_4Mask[null, wand_2(true, false)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction true --* false might be negative. (packaging_nested.vpr@13.5--15.6) [133421]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_7) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, wand_2(true, false)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, wand_2(true, false):=Used_4Mask[null, wand_2(true, false)] + takeTransfer];
                b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                Ops_3Mask := Ops_3Mask[null, wand_2(true, false):=Ops_3Mask[null, wand_2(true, false)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_7) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, wand_2(true, false)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, wand_2(true, false):=Used_4Mask[null, wand_2(true, false)] + takeTransfer];
                b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                Ops_1Mask := Ops_1Mask[null, wand_2(true, false):=Ops_1Mask[null, wand_2(true, false)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_3 && (b_3 && b_1_1)) && b_7) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, wand_2(true, false)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, wand_2(true, false):=Used_4Mask[null, wand_2(true, false)] + takeTransfer];
                b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                Mask := Mask[null, wand_2(true, false):=Mask[null, wand_2(true, false)] - takeTransfer];
              }
            }
          assert {:msg "  Packaging wand might fail. Magic wand instance not found. (packaging_nested.vpr@13.5--15.6) [133422]"}
            (b_3 && (b_3 && b_1_1)) && b_7 ==> neededTransfer == 0.000000000 && Used_4Mask[null, wand_2(true, false)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_8 := b_3 && b_7;
            b_8 := b_8 && state(ResultHeap, ResultMask);
            b_8 := b_8 && sumMask(ResultMask, Ops_3Mask, Used_4Mask);
            b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, ResultHeap, Used_4Mask);
            b_8 := b_8 && state(ResultHeap, ResultMask);
          b_3 := b_3 && b_8;
        Ops_1Mask := Ops_1Mask[null, wand_1(false, true, false):=Ops_1Mask[null, wand_1(false, true, false)] + FullPerm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationfalse --* true --* false
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_9 := b_9 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of false --* true --* false
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_9) {
          if (b_1_1) {
            
            // -- Check definedness of false --* true --* false
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                assume false;
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs11 -- packaging_nested.vpr@12.21--12.47
                  lhs11:
                  Labellhs11Heap := WandDefLHSHeap;
                  Labellhs11Mask := WandDefLHSMask;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                
                // -- Check definedness of true --* false
                  if (*) {
                    havoc WandDefLHSHeap;
                    WandDefLHSMask := ZeroMask;
                    assume state(WandDefLHSHeap, WandDefLHSMask);
                    
                    // -- Translating statement: label lhs12 -- packaging_nested.vpr@12.32--12.46
                      lhs12:
                      Labellhs12Heap := WandDefLHSHeap;
                      Labellhs12Mask := WandDefLHSMask;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                    havoc WandDefRHSHeap;
                    WandDefRHSMask := ZeroMask;
                    assume false;
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    assume false;
                  }
                WandDefRHSMask := WandDefRHSMask[null, wand_2(true, false):=WandDefRHSMask[null, wand_2(true, false)] + FullPerm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_5Mask[null, wand_1(false, true, false)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction false --* true --* false might be negative. (packaging_nested.vpr@12.1--17.2) [133423]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, wand_1(false, true, false)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, wand_1(false, true, false):=Used_5Mask[null, wand_1(false, true, false)] + takeTransfer];
            b_9 := b_9 && state(Used_5Heap, Used_5Mask);
            Ops_1Mask := Ops_1Mask[null, wand_1(false, true, false):=Ops_1Mask[null, wand_1(false, true, false)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_9) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_1(false, true, false)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, wand_1(false, true, false):=Used_5Mask[null, wand_1(false, true, false)] + takeTransfer];
            b_9 := b_9 && state(Used_5Heap, Used_5Mask);
            Mask := Mask[null, wand_1(false, true, false):=Mask[null, wand_1(false, true, false)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (packaging_nested.vpr@12.1--17.2) [133424]"}
        (b_1_1 && b_1_1) && b_9 ==> neededTransfer == 0.000000000 && Used_5Mask[null, wand_1(false, true, false)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_10 := b_1_1 && b_9;
        b_10 := b_10 && state(Result_1Heap, Result_1Mask);
        b_10 := b_10 && sumMask(Result_1Mask, Ops_1Mask, Used_5Mask);
        b_10 := (b_10 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_1Heap, Used_5Mask);
        b_10 := b_10 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_10;
    Mask := Mask[null, wand(true, false, true, false):=Mask[null, wand(true, false, true, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale true --* false --* true --* false -- packaging_nested.vpr@19.1--19.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of true --* false --* true --* false
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs13 -- packaging_nested.vpr@19.8--19.45
          lhs13:
          Labellhs13Heap := WandDefLHSHeap;
          Labellhs13Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of false --* true --* false
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            assume false;
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs14 -- packaging_nested.vpr@19.18--19.44
              lhs14:
              Labellhs14Heap := WandDefLHSHeap;
              Labellhs14Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            
            // -- Check definedness of true --* false
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs15 -- packaging_nested.vpr@19.29--19.43
                  lhs15:
                  Labellhs15Heap := WandDefLHSHeap;
                  Labellhs15Mask := WandDefLHSMask;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                assume false;
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
            WandDefRHSMask := WandDefRHSMask[null, wand_2(true, false):=WandDefRHSMask[null, wand_2(true, false)] + FullPerm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand_1(false, true, false):=WandDefRHSMask[null, wand_1(false, true, false)] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (packaging_nested.vpr@19.8--19.45) [133425]"}
      FullPerm <= Mask[null, wand(true, false, true, false)];
    Mask := Mask[null, wand(true, false, true, false):=Mask[null, wand(true, false, true, false)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- packaging_nested.vpr@22.1--22.13
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (packaging_nested.vpr@22.8--22.13) [133426]"}
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
  var y: Ref;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_12: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var perm: Perm;
  var Labellhs17Heap: HeapType;
  var Labellhs17Mask: MaskType;
  var boolCur_3: bool;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_14: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var Labellhs19Heap: HeapType;
  var Labellhs19Mask: MaskType;
  var boolCur_4: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_15: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_16: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_17: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs21Heap: HeapType;
  var Labellhs21Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_18: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellhs22Heap: HeapType;
  var Labellhs22Mask: MaskType;
  var Labellhs23Heap: HeapType;
  var Labellhs23Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
  
  // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 2 --* acc(x.f, 1 / 4) --* acc(x.f, 3 / 4) {
  //   package acc(x.f, 1 / 4) --* acc(x.f, 3 / 4) {
  //   }
  // } -- packaging_nested.vpr@30.1--32.2
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_11 := b_11 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      if (b_12) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (packaging_nested.vpr@30.1--32.2) [133427]"}
          perm >= NoPerm;
        b_12 := b_12 && (perm > NoPerm ==> x != null);
        Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
      }
      if (b_12) {
        if (b_12) {
          
          // -- Check definedness of x.f == 2
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_nested.vpr@30.1--32.2) [133428]"}
              HasDirectPerm(Ops_7Mask, x, f_7);
        }
        b_12 := b_12 && Ops_7Heap[x, f_7] == 2;
      }
    }
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs17 -- packaging_nested.vpr@30.9--30.66
      lhs17:
      Labellhs17Heap := Ops_7Heap;
      Labellhs17Mask := Ops_7Mask;
      b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_12) {
      
      // -- Translating statement: package acc(x.f, 1 / 4) --* acc(x.f, 3 / 4) {
  // } -- packaging_nested.vpr@31.5--31.44
        havoc Ops_9Heap;
        Ops_9Mask := ZeroMask;
        b_14 := b_14 && state(Ops_9Heap, Ops_9Mask);
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_13 := b_13 && state(Used_7Heap, Used_7Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_14) {
          perm := 1 / 4;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 4 might be negative. (packaging_nested.vpr@31.5--31.44) [133429]"}
            perm >= NoPerm;
          b_14 := b_14 && (perm > NoPerm ==> x != null);
          Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
          b_14 := b_14 && state(Ops_9Heap, Ops_9Mask);
        }
        b_14 := b_14 && state(Ops_9Heap, Ops_9Mask);
        
        // -- Translating statement: label lhs19 -- packaging_nested.vpr@31.14--31.43
          lhs19:
          Labellhs19Heap := Ops_9Heap;
          Labellhs19Mask := Ops_9Mask;
          b_14 := b_14 && state(Ops_9Heap, Ops_9Mask);
        boolCur_4 := true;
        // Translating exec of non-ghost operationacc(x.f, 3 / 4)
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_15 := b_15 && state(Used_8Heap, Used_8Mask);
        
        // -- Transfer of acc(x.f, 3 / 4)
          rcvLocal := x;
          neededTransfer := 3 / 4;
          initNeededTransfer := Used_8Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 3 / 4) might be negative. (packaging_nested.vpr@31.5--31.44) [133430]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_14 && (b_14 && b_12)) && b_15) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
                b_15 := b_15 && state(Used_8Heap, Used_8Mask);
                b_15 := b_15 && Ops_9Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
                Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_14 && (b_14 && b_12)) && b_15) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
                b_15 := b_15 && state(Used_8Heap, Used_8Mask);
                b_15 := b_15 && Ops_7Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
                Ops_7Heap := Ops_7Heap[null, wand_4#sm(x, 1 / 4, x, 3 / 4):=Ops_7Heap[null, wand_4#sm(x, 1 / 4, x, 3 / 4)][x, f_7:=true]];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_14 && (b_14 && b_12)) && b_15) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
                b_15 := b_15 && state(Used_8Heap, Used_8Mask);
                b_15 := b_15 && Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_4#sm(x, 1 / 4, x, 3 / 4):=Heap[null, wand_4#sm(x, 1 / 4, x, 3 / 4)][x, f_7:=true]];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (packaging_nested.vpr@31.5--31.44) [133431]"}
            (b_14 && (b_14 && b_12)) && b_15 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_16 := b_14 && b_15;
            b_16 := b_16 && state(Result_2Heap, Result_2Mask);
            b_16 := b_16 && sumMask(Result_2Mask, Ops_9Mask, Used_8Mask);
            b_16 := (b_16 && IdenticalOnKnownLocations(Ops_9Heap, Result_2Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_2Heap, Used_8Mask);
            b_16 := b_16 && state(Result_2Heap, Result_2Mask);
          b_14 := b_14 && b_16;
        Ops_7Mask := Ops_7Mask[null, wand_4(x, 1 / 4, x, 3 / 4):=Ops_7Mask[null, wand_4(x, 1 / 4, x, 3 / 4)] + FullPerm];
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, 1 / 4) --* acc(x.f, 3 / 4)
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_17 := b_17 && state(Used_9Heap, Used_9Mask);
    
    // -- Transfer of acc(x.f, 1 / 4) --* acc(x.f, 3 / 4)
      
      // -- checking if access predicate defined in used state
        if ((b_12 && b_12) && b_17) {
          if (b_12) {
            
            // -- Check definedness of acc(x.f, 1 / 4) --* acc(x.f, 3 / 4)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := 1 / 4;
                assert {:msg "  Packaging wand might fail. Fraction 1 / 4 might be negative. (packaging_nested.vpr@30.1--32.2) [133432]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> x != null;
                WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs21 -- packaging_nested.vpr@30.37--30.65
                  lhs21:
                  Labellhs21Heap := WandDefLHSHeap;
                  Labellhs21Mask := WandDefLHSMask;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                perm := 3 / 4;
                assert {:msg "  Packaging wand might fail. Fraction 3 / 4 might be negative. (packaging_nested.vpr@30.1--32.2) [133433]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> x != null;
                WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_9Mask[null, wand_4(x, 1 / 4, x, 3 / 4)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 4) --* acc(x.f, 3 / 4) might be negative. (packaging_nested.vpr@30.1--32.2) [133434]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, wand_4(x, 1 / 4, x, 3 / 4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_9Mask := Used_9Mask[null, wand_4(x, 1 / 4, x, 3 / 4):=Used_9Mask[null, wand_4(x, 1 / 4, x, 3 / 4)] + takeTransfer];
            b_17 := b_17 && state(Used_9Heap, Used_9Mask);
            Ops_7Mask := Ops_7Mask[null, wand_4(x, 1 / 4, x, 3 / 4):=Ops_7Mask[null, wand_4(x, 1 / 4, x, 3 / 4)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_4(x, 1 / 4, x, 3 / 4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_9Mask := Used_9Mask[null, wand_4(x, 1 / 4, x, 3 / 4):=Used_9Mask[null, wand_4(x, 1 / 4, x, 3 / 4)] + takeTransfer];
            b_17 := b_17 && state(Used_9Heap, Used_9Mask);
            Mask := Mask[null, wand_4(x, 1 / 4, x, 3 / 4):=Mask[null, wand_4(x, 1 / 4, x, 3 / 4)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (packaging_nested.vpr@30.1--32.2) [133435]"}
        (b_12 && b_12) && b_17 ==> neededTransfer == 0.000000000 && Used_9Mask[null, wand_4(x, 1 / 4, x, 3 / 4)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_18 := b_12 && b_17;
        b_18 := b_18 && state(Result_3Heap, Result_3Mask);
        b_18 := b_18 && sumMask(Result_3Mask, Ops_7Mask, Used_9Mask);
        b_18 := (b_18 && IdenticalOnKnownLocations(Ops_7Heap, Result_3Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_3Heap, Used_9Mask);
        b_18 := b_18 && state(Result_3Heap, Result_3Mask);
      b_12 := b_12 && b_18;
    Mask := Mask[null, wand_3(x, 1 / 2, x, 2, x, 1 / 4, x, 3 / 4):=Mask[null, wand_3(x, 1 / 2, x, 2, x, 1 / 4, x, 3 / 4)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: y := x -- packaging_nested.vpr@34.1--34.7
    y := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(y.f, 1 / 2) && y.f == 2 --* acc(y.f, 1 / 4) --* acc(y.f, 3 / 4) -- packaging_nested.vpr@36.1--36.63
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(y.f, 1 / 2) && y.f == 2 --* acc(y.f, 1 / 4) --* acc(y.f, 3 / 4)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := 1 / 2;
        assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (packaging_nested.vpr@36.8--36.63) [133436]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> y != null;
        WandDefLHSMask := WandDefLHSMask[y, f_7:=WandDefLHSMask[y, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of y.f == 2
          assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (packaging_nested.vpr@36.8--36.63) [133437]"}
            HasDirectPerm(WandDefLHSMask, y, f_7);
        assume WandDefLHSHeap[y, f_7] == 2;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs22 -- packaging_nested.vpr@36.8--36.63
          lhs22:
          Labellhs22Heap := WandDefLHSHeap;
          Labellhs22Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of acc(y.f, 1 / 4) --* acc(y.f, 3 / 4)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := 1 / 4;
            assert {:msg "  Exhale might fail. Fraction 1 / 4 might be negative. (packaging_nested.vpr@36.8--36.63) [133438]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> y != null;
            WandDefLHSMask := WandDefLHSMask[y, f_7:=WandDefLHSMask[y, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs23 -- packaging_nested.vpr@36.34--36.62
              lhs23:
              Labellhs23Heap := WandDefLHSHeap;
              Labellhs23Mask := WandDefLHSMask;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := 3 / 4;
            assert {:msg "  Exhale might fail. Fraction 3 / 4 might be negative. (packaging_nested.vpr@36.8--36.63) [133439]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> y != null;
            WandDefRHSMask := WandDefRHSMask[y, f_7:=WandDefRHSMask[y, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand_4(y, 1 / 4, y, 3 / 4):=WandDefRHSMask[null, wand_4(y, 1 / 4, y, 3 / 4)] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (packaging_nested.vpr@36.8--36.63) [133440]"}
      FullPerm <= Mask[null, wand_3(y, 1 / 2, y, 2, y, 1 / 4, y, 3 / 4)];
    Mask := Mask[null, wand_3(y, 1 / 2, y, 2, y, 1 / 4, y, 3 / 4):=Mask[null, wand_3(y, 1 / 2, y, 2, y, 1 / 4, y, 3 / 4)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- packaging_nested.vpr@39.1--39.13
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (packaging_nested.vpr@39.8--39.13) [133441]"}
      false;
    assume state(Heap, Mask);
}