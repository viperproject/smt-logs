// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:06:51
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/exec_unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/exec_unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Perm, arg6: Ref, arg7: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref, arg7_2: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

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
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (exec_unfolding.vpr@6.1--8.2) [127035]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
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
  var arg_1_1: Ref;
  var b_7: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_10: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  
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
  
  // -- Translating statement: package acc(x.f, 1 / 4) && acc(P(x.f), write) --*
  // acc(x.f, 1 / 4) && acc(x.f.f, 1 / 4) {
  //   fold acc(P(x), write)
  //   unfold acc(P(x), write)
  //   unfold acc(P(x.f), write)
  // } -- exec_unfolding.vpr@11.3--15.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      if (b_1_1) {
        perm := 1 / 4;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 4 might be negative. (exec_unfolding.vpr@11.3--15.4) [127036]"}
          perm >= NoPerm;
        b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        if (b_1_1) {
          
          // -- Check definedness of acc(P(x.f), write)
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@11.3--15.4) [127037]"}
              HasDirectPerm(Ops_1Mask, x, f_7);
        }
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, P(Ops_1Heap[x, f_7]):=Ops_1Mask[null, P(Ops_1Heap[x, f_7])] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- exec_unfolding.vpr@11.11--11.71
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(P(x), write) -- exec_unfolding.vpr@12.7--12.16
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(x.f, 1 / 4)
          rcvLocal := x;
          neededTransfer := 1 / 4;
          initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, 1 / 4) might be negative. (exec_unfolding.vpr@12.7--12.16) [127039]"}
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
                Heap := Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4):=Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@12.7--12.16) [127040]"}
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
      
      // -- Translating statement: unfold acc(P(x), write) -- exec_unfolding.vpr@13.7--13.18
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
          assert {:msg "  Unfolding P(x) might fail. Fraction acc(P(x), write) might be negative. (exec_unfolding.vpr@13.7--13.18) [127043]"}
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
                  Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4)][o_15, f_20] || Heap[null, P#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (exec_unfolding.vpr@13.7--13.18) [127044]"}
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
        perm := 1 / 4;
        assert {:msg "  Unfolding P(x) might fail. Fraction 1 / 4 might be negative. (exec_unfolding.vpr@13.7--13.18) [127045]"}
          perm >= NoPerm;
        b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(P(x.f), write) -- exec_unfolding.vpr@14.7--14.20
        if (b_1_1) {
          
          // -- Check definedness of acc(P(x.f), write)
            assert {:msg "  Unfolding P(x.f) might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@14.7--14.20) [127046]"}
              HasDirectPerm(Ops_1Mask, x, f_7);
        }
        assume P#trigger(Ops_1Heap, P(Ops_1Heap[x, f_7]));
        assume Ops_1Heap[null, P(Ops_1Heap[x, f_7])] == FrameFragment(Ops_1Heap[Ops_1Heap[x, f_7], f_7]);
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_3Heap;
        Used_3Mask := ZeroMask;
        b_6 := b_6 && state(Used_3Heap, Used_3Mask);
        
        // -- Transfer of acc(P(x.f), write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_6) {
              if (b_1_1) {
                
                // -- Check definedness of acc(P(x.f), write)
                  assert {:msg "  Unfolding P(x.f) might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@14.7--14.20) [127048]"}
                    HasDirectPerm(Ops_1Mask, x, f_7);
              }
            }
          arg_1_1 := Ops_1Heap[x, f_7];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_3Mask[null, P(arg_1_1)] + neededTransfer;
          assert {:msg "  Unfolding P(x.f) might fail. Fraction acc(P(x.f), write) might be negative. (exec_unfolding.vpr@14.7--14.20) [127049]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, P(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[null, P(arg_1_1):=Used_3Mask[null, P(arg_1_1)] + takeTransfer];
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                TempMask := ZeroMask[null, P(arg_1_1):=FullPerm];
                b_6 := b_6 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, P(arg_1_1):=Ops_1Mask[null, P(arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[null, P(arg_1_1):=Used_3Mask[null, P(arg_1_1)] + takeTransfer];
                b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                TempMask := ZeroMask[null, P(arg_1_1):=FullPerm];
                b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                Mask := Mask[null, P(arg_1_1):=Mask[null, P(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4)][o_16, f_21] || Heap[null, P#sm(Heap[x, f_7])][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Heap := Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x.f) might fail. There might be insufficient permission to access P(x.f) (exec_unfolding.vpr@14.7--14.20) [127050]"}
            b_1_1 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, P(arg_1_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_7 := b_1_1 && b_6;
            b_7 := b_7 && state(Result_2Heap, Result_2Mask);
            b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
            b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
            b_7 := b_7 && state(Result_2Heap, Result_2Mask);
          b_1_1 := b_1_1 && b_7;
        b_1_1 := b_1_1 && b_6;
        b_1_1 := b_1_1 && Used_3Heap == Ops_1Heap;
        perm := 1 / 4;
        assert {:msg "  Unfolding P(x.f) might fail. Fraction 1 / 4 might be negative. (exec_unfolding.vpr@14.7--14.20) [127051]"}
          perm >= NoPerm;
        b_1_1 := b_1_1 && (perm > NoPerm ==> Ops_1Heap[x, f_7] != null);
        Ops_1Mask := Ops_1Mask[Ops_1Heap[x, f_7], f_7:=Ops_1Mask[Ops_1Heap[x, f_7], f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, 1 / 4) && acc(x.f.f, 1 / 4)
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    
    // -- Transfer of acc(x.f, 1 / 4)
      rcvLocal := x;
      neededTransfer := 1 / 4;
      initNeededTransfer := Used_4Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 4) might be negative. (exec_unfolding.vpr@11.3--15.4) [127052]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_8) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_8 := b_8 && state(Used_4Heap, Used_4Mask);
            b_8 := b_8 && Ops_1Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_8) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_8 := b_8 && state(Used_4Heap, Used_4Mask);
            b_8 := b_8 && Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4):=Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@11.3--15.4) [127053]"}
        (b_1_1 && b_1_1) && b_8 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_9 := b_1_1 && b_8;
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
        b_9 := b_9 && sumMask(Result_3Mask, Ops_1Mask, Used_4Mask);
        b_9 := (b_9 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_3Heap, Used_4Mask);
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
      b_1_1 := b_1_1 && b_9;
    
    // -- Transfer of acc(x.f.f, 1 / 4)
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_8) {
          if (b_1_1) {
            
            // -- Check definedness of acc(x.f.f, 1 / 4)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@11.3--15.4) [127054]"}
                HasDirectPerm(Result_3Mask, x, f_7);
          }
        }
      rcvLocal := Result_3Heap[x, f_7];
      neededTransfer := 1 / 4;
      initNeededTransfer := Used_4Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f.f, 1 / 4) might be negative. (exec_unfolding.vpr@11.3--15.4) [127055]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_8) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_8 := b_8 && state(Used_4Heap, Used_4Mask);
            b_8 := b_8 && Ops_1Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_8) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
            b_8 := b_8 && state(Used_4Heap, Used_4Mask);
            b_8 := b_8 && Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4):=Heap[null, wand#sm(x, 1 / 4, x, x, 1 / 4, x, 1 / 4)][Heap[x, f_7], f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f.f (exec_unfolding.vpr@11.3--15.4) [127056]"}
        (b_1_1 && b_1_1) && b_8 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_10 := b_1_1 && b_8;
        b_10 := b_10 && state(Result_4Heap, Result_4Mask);
        b_10 := b_10 && sumMask(Result_4Mask, Ops_1Mask, Used_4Mask);
        b_10 := (b_10 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_4Heap, Used_4Mask);
        b_10 := b_10 && state(Result_4Heap, Result_4Mask);
      b_1_1 := b_1_1 && b_10;
    Mask := Mask[null, wand(x, 1 / 4, x, x, 1 / 4, x, 1 / 4):=Mask[null, wand(x, 1 / 4, x, x, 1 / 4, x, 1 / 4)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- exec_unfolding.vpr@18.3--18.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (exec_unfolding.vpr@18.10--18.15) [127057]"}
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
  var b_12: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_11: bool;
  var perm: Perm;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var freshVersion: FrameType;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_15: bool;
  var arg_2: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_16: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_17: bool;
  var b_18: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  
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
  
  // -- Translating statement: package acc(x.f, 1 / 4) --* acc(x.f, 1 / 4) {
  //   fold acc(P(x), write)
  //   unfold acc(P(x), write)
  // } -- exec_unfolding.vpr@22.3--25.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_11 := b_11 && state(Used_5Heap, Used_5Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      perm := 1 / 4;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 4 might be negative. (exec_unfolding.vpr@22.3--25.4) [127058]"}
        perm >= NoPerm;
      b_12 := b_12 && (perm > NoPerm ==> x != null);
      Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
    }
    b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- exec_unfolding.vpr@22.11--22.42
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_12) {
      
      // -- Translating statement: fold acc(P(x), write) -- exec_unfolding.vpr@23.7--23.16
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_13 := b_13 && state(Used_6Heap, Used_6Mask);
        
        // -- Transfer of acc(x.f, 1 / 4)
          rcvLocal := x;
          neededTransfer := 1 / 4;
          initNeededTransfer := Used_6Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding P(x) might fail. Fraction acc(x.f, 1 / 4) might be negative. (exec_unfolding.vpr@23.7--23.16) [127060]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
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
            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
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
                Heap := Heap[null, wand_1#sm(x, 1 / 4, x, 1 / 4):=Heap[null, wand_1#sm(x, 1 / 4, x, 1 / 4)][x, f_7:=true]];
              }
            }
          assert {:msg "  Folding P(x) might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@23.7--23.16) [127061]"}
            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_6Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_12 && b_13;
            b_14 := b_14 && state(Result_5Heap, Result_5Mask);
            b_14 := b_14 && sumMask(Result_5Mask, Ops_3Mask, Used_6Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_5Heap, Used_6Mask);
            b_14 := b_14 && state(Result_5Heap, Result_5Mask);
          b_12 := b_12 && b_14;
        b_12 := b_12 && b_13;
        b_12 := b_12 && Used_6Heap == Ops_3Heap;
        perm := FullPerm;
        b_12 := b_12;
        Ops_3Mask := Ops_3Mask[null, P(x):=Ops_3Mask[null, P(x)] + perm];
        b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
        b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
        assume P#trigger(Ops_3Heap, P(x));
        assume Ops_3Heap[null, P(x)] == FrameFragment(Ops_3Heap[x, f_7]);
        if (!HasDirectPerm(Ops_3Mask, null, P(x))) {
          Ops_3Heap := Ops_3Heap[null, P#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, P(x):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, P#sm(x):=Ops_3Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Ops_3Heap, Ops_3Mask);
        b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_12) {
      
      // -- Translating statement: unfold acc(P(x), write) -- exec_unfolding.vpr@24.7--24.18
        assume P#trigger(Ops_3Heap, P(x));
        assume Ops_3Heap[null, P(x)] == FrameFragment(Ops_3Heap[x, f_7]);
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_15 := b_15 && state(Used_7Heap, Used_7Mask);
        
        // -- Transfer of acc(P(x), write)
          arg_2 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_7Mask[null, P(arg_2)] + neededTransfer;
          assert {:msg "  Unfolding P(x) might fail. Fraction acc(P(x), write) might be negative. (exec_unfolding.vpr@24.7--24.18) [127064]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_12 && b_15) && accVar2) && neededTransfer > 0.000000000) {
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
            if (((b_12 && b_15) && accVar2) && neededTransfer > 0.000000000) {
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
                  Heap[null, wand_1#sm(x, 1 / 4, x, 1 / 4)][o_52, f_55] || Heap[null, P#sm(x)][o_52, f_55] ==> newPMask[o_52, f_55]
                );
                Heap := Heap[null, wand_1#sm(x, 1 / 4, x, 1 / 4):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (exec_unfolding.vpr@24.7--24.18) [127065]"}
            b_12 && b_15 ==> neededTransfer == 0.000000000 && Used_7Mask[null, P(arg_2)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_16 := b_12 && b_15;
            b_16 := b_16 && state(Result_6Heap, Result_6Mask);
            b_16 := b_16 && sumMask(Result_6Mask, Ops_3Mask, Used_7Mask);
            b_16 := (b_16 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_6Heap, Used_7Mask);
            b_16 := b_16 && state(Result_6Heap, Result_6Mask);
          b_12 := b_12 && b_16;
        b_12 := b_12 && b_15;
        b_12 := b_12 && Used_7Heap == Ops_3Heap;
        perm := 1 / 4;
        assert {:msg "  Unfolding P(x) might fail. Fraction 1 / 4 might be negative. (exec_unfolding.vpr@24.7--24.18) [127066]"}
          perm >= NoPerm;
        b_12 := b_12 && (perm > NoPerm ==> x != null);
        Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
        b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
        b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
        b_12 := b_12 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, 1 / 4)
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_17 := b_17 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(x.f, 1 / 4)
      rcvLocal := x;
      neededTransfer := 1 / 4;
      initNeededTransfer := Used_8Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 1 / 4) might be negative. (exec_unfolding.vpr@22.3--25.4) [127067]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
            b_17 := b_17 && state(Used_8Heap, Used_8Mask);
            b_17 := b_17 && Ops_3Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
            b_17 := b_17 && state(Used_8Heap, Used_8Mask);
            b_17 := b_17 && Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, 1 / 4, x, 1 / 4):=Heap[null, wand_1#sm(x, 1 / 4, x, 1 / 4)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (exec_unfolding.vpr@22.3--25.4) [127068]"}
        (b_12 && b_12) && b_17 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_18 := b_12 && b_17;
        b_18 := b_18 && state(Result_7Heap, Result_7Mask);
        b_18 := b_18 && sumMask(Result_7Mask, Ops_3Mask, Used_8Mask);
        b_18 := (b_18 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_7Heap, Used_8Mask);
        b_18 := b_18 && state(Result_7Heap, Result_7Mask);
      b_12 := b_12 && b_18;
    Mask := Mask[null, wand_1(x, 1 / 4, x, 1 / 4):=Mask[null, wand_1(x, 1 / 4, x, 1 / 4)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- exec_unfolding.vpr@28.3--28.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (exec_unfolding.vpr@28.10--28.15) [127069]"}
      false;
    assume state(Heap, Mask);
}