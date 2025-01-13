// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:10:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_46: Ref, f_37: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_46, f_37] }
  Heap[o_46, $allocated] ==> Heap[Heap[o_46, f_37], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref, f_54: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, f_54] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_55, f_54) ==> Heap[o_55, f_54] == ExhaleHeap[o_55, f_54]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48), ExhaleHeap[null, PredicateMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> Heap[null, PredicateMaskField(pm_f_48)] == ExhaleHeap[null, PredicateMaskField(pm_f_48)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> (forall <A, B> o2_48: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_48, f_54] }
    Heap[null, PredicateMaskField(pm_f_48)][o2_48, f_54] ==> Heap[o2_48, f_54] == ExhaleHeap[o2_48, f_54]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48), ExhaleHeap[null, WandMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> Heap[null, WandMaskField(pm_f_48)] == ExhaleHeap[null, WandMaskField(pm_f_48)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> (forall <A, B> o2_48: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_48, f_54] }
    Heap[null, WandMaskField(pm_f_48)][o2_48, f_54] ==> Heap[o2_48, f_54] == ExhaleHeap[o2_48, f_54]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_55, $allocated] ==> ExhaleHeap[o_55, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_46: Ref, f_25: (Field A B), v: B ::
  { Heap[o_46, f_25:=v] }
  succHeap(Heap, Heap[o_46, f_25:=v])
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref, arg5_2: Ref ::
  { wand_1(arg1, arg2, arg3, arg4, arg5), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
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
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (folding_2.vpr@47.1--49.2) [133932]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
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
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (folding_2.vpr@51.1--53.2) [133933]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_7: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var arg_1_1: Ref;
  var b_8: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (folding_2.vpr@9.10--9.22) [133934]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(P(x), write) && acc(Q(x), write) {
  //   fold acc(P(x), write)
  //   fold acc(Q(x), write)
  // } -- folding_2.vpr@11.3--14.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (folding_2.vpr@11.3--14.4) [133935]"}
        perm >= NoPerm;
      b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
      Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- folding_2.vpr@11.11--11.50
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(P(x), write) -- folding_2.vpr@12.7--12.16
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (folding_2.vpr@12.7--12.16) [133937]"}
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
                Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=Heap[null, wand#sm(x, 1 / 2, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (folding_2.vpr@12.7--12.16) [133938]"}
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
      
      // -- Translating statement: fold acc(Q(x), write) -- folding_2.vpr@13.7--13.16
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Q(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (folding_2.vpr@13.7--13.16) [133941]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=Heap[null, wand#sm(x, 1 / 2, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding Q(x) might fail. There might be insufficient permission to access x.f (folding_2.vpr@13.7--13.16) [133942]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
          
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
        Ops_1Mask := Ops_1Mask[null, Q(x):=Ops_1Mask[null, Q(x)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume Q#trigger(Ops_1Heap, Q(x));
        assume Ops_1Heap[null, Q(x)] == FrameFragment(Ops_1Heap[x, f_7]);
        if (!HasDirectPerm(Ops_1Mask, null, Q(x))) {
          Ops_1Heap := Ops_1Heap[null, Q#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, Q(x):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, Q#sm(x):=Ops_1Heap[null, Q#sm(x)][x, f_7:=true]];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(P(x), write) && acc(Q(x), write)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(P(x), write)
      arg_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[null, P(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(x), write) might be negative. (folding_2.vpr@11.3--14.4) [133944]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, P(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, P(arg_1):=Used_3Mask[null, P(arg_1)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, P(arg_1):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, P(arg_1):=Ops_1Mask[null, P(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, P(arg_1):=Used_3Mask[null, P(arg_1)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, P(arg_1):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
            Mask := Mask[null, P(arg_1):=Mask[null, P(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand#sm(x, 1 / 2, x, x)][o_15, f_20] || Heap[null, P#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(x) (folding_2.vpr@11.3--14.4) [133945]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, P(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_1_1 && b_6;
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
        b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_7;
    
    // -- Transfer of acc(Q(x), write)
      arg_1_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[null, Q(arg_1_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(x), write) might be negative. (folding_2.vpr@11.3--14.4) [133946]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, Q(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, Q(arg_1_1):=Used_3Mask[null, Q(arg_1_1)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, Q(arg_1_1):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, Q(arg_1_1):=Ops_1Mask[null, Q(arg_1_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, Q(arg_1_1):=Used_3Mask[null, Q(arg_1_1)] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, Q(arg_1_1):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
            Mask := Mask[null, Q(arg_1_1):=Mask[null, Q(arg_1_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, wand#sm(x, 1 / 2, x, x)][o_16, f_21] || Heap[null, Q#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(x) (folding_2.vpr@11.3--14.4) [133947]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, Q(arg_1_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_1_1 && b_6;
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
        b_8 := b_8 && sumMask(Result_3Mask, Ops_1Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
      b_1_1 := b_1_1 && b_8;
    Mask := Mask[null, wand(x, 1 / 2, x, x):=Mask[null, wand(x, 1 / 2, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, 1 / 2) -- folding_2.vpr@17.3--17.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (folding_2.vpr@17.10--17.22) [133948]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (folding_2.vpr@17.10--17.22) [133949]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_10: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_9: bool;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur_1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_11: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_12: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var freshVersion: FrameType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_13: bool;
  var b_14: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_15: bool;
  var arg_2: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_16: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var arg_3: Ref;
  var b_17: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
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
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(P(x), write) && acc(Q(x), write) {
  //   fold acc(P(x), write)
  //   fold acc(Q(x), write)
  // } -- folding_2.vpr@24.3--27.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_9 := b_9 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_10) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (folding_2.vpr@24.3--27.4) [133950]"}
        perm >= NoPerm;
      b_10 := b_10 && (perm > NoPerm ==> x != null);
      Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
      b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    }
    b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- folding_2.vpr@24.11--24.50
      lhs3:
      Labellhs3Mask := Ops_3Mask;
      Labellhs3Heap := Ops_3Heap;
      b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_10) {
      
      // -- Translating statement: fold acc(P(x), write) -- folding_2.vpr@25.7--25.16
        ExhaleWellDef0Mask := Ops_3Mask;
        ExhaleWellDef0Heap := Ops_3Heap;
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_11 := b_11 && state(Used_5Heap, Used_5Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (folding_2.vpr@25.7--25.16) [133952]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
                b_11 := b_11 && state(Used_5Heap, Used_5Mask);
                b_11 := b_11 && Ops_3Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
                Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
                b_11 := b_11 && state(Used_5Heap, Used_5Mask);
                b_11 := b_11 && Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=Heap[null, wand#sm(x, 1 / 2, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (folding_2.vpr@25.7--25.16) [133953]"}
            b_10 && b_11 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_10 && b_11;
            b_12 := b_12 && state(Result_4Heap, Result_4Mask);
            b_12 := b_12 && sumMask(Result_4Mask, Ops_3Mask, Used_5Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_4Heap, Used_5Mask);
            b_12 := b_12 && state(Result_4Heap, Result_4Mask);
          b_10 := b_10 && b_12;
        b_10 := b_10 && b_11;
        b_10 := b_10 && Used_5Heap == Ops_3Heap;
        perm := FullPerm;
        b_10 := b_10;
        Ops_3Mask := Ops_3Mask[null, P(x):=Ops_3Mask[null, P(x)] + perm];
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        assume P#trigger(Ops_3Heap, P(x));
        assume Ops_3Heap[null, P(x)] == FrameFragment(Ops_3Heap[x, f_7]);
        if (!HasDirectPerm(Ops_3Mask, null, P(x))) {
          Ops_3Heap := Ops_3Heap[null, P#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, P(x):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, P#sm(x):=Ops_3Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Ops_3Heap, Ops_3Mask);
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_10) {
      
      // -- Translating statement: fold acc(Q(x), write) -- folding_2.vpr@26.7--26.16
        ExhaleWellDef0Mask := Ops_3Mask;
        ExhaleWellDef0Heap := Ops_3Heap;
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_13 := b_13 && state(Used_6Heap, Used_6Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_6Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Q(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (folding_2.vpr@26.7--26.16) [133956]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[rcvLocal, f_7:=Used_6Mask[rcvLocal, f_7] + takeTransfer];
                b_13 := b_13 && state(Used_6Heap, Used_6Mask);
                b_13 := b_13 && Ops_3Heap[rcvLocal, f_7] == Used_6Heap[rcvLocal, f_7];
                Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_13) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=Heap[null, wand#sm(x, 1 / 2, x, x)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding Q(x) might fail. There might be insufficient permission to access x.f (folding_2.vpr@26.7--26.16) [133957]"}
            b_10 && b_13 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_10 && b_13;
            b_14 := b_14 && state(Result_5Heap, Result_5Mask);
            b_14 := b_14 && sumMask(Result_5Mask, Ops_3Mask, Used_6Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_5Heap, Used_6Mask);
            b_14 := b_14 && state(Result_5Heap, Result_5Mask);
          b_10 := b_10 && b_14;
        b_10 := b_10 && b_13;
        b_10 := b_10 && Used_6Heap == Ops_3Heap;
        perm := FullPerm;
        b_10 := b_10;
        Ops_3Mask := Ops_3Mask[null, Q(x):=Ops_3Mask[null, Q(x)] + perm];
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
        assume Q#trigger(Ops_3Heap, Q(x));
        assume Ops_3Heap[null, Q(x)] == FrameFragment(Ops_3Heap[x, f_7]);
        if (!HasDirectPerm(Ops_3Mask, null, Q(x))) {
          Ops_3Heap := Ops_3Heap[null, Q#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, Q(x):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, Q#sm(x):=Ops_3Heap[null, Q#sm(x)][x, f_7:=true]];
        assume state(Ops_3Heap, Ops_3Mask);
        b_10 := b_10 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(P(x), write) && acc(Q(x), write)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_15 := b_15 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(P(x), write)
      arg_2 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[null, P(arg_2)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(x), write) might be negative. (folding_2.vpr@24.3--27.4) [133959]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, P(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, P(arg_2):=Used_7Mask[null, P(arg_2)] + takeTransfer];
            b_15 := b_15 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, P(arg_2):=FullPerm];
            b_15 := b_15 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, P(arg_2):=Ops_3Mask[null, P(arg_2)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, P(arg_2):=Used_7Mask[null, P(arg_2)] + takeTransfer];
            b_15 := b_15 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, P(arg_2):=FullPerm];
            b_15 := b_15 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
            Mask := Mask[null, P(arg_2):=Mask[null, P(arg_2)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand#sm(x, 1 / 2, x, x)][o_52, f_55] || Heap[null, P#sm(x)][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(x) (folding_2.vpr@24.3--27.4) [133960]"}
        (b_10 && b_10) && b_15 ==> neededTransfer == 0.000000000 && Used_7Mask[null, P(arg_2)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_16 := b_10 && b_15;
        b_16 := b_16 && state(Result_6Heap, Result_6Mask);
        b_16 := b_16 && sumMask(Result_6Mask, Ops_3Mask, Used_7Mask);
        b_16 := (b_16 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_6Heap, Used_7Mask);
        b_16 := b_16 && state(Result_6Heap, Result_6Mask);
      b_10 := b_10 && b_16;
    
    // -- Transfer of acc(Q(x), write)
      arg_3 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[null, Q(arg_3)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(x), write) might be negative. (folding_2.vpr@24.3--27.4) [133961]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, Q(arg_3)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, Q(arg_3):=Used_7Mask[null, Q(arg_3)] + takeTransfer];
            b_15 := b_15 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, Q(arg_3):=FullPerm];
            b_15 := b_15 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, Q(arg_3):=Ops_3Mask[null, Q(arg_3)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_3)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, Q(arg_3):=Used_7Mask[null, Q(arg_3)] + takeTransfer];
            b_15 := b_15 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, Q(arg_3):=FullPerm];
            b_15 := b_15 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
            Mask := Mask[null, Q(arg_3):=Mask[null, Q(arg_3)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, wand#sm(x, 1 / 2, x, x)][o_53, f_56] || Heap[null, Q#sm(x)][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, wand#sm(x, 1 / 2, x, x):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(x) (folding_2.vpr@24.3--27.4) [133962]"}
        (b_10 && b_10) && b_15 ==> neededTransfer == 0.000000000 && Used_7Mask[null, Q(arg_3)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_17 := b_10 && b_15;
        b_17 := b_17 && state(Result_7Heap, Result_7Mask);
        b_17 := b_17 && sumMask(Result_7Mask, Ops_3Mask, Used_7Mask);
        b_17 := (b_17 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_7Heap, Used_7Mask);
        b_17 := b_17 && state(Result_7Heap, Result_7Mask);
      b_10 := b_10 && b_17;
    Mask := Mask[null, wand(x, 1 / 2, x, x):=Mask[null, wand(x, 1 / 2, x, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, 1 / 2) -- folding_2.vpr@28.3--28.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (folding_2.vpr@28.10--28.22) [133963]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (folding_2.vpr@28.10--28.22) [133964]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_2.vpr@31.3--31.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_2.vpr@31.10--31.15) [133965]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_19: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_18: bool;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
  var boolCur_2: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_20: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_21: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var freshVersion: FrameType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_22: bool;
  var b_23: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_24_1: bool;
  var b_25: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_26: bool;
  var arg_4: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_27: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var arg_5: Ref;
  var b_28: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var arg_6: Ref;
  var b_29: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (folding_2.vpr@35.10--35.38) [133966]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (folding_2.vpr@35.10--35.38) [133967]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, 1 / 2) --*
  // acc(P(x), write) && (acc(Q(x), write) && acc(P(y), write)) {
  //   fold acc(P(x), write)
  //   fold acc(Q(x), write)
  //   fold acc(P(y), write)
  // } -- folding_2.vpr@37.3--41.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_18 := b_18 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_19) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (folding_2.vpr@37.3--41.4) [133968]"}
        perm >= NoPerm;
      b_19 := b_19 && (perm > NoPerm ==> x != null);
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    }
    b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- folding_2.vpr@37.11--37.61
      lhs5:
      Labellhs5Mask := Ops_5Mask;
      Labellhs5Heap := Ops_5Heap;
      b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_19) {
      
      // -- Translating statement: fold acc(P(x), write) -- folding_2.vpr@38.7--38.16
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_20 := b_20 && state(Used_9Heap, Used_9Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_9Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (folding_2.vpr@38.7--38.16) [133970]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_19 && b_20) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                b_20 := b_20 && state(Used_9Heap, Used_9Mask);
                b_20 := b_20 && Ops_5Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_19 && b_20) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, f_7:=Used_9Mask[rcvLocal, f_7] + takeTransfer];
                b_20 := b_20 && state(Used_9Heap, Used_9Mask);
                b_20 := b_20 && Heap[rcvLocal, f_7] == Used_9Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_1#sm(x, 1 / 2, x, x, y):=Heap[null, wand_1#sm(x, 1 / 2, x, x, y)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (folding_2.vpr@38.7--38.16) [133971]"}
            b_19 && b_20 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_21 := b_19 && b_20;
            b_21 := b_21 && state(Result_8Heap, Result_8Mask);
            b_21 := b_21 && sumMask(Result_8Mask, Ops_5Mask, Used_9Mask);
            b_21 := (b_21 && IdenticalOnKnownLocations(Ops_5Heap, Result_8Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_8Heap, Used_9Mask);
            b_21 := b_21 && state(Result_8Heap, Result_8Mask);
          b_19 := b_19 && b_21;
        b_19 := b_19 && b_20;
        b_19 := b_19 && Used_9Heap == Ops_5Heap;
        perm := FullPerm;
        b_19 := b_19;
        Ops_5Mask := Ops_5Mask[null, P(x):=Ops_5Mask[null, P(x)] + perm];
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
        assume P#trigger(Ops_5Heap, P(x));
        assume Ops_5Heap[null, P(x)] == FrameFragment(Ops_5Heap[x, f_7]);
        if (!HasDirectPerm(Ops_5Mask, null, P(x))) {
          Ops_5Heap := Ops_5Heap[null, P#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_5Heap := Ops_5Heap[null, P(x):=freshVersion];
        }
        Ops_5Heap := Ops_5Heap[null, P#sm(x):=Ops_5Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Ops_5Heap, Ops_5Mask);
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    }
    if (b_19) {
      
      // -- Translating statement: fold acc(Q(x), write) -- folding_2.vpr@39.7--39.16
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_22 := b_22 && state(Used_10Heap, Used_10Mask);
        
        // -- Transfer of acc(x.f, 1 / 2)
          rcvLocal := x;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_10Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Q(x) might fail. Fraction acc(x.f, 1 / 2) might be negative. (folding_2.vpr@39.7--39.16) [133974]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_19 && b_22) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                b_22 := b_22 && state(Used_10Heap, Used_10Mask);
                b_22 := b_22 && Ops_5Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_19 && b_22) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, f_7:=Used_10Mask[rcvLocal, f_7] + takeTransfer];
                b_22 := b_22 && state(Used_10Heap, Used_10Mask);
                b_22 := b_22 && Heap[rcvLocal, f_7] == Used_10Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_1#sm(x, 1 / 2, x, x, y):=Heap[null, wand_1#sm(x, 1 / 2, x, x, y)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding Q(x) might fail. There might be insufficient permission to access x.f (folding_2.vpr@39.7--39.16) [133975]"}
            b_19 && b_22 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_23 := b_19 && b_22;
            b_23 := b_23 && state(Result_9Heap, Result_9Mask);
            b_23 := b_23 && sumMask(Result_9Mask, Ops_5Mask, Used_10Mask);
            b_23 := (b_23 && IdenticalOnKnownLocations(Ops_5Heap, Result_9Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_9Heap, Used_10Mask);
            b_23 := b_23 && state(Result_9Heap, Result_9Mask);
          b_19 := b_19 && b_23;
        b_19 := b_19 && b_22;
        b_19 := b_19 && Used_10Heap == Ops_5Heap;
        perm := FullPerm;
        b_19 := b_19;
        Ops_5Mask := Ops_5Mask[null, Q(x):=Ops_5Mask[null, Q(x)] + perm];
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
        assume Q#trigger(Ops_5Heap, Q(x));
        assume Ops_5Heap[null, Q(x)] == FrameFragment(Ops_5Heap[x, f_7]);
        if (!HasDirectPerm(Ops_5Mask, null, Q(x))) {
          Ops_5Heap := Ops_5Heap[null, Q#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_5Heap := Ops_5Heap[null, Q(x):=freshVersion];
        }
        Ops_5Heap := Ops_5Heap[null, Q#sm(x):=Ops_5Heap[null, Q#sm(x)][x, f_7:=true]];
        assume state(Ops_5Heap, Ops_5Mask);
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    }
    if (b_19) {
      
      // -- Translating statement: fold acc(P(y), write) -- folding_2.vpr@40.7--40.16
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_11Heap;
        Used_11Mask := ZeroMask;
        b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
        
        // -- Transfer of acc(y.f, 1 / 2)
          rcvLocal := y;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_11Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(y) might fail. Fraction acc(y.f, 1 / 2) might be negative. (folding_2.vpr@40.7--40.16) [133978]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_19 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                b_24_1 := b_24_1 && Ops_5Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
                Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_19 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_11Heap, Used_11Mask);
                b_24_1 := b_24_1 && Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_1#sm(x, 1 / 2, x, x, y):=Heap[null, wand_1#sm(x, 1 / 2, x, x, y)][y, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(y) might fail. There might be insufficient permission to access y.f (folding_2.vpr@40.7--40.16) [133979]"}
            b_19 && b_24_1 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_25 := b_19 && b_24_1;
            b_25 := b_25 && state(Result_10Heap, Result_10Mask);
            b_25 := b_25 && sumMask(Result_10Mask, Ops_5Mask, Used_11Mask);
            b_25 := (b_25 && IdenticalOnKnownLocations(Ops_5Heap, Result_10Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_10Heap, Used_11Mask);
            b_25 := b_25 && state(Result_10Heap, Result_10Mask);
          b_19 := b_19 && b_25;
        b_19 := b_19 && b_24_1;
        b_19 := b_19 && Used_11Heap == Ops_5Heap;
        perm := FullPerm;
        b_19 := b_19;
        Ops_5Mask := Ops_5Mask[null, P(y):=Ops_5Mask[null, P(y)] + perm];
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
        assume P#trigger(Ops_5Heap, P(y));
        assume Ops_5Heap[null, P(y)] == FrameFragment(Ops_5Heap[y, f_7]);
        if (!HasDirectPerm(Ops_5Mask, null, P(y))) {
          Ops_5Heap := Ops_5Heap[null, P#sm(y):=ZeroPMask];
          havoc freshVersion;
          Ops_5Heap := Ops_5Heap[null, P(y):=freshVersion];
        }
        Ops_5Heap := Ops_5Heap[null, P#sm(y):=Ops_5Heap[null, P#sm(y)][y, f_7:=true]];
        assume state(Ops_5Heap, Ops_5Mask);
        b_19 := b_19 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(P(x), write) && (acc(Q(x), write) && acc(P(y), write))
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_26 := b_26 && state(Used_12Heap, Used_12Mask);
    
    // -- Transfer of acc(P(x), write)
      arg_4 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_12Mask[null, P(arg_4)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(x), write) might be negative. (folding_2.vpr@37.3--41.4) [133981]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_26) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, P(arg_4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, P(arg_4):=Used_12Mask[null, P(arg_4)] + takeTransfer];
            b_26 := b_26 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, P(arg_4):=FullPerm];
            b_26 := b_26 && IdenticalOnKnownLocations(Ops_5Heap, Used_12Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, P(arg_4):=Ops_5Mask[null, P(arg_4)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_26) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, P(arg_4):=Used_12Mask[null, P(arg_4)] + takeTransfer];
            b_26 := b_26 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, P(arg_4):=FullPerm];
            b_26 := b_26 && IdenticalOnKnownLocations(Heap, Used_12Heap, TempMask);
            Mask := Mask[null, P(arg_4):=Mask[null, P(arg_4)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
              { newPMask[o_26, f_29] }
              Heap[null, wand_1#sm(x, 1 / 2, x, x, y)][o_26, f_29] || Heap[null, P#sm(x)][o_26, f_29] ==> newPMask[o_26, f_29]
            );
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x, x, y):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(x) (folding_2.vpr@37.3--41.4) [133982]"}
        (b_19 && b_19) && b_26 ==> neededTransfer == 0.000000000 && Used_12Mask[null, P(arg_4)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_27 := b_19 && b_26;
        b_27 := b_27 && state(Result_11Heap, Result_11Mask);
        b_27 := b_27 && sumMask(Result_11Mask, Ops_5Mask, Used_12Mask);
        b_27 := (b_27 && IdenticalOnKnownLocations(Ops_5Heap, Result_11Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_11Heap, Used_12Mask);
        b_27 := b_27 && state(Result_11Heap, Result_11Mask);
      b_19 := b_19 && b_27;
    
    // -- Transfer of acc(Q(x), write)
      arg_5 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_12Mask[null, Q(arg_5)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(x), write) might be negative. (folding_2.vpr@37.3--41.4) [133983]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_26) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, Q(arg_5)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, Q(arg_5):=Used_12Mask[null, Q(arg_5)] + takeTransfer];
            b_26 := b_26 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, Q(arg_5):=FullPerm];
            b_26 := b_26 && IdenticalOnKnownLocations(Ops_5Heap, Used_12Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, Q(arg_5):=Ops_5Mask[null, Q(arg_5)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_26) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q(arg_5)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, Q(arg_5):=Used_12Mask[null, Q(arg_5)] + takeTransfer];
            b_26 := b_26 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, Q(arg_5):=FullPerm];
            b_26 := b_26 && IdenticalOnKnownLocations(Heap, Used_12Heap, TempMask);
            Mask := Mask[null, Q(arg_5):=Mask[null, Q(arg_5)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o: Ref, f_85: (Field A B) ::
              { newPMask[o, f_85] }
              Heap[null, wand_1#sm(x, 1 / 2, x, x, y)][o, f_85] || Heap[null, Q#sm(x)][o, f_85] ==> newPMask[o, f_85]
            );
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x, x, y):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q(x) (folding_2.vpr@37.3--41.4) [133984]"}
        (b_19 && b_19) && b_26 ==> neededTransfer == 0.000000000 && Used_12Mask[null, Q(arg_5)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_28 := b_19 && b_26;
        b_28 := b_28 && state(Result_12Heap, Result_12Mask);
        b_28 := b_28 && sumMask(Result_12Mask, Ops_5Mask, Used_12Mask);
        b_28 := (b_28 && IdenticalOnKnownLocations(Ops_5Heap, Result_12Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_12Heap, Used_12Mask);
        b_28 := b_28 && state(Result_12Heap, Result_12Mask);
      b_19 := b_19 && b_28;
    
    // -- Transfer of acc(P(y), write)
      arg_6 := y;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_12Mask[null, P(arg_6)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(y), write) might be negative. (folding_2.vpr@37.3--41.4) [133985]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_26) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, P(arg_6)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, P(arg_6):=Used_12Mask[null, P(arg_6)] + takeTransfer];
            b_26 := b_26 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, P(arg_6):=FullPerm];
            b_26 := b_26 && IdenticalOnKnownLocations(Ops_5Heap, Used_12Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, P(arg_6):=Ops_5Mask[null, P(arg_6)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_19 && b_19) && b_26) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_6)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_12Mask := Used_12Mask[null, P(arg_6):=Used_12Mask[null, P(arg_6)] + takeTransfer];
            b_26 := b_26 && state(Used_12Heap, Used_12Mask);
            TempMask := ZeroMask[null, P(arg_6):=FullPerm];
            b_26 := b_26 && IdenticalOnKnownLocations(Heap, Used_12Heap, TempMask);
            Mask := Mask[null, P(arg_6):=Mask[null, P(arg_6)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
              { newPMask[o_11, f_3] }
              Heap[null, wand_1#sm(x, 1 / 2, x, x, y)][o_11, f_3] || Heap[null, P#sm(y)][o_11, f_3] ==> newPMask[o_11, f_3]
            );
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x, x, y):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(y) (folding_2.vpr@37.3--41.4) [133986]"}
        (b_19 && b_19) && b_26 ==> neededTransfer == 0.000000000 && Used_12Mask[null, P(arg_6)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_29 := b_19 && b_26;
        b_29 := b_29 && state(Result_13Heap, Result_13Mask);
        b_29 := b_29 && sumMask(Result_13Mask, Ops_5Mask, Used_12Mask);
        b_29 := (b_29 && IdenticalOnKnownLocations(Ops_5Heap, Result_13Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_13Heap, Used_12Mask);
        b_29 := b_29 && state(Result_13Heap, Result_13Mask);
      b_19 := b_19 && b_29;
    Mask := Mask[null, wand_1(x, 1 / 2, x, x, y):=Mask[null, wand_1(x, 1 / 2, x, x, y)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_2.vpr@44.3--44.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_2.vpr@44.10--44.15) [133987]"}
      false;
    assume state(Heap, Mask);
}