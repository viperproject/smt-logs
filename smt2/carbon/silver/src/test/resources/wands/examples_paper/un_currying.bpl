// 
// Translation of Viper program.
// 
// Date:         2025-01-04 00:53:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_paper/un_currying.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_paper/un_currying-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_34: Ref, f_40: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_34, f_40] }
  Heap[o_34, $allocated] ==> Heap[Heap[o_34, f_40], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_18) ==> Heap[o_13, f_18] == ExhaleHeap[o_13, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12), ExhaleHeap[null, PredicateMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> Heap[null, PredicateMaskField(pm_f_12)] == ExhaleHeap[null, PredicateMaskField(pm_f_12)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, PredicateMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12), ExhaleHeap[null, WandMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> Heap[null, WandMaskField(pm_f_12)] == ExhaleHeap[null, WandMaskField(pm_f_12)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, WandMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_34: Ref, f_36: (Field A B), v: B ::
  { Heap[o_34, f_36:=v] }
  succHeap(Heap, Heap[o_34, f_36:=v])
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
function  wand(): Field WandType_wand int;
function  wand#sm(): Field WandType_wand PMaskType;
function  wand#ft(): Field WandType_wand FrameType;
axiom IsWandField(wand());
axiom IsWandField(wand#ft());
axiom !IsPredicateField(wand());
axiom !IsPredicateField(wand#ft());
axiom wand#sm() == WandMaskField(wand#ft());
axiom getPredWandId(wand()) == 3;
axiom true;
type WandType_wand_1;
function  wand_1(): Field WandType_wand_1 int;
function  wand_1#sm(): Field WandType_wand_1 PMaskType;
function  wand_1#ft(): Field WandType_wand_1 FrameType;
axiom IsWandField(wand_1());
axiom IsWandField(wand_1#ft());
axiom !IsPredicateField(wand_1());
axiom !IsPredicateField(wand_1#ft());
axiom wand_1#sm() == WandMaskField(wand_1#ft());
axiom getPredWandId(wand_1()) == 4;
axiom true;
type WandType_wand_2;
function  wand_2(): Field WandType_wand_2 int;
function  wand_2#sm(): Field WandType_wand_2 PMaskType;
function  wand_2#ft(): Field WandType_wand_2 FrameType;
axiom IsWandField(wand_2());
axiom IsWandField(wand_2#ft());
axiom !IsPredicateField(wand_2());
axiom !IsPredicateField(wand_2#ft());
axiom wand_2#sm() == WandMaskField(wand_2#ft());
axiom getPredWandId(wand_2()) == 5;
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

// ==================================================
// Translation of method uncurry
// ==================================================

procedure uncurry() returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
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
  var Labellhs10Heap: HeapType;
  var Labellhs10Mask: MaskType;
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P():=WandDefLHSMask[null, P()] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- un_currying.vpr@42.12--42.27
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
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
            
            // -- Translating statement: label lhs2 -- un_currying.vpr@42.19--42.26
              lhs2:
              Labellhs2Heap := WandDefLHSHeap;
              Labellhs2Mask := WandDefLHSMask;
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
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
        
        // -- Translating statement: label lhs3 -- un_currying.vpr@43.11--43.23
          lhs3:
          Labellhs3Heap := WandDefLHSHeap;
          Labellhs3Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, R():=WandDefRHSMask[null, R()] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand_2():=PostMask[null, wand_2()] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(P(), write) && acc(Q(), write) --* acc(R(), write) {
  //   apply acc(P(), write) --* acc(Q(), write) --* acc(R(), write)
  //   apply acc(Q(), write) --* acc(R(), write)
  // } -- un_currying.vpr@45.3--48.4
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
    
    // -- Translating statement: label lhs4 -- un_currying.vpr@45.11--45.25
      lhs4:
      Labellhs4Heap := Ops_1Heap;
      Labellhs4Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: apply acc(P(), write) --* acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@46.7--46.28
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_1Heap;
          ExhaleWellDef0Mask := Ops_1Mask;
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
                      
                      // -- Translating statement: label lhs7 -- un_currying.vpr@46.13--46.28
                        lhs7:
                        Labellhs7Heap := WandDefLHSHeap;
                        Labellhs7Mask := WandDefLHSMask;
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
                          
                          // -- Translating statement: label lhs8 -- un_currying.vpr@46.20--46.27
                            lhs8:
                            Labellhs8Heap := WandDefLHSHeap;
                            Labellhs8Mask := WandDefLHSMask;
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
            assert {:msg "  Applying wand might fail. Fraction acc(P(), write) --* acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@46.7--46.28) [121357]"}
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
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@46.7--46.28) [121358]"}
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
          ExhaleWellDef0Heap := Ops_1Heap;
          ExhaleWellDef0Mask := Ops_1Mask;
          havoc Used_2Heap;
          Used_2Mask := ZeroMask;
          b_4 := b_4 && state(Used_2Heap, Used_2Mask);
          
          // -- Transfer of acc(P(), write)
            neededTransfer := FullPerm;
            initNeededTransfer := Used_2Mask[null, P()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(P(), write) might be negative. (un_currying.vpr@46.7--46.28) [121359]"}
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
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access P() (un_currying.vpr@46.7--46.28) [121360]"}
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
      
      // -- Translating statement: apply acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@47.7--47.20
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Ops_1Heap;
          ExhaleWellDef0Mask := Ops_1Mask;
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
                      
                      // -- Translating statement: label lhs10 -- un_currying.vpr@47.13--47.20
                        lhs10:
                        Labellhs10Heap := WandDefLHSHeap;
                        Labellhs10Mask := WandDefLHSMask;
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
            assert {:msg "  Applying wand might fail. Fraction acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@47.7--47.20) [121361]"}
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
            assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@47.7--47.20) [121362]"}
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
          ExhaleWellDef0Heap := Ops_1Heap;
          ExhaleWellDef0Mask := Ops_1Mask;
          havoc Used_4Heap;
          Used_4Mask := ZeroMask;
          b_8 := b_8 && state(Used_4Heap, Used_4Mask);
          
          // -- Transfer of acc(Q(), write)
            neededTransfer := FullPerm;
            initNeededTransfer := Used_4Mask[null, Q()] + neededTransfer;
            assert {:msg "  Applying wand might fail. Fraction acc(Q(), write) might be negative. (un_currying.vpr@47.7--47.20) [121363]"}
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
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access Q() (un_currying.vpr@47.7--47.20) [121364]"}
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
      assert {:msg "  Packaging wand might fail. Fraction acc(R(), write) might be negative. (un_currying.vpr@45.3--48.4) [121366]"}
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
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access R() (un_currying.vpr@45.3--48.4) [121367]"}
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
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    // permLe
    assert {:msg "  Postcondition of uncurry might not hold. Magic wand instance not found. (un_currying.vpr@43.11--43.23) [121368]"}
      FullPerm <= Mask[null, wand_2()];
    Mask := Mask[null, wand_2():=Mask[null, wand_2()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method curry
// ==================================================

procedure curry() returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Labellhs12Heap: HeapType;
  var Labellhs12Mask: MaskType;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_13: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_12: bool;
  var Labellhs15Heap: HeapType;
  var Labellhs15Mask: MaskType;
  var boolCur_1: bool;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_15: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var Labellhs17Heap: HeapType;
  var Labellhs17Mask: MaskType;
  var boolCur_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var Labellhs20Heap: HeapType;
  var Labellhs20Mask: MaskType;
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
  var Labellhs21Heap: HeapType;
  var Labellhs21Mask: MaskType;
  var b_24_1: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
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
        
        // -- Translating statement: label lhs11 -- un_currying.vpr@53.12--53.24
          lhs11:
          Labellhs11Heap := WandDefLHSHeap;
          Labellhs11Mask := WandDefLHSMask;
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
      oldHeap := Heap;
      oldMask := Mask;
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
        
        // -- Translating statement: label lhs12 -- un_currying.vpr@54.11--54.26
          lhs12:
          Labellhs12Heap := WandDefLHSHeap;
          Labellhs12Mask := WandDefLHSMask;
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
            
            // -- Translating statement: label lhs13 -- un_currying.vpr@54.18--54.25
              lhs13:
              Labellhs13Heap := WandDefLHSHeap;
              Labellhs13Mask := WandDefLHSMask;
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
  
  // -- Translating statement: package acc(P(), write) --* acc(Q(), write) --* acc(R(), write) {
  //   package acc(Q(), write) --* acc(R(), write) {
  //     apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
  //   }
  // } -- un_currying.vpr@56.3--61.4
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
    
    // -- Translating statement: label lhs15 -- un_currying.vpr@56.11--56.26
      lhs15:
      Labellhs15Heap := Ops_3Heap;
      Labellhs15Mask := Ops_3Mask;
      b_13 := b_13 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_13) {
      
      // -- Translating statement: package acc(Q(), write) --* acc(R(), write) {
  //   apply acc(P(), write) && acc(Q(), write) --* acc(R(), write)
  // } -- un_currying.vpr@57.7--59.8
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
        
        // -- Translating statement: label lhs17 -- un_currying.vpr@57.16--57.23
          lhs17:
          Labellhs17Heap := Ops_5Heap;
          Labellhs17Mask := Ops_5Mask;
          b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
        boolCur_2 := true;
        if (b_15 && b_13) {
          
          // -- Translating statement: apply acc(P(), write) && acc(Q(), write) --* acc(R(), write) -- un_currying.vpr@58.11--58.29
            
            // -- check if wand is held and remove an instance
              ExhaleWellDef0Heap := Ops_5Heap;
              ExhaleWellDef0Mask := Ops_5Mask;
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
                          
                          // -- Translating statement: label lhs20 -- un_currying.vpr@58.17--58.29
                            lhs20:
                            Labellhs20Heap := WandDefLHSHeap;
                            Labellhs20Mask := WandDefLHSMask;
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
                assert {:msg "  Applying wand might fail. Fraction acc(P(), write) && acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@58.11--58.29) [121369]"}
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
                assert {:msg "  Applying wand might fail. Magic wand instance not found. (un_currying.vpr@58.11--58.29) [121370]"}
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
              ExhaleWellDef0Heap := Ops_5Heap;
              ExhaleWellDef0Mask := Ops_5Mask;
              havoc Used_9Heap;
              Used_9Mask := ZeroMask;
              b_18 := b_18 && state(Used_9Heap, Used_9Mask);
              
              // -- Transfer of acc(P(), write)
                neededTransfer := FullPerm;
                initNeededTransfer := Used_9Mask[null, P()] + neededTransfer;
                assert {:msg "  Applying wand might fail. Fraction acc(P(), write) might be negative. (un_currying.vpr@58.11--58.29) [121371]"}
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
                assert {:msg "  Applying wand might fail. There might be insufficient permission to access P() (un_currying.vpr@58.11--58.29) [121372]"}
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
                assert {:msg "  Applying wand might fail. Fraction acc(Q(), write) might be negative. (un_currying.vpr@58.11--58.29) [121373]"}
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
                assert {:msg "  Applying wand might fail. There might be insufficient permission to access Q() (un_currying.vpr@58.11--58.29) [121374]"}
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
          assert {:msg "  Packaging wand might fail. Fraction acc(R(), write) might be negative. (un_currying.vpr@57.7--59.8) [121376]"}
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
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access R() (un_currying.vpr@57.7--59.8) [121377]"}
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
                
                // -- Translating statement: label lhs21 -- un_currying.vpr@56.19--56.26
                  lhs21:
                  Labellhs21Heap := WandDefLHSHeap;
                  Labellhs21Mask := WandDefLHSMask;
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
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(), write) --* acc(R(), write) might be negative. (un_currying.vpr@56.3--61.4) [121378]"}
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
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (un_currying.vpr@56.3--61.4) [121379]"}
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
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    // permLe
    assert {:msg "  Postcondition of curry might not hold. Magic wand instance not found. (un_currying.vpr@54.11--54.26) [121380]"}
      FullPerm <= Mask[null, wand()];
    Mask := Mask[null, wand():=Mask[null, wand()] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}