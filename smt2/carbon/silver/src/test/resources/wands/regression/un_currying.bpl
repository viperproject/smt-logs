// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:04:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/un_currying.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/un_currying-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_47: Ref, f_43: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_47, f_43] }
  Heap[o_47, $allocated] ==> Heap[Heap[o_47, f_43], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_28: Ref, f_32: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_28, f_32] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_28, f_32) ==> Heap[o_28, f_32] == ExhaleHeap[o_28, f_32]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_23), ExhaleHeap[null, PredicateMaskField(pm_f_23)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsPredicateField(pm_f_23) ==> Heap[null, PredicateMaskField(pm_f_23)] == ExhaleHeap[null, PredicateMaskField(pm_f_23)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_23) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsPredicateField(pm_f_23) ==> (forall <A, B> o2_23: Ref, f_32: (Field A B) ::
    { ExhaleHeap[o2_23, f_32] }
    Heap[null, PredicateMaskField(pm_f_23)][o2_23, f_32] ==> Heap[o2_23, f_32] == ExhaleHeap[o2_23, f_32]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_23), ExhaleHeap[null, WandMaskField(pm_f_23)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsWandField(pm_f_23) ==> Heap[null, WandMaskField(pm_f_23)] == ExhaleHeap[null, WandMaskField(pm_f_23)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_23) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsWandField(pm_f_23) ==> (forall <A, B> o2_23: Ref, f_32: (Field A B) ::
    { ExhaleHeap[o2_23, f_32] }
    Heap[null, WandMaskField(pm_f_23)][o2_23, f_32] ==> Heap[o2_23, f_32] == ExhaleHeap[o2_23, f_32]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_28: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_28, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_28, $allocated] ==> ExhaleHeap[o_28, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_47: Ref, f_51: (Field A B), v: B ::
  { Heap[o_47, f_51:=v] }
  succHeap(Heap, Heap[o_47, f_51:=v])
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
function  wand_3(arg1: bool): Field WandType_wand_3 int;
function  wand_3#sm(arg1: bool): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: bool): Field WandType_wand_3 FrameType;
axiom (forall arg1: bool ::
  { wand_3(arg1) }
  IsWandField(wand_3(arg1))
);
axiom (forall arg1: bool ::
  { wand_3#ft(arg1) }
  IsWandField(wand_3#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_3(arg1) }
  !IsPredicateField(wand_3(arg1))
);
axiom (forall arg1: bool ::
  { wand_3#ft(arg1) }
  !IsPredicateField(wand_3#ft(arg1))
);
axiom (forall arg1: bool ::
  { WandMaskField(wand_3#ft(arg1)) }
  wand_3#sm(arg1) == WandMaskField(wand_3#ft(arg1))
);
axiom (forall arg1: bool ::
  { wand_3(arg1) }
  getPredWandId(wand_3(arg1)) == 3
);
axiom (forall arg1: bool, arg1_2: bool ::
  { wand_3(arg1), wand_3(arg1_2) }
  wand_3(arg1) == wand_3(arg1_2) ==> arg1 == arg1_2
);
type WandType_wand_2;
function  wand_2(): Field WandType_wand_2 int;
function  wand_2#sm(): Field WandType_wand_2 PMaskType;
function  wand_2#ft(): Field WandType_wand_2 FrameType;
axiom IsWandField(wand_2());
axiom IsWandField(wand_2#ft());
axiom !IsPredicateField(wand_2());
axiom !IsPredicateField(wand_2#ft());
axiom wand_2#sm() == WandMaskField(wand_2#ft());
axiom getPredWandId(wand_2()) == 4;
axiom true;
type WandType_wand;
function  wand(): Field WandType_wand int;
function  wand#sm(): Field WandType_wand PMaskType;
function  wand#ft(): Field WandType_wand FrameType;
axiom IsWandField(wand());
axiom IsWandField(wand#ft());
axiom !IsPredicateField(wand());
axiom !IsPredicateField(wand#ft());
axiom wand#sm() == WandMaskField(wand#ft());
axiom getPredWandId(wand()) == 5;
axiom true;
type WandType_wand_4;
function  wand_4(arg1: bool, arg2: bool): Field WandType_wand_4 int;
function  wand_4#sm(arg1: bool, arg2: bool): Field WandType_wand_4 PMaskType;
function  wand_4#ft(arg1: bool, arg2: bool): Field WandType_wand_4 FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand_4(arg1, arg2) }
  IsWandField(wand_4(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_4#ft(arg1, arg2) }
  IsWandField(wand_4#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_4(arg1, arg2) }
  !IsPredicateField(wand_4(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_4#ft(arg1, arg2) }
  !IsPredicateField(wand_4#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand_4#ft(arg1, arg2)) }
  wand_4#sm(arg1, arg2) == WandMaskField(wand_4#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand_4(arg1, arg2) }
  getPredWandId(wand_4(arg1, arg2)) == 6
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand_4(arg1, arg2), wand_4(arg1_2, arg2_2) }
  wand_4(arg1, arg2) == wand_4(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(): Field WandType_wand_1 int;
function  wand_1#sm(): Field WandType_wand_1 PMaskType;
function  wand_1#ft(): Field WandType_wand_1 FrameType;
axiom IsWandField(wand_1());
axiom IsWandField(wand_1#ft());
axiom !IsPredicateField(wand_1());
axiom !IsPredicateField(wand_1#ft());
axiom wand_1#sm() == WandMaskField(wand_1#ft());
axiom getPredWandId(wand_1()) == 7;
axiom true;

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(): Field PredicateType_P FrameType;
function  P#sm(): Field PredicateType_P PMaskType;
axiom PredicateMaskField(P()) == P#sm();
axiom IsPredicateField(P());
axiom getPredWandId(P()) == 0;
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { P#trigger(Heap, P()) }
  P#everUsed(P())
);

procedure P#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(): Field PredicateType_Q FrameType;
function  Q#sm(): Field PredicateType_Q PMaskType;
axiom PredicateMaskField(Q()) == Q#sm();
axiom IsPredicateField(Q());
axiom getPredWandId(Q()) == 1;
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { Q#trigger(Heap, Q()) }
  Q#everUsed(Q())
);

procedure Q#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate R
// ==================================================

type PredicateType_R;
function  R(): Field PredicateType_R FrameType;
function  R#sm(): Field PredicateType_R PMaskType;
axiom PredicateMaskField(R()) == R#sm();
axiom IsPredicateField(R());
axiom getPredWandId(R()) == 2;
function  R#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  R#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { R#trigger(Heap, R()) }
  R#everUsed(R())
);

procedure R#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of R
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method uncurry
// ==================================================

procedure uncurry() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs2Mask: MaskType;
  var Labellhs2Heap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var b_7: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var b_11: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var Labellhs10Mask: MaskType;
  var Labellhs10Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(), write) --* acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@19.3--19.25
    
    // -- Check definedness of acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- un_currying.vpr@19.10--19.25
          lhs1:
          Labellhs1Mask := WandDefLHSMask;
          Labellhs1Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of acc(Q(), write) --* acc(R(), write)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs2 -- un_currying.vpr@19.17--19.24
              lhs2:
              Labellhs2Mask := WandDefLHSMask;
              Labellhs2Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand_1():=WandDefRHSMask[null, wand_1()] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand():=Mask[null, wand()] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(P(), write) && acc(Q(), write) --* acc(R(), write) {
  //   apply acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
  //   apply acc(Q(), write) --* acc(R(), write)
  // } -- un_currying.vpr@21.3--24.4
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
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, P():=Ops_1Mask[null, P()] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, Q():=Ops_1Mask[null, Q()] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs3 -- un_currying.vpr@21.11--21.25
      lhs3:
      Labellhs3Mask := Ops_1Mask;
      Labellhs3Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: apply acc(P(), write) --* acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@22.7--22.28
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_1Mask;
          ExhaleWellDef0Heap := Ops_1Heap;
          havoc Used_1Heap;
          Used_1Mask := ZeroMask;
          b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
          
          // -- Transfer of acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_2_1) {
                if (b_1_1) {
                  
                  // -- Check definedness of acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs6 -- un_currying.vpr@22.13--22.28
                        lhs6:
                        Labellhs6Mask := WandDefLHSMask;
                        Labellhs6Heap := WandDefLHSHeap;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      
                      // -- Check definedness of acc(Q(), write) --* acc(R(), write)
                        if (*) {
                          havoc WandDefLHSHeap;
                          WandDefLHSMask := ZeroMask;
                          perm := FullPerm;
                          WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          
                          // -- Translating statement: label lhs7 -- un_currying.vpr@22.20--22.27
                            lhs7:
                            Labellhs7Mask := WandDefLHSMask;
                            Labellhs7Heap := WandDefLHSHeap;
                            assume state(WandDefLHSHeap, WandDefLHSMask);
                          havoc WandDefRHSHeap;
                          WandDefRHSMask := ZeroMask;
                          perm := FullPerm;
                          WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume false;
                        }
                      WandDefRHSMask := WandDefRHSMask[null, wand_1():=WandDefRHSMask[null, wand_1()] + FullPerm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_1Mask[null, wand()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(P(), write) --* acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@22.7--22.28) [130135]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, wand()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand():=Used_1Mask[null, wand()] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Ops_1Mask := Ops_1Mask[null, wand():=Ops_1Mask[null, wand()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_1Mask := Used_1Mask[null, wand():=Used_1Mask[null, wand()] + takeTransfer];
                  b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                  Mask := Mask[null, wand():=Mask[null, wand()] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@22.7--22.28) [130136]"}
              b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, wand()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_3 := b_1_1 && b_2_1;
              b_3 := b_3 && state(ResultHeap, ResultMask);
              b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
              b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
              b_3 := b_3 && state(ResultHeap, ResultMask);
            b_1_1 := b_1_1 && b_3;
          b_1_1 := b_1_1 && b_2_1;
          b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Ops_1Mask;
          ExhaleWellDef0Heap := Ops_1Heap;
          havoc Used_2Heap;
          Used_2Mask := ZeroMask;
          b_4 := b_4 && state(Used_2Heap, Used_2Mask);
          
          // -- Transfer of acc(P(), write)
            neededTransfer := FullPerm;
            initNeededTransfer := Used_2Mask[null, P()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(P(), write) might be negative. (un_currying.vpr@22.7--22.28) [130137]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, P()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_2Mask := Used_2Mask[null, P():=Used_2Mask[null, P()] + takeTransfer];
                  b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                  TempMask := ZeroMask[null, P():=FullPerm];
                  b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                  Ops_1Mask := Ops_1Mask[null, P():=Ops_1Mask[null, P()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, P()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_2Mask := Used_2Mask[null, P():=Used_2Mask[null, P()] + takeTransfer];
                  b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                  TempMask := ZeroMask[null, P():=FullPerm];
                  b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                  Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                    { newPMask[o_15, f_20] }
                    Heap[null, wand_2#sm()][o_15, f_20] || Heap[null, P#sm()][o_15, f_20] ==> newPMask[o_15, f_20]
                  );
                  Heap := Heap[null, wand_2#sm():=newPMask];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access P() (un_currying.vpr@22.7--22.28) [130138]"}
              b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[null, P()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_5 := b_1_1 && b_4;
              b_5 := b_5 && state(Result_1Heap, Result_1Mask);
              b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
              b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
              b_5 := b_5 && state(Result_1Heap, Result_1Mask);
            b_1_1 := b_1_1 && b_5;
          b_1_1 := b_1_1 && b_4;
          b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- inhale the RHS of the wand
          Ops_1Mask := Ops_1Mask[null, wand_1():=Ops_1Mask[null, wand_1()] + FullPerm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: apply acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@23.7--23.20
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_1Mask;
          ExhaleWellDef0Heap := Ops_1Heap;
          havoc Used_3Heap;
          Used_3Mask := ZeroMask;
          b_6 := b_6 && state(Used_3Heap, Used_3Mask);
          
          // -- Transfer of acc(Q(), write) --* acc(R(), write)
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_6) {
                if (b_1_1) {
                  
                  // -- Check definedness of acc(Q(), write) --* acc(R(), write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs9 -- un_currying.vpr@23.13--23.20
                        lhs9:
                        Labellhs9Mask := WandDefLHSMask;
                        Labellhs9Heap := WandDefLHSHeap;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_3Mask[null, wand_1()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@23.7--23.20) [130139]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, wand_1()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_3Mask := Used_3Mask[null, wand_1():=Used_3Mask[null, wand_1()] + takeTransfer];
                  b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                  Ops_1Mask := Ops_1Mask[null, wand_1():=Ops_1Mask[null, wand_1()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_1()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_3Mask := Used_3Mask[null, wand_1():=Used_3Mask[null, wand_1()] + takeTransfer];
                  b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                  Mask := Mask[null, wand_1():=Mask[null, wand_1()] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@23.7--23.20) [130140]"}
              b_1_1 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, wand_1()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_7 := b_1_1 && b_6;
              b_7 := b_7 && state(Result_2Heap, Result_2Mask);
              b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
              b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
              b_7 := b_7 && state(Result_2Heap, Result_2Mask);
            b_1_1 := b_1_1 && b_7;
          b_1_1 := b_1_1 && b_6;
          b_1_1 := b_1_1 && Used_3Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Ops_1Mask;
          ExhaleWellDef0Heap := Ops_1Heap;
          havoc Used_4Heap;
          Used_4Mask := ZeroMask;
          b_8 := b_8 && state(Used_4Heap, Used_4Mask);
          
          // -- Transfer of acc(Q(), write)
            neededTransfer := FullPerm;
            initNeededTransfer := Used_4Mask[null, Q()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(Q(), write) might be negative. (un_currying.vpr@23.7--23.20) [130141]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_8) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, Q()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_4Mask := Used_4Mask[null, Q():=Used_4Mask[null, Q()] + takeTransfer];
                  b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                  TempMask := ZeroMask[null, Q():=FullPerm];
                  b_8 := b_8 && IdenticalOnKnownLocations(Ops_1Heap, Used_4Heap, TempMask);
                  Ops_1Mask := Ops_1Mask[null, Q():=Ops_1Mask[null, Q()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_8) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Q()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_4Mask := Used_4Mask[null, Q():=Used_4Mask[null, Q()] + takeTransfer];
                  b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                  TempMask := ZeroMask[null, Q():=FullPerm];
                  b_8 := b_8 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                  Mask := Mask[null, Q():=Mask[null, Q()] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                    { newPMask[o_16, f_21] }
                    Heap[null, wand_2#sm()][o_16, f_21] || Heap[null, Q#sm()][o_16, f_21] ==> newPMask[o_16, f_21]
                  );
                  Heap := Heap[null, wand_2#sm():=newPMask];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access Q() (un_currying.vpr@23.7--23.20) [130142]"}
              b_1_1 && b_8 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Q()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_9 := b_1_1 && b_8;
              b_9 := b_9 && state(Result_3Heap, Result_3Mask);
              b_9 := b_9 && sumMask(Result_3Mask, Ops_1Mask, Used_4Mask);
              b_9 := (b_9 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_3Heap, Used_4Mask);
              b_9 := b_9 && state(Result_3Heap, Result_3Mask);
            b_1_1 := b_1_1 && b_9;
          b_1_1 := b_1_1 && b_8;
          b_1_1 := b_1_1 && Used_4Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_1_1 := b_1_1;
          Ops_1Mask := Ops_1Mask[null, R():=Ops_1Mask[null, R()] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(R(), write)
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(R(), write)
      neededTransfer := FullPerm;
      initNeededTransfer := Used_5Mask[null, R()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(R(), write) might be negative. (un_currying.vpr@21.3--24.4) [130144]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, R()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, R():=Used_5Mask[null, R()] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            TempMask := ZeroMask[null, R():=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Ops_1Heap, Used_5Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, R():=Ops_1Mask[null, R()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, R()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, R():=Used_5Mask[null, R()] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            TempMask := ZeroMask[null, R():=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
            Mask := Mask[null, R():=Mask[null, R()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand_2#sm()][o_52, f_55] || Heap[null, R#sm()][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand_2#sm():=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access R() (un_currying.vpr@21.3--24.4) [130145]"}
        (b_1_1 && b_1_1) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[null, R()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_1_1 && b_10;
        b_11 := b_11 && state(Result_4Heap, Result_4Mask);
        b_11 := b_11 && sumMask(Result_4Mask, Ops_1Mask, Used_5Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_4Heap, Used_5Mask);
        b_11 := b_11 && state(Result_4Heap, Result_4Mask);
      b_1_1 := b_1_1 && b_11;
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(), write) && acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@26.3--26.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs10 -- un_currying.vpr@26.10--26.22
          lhs10:
          Labellhs10Mask := WandDefLHSMask;
          Labellhs10Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (un_currying.vpr@26.10--26.22) [130146]"}
      FullPerm <= Mask[null, wand_2()];
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- un_currying.vpr@29.3--29.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (un_currying.vpr@29.10--29.15) [130147]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method curry
// ==================================================

procedure curry() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs11Mask: MaskType;
  var Labellhs11Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_13: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_12: bool;
  var Labellhs13Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var boolCur_1: bool;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_15: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var Labellhs15Mask: MaskType;
  var Labellhs15Heap: HeapType;
  var boolCur_2: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var Labellhs18Mask: MaskType;
  var Labellhs18Heap: HeapType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_17: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_18: bool;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_19: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_20: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_21: bool;
  var b_22: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_23: bool;
  var Labellhs19Mask: MaskType;
  var Labellhs19Heap: HeapType;
  var b_24_1: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var Labellhs20Mask: MaskType;
  var Labellhs20Heap: HeapType;
  var Labellhs21Mask: MaskType;
  var Labellhs21Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(), write) && acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@34.3--34.22
    
    // -- Check definedness of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs11 -- un_currying.vpr@34.10--34.22
          lhs11:
          Labellhs11Mask := WandDefLHSMask;
          Labellhs11Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(P(), write) --* acc(Q(), write) --* acc(R(), write) {
  //   package acc(Q(), write) --* acc(R(), write) {
  //     apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
  //   }
  // } -- un_currying.vpr@36.3--41.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_12 := b_12 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_13) {
      perm := FullPerm;
      b_13 := b_13;
      Ops_3Mask := Ops_3Mask[null, P():=Ops_3Mask[null, P()] + perm];
      b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
    }
    b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs13 -- un_currying.vpr@36.11--36.28
      lhs13:
      Labellhs13Mask := Ops_3Mask;
      Labellhs13Heap := Ops_3Heap;
      b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_13) {
      
      // -- Translating statement: package acc(Q(), write) --* acc(R(), write) {
  //   apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
  // } -- un_currying.vpr@37.7--39.8
        havoc Ops_5Heap;
        Ops_5Mask := ZeroMask;
        b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_14 := b_14 && state(Used_7Heap, Used_7Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_15) {
          perm := FullPerm;
          b_15 := b_15;
          Ops_5Mask := Ops_5Mask[null, Q():=Ops_5Mask[null, Q()] + perm];
          b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
        }
        b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
        
        // -- Translating statement: label lhs15 -- un_currying.vpr@37.16--37.23
          lhs15:
          Labellhs15Mask := Ops_5Mask;
          Labellhs15Heap := Ops_5Heap;
          b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
        boolCur_2 := true;
        if (b_15 && b_13) {
          
          // -- Translating statement: apply acc(P(), write) && acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@38.11--38.29
            
            // -- check if wand is held and remove an instance
              ExhaleWellDef0Mask := Ops_5Mask;
              ExhaleWellDef0Heap := Ops_5Heap;
              havoc Used_8Heap;
              Used_8Mask := ZeroMask;
              b_16 := b_16 && state(Used_8Heap, Used_8Mask);
              
              // -- Transfer of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
                
                // -- checking if access predicate defined in used state
                  if (b_15 && b_16) {
                    if (b_15) {
                      
                      // -- Check definedness of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
                        if (*) {
                          havoc WandDefLHSHeap;
                          WandDefLHSMask := ZeroMask;
                          perm := FullPerm;
                          WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          perm := FullPerm;
                          WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          
                          // -- Translating statement: label lhs18 -- un_currying.vpr@38.17--38.29
                            lhs18:
                            Labellhs18Mask := WandDefLHSMask;
                            Labellhs18Heap := WandDefLHSHeap;
                            assume state(WandDefLHSHeap, WandDefLHSMask);
                          havoc WandDefRHSHeap;
                          WandDefRHSMask := ZeroMask;
                          perm := FullPerm;
                          WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume false;
                        }
                    }
                  }
                neededTransfer := 1.000000000;
                initNeededTransfer := Used_8Mask[null, wand_2()] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction acc(P(), write) && acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@38.11--38.29) [130148]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_5Mask[null, wand_2()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_8Mask := Used_8Mask[null, wand_2():=Used_8Mask[null, wand_2()] + takeTransfer];
                      b_16 := b_16 && state(Used_8Heap, Used_8Mask);
                      Ops_5Mask := Ops_5Mask[null, wand_2():=Ops_5Mask[null, wand_2()] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_3Mask[null, wand_2()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_8Mask := Used_8Mask[null, wand_2():=Used_8Mask[null, wand_2()] + takeTransfer];
                      b_16 := b_16 && state(Used_8Heap, Used_8Mask);
                      Ops_3Mask := Ops_3Mask[null, wand_2():=Ops_3Mask[null, wand_2()] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_16) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Mask[null, wand_2()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_8Mask := Used_8Mask[null, wand_2():=Used_8Mask[null, wand_2()] + takeTransfer];
                      b_16 := b_16 && state(Used_8Heap, Used_8Mask);
                      Mask := Mask[null, wand_2():=Mask[null, wand_2()] - takeTransfer];
                    }
                  }
                assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@38.11--38.29) [130149]"}
                  b_15 && b_16 ==> neededTransfer == 0.000000000 && Used_8Mask[null, wand_2()] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_17 := b_15 && b_16;
                  b_17 := b_17 && state(Result_5Heap, Result_5Mask);
                  b_17 := b_17 && sumMask(Result_5Mask, Ops_5Mask, Used_8Mask);
                  b_17 := (b_17 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_5Heap, Used_8Mask);
                  b_17 := b_17 && state(Result_5Heap, Result_5Mask);
                b_15 := b_15 && b_17;
              b_15 := b_15 && b_16;
              b_15 := b_15 && Used_8Heap == Ops_5Heap;
            b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
            
            // -- check if LHS holds and remove permissions 
              ExhaleWellDef0Mask := Ops_5Mask;
              ExhaleWellDef0Heap := Ops_5Heap;
              havoc Used_9Heap;
              Used_9Mask := ZeroMask;
              b_18 := b_18 && state(Used_9Heap, Used_9Mask);
              
              // -- Transfer of acc(P(), write)
                neededTransfer := FullPerm;
                initNeededTransfer := Used_9Mask[null, P()] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction acc(P(), write) might be negative. (un_currying.vpr@38.11--38.29) [130150]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_18) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_5Mask[null, P()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_9Mask := Used_9Mask[null, P():=Used_9Mask[null, P()] + takeTransfer];
                      b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                      TempMask := ZeroMask[null, P():=FullPerm];
                      b_18 := b_18 && IdenticalOnKnownLocations(Ops_5Heap, Used_9Heap, TempMask);
                      Ops_5Mask := Ops_5Mask[null, P():=Ops_5Mask[null, P()] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_18) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_3Mask[null, P()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_9Mask := Used_9Mask[null, P():=Used_9Mask[null, P()] + takeTransfer];
                      b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                      TempMask := ZeroMask[null, P():=FullPerm];
                      b_18 := b_18 && IdenticalOnKnownLocations(Ops_3Heap, Used_9Heap, TempMask);
                      Ops_3Mask := Ops_3Mask[null, P():=Ops_3Mask[null, P()] - takeTransfer];
                      havoc newPMask;
                      assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
                        { newPMask[o_53, f_56] }
                        Ops_3Heap[null, wand_1#sm()][o_53, f_56] || Ops_3Heap[null, P#sm()][o_53, f_56] ==> newPMask[o_53, f_56]
                      );
                      Ops_3Heap := Ops_3Heap[null, wand_1#sm():=newPMask];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_18) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Mask[null, P()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_9Mask := Used_9Mask[null, P():=Used_9Mask[null, P()] + takeTransfer];
                      b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                      TempMask := ZeroMask[null, P():=FullPerm];
                      b_18 := b_18 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                      Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
                      havoc newPMask;
                      assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
                        { newPMask[o_26, f_29] }
                        Heap[null, wand_1#sm()][o_26, f_29] || Heap[null, P#sm()][o_26, f_29] ==> newPMask[o_26, f_29]
                      );
                      Heap := Heap[null, wand_1#sm():=newPMask];
                    }
                  }
                assert {:msg "  Applying wand might fail. There might be insufficient permission to access P() (un_currying.vpr@38.11--38.29) [130151]"}
                  b_15 && b_18 ==> neededTransfer == 0.000000000 && Used_9Mask[null, P()] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_19 := b_15 && b_18;
                  b_19 := b_19 && state(Result_6Heap, Result_6Mask);
                  b_19 := b_19 && sumMask(Result_6Mask, Ops_5Mask, Used_9Mask);
                  b_19 := (b_19 && IdenticalOnKnownLocations(Ops_5Heap, Result_6Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_6Heap, Used_9Mask);
                  b_19 := b_19 && state(Result_6Heap, Result_6Mask);
                b_15 := b_15 && b_19;
              b_15 := b_15 && b_18;
              b_15 := b_15 && Used_9Heap == Ops_5Heap;
              
              // -- Transfer of acc(Q(), write)
                neededTransfer := FullPerm;
                initNeededTransfer := Used_9Mask[null, Q()] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction acc(Q(), write) might be negative. (un_currying.vpr@38.11--38.29) [130152]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_18) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_5Mask[null, Q()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_9Mask := Used_9Mask[null, Q():=Used_9Mask[null, Q()] + takeTransfer];
                      b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                      TempMask := ZeroMask[null, Q():=FullPerm];
                      b_18 := b_18 && IdenticalOnKnownLocations(Ops_5Heap, Used_9Heap, TempMask);
                      Ops_5Mask := Ops_5Mask[null, Q():=Ops_5Mask[null, Q()] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_18) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_3Mask[null, Q()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_9Mask := Used_9Mask[null, Q():=Used_9Mask[null, Q()] + takeTransfer];
                      b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                      TempMask := ZeroMask[null, Q():=FullPerm];
                      b_18 := b_18 && IdenticalOnKnownLocations(Ops_3Heap, Used_9Heap, TempMask);
                      Ops_3Mask := Ops_3Mask[null, Q():=Ops_3Mask[null, Q()] - takeTransfer];
                      havoc newPMask;
                      assume (forall <A, B> o: Ref, f_85: (Field A B) ::
                        { newPMask[o, f_85] }
                        Ops_3Heap[null, wand_1#sm()][o, f_85] || Ops_3Heap[null, Q#sm()][o, f_85] ==> newPMask[o, f_85]
                      );
                      Ops_3Heap := Ops_3Heap[null, wand_1#sm():=newPMask];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_15 && b_18) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Mask[null, Q()];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_9Mask := Used_9Mask[null, Q():=Used_9Mask[null, Q()] + takeTransfer];
                      b_18 := b_18 && state(Used_9Heap, Used_9Mask);
                      TempMask := ZeroMask[null, Q():=FullPerm];
                      b_18 := b_18 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                      Mask := Mask[null, Q():=Mask[null, Q()] - takeTransfer];
                      havoc newPMask;
                      assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
                        { newPMask[o_11, f_3] }
                        Heap[null, wand_1#sm()][o_11, f_3] || Heap[null, Q#sm()][o_11, f_3] ==> newPMask[o_11, f_3]
                      );
                      Heap := Heap[null, wand_1#sm():=newPMask];
                    }
                  }
                assert {:msg "  Applying wand might fail. There might be insufficient permission to access Q() (un_currying.vpr@38.11--38.29) [130153]"}
                  b_15 && b_18 ==> neededTransfer == 0.000000000 && Used_9Mask[null, Q()] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_20 := b_15 && b_18;
                  b_20 := b_20 && state(Result_7Heap, Result_7Mask);
                  b_20 := b_20 && sumMask(Result_7Mask, Ops_5Mask, Used_9Mask);
                  b_20 := (b_20 && IdenticalOnKnownLocations(Ops_5Heap, Result_7Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_7Heap, Used_9Mask);
                  b_20 := b_20 && state(Result_7Heap, Result_7Mask);
                b_15 := b_15 && b_20;
              b_15 := b_15 && b_18;
              b_15 := b_15 && Used_9Heap == Ops_5Heap;
            b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
            
            // -- inhale the RHS of the wand
              perm := FullPerm;
              b_15 := b_15;
              Ops_5Mask := Ops_5Mask[null, R():=Ops_5Mask[null, R()] + perm];
              b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
              b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Ops_5Heap, ExhaleHeap, Ops_5Mask);
            Ops_5Heap := ExhaleHeap;
            b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
            b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
        }
        // Translating exec of non-ghost operationacc(R(), write)
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_21 := b_21 && state(Used_10Heap, Used_10Mask);
        
        // -- Transfer of acc(R(), write)
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[null, R()] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(R(), write) might be negative. (un_currying.vpr@37.7--39.8) [130155]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_15 && (b_15 && b_13)) && b_21) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[null, R()];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[null, R():=Used_10Mask[null, R()] + takeTransfer];
                b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                TempMask := ZeroMask[null, R():=FullPerm];
                b_21 := b_21 && IdenticalOnKnownLocations(Ops_5Heap, Used_10Heap, TempMask);
                Ops_5Mask := Ops_5Mask[null, R():=Ops_5Mask[null, R()] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_15 && (b_15 && b_13)) && b_21) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, R()];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[null, R():=Used_10Mask[null, R()] + takeTransfer];
                b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                TempMask := ZeroMask[null, R():=FullPerm];
                b_21 := b_21 && IdenticalOnKnownLocations(Ops_3Heap, Used_10Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, R():=Ops_3Mask[null, R()] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
                  { newPMask[o_35, f_17] }
                  Ops_3Heap[null, wand_1#sm()][o_35, f_17] || Ops_3Heap[null, R#sm()][o_35, f_17] ==> newPMask[o_35, f_17]
                );
                Ops_3Heap := Ops_3Heap[null, wand_1#sm():=newPMask];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_15 && (b_15 && b_13)) && b_21) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, R()];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[null, R():=Used_10Mask[null, R()] + takeTransfer];
                b_21 := b_21 && state(Used_10Heap, Used_10Mask);
                TempMask := ZeroMask[null, R():=FullPerm];
                b_21 := b_21 && IdenticalOnKnownLocations(Heap, Used_10Heap, TempMask);
                Mask := Mask[null, R():=Mask[null, R()] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
                  { newPMask[o_1, f_11] }
                  Heap[null, wand_1#sm()][o_1, f_11] || Heap[null, R#sm()][o_1, f_11] ==> newPMask[o_1, f_11]
                );
                Heap := Heap[null, wand_1#sm():=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access R() (un_currying.vpr@37.7--39.8) [130156]"}
            (b_15 && (b_15 && b_13)) && b_21 ==> neededTransfer == 0.000000000 && Used_10Mask[null, R()] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_22 := b_15 && b_21;
            b_22 := b_22 && state(Result_8Heap, Result_8Mask);
            b_22 := b_22 && sumMask(Result_8Mask, Ops_5Mask, Used_10Mask);
            b_22 := (b_22 && IdenticalOnKnownLocations(Ops_5Heap, Result_8Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_8Heap, Used_10Mask);
            b_22 := b_22 && state(Result_8Heap, Result_8Mask);
          b_15 := b_15 && b_22;
        Ops_3Mask := Ops_3Mask[null, wand_1():=Ops_3Mask[null, wand_1()] + FullPerm];
        b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
        b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
        b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(Q(), write) --* acc(R(), write)
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_23 := b_23 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(Q(), write) --* acc(R(), write)
      
      // -- checking if access predicate defined in used state
        if ((b_13 && b_13) && b_23) {
          if (b_13) {
            
            // -- Check definedness of acc(Q(), write) --* acc(R(), write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs19 -- un_currying.vpr@36.20--36.27
                  lhs19:
                  Labellhs19Mask := WandDefLHSMask;
                  Labellhs19Heap := WandDefLHSHeap;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                perm := FullPerm;
                WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_11Mask[null, wand_1()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@36.3--41.4) [130157]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, wand_1()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, wand_1():=Used_11Mask[null, wand_1()] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            Ops_3Mask := Ops_3Mask[null, wand_1():=Ops_3Mask[null, wand_1()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_13 && b_13) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_1()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, wand_1():=Used_11Mask[null, wand_1()] + takeTransfer];
            b_23 := b_23 && state(Used_11Heap, Used_11Mask);
            Mask := Mask[null, wand_1():=Mask[null, wand_1()] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (un_currying.vpr@36.3--41.4) [130158]"}
        (b_13 && b_13) && b_23 ==> neededTransfer == 0.000000000 && Used_11Mask[null, wand_1()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_24_1 := b_13 && b_23;
        b_24_1 := b_24_1 && state(Result_9Heap, Result_9Mask);
        b_24_1 := b_24_1 && sumMask(Result_9Mask, Ops_3Mask, Used_11Mask);
        b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_3Heap, Result_9Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_9Heap, Used_11Mask);
        b_24_1 := b_24_1 && state(Result_9Heap, Result_9Mask);
      b_13 := b_13 && b_24_1;
    Mask := Mask[null, wand():=Mask[null, wand()] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(), write) --* acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@43.3--43.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs20 -- un_currying.vpr@43.10--43.25
          lhs20:
          Labellhs20Mask := WandDefLHSMask;
          Labellhs20Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of acc(Q(), write) --* acc(R(), write)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs21 -- un_currying.vpr@43.17--43.24
              lhs21:
              Labellhs21Mask := WandDefLHSMask;
              Labellhs21Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand_1():=WandDefRHSMask[null, wand_1()] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (un_currying.vpr@43.10--43.25) [130159]"}
      FullPerm <= Mask[null, wand()];
    Mask := Mask[null, wand():=Mask[null, wand()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- un_currying.vpr@46.3--46.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (un_currying.vpr@46.10--46.15) [130160]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method curry_test01
// ==================================================

procedure curry_test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs22Mask: MaskType;
  var Labellhs22Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Labellhs23Mask: MaskType;
  var Labellhs23Heap: HeapType;
  var Labellhs24Mask: MaskType;
  var Labellhs24Heap: HeapType;
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
    
    // -- Check definedness of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs22 -- un_currying.vpr@53.12--53.47
          lhs22:
          Labellhs22Mask := WandDefLHSMask;
          Labellhs22Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] + FullPerm];
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
    
    // -- Check definedness of acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs23 -- un_currying.vpr@54.11--54.47
          lhs23:
          Labellhs23Mask := WandDefLHSMask;
          Labellhs23Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of acc(Q(), write) --* acc(R(), write)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs24 -- un_currying.vpr@54.25--54.46
              lhs24:
              Labellhs24Mask := WandDefLHSMask;
              Labellhs24Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand_1():=WandDefRHSMask[null, wand_1()] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand():=PostMask[null, wand()] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(P(), write) -- un_currying.vpr@56.3--56.18
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(P(), write) && acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@59.3--59.44
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@59.3--59.44) [130162]"}
        FullPerm <= Mask[null, wand_2()];
      Mask := Mask[null, wand_2():=Mask[null, wand_2()] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access P() (un_currying.vpr@59.3--59.44) [130164]"}
          perm <= Mask[null, P()];
      }
      Mask := Mask[null, P():=Mask[null, P()] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Q() (un_currying.vpr@59.3--59.44) [130166]"}
          perm <= Mask[null, Q()];
      }
      Mask := Mask[null, Q():=Mask[null, Q()] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, R():=Mask[null, R()] + perm];
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
    // permLe
    assert {:msg "  Postcondition of curry_test01 might not hold. Magic wand instance not found. (un_currying.vpr@54.11--54.47) [130168]"}
      FullPerm <= Mask[null, wand()];
    Mask := Mask[null, wand():=Mask[null, wand()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method curry_test02
// ==================================================

procedure curry_test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs26Mask: MaskType;
  var Labellhs26Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Labellhs27Mask: MaskType;
  var Labellhs27Heap: HeapType;
  var Labellhs28Mask: MaskType;
  var Labellhs28Heap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_26: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_25: bool;
  var Labellhs29Mask: MaskType;
  var Labellhs29Heap: HeapType;
  var boolCur_3: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_27: bool;
  var Labellhs32Mask: MaskType;
  var Labellhs32Heap: HeapType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_28: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_29: bool;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_30: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var b_31: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_32: bool;
  var b_33: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs26 -- un_currying.vpr@63.12--63.47
          lhs26:
          Labellhs26Mask := WandDefLHSMask;
          Labellhs26Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] + FullPerm];
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
    
    // -- Check definedness of acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs27 -- un_currying.vpr@66.11--66.47
          lhs27:
          Labellhs27Mask := WandDefLHSMask;
          Labellhs27Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of acc(Q(), write) --* acc(R(), write)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs28 -- un_currying.vpr@66.25--66.46
              lhs28:
              Labellhs28Mask := WandDefLHSMask;
              Labellhs28Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand_1():=WandDefRHSMask[null, wand_1()] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand():=PostMask[null, wand()] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(P(), write) -- un_currying.vpr@68.3--68.18
    perm := FullPerm;
    Mask := Mask[null, P():=Mask[null, P()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(Q(), write) --* acc(R(), write) {
  //   apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
  // } -- un_currying.vpr@70.3--72.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_25 := b_25 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_26) {
      perm := FullPerm;
      b_26 := b_26;
      Ops_7Mask := Ops_7Mask[null, Q():=Ops_7Mask[null, Q()] + perm];
      b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    }
    b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs29 -- un_currying.vpr@70.11--70.34
      lhs29:
      Labellhs29Mask := Ops_7Mask;
      Labellhs29Heap := Ops_7Heap;
      b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_26) {
      
      // -- Translating statement: apply acc(P(), write) && acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@71.7--71.48
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Mask := Ops_7Mask;
          ExhaleWellDef0Heap := Ops_7Heap;
          havoc Used_13Heap;
          Used_13Mask := ZeroMask;
          b_27 := b_27 && state(Used_13Heap, Used_13Mask);
          
          // -- Transfer of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
            
            // -- checking if access predicate defined in used state
              if (b_26 && b_27) {
                if (b_26) {
                  
                  // -- Check definedness of acc(P(), write) && acc(Q(), write) --* acc(R(), write)
                    if (*) {
                      havoc WandDefLHSHeap;
                      WandDefLHSMask := ZeroMask;
                      perm := FullPerm;
                      WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      perm := FullPerm;
                      WandDefLHSMask := WandDefLHSMask[null, Q():=WandDefLHSMask[null, Q()] + perm];
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                      
                      // -- Translating statement: label lhs32 -- un_currying.vpr@71.13--71.48
                        lhs32:
                        Labellhs32Mask := WandDefLHSMask;
                        Labellhs32Heap := WandDefLHSHeap;
                        assume state(WandDefLHSHeap, WandDefLHSMask);
                      havoc WandDefRHSHeap;
                      WandDefRHSMask := ZeroMask;
                      perm := FullPerm;
                      WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume state(WandDefRHSHeap, WandDefRHSMask);
                      assume false;
                    }
                }
              }
            neededTransfer := 1.000000000;
            initNeededTransfer := Used_13Mask[null, wand_2()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(P(), write) && acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@71.7--71.48) [130170]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_26 && b_27) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_7Mask[null, wand_2()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_13Mask := Used_13Mask[null, wand_2():=Used_13Mask[null, wand_2()] + takeTransfer];
                  b_27 := b_27 && state(Used_13Heap, Used_13Mask);
                  Ops_7Mask := Ops_7Mask[null, wand_2():=Ops_7Mask[null, wand_2()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_26 && b_27) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, wand_2()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_13Mask := Used_13Mask[null, wand_2():=Used_13Mask[null, wand_2()] + takeTransfer];
                  b_27 := b_27 && state(Used_13Heap, Used_13Mask);
                  Mask := Mask[null, wand_2():=Mask[null, wand_2()] - takeTransfer];
                }
              }
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@71.7--71.48) [130171]"}
              b_26 && b_27 ==> neededTransfer == 0.000000000 && Used_13Mask[null, wand_2()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_28 := b_26 && b_27;
              b_28 := b_28 && state(Result_10Heap, Result_10Mask);
              b_28 := b_28 && sumMask(Result_10Mask, Ops_7Mask, Used_13Mask);
              b_28 := (b_28 && IdenticalOnKnownLocations(Ops_7Heap, Result_10Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_13Heap, Result_10Heap, Used_13Mask);
              b_28 := b_28 && state(Result_10Heap, Result_10Mask);
            b_26 := b_26 && b_28;
          b_26 := b_26 && b_27;
          b_26 := b_26 && Used_13Heap == Ops_7Heap;
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Mask := Ops_7Mask;
          ExhaleWellDef0Heap := Ops_7Heap;
          havoc Used_14Heap;
          Used_14Mask := ZeroMask;
          b_29 := b_29 && state(Used_14Heap, Used_14Mask);
          
          // -- Transfer of acc(P(), write)
            neededTransfer := FullPerm;
            initNeededTransfer := Used_14Mask[null, P()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(P(), write) might be negative. (un_currying.vpr@71.7--71.48) [130172]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_26 && b_29) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_7Mask[null, P()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[null, P():=Used_14Mask[null, P()] + takeTransfer];
                  b_29 := b_29 && state(Used_14Heap, Used_14Mask);
                  TempMask := ZeroMask[null, P():=FullPerm];
                  b_29 := b_29 && IdenticalOnKnownLocations(Ops_7Heap, Used_14Heap, TempMask);
                  Ops_7Mask := Ops_7Mask[null, P():=Ops_7Mask[null, P()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_26 && b_29) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, P()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[null, P():=Used_14Mask[null, P()] + takeTransfer];
                  b_29 := b_29 && state(Used_14Heap, Used_14Mask);
                  TempMask := ZeroMask[null, P():=FullPerm];
                  b_29 := b_29 && IdenticalOnKnownLocations(Heap, Used_14Heap, TempMask);
                  Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
                    { newPMask[o_12, f_9] }
                    Heap[null, wand_1#sm()][o_12, f_9] || Heap[null, P#sm()][o_12, f_9] ==> newPMask[o_12, f_9]
                  );
                  Heap := Heap[null, wand_1#sm():=newPMask];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access P() (un_currying.vpr@71.7--71.48) [130173]"}
              b_26 && b_29 ==> neededTransfer == 0.000000000 && Used_14Mask[null, P()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_30 := b_26 && b_29;
              b_30 := b_30 && state(Result_11Heap, Result_11Mask);
              b_30 := b_30 && sumMask(Result_11Mask, Ops_7Mask, Used_14Mask);
              b_30 := (b_30 && IdenticalOnKnownLocations(Ops_7Heap, Result_11Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_11Heap, Used_14Mask);
              b_30 := b_30 && state(Result_11Heap, Result_11Mask);
            b_26 := b_26 && b_30;
          b_26 := b_26 && b_29;
          b_26 := b_26 && Used_14Heap == Ops_7Heap;
          
          // -- Transfer of acc(Q(), write)
            neededTransfer := FullPerm;
            initNeededTransfer := Used_14Mask[null, Q()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(Q(), write) might be negative. (un_currying.vpr@71.7--71.48) [130174]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_26 && b_29) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_7Mask[null, Q()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[null, Q():=Used_14Mask[null, Q()] + takeTransfer];
                  b_29 := b_29 && state(Used_14Heap, Used_14Mask);
                  TempMask := ZeroMask[null, Q():=FullPerm];
                  b_29 := b_29 && IdenticalOnKnownLocations(Ops_7Heap, Used_14Heap, TempMask);
                  Ops_7Mask := Ops_7Mask[null, Q():=Ops_7Mask[null, Q()] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_26 && b_29) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Q()];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[null, Q():=Used_14Mask[null, Q()] + takeTransfer];
                  b_29 := b_29 && state(Used_14Heap, Used_14Mask);
                  TempMask := ZeroMask[null, Q():=FullPerm];
                  b_29 := b_29 && IdenticalOnKnownLocations(Heap, Used_14Heap, TempMask);
                  Mask := Mask[null, Q():=Mask[null, Q()] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
                    { newPMask[o_22, f_24] }
                    Heap[null, wand_1#sm()][o_22, f_24] || Heap[null, Q#sm()][o_22, f_24] ==> newPMask[o_22, f_24]
                  );
                  Heap := Heap[null, wand_1#sm():=newPMask];
                }
              }
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access Q() (un_currying.vpr@71.7--71.48) [130175]"}
              b_26 && b_29 ==> neededTransfer == 0.000000000 && Used_14Mask[null, Q()] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_31 := b_26 && b_29;
              b_31 := b_31 && state(Result_12Heap, Result_12Mask);
              b_31 := b_31 && sumMask(Result_12Mask, Ops_7Mask, Used_14Mask);
              b_31 := (b_31 && IdenticalOnKnownLocations(Ops_7Heap, Result_12Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_12Heap, Used_14Mask);
              b_31 := b_31 && state(Result_12Heap, Result_12Mask);
            b_26 := b_26 && b_31;
          b_26 := b_26 && b_29;
          b_26 := b_26 && Used_14Heap == Ops_7Heap;
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          b_26 := b_26;
          Ops_7Mask := Ops_7Mask[null, R():=Ops_7Mask[null, R()] + perm];
          b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
          b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_7Heap, ExhaleHeap, Ops_7Mask);
        Ops_7Heap := ExhaleHeap;
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
        b_26 := b_26 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(R(), write)
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_32 := b_32 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(R(), write)
      neededTransfer := FullPerm;
      initNeededTransfer := Used_15Mask[null, R()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(R(), write) might be negative. (un_currying.vpr@70.3--72.4) [130177]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_32) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, R()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, R():=Used_15Mask[null, R()] + takeTransfer];
            b_32 := b_32 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, R():=FullPerm];
            b_32 := b_32 && IdenticalOnKnownLocations(Ops_7Heap, Used_15Heap, TempMask);
            Ops_7Mask := Ops_7Mask[null, R():=Ops_7Mask[null, R()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_26 && b_26) && b_32) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, R()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, R():=Used_15Mask[null, R()] + takeTransfer];
            b_32 := b_32 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, R():=FullPerm];
            b_32 := b_32 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
            Mask := Mask[null, R():=Mask[null, R()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
              { newPMask[o_3, f_12] }
              Heap[null, wand_1#sm()][o_3, f_12] || Heap[null, R#sm()][o_3, f_12] ==> newPMask[o_3, f_12]
            );
            Heap := Heap[null, wand_1#sm():=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access R() (un_currying.vpr@70.3--72.4) [130178]"}
        (b_26 && b_26) && b_32 ==> neededTransfer == 0.000000000 && Used_15Mask[null, R()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_33 := b_26 && b_32;
        b_33 := b_33 && state(Result_13Heap, Result_13Mask);
        b_33 := b_33 && sumMask(Result_13Mask, Ops_7Mask, Used_15Mask);
        b_33 := (b_33 && IdenticalOnKnownLocations(Ops_7Heap, Result_13Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_13Heap, Used_15Mask);
        b_33 := b_33 && state(Result_13Heap, Result_13Mask);
      b_26 := b_26 && b_33;
    Mask := Mask[null, wand_1():=Mask[null, wand_1()] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(), write) -- un_currying.vpr@75.3--75.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P() (un_currying.vpr@75.10--75.18) [130180]"}
        perm <= Mask[null, P()];
    }
    Mask := Mask[null, P():=Mask[null, P()] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    // permLe
    assert {:msg "  Postcondition of curry_test02 might not hold. Magic wand instance not found. (un_currying.vpr@66.11--66.47) [130181]"}
      FullPerm <= Mask[null, wand()];
    Mask := Mask[null, wand():=Mask[null, wand()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method curry_test03
// ==================================================

procedure curry_test03() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs33Mask: MaskType;
  var Labellhs33Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_35: bool;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_34: bool;
  var Labellhs34Mask: MaskType;
  var Labellhs34Heap: HeapType;
  var boolCur_4: bool;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_37: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_36: bool;
  var Labellhs36Mask: MaskType;
  var Labellhs36Heap: HeapType;
  var boolCur_5: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_38: bool;
  var Labellhs39Mask: MaskType;
  var Labellhs39Heap: HeapType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_39: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_40: bool;
  var ExhaleHeap: HeapType;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_41: bool;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_42: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var Used_21Heap: HeapType;
  var Used_21Mask: MaskType;
  var b_43: bool;
  var Labellhs40Mask: MaskType;
  var Labellhs40Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(R(), write) -- un_currying.vpr@79.3--79.11
    perm := FullPerm;
    Mask := Mask[null, R():=Mask[null, R()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale true --* acc(R(), write) -- un_currying.vpr@80.3--80.20
    
    // -- Check definedness of true --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs33 -- un_currying.vpr@80.10--80.20
          lhs33:
          Labellhs33Mask := WandDefLHSMask;
          Labellhs33Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_3(true):=Mask[null, wand_3(true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true {
  //   package true --* acc(R(), write) {
  //     apply true --* acc(R(), write)
  //   }
  // } -- un_currying.vpr@82.3--87.4
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_35 := b_35 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_16Heap;
    Used_16Mask := ZeroMask;
    b_34 := b_34 && state(Used_16Heap, Used_16Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_35) {
      b_35 := b_35;
    }
    b_35 := b_35 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs34 -- un_currying.vpr@82.11--82.26
      lhs34:
      Labellhs34Mask := Ops_9Mask;
      Labellhs34Heap := Ops_9Heap;
      b_35 := b_35 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_35) {
      
      // -- Translating statement: package true --* acc(R(), write) {
  //   apply true --* acc(R(), write)
  // } -- un_currying.vpr@83.7--85.8
        havoc Ops_11Heap;
        Ops_11Mask := ZeroMask;
        b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
        havoc Used_17Heap;
        Used_17Mask := ZeroMask;
        b_36 := b_36 && state(Used_17Heap, Used_17Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_37) {
          b_37 := b_37;
        }
        b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
        
        // -- Translating statement: label lhs36 -- un_currying.vpr@83.16--83.26
          lhs36:
          Labellhs36Mask := Ops_11Mask;
          Labellhs36Heap := Ops_11Heap;
          b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
        boolCur_5 := true;
        if (b_37 && b_35) {
          
          // -- Translating statement: apply true --* acc(R(), write) -- un_currying.vpr@84.11--84.27
            
            // -- check if wand is held and remove an instance
              ExhaleWellDef0Mask := Ops_11Mask;
              ExhaleWellDef0Heap := Ops_11Heap;
              havoc Used_18Heap;
              Used_18Mask := ZeroMask;
              b_38 := b_38 && state(Used_18Heap, Used_18Mask);
              
              // -- Transfer of true --* acc(R(), write)
                
                // -- checking if access predicate defined in used state
                  if (b_37 && b_38) {
                    if (b_37) {
                      
                      // -- Check definedness of true --* acc(R(), write)
                        if (*) {
                          havoc WandDefLHSHeap;
                          WandDefLHSMask := ZeroMask;
                          assume state(WandDefLHSHeap, WandDefLHSMask);
                          
                          // -- Translating statement: label lhs39 -- un_currying.vpr@84.17--84.27
                            lhs39:
                            Labellhs39Mask := WandDefLHSMask;
                            Labellhs39Heap := WandDefLHSHeap;
                            assume state(WandDefLHSHeap, WandDefLHSMask);
                          havoc WandDefRHSHeap;
                          WandDefRHSMask := ZeroMask;
                          perm := FullPerm;
                          WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume state(WandDefRHSHeap, WandDefRHSMask);
                          assume false;
                        }
                    }
                  }
                neededTransfer := 1.000000000;
                initNeededTransfer := Used_18Mask[null, wand_3(true)] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction true --* acc(R(), write) might be negative. (un_currying.vpr@84.11--84.27) [130183]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_37 && b_38) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_11Mask[null, wand_3(true)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_18Mask := Used_18Mask[null, wand_3(true):=Used_18Mask[null, wand_3(true)] + takeTransfer];
                      b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                      Ops_11Mask := Ops_11Mask[null, wand_3(true):=Ops_11Mask[null, wand_3(true)] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_37 && b_38) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_9Mask[null, wand_3(true)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_18Mask := Used_18Mask[null, wand_3(true):=Used_18Mask[null, wand_3(true)] + takeTransfer];
                      b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                      Ops_9Mask := Ops_9Mask[null, wand_3(true):=Ops_9Mask[null, wand_3(true)] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_37 && b_38) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Mask[null, wand_3(true)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_18Mask := Used_18Mask[null, wand_3(true):=Used_18Mask[null, wand_3(true)] + takeTransfer];
                      b_38 := b_38 && state(Used_18Heap, Used_18Mask);
                      Mask := Mask[null, wand_3(true):=Mask[null, wand_3(true)] - takeTransfer];
                    }
                  }
                assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@84.11--84.27) [130184]"}
                  b_37 && b_38 ==> neededTransfer == 0.000000000 && Used_18Mask[null, wand_3(true)] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_39 := b_37 && b_38;
                  b_39 := b_39 && state(Result_14Heap, Result_14Mask);
                  b_39 := b_39 && sumMask(Result_14Mask, Ops_11Mask, Used_18Mask);
                  b_39 := (b_39 && IdenticalOnKnownLocations(Ops_11Heap, Result_14Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_18Heap, Result_14Heap, Used_18Mask);
                  b_39 := b_39 && state(Result_14Heap, Result_14Mask);
                b_37 := b_37 && b_39;
              b_37 := b_37 && b_38;
              b_37 := b_37 && Used_18Heap == Ops_11Heap;
            b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
            
            // -- check if LHS holds and remove permissions 
              ExhaleWellDef0Mask := Ops_11Mask;
              ExhaleWellDef0Heap := Ops_11Heap;
              havoc Used_19Heap;
              Used_19Mask := ZeroMask;
              b_40 := b_40 && state(Used_19Heap, Used_19Mask);
              b_37 := b_37 && b_40;
              b_37 := b_37 && Used_19Heap == Ops_11Heap;
            b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
            
            // -- inhale the RHS of the wand
              perm := FullPerm;
              b_37 := b_37;
              Ops_11Mask := Ops_11Mask[null, R():=Ops_11Mask[null, R()] + perm];
              b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
              b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Ops_11Heap, ExhaleHeap, Ops_11Mask);
            Ops_11Heap := ExhaleHeap;
            b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
            b_37 := b_37 && state(Ops_11Heap, Ops_11Mask);
        }
        // Translating exec of non-ghost operationacc(R(), write)
        havoc Used_20Heap;
        Used_20Mask := ZeroMask;
        b_41 := b_41 && state(Used_20Heap, Used_20Mask);
        
        // -- Transfer of acc(R(), write)
          neededTransfer := FullPerm;
          initNeededTransfer := Used_20Mask[null, R()] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(R(), write) might be negative. (un_currying.vpr@83.7--85.8) [130187]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_37 && (b_37 && b_35)) && b_41) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_11Mask[null, R()];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_20Mask := Used_20Mask[null, R():=Used_20Mask[null, R()] + takeTransfer];
                b_41 := b_41 && state(Used_20Heap, Used_20Mask);
                TempMask := ZeroMask[null, R():=FullPerm];
                b_41 := b_41 && IdenticalOnKnownLocations(Ops_11Heap, Used_20Heap, TempMask);
                Ops_11Mask := Ops_11Mask[null, R():=Ops_11Mask[null, R()] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_37 && (b_37 && b_35)) && b_41) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[null, R()];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_20Mask := Used_20Mask[null, R():=Used_20Mask[null, R()] + takeTransfer];
                b_41 := b_41 && state(Used_20Heap, Used_20Mask);
                TempMask := ZeroMask[null, R():=FullPerm];
                b_41 := b_41 && IdenticalOnKnownLocations(Ops_9Heap, Used_20Heap, TempMask);
                Ops_9Mask := Ops_9Mask[null, R():=Ops_9Mask[null, R()] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
                  { newPMask[o_46, f_35] }
                  Ops_9Heap[null, wand_3#sm(true)][o_46, f_35] || Ops_9Heap[null, R#sm()][o_46, f_35] ==> newPMask[o_46, f_35]
                );
                Ops_9Heap := Ops_9Heap[null, wand_3#sm(true):=newPMask];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_37 && (b_37 && b_35)) && b_41) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, R()];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_20Mask := Used_20Mask[null, R():=Used_20Mask[null, R()] + takeTransfer];
                b_41 := b_41 && state(Used_20Heap, Used_20Mask);
                TempMask := ZeroMask[null, R():=FullPerm];
                b_41 := b_41 && IdenticalOnKnownLocations(Heap, Used_20Heap, TempMask);
                Mask := Mask[null, R():=Mask[null, R()] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
                  { newPMask[o_41, f_25] }
                  Heap[null, wand_3#sm(true)][o_41, f_25] || Heap[null, R#sm()][o_41, f_25] ==> newPMask[o_41, f_25]
                );
                Heap := Heap[null, wand_3#sm(true):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access R() (un_currying.vpr@83.7--85.8) [130188]"}
            (b_37 && (b_37 && b_35)) && b_41 ==> neededTransfer == 0.000000000 && Used_20Mask[null, R()] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_42 := b_37 && b_41;
            b_42 := b_42 && state(Result_15Heap, Result_15Mask);
            b_42 := b_42 && sumMask(Result_15Mask, Ops_11Mask, Used_20Mask);
            b_42 := (b_42 && IdenticalOnKnownLocations(Ops_11Heap, Result_15Heap, Ops_11Mask)) && IdenticalOnKnownLocations(Used_20Heap, Result_15Heap, Used_20Mask);
            b_42 := b_42 && state(Result_15Heap, Result_15Mask);
          b_37 := b_37 && b_42;
        Ops_9Mask := Ops_9Mask[null, wand_3(true):=Ops_9Mask[null, wand_3(true)] + FullPerm];
        b_35 := b_35 && state(Ops_9Heap, Ops_9Mask);
        b_35 := b_35 && state(Ops_9Heap, Ops_9Mask);
        b_35 := b_35 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_21Heap;
    Used_21Mask := ZeroMask;
    b_43 := b_43 && state(Used_21Heap, Used_21Mask);
    Mask := Mask[null, wand_4(true, true):=Mask[null, wand_4(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale true --* true -- un_currying.vpr@89.3--89.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of true --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs40 -- un_currying.vpr@89.10--89.23
          lhs40:
          Labellhs40Mask := WandDefLHSMask;
          Labellhs40Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (un_currying.vpr@89.10--89.23) [130190]"}
      FullPerm <= Mask[null, wand_4(true, true)];
    Mask := Mask[null, wand_4(true, true):=Mask[null, wand_4(true, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(R(), write) -- un_currying.vpr@90.3--90.11
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access R() (un_currying.vpr@90.10--90.11) [130192]"}
        perm <= Mask[null, R()];
    }
    Mask := Mask[null, R():=Mask[null, R()] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- un_currying.vpr@93.3--93.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (un_currying.vpr@93.10--93.15) [130193]"}
      false;
    assume state(Heap, Mask);
}