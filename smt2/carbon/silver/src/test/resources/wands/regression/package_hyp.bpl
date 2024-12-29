// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:18:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/package_hyp.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/package_hyp-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm, arg9_2: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && arg9 == arg9_2)))))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: int, arg7: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: int, arg7_2: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand_3;
function  wand_3(arg1: bool, arg2: bool): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool, arg2: bool): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool, arg2: bool): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_3(arg1, arg2) }
  IsWandField(wand_3(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3#ft(arg1, arg2) }
  IsWandField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3(arg1, arg2) }
  !IsPredicateField(wand_3(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3#ft(arg1, arg2) }
  !IsPredicateField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_3#ft(arg1, arg2)) }
  wand_3#sm(arg1, arg2) == WandMaskField(wand_3#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_3(arg1, arg2) }
  getPredWandId(wand_3(arg1, arg2)) == 3
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_3(arg1, arg2), wand_3(arg1_2, arg2_2) }
  wand_3(arg1, arg2) == wand_3(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
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
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_4: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_6: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) && acc(x.f, write) --* false {
  // } -- package_hyp.vpr@11.3--11.39
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
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- package_hyp.vpr@11.11--11.39
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationfalse
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@11.3--11.39) [123753]"}
      (b_1_1 && b_1_1) && b_2_1 ==> false;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, false):=Mask[null, wand(x, FullPerm, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, write) && acc(x.f, write) --*
  // acc(x.f, write) && (acc(x.f, write) && false) {
  // } -- package_hyp.vpr@13.3--13.59
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      if (b_4) {
        perm := FullPerm;
        b_4 := b_4 && x != null;
        Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_4) {
        perm := FullPerm;
        b_4 := b_4 && x != null;
        Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
      }
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- package_hyp.vpr@13.11--13.59
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && (acc(x.f, write) && false)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package_hyp.vpr@13.3--13.59) [123754]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Ops_3Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package_hyp.vpr@13.3--13.59) [123755]"}
        (b_4 && b_4) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_4 && b_5;
        b_6 := b_6 && state(ResultHeap, ResultMask);
        b_6 := b_6 && sumMask(ResultMask, Ops_3Mask, Used_3Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, ResultHeap, Used_3Mask);
        b_6 := b_6 && state(ResultHeap, ResultMask);
      b_4 := b_4 && b_6;
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (package_hyp.vpr@13.3--13.59) [123756]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Ops_3Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package_hyp.vpr@13.3--13.59) [123757]"}
        (b_4 && b_4) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_4 && b_5;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_4 := b_4 && b_7;
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@13.3--13.59) [123758]"}
      (b_4 && b_4) && b_5 ==> false;
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package_hyp.vpr@16.3--16.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package_hyp.vpr@16.10--16.15) [123759]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
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
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) && (x.f == 2 && x.f == 3) --* false {
  // } -- package_hyp.vpr@22.3--22.45
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      if (b_9) {
        perm := FullPerm;
        b_9 := b_9 && x != null;
        Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
        b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
      }
      if (b_9) {
        if (b_9) {
          if (b_9) {
            
            // -- Check definedness of x.f == 2
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package_hyp.vpr@22.3--22.45) [123760]"}
                HasDirectPerm(Ops_5Mask, x, f_7);
          }
          b_9 := b_9 && Ops_5Heap[x, f_7] == 2;
        }
        if (b_9) {
          if (b_9) {
            
            // -- Check definedness of x.f == 3
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package_hyp.vpr@22.3--22.45) [123761]"}
                HasDirectPerm(Ops_5Mask, x, f_7);
          }
          b_9 := b_9 && Ops_5Heap[x, f_7] == 3;
        }
      }
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- package_hyp.vpr@22.11--22.45
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationfalse
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@22.3--22.45) [123762]"}
      (b_9 && b_9) && b_10 ==> false;
    Mask := Mask[null, wand_2(x, FullPerm, x, 2, x, 3, false):=Mask[null, wand_2(x, FullPerm, x, 2, x, 3, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package_hyp.vpr@25.3--25.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package_hyp.vpr@25.10--25.15) [123763]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_12: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_3: bool;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_14: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_4: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_15: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_16: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, write) && (x.f == 2 && x.f == 3) --* false {
  //   package true --* false {
  //   }
  // } -- package_hyp.vpr@31.3--33.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_11 := b_11 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      if (b_12) {
        perm := FullPerm;
        b_12 := b_12 && x != null;
        Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
      }
      if (b_12) {
        if (b_12) {
          if (b_12) {
            
            // -- Check definedness of x.f == 2
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package_hyp.vpr@31.3--33.4) [123764]"}
                HasDirectPerm(Ops_7Mask, x, f_7);
          }
          b_12 := b_12 && Ops_7Heap[x, f_7] == 2;
        }
        if (b_12) {
          if (b_12) {
            
            // -- Check definedness of x.f == 3
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (package_hyp.vpr@31.3--33.4) [123765]"}
                HasDirectPerm(Ops_7Mask, x, f_7);
          }
          b_12 := b_12 && Ops_7Heap[x, f_7] == 3;
        }
      }
    }
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- package_hyp.vpr@31.11--31.47
      lhs7:
      Labellhs7Heap := Ops_7Heap;
      Labellhs7Mask := Ops_7Mask;
      b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_12) {
      
      // -- Translating statement: package true --* false {
  // } -- package_hyp.vpr@32.7--32.31
        havoc Ops_9Heap;
        Ops_9Mask := ZeroMask;
        b_14 := b_14 && state(Ops_9Heap, Ops_9Mask);
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_13 := b_13 && state(Used_7Heap, Used_7Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_14) {
          b_14 := b_14;
        }
        b_14 := b_14 && state(Ops_9Heap, Ops_9Mask);
        
        // -- Translating statement: label lhs9 -- package_hyp.vpr@32.16--32.30
          lhs9:
          Labellhs9Heap := Ops_9Heap;
          Labellhs9Mask := Ops_9Mask;
          b_14 := b_14 && state(Ops_9Heap, Ops_9Mask);
        boolCur_4 := true;
        // Translating exec of non-ghost operationfalse
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_15 := b_15 && state(Used_8Heap, Used_8Mask);
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@32.7--32.31) [123766]"}
          (b_14 && (b_14 && b_12)) && b_15 ==> false;
        Ops_7Mask := Ops_7Mask[null, wand_3(true, false):=Ops_7Mask[null, wand_3(true, false)] + FullPerm];
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationfalse
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@31.3--33.4) [123767]"}
      (b_12 && b_12) && b_16 ==> false;
    Mask := Mask[null, wand_2(x, FullPerm, x, 2, x, 3, false):=Mask[null, wand_2(x, FullPerm, x, 2, x, 3, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package_hyp.vpr@36.3--36.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package_hyp.vpr@36.10--36.15) [123768]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_18: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_17: bool;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var boolCur_5: bool;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_20: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_19: bool;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var boolCur_6: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_21: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_22: bool;
  
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
  
  // -- Translating statement: package true --* true {
  //   package true --* false {
  //   }
  // } -- package_hyp.vpr@41.3--44.4
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_17 := b_17 && state(Used_10Heap, Used_10Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_18) {
      b_18 := b_18;
    }
    b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs11 -- package_hyp.vpr@41.11--41.26
      lhs11:
      Labellhs11Heap := Ops_11Heap;
      Labellhs11Mask := Ops_11Mask;
      b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    if (b_18) {
      
      // -- Translating statement: package true --* false {
  // } -- package_hyp.vpr@43.7--43.31
        havoc Ops_13Heap;
        Ops_13Mask := ZeroMask;
        b_20 := b_20 && state(Ops_13Heap, Ops_13Mask);
        havoc Used_11Heap;
        Used_11Mask := ZeroMask;
        b_19 := b_19 && state(Used_11Heap, Used_11Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_20) {
          b_20 := b_20;
        }
        b_20 := b_20 && state(Ops_13Heap, Ops_13Mask);
        
        // -- Translating statement: label lhs13 -- package_hyp.vpr@43.16--43.30
          lhs13:
          Labellhs13Heap := Ops_13Heap;
          Labellhs13Mask := Ops_13Mask;
          b_20 := b_20 && state(Ops_13Heap, Ops_13Mask);
        boolCur_6 := true;
        // Translating exec of non-ghost operationfalse
        havoc Used_12Heap;
        Used_12Mask := ZeroMask;
        b_21 := b_21 && state(Used_12Heap, Used_12Mask);
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@43.7--43.31) [123769]"}
          (b_20 && (b_20 && b_18)) && b_21 ==> false;
        Ops_11Mask := Ops_11Mask[null, wand_3(true, false):=Ops_11Mask[null, wand_3(true, false)] + FullPerm];
        b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
        b_18 := b_18 && state(Ops_11Heap, Ops_11Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_22 := b_22 && state(Used_13Heap, Used_13Mask);
    Mask := Mask[null, wand_3(true, true):=Mask[null, wand_3(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_15Heap: HeapType;
  var Ops_15Mask: MaskType;
  var b_24_1: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_23: bool;
  var perm: Perm;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var boolCur_7: bool;
  var Ops_17Heap: HeapType;
  var Ops_17Mask: MaskType;
  var b_26: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_25: bool;
  var Labellhs17Heap: HeapType;
  var Labellhs17Mask: MaskType;
  var boolCur_8: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_27: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_28: bool;
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
  
  // -- Translating statement: package acc(x.f, write) && acc(x.f, write) --* false {
  //   package true --* false {
  //   }
  // } -- package_hyp.vpr@50.3--52.4
    havoc Ops_15Heap;
    Ops_15Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_23 := b_23 && state(Used_14Heap, Used_14Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_24_1) {
      if (b_24_1) {
        perm := FullPerm;
        b_24_1 := b_24_1 && x != null;
        Ops_15Mask := Ops_15Mask[x, f_7:=Ops_15Mask[x, f_7] + perm];
        b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
      }
      if (b_24_1) {
        perm := FullPerm;
        b_24_1 := b_24_1 && x != null;
        Ops_15Mask := Ops_15Mask[x, f_7:=Ops_15Mask[x, f_7] + perm];
        b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
      }
    }
    b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
    
    // -- Translating statement: label lhs15 -- package_hyp.vpr@50.11--50.41
      lhs15:
      Labellhs15Heap := Ops_15Heap;
      Labellhs15Mask := Ops_15Mask;
      b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
    boolCur_7 := true;
    if (b_24_1) {
      
      // -- Translating statement: package true --* false {
  // } -- package_hyp.vpr@51.7--51.31
        havoc Ops_17Heap;
        Ops_17Mask := ZeroMask;
        b_26 := b_26 && state(Ops_17Heap, Ops_17Mask);
        havoc Used_15Heap;
        Used_15Mask := ZeroMask;
        b_25 := b_25 && state(Used_15Heap, Used_15Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_26) {
          b_26 := b_26;
        }
        b_26 := b_26 && state(Ops_17Heap, Ops_17Mask);
        
        // -- Translating statement: label lhs17 -- package_hyp.vpr@51.16--51.30
          lhs17:
          Labellhs17Heap := Ops_17Heap;
          Labellhs17Mask := Ops_17Mask;
          b_26 := b_26 && state(Ops_17Heap, Ops_17Mask);
        boolCur_8 := true;
        // Translating exec of non-ghost operationfalse
        havoc Used_16Heap;
        Used_16Mask := ZeroMask;
        b_27 := b_27 && state(Used_16Heap, Used_16Mask);
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@51.7--51.31) [123771]"}
          (b_26 && (b_26 && b_24_1)) && b_27 ==> false;
        Ops_15Mask := Ops_15Mask[null, wand_3(true, false):=Ops_15Mask[null, wand_3(true, false)] + FullPerm];
        b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
        b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
        b_24_1 := b_24_1 && state(Ops_15Heap, Ops_15Mask);
    }
    // Translating exec of non-ghost operationfalse
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_28 := b_28 && state(Used_17Heap, Used_17Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (package_hyp.vpr@50.3--52.4) [123772]"}
      (b_24_1 && b_24_1) && b_28 ==> false;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, false):=Mask[null, wand(x, FullPerm, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- package_hyp.vpr@55.3--55.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (package_hyp.vpr@55.10--55.15) [123773]"}
      false;
    assume state(Heap, Mask);
}