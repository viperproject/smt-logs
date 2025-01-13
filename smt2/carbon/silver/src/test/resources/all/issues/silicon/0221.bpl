// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:24:00
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0221.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0221-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_35: (Field A B), v: B ::
  { Heap[o_3, f_35:=v] }
  succHeap(Heap, Heap[o_3, f_35:=v])
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
function  wand(arg1: Ref, arg2: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: bool ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 1
);
axiom (forall arg1: Ref, arg2: bool, arg1_2: Ref, arg2_2: bool ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: bool, arg1_2: Ref, arg2_2: Ref, arg3_2: Ref, arg4_2: bool ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5)) == 3
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: bool, arg1_2: Ref, arg2_2: Ref, arg3_2: Ref, arg4_2: Ref, arg5_2: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);

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
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

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
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  
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
  
  // -- Translating statement: package acc(P(x), write) --* true {
  //   unfold acc(P(x), write)
  // } -- 0221.vpr@7.3--9.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1;
      Ops_1Mask := Ops_1Mask[null, P(x):=Ops_1Mask[null, P(x)] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- 0221.vpr@7.11--7.31
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(P(x), write) -- 0221.vpr@8.7--8.23
        assume P#trigger(Ops_1Heap, P(x));
        assume Ops_1Heap[null, P(x)] == EmptyFrame;
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(P(x), write)
          arg_1 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, P(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding P(x) might fail. Fraction acc(P(x), write) might be negative. (0221.vpr@8.7--8.23) [210412]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, P(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, P(arg_1):=Used_1Mask[null, P(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, P(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, P(arg_1):=Ops_1Mask[null, P(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, P(arg_1):=Used_1Mask[null, P(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, P(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, P(arg_1):=Mask[null, P(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand#sm(x, true)][o_15, f_20] || Heap[null, P#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand#sm(x, true):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (0221.vpr@8.7--8.23) [210413]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, P(arg_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        b_1_1 := b_1_1;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    Mask := Mask[null, wand(x, true):=Mask[null, wand(x, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(P(x), write) --* true -- 0221.vpr@10.3--10.29
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of acc(P(x), write) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(x):=WandDefLHSMask[null, P(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- 0221.vpr@10.11--10.29
          lhs3:
          Labellhs3Mask := WandDefLHSMask;
          Labellhs3Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (0221.vpr@10.11--10.29) [210415]"}
      FullPerm <= AssertMask[null, wand(x, true)];
    AssertMask := AssertMask[null, wand(x, true):=AssertMask[null, wand(x, true)] - FullPerm];
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
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_6: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var perm: Perm;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var arg_1_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_8: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
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
  
  // -- Translating statement: package acc(P(x), write) --*
  // acc(P(x), write) && (unfolding acc(P(x), write) in true) {
  // } -- 0221.vpr@14.3--14.65
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_6) {
      perm := FullPerm;
      b_6 := b_6;
      Ops_3Mask := Ops_3Mask[null, P(x):=Ops_3Mask[null, P(x)] + perm];
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    }
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- 0221.vpr@14.11--14.65
      lhs4:
      Labellhs4Mask := Ops_3Mask;
      Labellhs4Heap := Ops_3Heap;
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(P(x), write) && (unfolding acc(P(x), write) in true)
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
    
    // -- Transfer of acc(P(x), write)
      arg_1_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_4Mask[null, P(arg_1_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(x), write) might be negative. (0221.vpr@14.3--14.65) [210416]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, P(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[null, P(arg_1_1):=Used_4Mask[null, P(arg_1_1)] + takeTransfer];
            b_7 := b_7 && state(Used_4Heap, Used_4Mask);
            TempMask := ZeroMask[null, P(arg_1_1):=FullPerm];
            b_7 := b_7 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, P(arg_1_1):=Ops_3Mask[null, P(arg_1_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[null, P(arg_1_1):=Used_4Mask[null, P(arg_1_1)] + takeTransfer];
            b_7 := b_7 && state(Used_4Heap, Used_4Mask);
            TempMask := ZeroMask[null, P(arg_1_1):=FullPerm];
            b_7 := b_7 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
            Mask := Mask[null, P(arg_1_1):=Mask[null, P(arg_1_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, wand_1#sm(x, x, x, true)][o_16, f_21] || Heap[null, P#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand_1#sm(x, x, x, true):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(x) (0221.vpr@14.3--14.65) [210417]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_4Mask[null, P(arg_1_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_6 && b_7;
        b_8 := b_8 && state(Result_1Heap, Result_1Mask);
        b_8 := b_8 && sumMask(Result_1Mask, Ops_3Mask, Used_4Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_1Heap, Used_4Mask);
        b_8 := b_8 && state(Result_1Heap, Result_1Mask);
      b_6 := b_6 && b_8;
    if ((b_6 && b_6) && b_7) {
      if (b_6) {
        
        // -- Check definedness of (unfolding acc(P(x), write) in true)
          UnfoldingHeap := Result_1Heap;
          UnfoldingMask := Result_1Mask;
          assume P#trigger(UnfoldingHeap, P(x));
          assume UnfoldingHeap[null, P(x)] == EmptyFrame;
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(x) (0221.vpr@14.3--14.65) [210418]"}
              perm <= UnfoldingMask[null, P(x)];
          }
          UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            assume state(Result_1Heap, Result_1Mask);
      }
    }
    Mask := Mask[null, wand_1(x, x, x, true):=Mask[null, wand_1(x, x, x, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(P(x), write) --*
  //   acc(P(x), write) && (unfolding acc(P(x), write) in true) -- 0221.vpr@15.3--15.65
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of acc(P(x), write) --* acc(P(x), write) && (unfolding acc(P(x), write) in true)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(x):=WandDefLHSMask[null, P(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- 0221.vpr@15.11--15.65
          lhs6:
          Labellhs6Mask := WandDefLHSMask;
          Labellhs6Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, P(x):=WandDefRHSMask[null, P(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of (unfolding acc(P(x), write) in true)
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume P#trigger(UnfoldingHeap, P(x));
          assume UnfoldingHeap[null, P(x)] == EmptyFrame;
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access P(x) (0221.vpr@15.11--15.65) [210420]"}
              perm <= UnfoldingMask[null, P(x)];
          }
          UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume P#trigger(UnfoldingHeap, P(x));
          assume UnfoldingHeap[null, P(x)] == EmptyFrame;
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (0221.vpr@15.11--15.65) [210421]"}
      FullPerm <= AssertMask[null, wand_1(x, x, x, true)];
    AssertMask := AssertMask[null, wand_1(x, x, x, true):=AssertMask[null, wand_1(x, x, x, true)] - FullPerm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_10: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var boolCur_2: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var arg_2: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_12: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var arg_3: Ref;
  var b_14: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_15: bool;
  var arg_4: Ref;
  var b_16: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), write) && (acc(P(y), write) && acc(P(z), write)) -- 0221.vpr@19.3--19.46
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(z):=Mask[null, P(z)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(P(y), write) && acc(P(z), write) --*
  // acc(P(z), write) && (unfolding acc(P(z), write) in true) {
  //   unfold acc(P(x), write)
  //   unfold acc(P(y), write)
  // } -- 0221.vpr@20.3--23.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_9 := b_9 && state(Used_5Heap, Used_5Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_10) {
      if (b_10) {
        perm := FullPerm;
        b_10 := b_10;
        Ops_5Mask := Ops_5Mask[null, P(y):=Ops_5Mask[null, P(y)] + perm];
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
      }
      if (b_10) {
        perm := FullPerm;
        b_10 := b_10;
        Ops_5Mask := Ops_5Mask[null, P(z):=Ops_5Mask[null, P(z)] + perm];
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
      }
    }
    b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs7 -- 0221.vpr@20.11--20.80
      lhs7:
      Labellhs7Mask := Ops_5Mask;
      Labellhs7Heap := Ops_5Heap;
      b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_10) {
      
      // -- Translating statement: unfold acc(P(x), write) -- 0221.vpr@21.7--21.23
        assume P#trigger(Ops_5Heap, P(x));
        assume Ops_5Heap[null, P(x)] == EmptyFrame;
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_11 := b_11 && state(Used_6Heap, Used_6Mask);
        
        // -- Transfer of acc(P(x), write)
          arg_2 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_6Mask[null, P(arg_2)] + neededTransfer;
          assert {:msg "  Unfolding P(x) might fail. Fraction acc(P(x), write) might be negative. (0221.vpr@21.7--21.23) [210426]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, P(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[null, P(arg_2):=Used_6Mask[null, P(arg_2)] + takeTransfer];
                b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                TempMask := ZeroMask[null, P(arg_2):=FullPerm];
                b_11 := b_11 && IdenticalOnKnownLocations(Ops_5Heap, Used_6Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, P(arg_2):=Ops_5Mask[null, P(arg_2)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_11) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_6Mask := Used_6Mask[null, P(arg_2):=Used_6Mask[null, P(arg_2)] + takeTransfer];
                b_11 := b_11 && state(Used_6Heap, Used_6Mask);
                TempMask := ZeroMask[null, P(arg_2):=FullPerm];
                b_11 := b_11 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                Mask := Mask[null, P(arg_2):=Mask[null, P(arg_2)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                  { newPMask[o_52, f_55] }
                  Heap[null, wand_2#sm(y, z, z, z, true)][o_52, f_55] || Heap[null, P#sm(x)][o_52, f_55] ==> newPMask[o_52, f_55]
                );
                Heap := Heap[null, wand_2#sm(y, z, z, z, true):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (0221.vpr@21.7--21.23) [210427]"}
            b_10 && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[null, P(arg_2)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_10 && b_11;
            b_12 := b_12 && state(Result_2Heap, Result_2Mask);
            b_12 := b_12 && sumMask(Result_2Mask, Ops_5Mask, Used_6Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_2Heap, Used_6Mask);
            b_12 := b_12 && state(Result_2Heap, Result_2Mask);
          b_10 := b_10 && b_12;
        b_10 := b_10 && b_11;
        b_10 := b_10 && Used_6Heap == Ops_5Heap;
        b_10 := b_10;
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    }
    if (b_10) {
      
      // -- Translating statement: unfold acc(P(y), write) -- 0221.vpr@22.7--22.23
        assume P#trigger(Ops_5Heap, P(y));
        assume Ops_5Heap[null, P(y)] == EmptyFrame;
        ExhaleWellDef0Mask := Ops_5Mask;
        ExhaleWellDef0Heap := Ops_5Heap;
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_13 := b_13 && state(Used_7Heap, Used_7Mask);
        
        // -- Transfer of acc(P(y), write)
          arg_3 := y;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_7Mask[null, P(arg_3)] + neededTransfer;
          assert {:msg "  Unfolding P(y) might fail. Fraction acc(P(y), write) might be negative. (0221.vpr@22.7--22.23) [210429]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, P(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, P(arg_3):=Used_7Mask[null, P(arg_3)] + takeTransfer];
                b_13 := b_13 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, P(arg_3):=FullPerm];
                b_13 := b_13 && IdenticalOnKnownLocations(Ops_5Heap, Used_7Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, P(arg_3):=Ops_5Mask[null, P(arg_3)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_10 && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_3)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_7Mask := Used_7Mask[null, P(arg_3):=Used_7Mask[null, P(arg_3)] + takeTransfer];
                b_13 := b_13 && state(Used_7Heap, Used_7Mask);
                TempMask := ZeroMask[null, P(arg_3):=FullPerm];
                b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
                Mask := Mask[null, P(arg_3):=Mask[null, P(arg_3)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                  { newPMask[o_53, f_56] }
                  Heap[null, wand_2#sm(y, z, z, z, true)][o_53, f_56] || Heap[null, P#sm(y)][o_53, f_56] ==> newPMask[o_53, f_56]
                );
                Heap := Heap[null, wand_2#sm(y, z, z, z, true):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(y) might fail. There might be insufficient permission to access P(y) (0221.vpr@22.7--22.23) [210430]"}
            b_10 && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[null, P(arg_3)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_10 && b_13;
            b_14 := b_14 && state(Result_3Heap, Result_3Mask);
            b_14 := b_14 && sumMask(Result_3Mask, Ops_5Mask, Used_7Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_3Heap, Used_7Mask);
            b_14 := b_14 && state(Result_3Heap, Result_3Mask);
          b_10 := b_10 && b_14;
        b_10 := b_10 && b_13;
        b_10 := b_10 && Used_7Heap == Ops_5Heap;
        b_10 := b_10;
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
        b_10 := b_10 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(P(z), write) && (unfolding acc(P(z), write) in true)
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_15 := b_15 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(P(z), write)
      arg_4 := z;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[null, P(arg_4)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(z), write) might be negative. (0221.vpr@20.3--23.4) [210431]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, P(arg_4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, P(arg_4):=Used_8Mask[null, P(arg_4)] + takeTransfer];
            b_15 := b_15 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, P(arg_4):=FullPerm];
            b_15 := b_15 && IdenticalOnKnownLocations(Ops_5Heap, Used_8Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, P(arg_4):=Ops_5Mask[null, P(arg_4)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_10 && b_10) && b_15) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_4)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, P(arg_4):=Used_8Mask[null, P(arg_4)] + takeTransfer];
            b_15 := b_15 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, P(arg_4):=FullPerm];
            b_15 := b_15 && IdenticalOnKnownLocations(Heap, Used_8Heap, TempMask);
            Mask := Mask[null, P(arg_4):=Mask[null, P(arg_4)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
              { newPMask[o_26, f_29] }
              Heap[null, wand_2#sm(y, z, z, z, true)][o_26, f_29] || Heap[null, P#sm(z)][o_26, f_29] ==> newPMask[o_26, f_29]
            );
            Heap := Heap[null, wand_2#sm(y, z, z, z, true):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(z) (0221.vpr@20.3--23.4) [210432]"}
        (b_10 && b_10) && b_15 ==> neededTransfer == 0.000000000 && Used_8Mask[null, P(arg_4)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_16 := b_10 && b_15;
        b_16 := b_16 && state(Result_4Heap, Result_4Mask);
        b_16 := b_16 && sumMask(Result_4Mask, Ops_5Mask, Used_8Mask);
        b_16 := (b_16 && IdenticalOnKnownLocations(Ops_5Heap, Result_4Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_4Heap, Used_8Mask);
        b_16 := b_16 && state(Result_4Heap, Result_4Mask);
      b_10 := b_10 && b_16;
    if ((b_10 && b_10) && b_15) {
      if (b_10) {
        
        // -- Check definedness of (unfolding acc(P(z), write) in true)
          UnfoldingHeap := Result_4Heap;
          UnfoldingMask := Result_4Mask;
          assume P#trigger(UnfoldingHeap, P(z));
          assume UnfoldingHeap[null, P(z)] == EmptyFrame;
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(z) (0221.vpr@20.3--23.4) [210433]"}
              perm <= UnfoldingMask[null, P(z)];
          }
          UnfoldingMask := UnfoldingMask[null, P(z):=UnfoldingMask[null, P(z)] - perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            assume state(Result_4Heap, Result_4Mask);
      }
    }
    Mask := Mask[null, wand_2(y, z, z, z, true):=Mask[null, wand_2(y, z, z, z, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(P(y), write) && acc(P(z), write) --*
  //   acc(P(z), write) && (unfolding acc(P(z), write) in true) -- 0221.vpr@24.3--24.78
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of acc(P(y), write) && acc(P(z), write) --* acc(P(z), write) && (unfolding acc(P(z), write) in true)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(y):=WandDefLHSMask[null, P(y)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(z):=WandDefLHSMask[null, P(z)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- 0221.vpr@24.11--24.78
          lhs9:
          Labellhs9Mask := WandDefLHSMask;
          Labellhs9Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, P(z):=WandDefRHSMask[null, P(z)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of (unfolding acc(P(z), write) in true)
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume P#trigger(UnfoldingHeap, P(z));
          assume UnfoldingHeap[null, P(z)] == EmptyFrame;
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access P(z) (0221.vpr@24.11--24.78) [210435]"}
              perm <= UnfoldingMask[null, P(z)];
          }
          UnfoldingMask := UnfoldingMask[null, P(z):=UnfoldingMask[null, P(z)] - perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume P#trigger(UnfoldingHeap, P(z));
          assume UnfoldingHeap[null, P(z)] == EmptyFrame;
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, P(z):=UnfoldingMask[null, P(z)] - perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (0221.vpr@24.11--24.78) [210436]"}
      FullPerm <= AssertMask[null, wand_2(y, z, z, z, true)];
    AssertMask := AssertMask[null, wand_2(y, z, z, z, true):=AssertMask[null, wand_2(y, z, z, z, true)] - FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(P(y), write) && acc(P(z), write) -- 0221.vpr@25.3--25.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access P(y) (0221.vpr@25.11--25.33) [210438]"}
        perm <= AssertMask[null, P(y)];
    }
    AssertMask := AssertMask[null, P(y):=AssertMask[null, P(y)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access P(z) (0221.vpr@25.11--25.33) [210440]"}
        perm <= AssertMask[null, P(z)];
    }
    AssertMask := AssertMask[null, P(z):=AssertMask[null, P(z)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(P(x), write) -- 0221.vpr@28.3--28.20
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access P(x) (0221.vpr@28.11--28.20) [210442]"}
        perm <= AssertMask[null, P(x)];
    }
    AssertMask := AssertMask[null, P(x):=AssertMask[null, P(x)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_18: bool;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_17: bool;
  var Labellhs10Mask: MaskType;
  var Labellhs10Heap: HeapType;
  var boolCur_3: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_19: bool;
  var arg_5: Ref;
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
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(y), write) -- 0221.vpr@32.3--32.20
    perm := FullPerm;
    Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(P(x), write) --*
  // acc(P(x), write) && (unfolding acc(P(y), write) in true) {
  // } -- 0221.vpr@38.3--38.65
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_17 := b_17 && state(Used_9Heap, Used_9Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_18) {
      perm := FullPerm;
      b_18 := b_18;
      Ops_7Mask := Ops_7Mask[null, P(x):=Ops_7Mask[null, P(x)] + perm];
      b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    }
    b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs10 -- 0221.vpr@38.11--38.65
      lhs10:
      Labellhs10Mask := Ops_7Mask;
      Labellhs10Heap := Ops_7Heap;
      b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationacc(P(x), write) && (unfolding acc(P(y), write) in true)
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_19 := b_19 && state(Used_10Heap, Used_10Mask);
    
    // -- Transfer of acc(P(x), write)
      arg_5 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_10Mask[null, P(arg_5)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(x), write) might be negative. (0221.vpr@38.3--38.65) [210444]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, P(arg_5)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[null, P(arg_5):=Used_10Mask[null, P(arg_5)] + takeTransfer];
            b_19 := b_19 && state(Used_10Heap, Used_10Mask);
            TempMask := ZeroMask[null, P(arg_5):=FullPerm];
            b_19 := b_19 && IdenticalOnKnownLocations(Ops_7Heap, Used_10Heap, TempMask);
            Ops_7Mask := Ops_7Mask[null, P(arg_5):=Ops_7Mask[null, P(arg_5)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_18 && b_18) && b_19) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P(arg_5)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_10Mask := Used_10Mask[null, P(arg_5):=Used_10Mask[null, P(arg_5)] + takeTransfer];
            b_19 := b_19 && state(Used_10Heap, Used_10Mask);
            TempMask := ZeroMask[null, P(arg_5):=FullPerm];
            b_19 := b_19 && IdenticalOnKnownLocations(Heap, Used_10Heap, TempMask);
            Mask := Mask[null, P(arg_5):=Mask[null, P(arg_5)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o: Ref, f_85: (Field A B) ::
              { newPMask[o, f_85] }
              Heap[null, wand_1#sm(x, x, y, true)][o, f_85] || Heap[null, P#sm(x)][o, f_85] ==> newPMask[o, f_85]
            );
            Heap := Heap[null, wand_1#sm(x, x, y, true):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(x) (0221.vpr@38.3--38.65) [210445]"}
        (b_18 && b_18) && b_19 ==> neededTransfer == 0.000000000 && Used_10Mask[null, P(arg_5)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_20 := b_18 && b_19;
        b_20 := b_20 && state(Result_5Heap, Result_5Mask);
        b_20 := b_20 && sumMask(Result_5Mask, Ops_7Mask, Used_10Mask);
        b_20 := (b_20 && IdenticalOnKnownLocations(Ops_7Heap, Result_5Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_5Heap, Used_10Mask);
        b_20 := b_20 && state(Result_5Heap, Result_5Mask);
      b_18 := b_18 && b_20;
    if ((b_18 && b_18) && b_19) {
      if (b_18) {
        
        // -- Check definedness of (unfolding acc(P(y), write) in true)
          UnfoldingHeap := Result_5Heap;
          UnfoldingMask := Result_5Mask;
          assume P#trigger(UnfoldingHeap, P(y));
          assume UnfoldingHeap[null, P(y)] == EmptyFrame;
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P(y) (0221.vpr@38.3--38.65) [210446]"}
              perm <= UnfoldingMask[null, P(y)];
          }
          UnfoldingMask := UnfoldingMask[null, P(y):=UnfoldingMask[null, P(y)] - perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            assume state(Result_5Heap, Result_5Mask);
      }
    }
    Mask := Mask[null, wand_1(x, x, y, true):=Mask[null, wand_1(x, x, y, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}