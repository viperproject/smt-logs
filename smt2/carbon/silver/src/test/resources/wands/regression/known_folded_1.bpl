// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:19:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/known_folded_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/known_folded_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
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
  getPredWandId(wand_1(arg1, arg2, arg3)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4)) }
  wand_2#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4), wand_2(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_2(arg1, arg2, arg3, arg4) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

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
  getPredWandId(Q(x)) == 0
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
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (known_folded_1.vpr@29.1--29.36) [124411]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

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
  getPredWandId(P(x)) == 1
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

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
  var perm: Perm;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var freshVersion: FrameType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var b_7: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  
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
  
  // -- Translating statement: package acc(x.f, write) && x.f == 2 --* acc(x.f, write) && x.f == 2 {
  //   fold acc(P(x), write)
  //   unfold acc(P(x), write)
  // } -- known_folded_1.vpr@7.3--10.4
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
          
          // -- Check definedness of x.f == 2
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (known_folded_1.vpr@7.3--10.4) [124412]"}
              HasDirectPerm(Ops_1Mask, x, f_7);
        }
        b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == 2;
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- known_folded_1.vpr@7.11--7.50
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(P(x), write) -- known_folded_1.vpr@8.7--8.16
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, write) might be negative. (known_folded_1.vpr@8.7--8.16) [124414]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand#sm(x, FullPerm, x, 2, x, FullPerm, x, 2):=Heap[null, wand#sm(x, FullPerm, x, 2, x, FullPerm, x, 2)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (known_folded_1.vpr@8.7--8.16) [124415]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
          
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
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, P(x):=Ops_1Mask[null, P(x)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume P#trigger(Ops_1Heap, P(x));
        assume Ops_1Heap[null, P(x)] == FrameFragment(Ops_1Heap[x, f_7]);
        if (!HasDirectPerm(Ops_1Mask, null, P(x))) {
          Ops_1Heap := Ops_1Heap[null, P#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, P(x):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, P#sm(x):=Ops_1Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(P(x), write) -- known_folded_1.vpr@9.7--9.18
        assume P#trigger(Ops_1Heap, P(x));
        assume Ops_1Heap[null, P(x)] == FrameFragment(Ops_1Heap[x, f_7]);
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(P(x), write)
          arg_1 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[null, P(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding P(x) might fail. Fraction acc(P(x), write) might be negative. (known_folded_1.vpr@9.7--9.18) [124418]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, P(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, P(arg_1):=Used_2Mask[null, P(arg_1)] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, P(arg_1):=FullPerm];
                b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, P(arg_1):=Ops_1Mask[null, P(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, P(arg_1):=Used_2Mask[null, P(arg_1)] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, P(arg_1):=FullPerm];
                b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                Mask := Mask[null, P(arg_1):=Mask[null, P(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand#sm(x, FullPerm, x, 2, x, FullPerm, x, 2)][o_15, f_20] || Heap[null, P#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand#sm(x, FullPerm, x, 2, x, FullPerm, x, 2):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (known_folded_1.vpr@9.7--9.18) [124419]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[null, P(arg_1)] == initNeededTransfer;
          
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
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 2
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (known_folded_1.vpr@7.3--10.4) [124421]"}
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
            Heap := Heap[null, wand#sm(x, FullPerm, x, 2, x, FullPerm, x, 2):=Heap[null, wand#sm(x, FullPerm, x, 2, x, FullPerm, x, 2)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (known_folded_1.vpr@7.3--10.4) [124422]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_1_1 && b_6;
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
        b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_7;
    if ((b_1_1 && b_1_1) && b_6) {
      if (b_1_1) {
        
        // -- Check definedness of x.f == 2
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (known_folded_1.vpr@7.3--10.4) [124423]"}
            HasDirectPerm(Result_2Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 2 might not hold. (known_folded_1.vpr@7.3--10.4) [124424]"}
      (b_1_1 && b_1_1) && b_6 ==> Result_2Heap[x, f_7] == 2;
    Mask := Mask[null, wand(x, FullPerm, x, 2, x, FullPerm, x, 2):=Mask[null, wand(x, FullPerm, x, 2, x, FullPerm, x, 2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- known_folded_1.vpr@13.3--13.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (known_folded_1.vpr@13.10--13.15) [124425]"}
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
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var perm: Perm;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_11: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_12: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_13: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var freshVersion: FrameType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var b_15: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var arg_1_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_17: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_18: bool;
  
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
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* true {
  //   package acc(x.f, 1 / 2) --* acc(Q(x), 2 / 1) {
  //     fold acc(Q(x), write)
  //     fold acc(Q(x), write)
  //   }
  // } -- known_folded_1.vpr@17.3--23.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (known_folded_1.vpr@17.3--23.4) [124426]"}
        perm >= NoPerm;
      b_9 := b_9 && (perm > NoPerm ==> x != null);
      Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
      b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    }
    b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- known_folded_1.vpr@17.11--17.34
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_9) {
      
      // -- Translating statement: package acc(x.f, 1 / 2) --* acc(Q(x), 2 / 1) {
  //   fold acc(Q(x), write)
  //   fold acc(Q(x), write)
  // } -- known_folded_1.vpr@18.7--21.8
        havoc Ops_5Heap;
        Ops_5Mask := ZeroMask;
        b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_10 := b_10 && state(Used_5Heap, Used_5Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_11) {
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (known_folded_1.vpr@18.7--21.8) [124427]"}
            perm >= NoPerm;
          b_11 := b_11 && (perm > NoPerm ==> x != null);
          Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
          b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
        }
        b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
        
        // -- Translating statement: label lhs5 -- known_folded_1.vpr@18.16--18.46
          lhs5:
          Labellhs5Heap := Ops_5Heap;
          Labellhs5Mask := Ops_5Mask;
          b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
        boolCur_2 := true;
        if (b_11 && b_9) {
          
          // -- Translating statement: fold acc(Q(x), write) -- known_folded_1.vpr@19.11--19.20
            ExhaleWellDef0Heap := Ops_5Heap;
            ExhaleWellDef0Mask := Ops_5Mask;
            havoc Used_6Heap;
            Used_6Mask := ZeroMask;
            b_12 := b_12 && state(Used_6Heap, Used_6Mask);
            
            // -- Transfer of acc(x.f, 1 / 2)
              rcvLocal := x;
              neededTransfer := 1 / 2;
              initNeededTransfer := Used_6Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Folding Q(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (known_folded_1.vpr@19.11--19.20) [124429]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_11 && b_12) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_5Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                    b_12 := b_12 && state(Used_6Heap, Used_6Mask);
                    b_12 := b_12 && Ops_5Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                    Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_11 && b_12) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_3Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                    b_12 := b_12 && state(Used_6Heap, Used_6Mask);
                    b_12 := b_12 && Ops_3Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                    Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
                    Ops_3Heap := Ops_3Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1):=Ops_3Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_11 && b_12) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                    b_12 := b_12 && state(Used_6Heap, Used_6Mask);
                    b_12 := b_12 && Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                    Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                    Heap := Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1):=Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Folding Q(x) might fail. There might be insufficient permission to access x.f (known_folded_1.vpr@19.11--19.20) [124430]"}
                b_11 && b_12 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_13 := b_11 && b_12;
                b_13 := b_13 && state(Result_3Heap, Result_3Mask);
                b_13 := b_13 && sumMask(Result_3Mask, Ops_5Mask, Used_6Mask);
                b_13 := (b_13 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_3Heap, Used_6Mask);
                b_13 := b_13 && state(Result_3Heap, Result_3Mask);
              b_11 := b_11 && b_13;
            b_11 := b_11 && b_12;
            b_11 := b_11 && Used_6Heap == Ops_5Heap;
            perm := FullPerm;
            b_11 := b_11;
            Ops_5Mask := Ops_5Mask[null, Q(x):=Ops_5Mask[null, Q(x)] + perm];
            b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
            b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
            assume Q#trigger(Ops_5Heap, Q(x));
            assume Ops_5Heap[null, Q(x)] == FrameFragment(Ops_5Heap[x, f_7]);
            if (!HasDirectPerm(Ops_5Mask, null, Q(x))) {
              Ops_5Heap := Ops_5Heap[null, Q#sm(x):=ZeroPMask];
              havoc freshVersion;
              Ops_5Heap := Ops_5Heap[null, Q(x):=freshVersion];
            }
            Ops_5Heap := Ops_5Heap[null, Q#sm(x):=Ops_5Heap[null, Q#sm(x)][x, f_7:=true]];
            assume state(Ops_5Heap, Ops_5Mask);
            b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
        }
        if (b_11 && b_9) {
          
          // -- Translating statement: fold acc(Q(x), write) -- known_folded_1.vpr@20.11--20.20
            ExhaleWellDef0Heap := Ops_5Heap;
            ExhaleWellDef0Mask := Ops_5Mask;
            havoc Used_7Heap;
            Used_7Mask := ZeroMask;
            b_14 := b_14 && state(Used_7Heap, Used_7Mask);
            
            // -- Transfer of acc(x.f, 1 / 2)
              rcvLocal := x;
              neededTransfer := 1 / 2;
              initNeededTransfer := Used_7Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Folding Q(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (known_folded_1.vpr@20.11--20.20) [124433]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_11 && b_14) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_5Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_7Mask := Used_7Mask[rcvLocal, f_7:=Used_7Mask[rcvLocal, f_7] + takeTransfer];
                    b_14 := b_14 && state(Used_7Heap, Used_7Mask);
                    b_14 := b_14 && Ops_5Heap[rcvLocal, f_7] == Used_7Heap[rcvLocal, f_7];
                    Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_11 && b_14) && accVar2) && neededTransfer > 0.000000000) {
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
                    Ops_3Heap := Ops_3Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1):=Ops_3Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_11 && b_14) && accVar2) && neededTransfer > 0.000000000) {
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
                    Heap := Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1):=Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Folding Q(x) might fail. There might be insufficient permission to access x.f (known_folded_1.vpr@20.11--20.20) [124434]"}
                b_11 && b_14 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_15 := b_11 && b_14;
                b_15 := b_15 && state(Result_4Heap, Result_4Mask);
                b_15 := b_15 && sumMask(Result_4Mask, Ops_5Mask, Used_7Mask);
                b_15 := (b_15 && IdenticalOnKnownLocations(Ops_5Heap, Result_4Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_4Heap, Used_7Mask);
                b_15 := b_15 && state(Result_4Heap, Result_4Mask);
              b_11 := b_11 && b_15;
            b_11 := b_11 && b_14;
            b_11 := b_11 && Used_7Heap == Ops_5Heap;
            perm := FullPerm;
            b_11 := b_11;
            Ops_5Mask := Ops_5Mask[null, Q(x):=Ops_5Mask[null, Q(x)] + perm];
            b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
            b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
            assume Q#trigger(Ops_5Heap, Q(x));
            assume Ops_5Heap[null, Q(x)] == FrameFragment(Ops_5Heap[x, f_7]);
            if (!HasDirectPerm(Ops_5Mask, null, Q(x))) {
              Ops_5Heap := Ops_5Heap[null, Q#sm(x):=ZeroPMask];
              havoc freshVersion;
              Ops_5Heap := Ops_5Heap[null, Q(x):=freshVersion];
            }
            Ops_5Heap := Ops_5Heap[null, Q#sm(x):=Ops_5Heap[null, Q#sm(x)][x, f_7:=true]];
            assume state(Ops_5Heap, Ops_5Mask);
            b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
        }
        // Translating exec of non-ghost operationacc(Q(x), 2 / 1)
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_16 := b_16 && state(Used_8Heap, Used_8Mask);
        
        // -- Transfer of acc(Q(x), 2 / 1)
          arg_1_1 := x;
          neededTransfer := 2 / 1;
          initNeededTransfer := Used_8Mask[null, Q(arg_1_1)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(Q(x), 2 / 1) might be negative. (known_folded_1.vpr@18.7--21.8) [124436]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_11 && (b_11 && b_9)) && b_16) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, Q(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[null, Q(arg_1_1):=Used_8Mask[null, Q(arg_1_1)] + takeTransfer];
                b_16 := b_16 && state(Used_8Heap, Used_8Mask);
                TempMask := ZeroMask[null, Q(arg_1_1):=FullPerm];
                b_16 := b_16 && IdenticalOnKnownLocations(Ops_5Heap, Used_8Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, Q(arg_1_1):=Ops_5Mask[null, Q(arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_11 && (b_11 && b_9)) && b_16) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, Q(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[null, Q(arg_1_1):=Used_8Mask[null, Q(arg_1_1)] + takeTransfer];
                b_16 := b_16 && state(Used_8Heap, Used_8Mask);
                TempMask := ZeroMask[null, Q(arg_1_1):=FullPerm];
                b_16 := b_16 && IdenticalOnKnownLocations(Ops_3Heap, Used_8Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, Q(arg_1_1):=Ops_3Mask[null, Q(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Ops_3Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1)][o_16, f_21] || Ops_3Heap[null, Q#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Ops_3Heap := Ops_3Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1):=newPMask];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_11 && (b_11 && b_9)) && b_16) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Q(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[null, Q(arg_1_1):=Used_8Mask[null, Q(arg_1_1)] + takeTransfer];
                b_16 := b_16 && state(Used_8Heap, Used_8Mask);
                TempMask := ZeroMask[null, Q(arg_1_1):=FullPerm];
                b_16 := b_16 && IdenticalOnKnownLocations(Heap, Used_8Heap, TempMask);
                Mask := Mask[null, Q(arg_1_1):=Mask[null, Q(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                  { newPMask[o_52, f_55] }
                  Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1)][o_52, f_55] || Heap[null, Q#sm(x)][o_52, f_55] ==> newPMask[o_52, f_55]
                );
                Heap := Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 1):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(x) (known_folded_1.vpr@18.7--21.8) [124437]"}
            (b_11 && (b_11 && b_9)) && b_16 ==> neededTransfer == 0.000000000 && Used_8Mask[null, Q(arg_1_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_17 := b_11 && b_16;
            b_17 := b_17 && state(Result_5Heap, Result_5Mask);
            b_17 := b_17 && sumMask(Result_5Mask, Ops_5Mask, Used_8Mask);
            b_17 := (b_17 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_5Heap, Used_8Mask);
            b_17 := b_17 && state(Result_5Heap, Result_5Mask);
          b_11 := b_11 && b_17;
        Ops_3Mask := Ops_3Mask[null, wand_2(x, 1 / 2, x, 2 / 1):=Ops_3Mask[null, wand_2(x, 1 / 2, x, 2 / 1)] + FullPerm];
        b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
        b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
        b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_18 := b_18 && state(Used_9Heap, Used_9Mask);
    Mask := Mask[null, wand_1(x, 1 / 2, true):=Mask[null, wand_1(x, 1 / 2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- known_folded_1.vpr@26.3--26.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (known_folded_1.vpr@26.10--26.15) [124439]"}
      false;
    assume state(Heap, Mask);
}