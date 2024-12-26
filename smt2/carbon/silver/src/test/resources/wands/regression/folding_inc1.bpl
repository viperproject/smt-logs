// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:04:31
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_inc1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_inc1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
function  wand(arg1: bool, arg2: bool): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: bool): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 2
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_2(arg1, arg2, arg3) }
  IsWandField(wand_2(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_2#ft(arg1, arg2, arg3) }
  IsWandField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_2(arg1, arg2, arg3) }
  !IsPredicateField(wand_2(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_2#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3)) }
  wand_2#sm(arg1, arg2, arg3) == WandMaskField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_2(arg1, arg2, arg3) }
  getPredWandId(wand_2(arg1, arg2, arg3)) == 4
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand_2(arg1, arg2, arg3), wand_2(arg1_2, arg2_2, arg3_2) }
  wand_2(arg1, arg2, arg3) == wand_2(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
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
  getPredWandId(wand_3(arg1, arg2, arg3, arg4)) == 5
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_3(arg1, arg2, arg3, arg4), wand_3(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_3(arg1, arg2, arg3, arg4) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var perm: Perm;
  var freshVersion: FrameType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  
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
  //   package false --* true {
  //     fold acc(P(x), write)
  //   }
  // } -- folding_inc1.vpr@9.3--14.4
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
    
    // -- Translating statement: label lhs1 -- folding_inc1.vpr@9.11--9.26
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: package false --* true {
  //   fold acc(P(x), write)
  // } -- folding_inc1.vpr@10.7--12.8
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
        
        // -- Translating statement: label lhs3 -- folding_inc1.vpr@10.16--10.30
          lhs3:
          Labellhs3Heap := Ops_3Heap;
          Labellhs3Mask := Ops_3Mask;
          b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        boolCur_1 := true;
        if (b_3 && b_1_1) {
          
          // -- Translating statement: fold acc(P(x), write) -- folding_inc1.vpr@11.11--11.20
            ExhaleWellDef0Heap := Ops_3Heap;
            ExhaleWellDef0Mask := Ops_3Mask;
            havoc Used_2Heap;
            Used_2Mask := ZeroMask;
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            
            // -- Transfer of acc(x.f, write)
              rcvLocal := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, write) might be negative. (folding_inc1.vpr@11.11--11.20) [133224]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_3 && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
                if (((b_3 && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
                    Ops_1Heap := Ops_1Heap[null, wand#sm(false, true):=Ops_1Heap[null, wand#sm(false, true)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_3 && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
                    Heap := Heap[null, wand#sm(false, true):=Heap[null, wand#sm(false, true)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (folding_inc1.vpr@11.11--11.20) [133225]"}
                b_3 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_5 := b_3 && b_4;
                b_5 := b_5 && state(ResultHeap, ResultMask);
                b_5 := b_5 && sumMask(ResultMask, Ops_3Mask, Used_2Mask);
                b_5 := (b_5 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_2Heap, ResultHeap, Used_2Mask);
                b_5 := b_5 && state(ResultHeap, ResultMask);
              b_3 := b_3 && b_5;
            b_3 := b_3 && b_4;
            b_3 := b_3 && Used_2Heap == Ops_3Heap;
            perm := FullPerm;
            b_3 := b_3;
            Ops_3Mask := Ops_3Mask[null, P(x):=Ops_3Mask[null, P(x)] + perm];
            b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
            b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
            assume P#trigger(Ops_3Heap, P(x));
            assume Ops_3Heap[null, P(x)] == FrameFragment(Ops_3Heap[x, f_7]);
            if (!HasDirectPerm(Ops_3Mask, null, P(x))) {
              Ops_3Heap := Ops_3Heap[null, P#sm(x):=ZeroPMask];
              havoc freshVersion;
              Ops_3Heap := Ops_3Heap[null, P(x):=freshVersion];
            }
            Ops_3Heap := Ops_3Heap[null, P#sm(x):=Ops_3Heap[null, P#sm(x)][x, f_7:=true]];
            assume state(Ops_3Heap, Ops_3Mask);
            b_3 := b_3 && state(Ops_3Heap, Ops_3Mask);
        }
        // Translating exec of non-ghost operationtrue
        havoc Used_3Heap;
        Used_3Mask := ZeroMask;
        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
        Ops_1Mask := Ops_1Mask[null, wand(false, true):=Ops_1Mask[null, wand(false, true)] + FullPerm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_inc1.vpr@17.3--17.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_inc1.vpr@17.10--17.15) [133229]"}
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
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_8: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_10: bool;
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_11: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (folding_inc1.vpr@21.12--21.25) [133230]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(P(x), 1 / 2) --* acc(P(x), write) {
  // } -- folding_inc1.vpr@23.3--23.38
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_8 := b_8 && state(Used_5Heap, Used_5Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (folding_inc1.vpr@23.3--23.38) [133231]"}
        perm >= NoPerm;
      b_9 := b_9;
      Ops_5Mask := Ops_5Mask[null, P(x):=Ops_5Mask[null, P(x)] + perm];
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- folding_inc1.vpr@23.11--23.38
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(P(x), write)
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_10 := b_10 && state(Used_6Heap, Used_6Mask);
    
    // -- Transfer of acc(P(x), write)
      arg_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_6Mask[null, P(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(x), write) might be negative. (folding_inc1.vpr@23.3--23.38) [133232]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, P(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, P(arg_1):=Used_6Mask[null, P(arg_1)] + takeTransfer];
            b_10 := b_10 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, P(arg_1):=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Ops_5Heap, Used_6Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, P(arg_1):=Ops_5Mask[null, P(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, P(arg_1):=Used_6Mask[null, P(arg_1)] + takeTransfer];
            b_10 := b_10 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, P(arg_1):=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
            Mask := Mask[null, P(arg_1):=Mask[null, P(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand_1#sm(x, 1 / 2, x)][o_15, f_20] || Heap[null, P#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(x) (folding_inc1.vpr@23.3--23.38) [133233]"}
        (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_6Mask[null, P(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_9 && b_10;
        b_11 := b_11 && state(Result_1Heap, Result_1Mask);
        b_11 := b_11 && sumMask(Result_1Mask, Ops_5Mask, Used_6Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_5Heap, Result_1Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_1Heap, Used_6Mask);
        b_11 := b_11 && state(Result_1Heap, Result_1Mask);
      b_9 := b_9 && b_11;
    Mask := Mask[null, wand_1(x, 1 / 2, x):=Mask[null, wand_1(x, 1 / 2, x)] + FullPerm];
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
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_13: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_12: bool;
  var perm: Perm;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_3: bool;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_15: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_14: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_4: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_16: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_17: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_18: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var freshVersion: FrameType;
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
  
  // -- Translating statement: package acc(x.f, write) --* true {
  //   package acc(x.f, write) --* false {
  //     fold acc(Q(x), write)
  //   }
  // } -- folding_inc1.vpr@27.3--32.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_12 := b_12 && state(Used_7Heap, Used_7Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_13) {
      perm := FullPerm;
      b_13 := b_13 && x != null;
      Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
      b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    }
    b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- folding_inc1.vpr@27.11--27.30
      lhs7:
      Labellhs7Heap := Ops_7Heap;
      Labellhs7Mask := Ops_7Mask;
      b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_13) {
      
      // -- Translating statement: package acc(x.f, write) --* false {
  //   fold acc(Q(x), write)
  // } -- folding_inc1.vpr@28.7--30.8
        havoc Ops_9Heap;
        Ops_9Mask := ZeroMask;
        b_15 := b_15 && state(Ops_9Heap, Ops_9Mask);
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_14 := b_14 && state(Used_8Heap, Used_8Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_15) {
          perm := FullPerm;
          b_15 := b_15 && x != null;
          Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
          b_15 := b_15 && state(Ops_9Heap, Ops_9Mask);
        }
        b_15 := b_15 && state(Ops_9Heap, Ops_9Mask);
        
        // -- Translating statement: label lhs9 -- folding_inc1.vpr@28.16--28.34
          lhs9:
          Labellhs9Heap := Ops_9Heap;
          Labellhs9Mask := Ops_9Mask;
          b_15 := b_15 && state(Ops_9Heap, Ops_9Mask);
        boolCur_4 := true;
        if (b_15 && b_13) {
          
          // -- Translating statement: fold acc(Q(x), write) -- folding_inc1.vpr@29.11--29.20
            ExhaleWellDef0Heap := Ops_9Heap;
            ExhaleWellDef0Mask := Ops_9Mask;
            havoc Used_9Heap;
            Used_9Mask := ZeroMask;
            b_16 := b_16 && state(Used_9Heap, Used_9Mask);
            
            // -- Transfer of acc(x.f, write)
              rcvLocal := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_9Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Folding Q(x) might fail. Fraction acc(x.f, write) might be negative. (folding_inc1.vpr@29.11--29.20) [133235]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_9Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
                    b_16 := b_16 && Ops_9Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                    Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_7Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
                    b_16 := b_16 && Ops_7Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                    Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
                    Ops_7Heap := Ops_7Heap[null, wand_2#sm(x, FullPerm, false):=Ops_7Heap[null, wand_2#sm(x, FullPerm, false)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
                    b_16 := b_16 && Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                    Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                    Heap := Heap[null, wand_2#sm(x, FullPerm, false):=Heap[null, wand_2#sm(x, FullPerm, false)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Folding Q(x) might fail. There might be insufficient permission to access x.f (folding_inc1.vpr@29.11--29.20) [133236]"}
                b_15 && b_16 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_17 := b_15 && b_16;
                b_17 := b_17 && state(Result_2Heap, Result_2Mask);
                b_17 := b_17 && sumMask(Result_2Mask, Ops_9Mask, Used_9Mask);
                b_17 := (b_17 && IdenticalOnKnownLocations(Ops_9Heap, Result_2Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_2Heap, Used_9Mask);
                b_17 := b_17 && state(Result_2Heap, Result_2Mask);
              b_15 := b_15 && b_17;
            b_15 := b_15 && b_16;
            b_15 := b_15 && Used_9Heap == Ops_9Heap;
            
            // -- Transfer of acc(x.f, write)
              rcvLocal := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_9Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Folding Q(x) might fail. Fraction acc(x.f, write) might be negative. (folding_inc1.vpr@29.11--29.20) [133237]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_9Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
                    b_16 := b_16 && Ops_9Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                    Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_7Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
                    b_16 := b_16 && Ops_7Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                    Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
                    Ops_7Heap := Ops_7Heap[null, wand_2#sm(x, FullPerm, false):=Ops_7Heap[null, wand_2#sm(x, FullPerm, false)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
                    b_16 := b_16 && Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                    Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                    Heap := Heap[null, wand_2#sm(x, FullPerm, false):=Heap[null, wand_2#sm(x, FullPerm, false)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Folding Q(x) might fail. There might be insufficient permission to access x.f (folding_inc1.vpr@29.11--29.20) [133238]"}
                b_15 && b_16 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_18 := b_15 && b_16;
                b_18 := b_18 && state(Result_3Heap, Result_3Mask);
                b_18 := b_18 && sumMask(Result_3Mask, Ops_9Mask, Used_9Mask);
                b_18 := (b_18 && IdenticalOnKnownLocations(Ops_9Heap, Result_3Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_3Heap, Used_9Mask);
                b_18 := b_18 && state(Result_3Heap, Result_3Mask);
              b_15 := b_15 && b_18;
            b_15 := b_15 && b_16;
            b_15 := b_15 && Used_9Heap == Ops_9Heap;
            perm := FullPerm;
            b_15 := b_15;
            Ops_9Mask := Ops_9Mask[null, Q(x):=Ops_9Mask[null, Q(x)] + perm];
            b_15 := b_15 && state(Ops_9Heap, Ops_9Mask);
            b_15 := b_15 && state(Ops_9Heap, Ops_9Mask);
            assume Q#trigger(Ops_9Heap, Q(x));
            assume Ops_9Heap[null, Q(x)] == CombineFrames(FrameFragment(Ops_9Heap[x, f_7]), FrameFragment(Ops_9Heap[x, f_7]));
            if (!HasDirectPerm(Ops_9Mask, null, Q(x))) {
              Ops_9Heap := Ops_9Heap[null, Q#sm(x):=ZeroPMask];
              havoc freshVersion;
              Ops_9Heap := Ops_9Heap[null, Q(x):=freshVersion];
            }
            Ops_9Heap := Ops_9Heap[null, Q#sm(x):=Ops_9Heap[null, Q#sm(x)][x, f_7:=true]];
            Ops_9Heap := Ops_9Heap[null, Q#sm(x):=Ops_9Heap[null, Q#sm(x)][x, f_7:=true]];
            assume state(Ops_9Heap, Ops_9Mask);
            b_15 := b_15 && state(Ops_9Heap, Ops_9Mask);
        }
        // Translating exec of non-ghost operationfalse
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_19 := b_19 && state(Used_10Heap, Used_10Mask);
        assert {:msg "  Packaging wand might fail. Assertion false might not hold. (folding_inc1.vpr@28.7--30.8) [133240]"}
          (b_15 && (b_15 && b_13)) && b_19 ==> false;
        Ops_7Mask := Ops_7Mask[null, wand_2(x, FullPerm, false):=Ops_7Mask[null, wand_2(x, FullPerm, false)] + FullPerm];
        b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
        b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
        b_13 := b_13 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_20 := b_20 && state(Used_11Heap, Used_11Mask);
    Mask := Mask[null, wand_2(x, FullPerm, true):=Mask[null, wand_2(x, FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_inc1.vpr@35.3--35.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_inc1.vpr@35.10--35.15) [133242]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_22: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_21: bool;
  var perm: Perm;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var boolCur_5: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_23: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_24_1: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var freshVersion: FrameType;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_25: bool;
  var b_26: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  
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
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) {
  //   fold acc(P(x), write)
  // } -- folding_inc1.vpr@41.3--43.4
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_22 := b_22 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_21 := b_21 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_22) {
      perm := FullPerm;
      b_22 := b_22 && x != null;
      Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
      b_22 := b_22 && state(Ops_11Heap, Ops_11Mask);
    }
    b_22 := b_22 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs11 -- folding_inc1.vpr@41.11--41.34
      lhs11:
      Labellhs11Heap := Ops_11Heap;
      Labellhs11Mask := Ops_11Mask;
      b_22 := b_22 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    if (b_22) {
      
      // -- Translating statement: fold acc(P(x), write) -- folding_inc1.vpr@42.7--42.16
        ExhaleWellDef0Heap := Ops_11Heap;
        ExhaleWellDef0Mask := Ops_11Mask;
        havoc Used_13Heap;
        Used_13Mask := ZeroMask;
        b_23 := b_23 && state(Used_13Heap, Used_13Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_13Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, write) might be negative. (folding_inc1.vpr@42.7--42.16) [133244]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_22 && b_23) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
                b_23 := b_23 && state(Used_13Heap, Used_13Mask);
                b_23 := b_23 && Ops_11Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
                Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_22 && b_23) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_13Mask := Used_13Mask[rcvLocal, f_7:=Used_13Mask[rcvLocal, f_7] + takeTransfer];
                b_23 := b_23 && state(Used_13Heap, Used_13Mask);
                b_23 := b_23 && Heap[rcvLocal, f_7] == Used_13Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_3#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_3#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (folding_inc1.vpr@42.7--42.16) [133245]"}
            b_22 && b_23 ==> neededTransfer == 0.000000000 && Used_13Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_24_1 := b_22 && b_23;
            b_24_1 := b_24_1 && state(Result_4Heap, Result_4Mask);
            b_24_1 := b_24_1 && sumMask(Result_4Mask, Ops_11Mask, Used_13Mask);
            b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_11Heap, Result_4Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_4Heap, Used_13Mask);
            b_24_1 := b_24_1 && state(Result_4Heap, Result_4Mask);
          b_22 := b_22 && b_24_1;
        b_22 := b_22 && b_23;
        b_22 := b_22 && Used_13Heap == Ops_11Heap;
        perm := FullPerm;
        b_22 := b_22;
        Ops_11Mask := Ops_11Mask[null, P(x):=Ops_11Mask[null, P(x)] + perm];
        b_22 := b_22 && state(Ops_11Heap, Ops_11Mask);
        b_22 := b_22 && state(Ops_11Heap, Ops_11Mask);
        assume P#trigger(Ops_11Heap, P(x));
        assume Ops_11Heap[null, P(x)] == FrameFragment(Ops_11Heap[x, f_7]);
        if (!HasDirectPerm(Ops_11Mask, null, P(x))) {
          Ops_11Heap := Ops_11Heap[null, P#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_11Heap := Ops_11Heap[null, P(x):=freshVersion];
        }
        Ops_11Heap := Ops_11Heap[null, P#sm(x):=Ops_11Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Ops_11Heap, Ops_11Mask);
        b_22 := b_22 && state(Ops_11Heap, Ops_11Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_25 := b_25 && state(Used_14Heap, Used_14Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_14Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (folding_inc1.vpr@41.3--43.4) [133247]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_22 && b_22) && b_25) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_11Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
            b_25 := b_25 && state(Used_14Heap, Used_14Mask);
            b_25 := b_25 && Ops_11Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
            Ops_11Mask := Ops_11Mask[rcvLocal, f_7:=Ops_11Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_22 && b_22) && b_25) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand_3#sm(x, FullPerm, x, FullPerm):=Heap[null, wand_3#sm(x, FullPerm, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (folding_inc1.vpr@41.3--43.4) [133248]"}
        (b_22 && b_22) && b_25 ==> neededTransfer == 0.000000000 && Used_14Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_26 := b_22 && b_25;
        b_26 := b_26 && state(Result_5Heap, Result_5Mask);
        b_26 := b_26 && sumMask(Result_5Mask, Ops_11Mask, Used_14Mask);
        b_26 := (b_26 && IdenticalOnKnownLocations(Ops_11Heap, Result_5Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_5Heap, Used_14Mask);
        b_26 := b_26 && state(Result_5Heap, Result_5Mask);
      b_22 := b_22 && b_26;
    Mask := Mask[null, wand_3(x, FullPerm, x, FullPerm):=Mask[null, wand_3(x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}