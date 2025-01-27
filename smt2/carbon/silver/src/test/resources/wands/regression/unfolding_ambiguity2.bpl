// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/unfolding_ambiguity2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/unfolding_ambiguity2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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
function  wand(arg1: Ref, arg2: Ref, arg3: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  IsWandField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand#ft(arg1, arg2, arg3) }
  IsWandField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  !IsPredicateField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3)) }
  wand#sm(arg1, arg2, arg3) == WandMaskField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  getPredWandId(wand(arg1, arg2, arg3)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Perm, arg1_2: Ref, arg2_2: Ref, arg3_2: Perm ::
  { wand(arg1, arg2, arg3), wand(arg1_2, arg2_2, arg3_2) }
  wand(arg1, arg2, arg3) == wand(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: bool ::
  { wand_1(arg1, arg2) }
  IsWandField(wand_1(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand_1#ft(arg1, arg2) }
  IsWandField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand_1(arg1, arg2) }
  !IsPredicateField(wand_1(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand_1#ft(arg1, arg2) }
  !IsPredicateField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2)) }
  wand_1#sm(arg1, arg2) == WandMaskField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand_1(arg1, arg2) }
  getPredWandId(wand_1(arg1, arg2)) == 2
);
axiom (forall arg1: Ref, arg2: bool, arg1_2: Ref, arg2_2: bool ::
  { wand_1(arg1, arg2), wand_1(arg1_2, arg2_2) }
  wand_1(arg1, arg2) == wand_1(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
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
  var arg: Ref;
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
  var rcvLocal: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
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
  
  // -- Translating statement: package acc(P(x), write) --* acc(x.f, write) {
  //   unfold acc(P(x), write)
  // } -- unfolding_ambiguity2.vpr@7.3--9.4
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
    
    // -- Translating statement: label lhs1 -- unfolding_ambiguity2.vpr@7.11--7.35
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(P(x), write) -- unfolding_ambiguity2.vpr@8.7--8.18
        assume P#trigger(Ops_1Heap, P(x));
        assume Ops_1Heap[null, P(x)] == FrameFragment(Ops_1Heap[x, f_7]);
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(P(x), write)
          arg := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, P(arg)] + neededTransfer;
          assert {:msg "  Unfolding P(x) might fail. Fraction acc(P(x), write) might be negative. (unfolding_ambiguity2.vpr@8.7--8.18) [218893]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, P(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, P(arg):=Used_1Mask[null, P(arg)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, P(arg):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, P(arg):=Ops_1Mask[null, P(arg)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, P(arg):=Used_1Mask[null, P(arg)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, P(arg):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, P(arg):=Mask[null, P(arg)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                  { newPMask[o_5, f_11] }
                  Heap[null, wand#sm(x, x, FullPerm)][o_5, f_11] || Heap[null, P#sm(x)][o_5, f_11] ==> newPMask[o_5, f_11]
                );
                Heap := Heap[null, wand#sm(x, x, FullPerm):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (unfolding_ambiguity2.vpr@8.7--8.18) [218894]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, P(arg)] == initNeededTransfer;
          
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
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.f, write)
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (unfolding_ambiguity2.vpr@7.3--9.4) [218896]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
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
            Heap := Heap[null, wand#sm(x, x, FullPerm):=Heap[null, wand#sm(x, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (unfolding_ambiguity2.vpr@7.3--9.4) [218897]"}
        (b_1_1 && b_1_1) && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_5 := b_1_1 && b_4;
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
        b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
        b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_5;
    Mask := Mask[null, wand(x, x, FullPerm):=Mask[null, wand(x, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(x), write) --* acc(x.f, write) -- unfolding_ambiguity2.vpr@11.3--11.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(P(x), write) --* acc(x.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(x):=WandDefLHSMask[null, P(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- unfolding_ambiguity2.vpr@11.11--11.33
          lhs3:
          Labellhs3Heap := WandDefLHSHeap;
          Labellhs3Mask := WandDefLHSMask;
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
    assert {:msg "  Exhale might fail. Magic wand instance not found. (unfolding_ambiguity2.vpr@11.11--11.33) [218898]"}
      FullPerm <= Mask[null, wand(x, x, FullPerm)];
    Mask := Mask[null, wand(x, x, FullPerm):=Mask[null, wand(x, x, FullPerm)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
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
  var b_7: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var perm: Perm;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var arg_1_13: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_9: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
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
  
  // -- Translating statement: package acc(P(x), write) --* true {
  //   unfold acc(P(x), write)
  // } -- unfolding_ambiguity2.vpr@21.3--23.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_7) {
      perm := FullPerm;
      b_7 := b_7;
      Ops_3Mask := Ops_3Mask[null, P(x):=Ops_3Mask[null, P(x)] + perm];
      b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- unfolding_ambiguity2.vpr@21.11--21.31
      lhs4:
      Labellhs4Heap := Ops_3Heap;
      Labellhs4Mask := Ops_3Mask;
      b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_7) {
      
      // -- Translating statement: unfold acc(P(x), write) -- unfolding_ambiguity2.vpr@22.7--22.18
        assume P#trigger(Ops_3Heap, P(x));
        assume Ops_3Heap[null, P(x)] == FrameFragment(Ops_3Heap[x, f_7]);
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_8 := b_8 && state(Used_4Heap, Used_4Mask);
        
        // -- Transfer of acc(P(x), write)
          arg_1_13 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[null, P(arg_1_13)] + neededTransfer;
          assert {:msg "  Unfolding P(x) might fail. Fraction acc(P(x), write) might be negative. (unfolding_ambiguity2.vpr@22.7--22.18) [218900]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_7 && b_8) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, P(arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, P(arg_1_13):=Used_4Mask[null, P(arg_1_13)] + takeTransfer];
                b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                TempMask := ZeroMask[null, P(arg_1_13):=FullPerm];
                b_8 := b_8 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, P(arg_1_13):=Ops_3Mask[null, P(arg_1_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_7 && b_8) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, P(arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, P(arg_1_13):=Used_4Mask[null, P(arg_1_13)] + takeTransfer];
                b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                TempMask := ZeroMask[null, P(arg_1_13):=FullPerm];
                b_8 := b_8 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                Mask := Mask[null, P(arg_1_13):=Mask[null, P(arg_1_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                  { newPMask[o_6, f_12] }
                  Heap[null, wand_1#sm(x, true)][o_6, f_12] || Heap[null, P#sm(x)][o_6, f_12] ==> newPMask[o_6, f_12]
                );
                Heap := Heap[null, wand_1#sm(x, true):=newPMask];
              }
            }
          assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (unfolding_ambiguity2.vpr@22.7--22.18) [218901]"}
            b_7 && b_8 ==> neededTransfer == 0.000000000 && Used_4Mask[null, P(arg_1_13)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_9 := b_7 && b_8;
            b_9 := b_9 && state(Result_2Heap, Result_2Mask);
            b_9 := b_9 && sumMask(Result_2Mask, Ops_3Mask, Used_4Mask);
            b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_2Heap, Used_4Mask);
            b_9 := b_9 && state(Result_2Heap, Result_2Mask);
          b_7 := b_7 && b_9;
        b_7 := b_7 && b_8;
        b_7 := b_7 && Used_4Heap == Ops_3Heap;
        perm := FullPerm;
        b_7 := b_7 && x != null;
        Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    Mask := Mask[null, wand_1(x, true):=Mask[null, wand_1(x, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(x), write) --* true -- unfolding_ambiguity2.vpr@25.3--25.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(P(x), write) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(x):=WandDefLHSMask[null, P(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- unfolding_ambiguity2.vpr@25.11--25.29
          lhs6:
          Labellhs6Heap := WandDefLHSHeap;
          Labellhs6Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (unfolding_ambiguity2.vpr@25.11--25.29) [218904]"}
      FullPerm <= Mask[null, wand_1(x, true)];
    Mask := Mask[null, wand_1(x, true):=Mask[null, wand_1(x, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}