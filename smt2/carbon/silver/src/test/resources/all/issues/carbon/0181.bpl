// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:27:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0181.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0181-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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

// Function heights (higher height means its body is available earlier):
// - height 1: req
// - height 0: actual
const AssumeFunctionsAbove: int;
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
// Translation of function req
// ==================================================

// Uninterpreted function definitions
function  req(Heap: HeapType, r_1: Ref): bool;
function  req'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { req(Heap, r_1) }
  req(Heap, r_1) == req'(Heap, r_1) && dummyFunction(req#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { req'(Heap, r_1) }
  dummyFunction(req#triggerStateless(r_1))
);

// Framing axioms
function  req#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), req'(Heap, r_1) }
  state(Heap, Mask) ==> req'(Heap, r_1) == req#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  req#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  req#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure req#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of function actual
// ==================================================

// Uninterpreted function definitions
function  actual(Heap: HeapType, r_1: Ref): int;
function  actual'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { actual(Heap, r_1) }
  actual(Heap, r_1) == actual'(Heap, r_1) && dummyFunction(actual#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { actual'(Heap, r_1) }
  dummyFunction(actual#triggerStateless(r_1))
);

// Framing axioms
function  actual#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), actual'(Heap, r_1) }
  state(Heap, Mask) ==> actual'(Heap, r_1) == actual#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  actual#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  actual#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure actual#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of req(r)
      if (*) {
        // Stop execution
        assume false;
      }
    assume req(Heap, r_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate outer
// ==================================================

type PredicateType_outer;
function  outer(r_1: Ref): Field PredicateType_outer FrameType;
function  outer#sm(r_1: Ref): Field PredicateType_outer PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(outer(r_1)) }
  PredicateMaskField(outer(r_1)) == outer#sm(r_1)
);
axiom (forall r_1: Ref ::
  { outer(r_1) }
  IsPredicateField(outer(r_1))
);
axiom (forall r_1: Ref ::
  { outer(r_1) }
  getPredWandId(outer(r_1)) == 0
);
function  outer#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  outer#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { outer(r_1), outer(r2) }
  outer(r_1) == outer(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { outer#sm(r_1), outer#sm(r2) }
  outer#sm(r_1) == outer#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { outer#trigger(Heap, outer(r_1)) }
  outer#everUsed(outer(r_1))
);

procedure outer#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of outer
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    Mask := Mask[null, inner(r_1):=Mask[null, inner(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate inner
// ==================================================

type PredicateType_inner;
function  inner(r_1: Ref): Field PredicateType_inner FrameType;
function  inner#sm(r_1: Ref): Field PredicateType_inner PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(inner(r_1)) }
  PredicateMaskField(inner(r_1)) == inner#sm(r_1)
);
axiom (forall r_1: Ref ::
  { inner(r_1) }
  IsPredicateField(inner(r_1))
);
axiom (forall r_1: Ref ::
  { inner(r_1) }
  getPredWandId(inner(r_1)) == 1
);
function  inner#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  inner#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { inner(r_1), inner(r2) }
  inner(r_1) == inner(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { inner#sm(r_1), inner#sm(r2) }
  inner#sm(r_1) == inner#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { inner#trigger(Heap, inner(r_1)) }
  inner#everUsed(inner(r_1))
);

procedure inner#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of inner
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m
// ==================================================

procedure m(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, outer(r_1):=Mask[null, outer(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(outer(r), 1 / 2) in req(r))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume outer#trigger(UnfoldingHeap, outer(r_1));
      assume UnfoldingHeap[null, outer(r_1)] == UnfoldingHeap[null, inner(r_1)];
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0181.vpr@14.14--14.52) [194297]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access outer(r) (0181.vpr@14.14--14.52) [194298]"}
          perm <= UnfoldingMask[null, outer(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, outer(r_1):=UnfoldingMask[null, outer(r_1)] - perm];
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0181.vpr@14.14--14.52) [194299]"}
        perm >= NoPerm;
      UnfoldingMask := UnfoldingMask[null, inner(r_1):=UnfoldingMask[null, inner(r_1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(outer(r_1), UnfoldingHeap[null, outer(r_1)], inner(r_1), UnfoldingHeap[null, inner(r_1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
          { newPMask[o_15, f_20] }
          Heap[null, outer#sm(r_1)][o_15, f_20] || Heap[null, inner#sm(r_1)][o_15, f_20] ==> newPMask[o_15, f_20]
        );
        Heap := Heap[null, outer#sm(r_1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume outer#trigger(UnfoldingHeap, outer(r_1));
      assume UnfoldingHeap[null, outer(r_1)] == UnfoldingHeap[null, inner(r_1)];
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      UnfoldingMask := UnfoldingMask[null, outer(r_1):=UnfoldingMask[null, outer(r_1)] - perm];
      perm := 1 / 2;
      UnfoldingMask := UnfoldingMask[null, inner(r_1):=UnfoldingMask[null, inner(r_1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(outer(r_1), UnfoldingHeap[null, outer(r_1)], inner(r_1), UnfoldingHeap[null, inner(r_1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume req(Heap, r_1);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(outer(r), 1 / 2) -- 0181.vpr@16.5--16.30
    assume outer#trigger(Heap, outer(r_1));
    assume Heap[null, outer(r_1)] == Heap[null, inner(r_1)];
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Unfolding outer(r) might fail. Fraction 1 / 2 might be negative. (0181.vpr@16.5--16.30) [194301]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding outer(r) might fail. There might be insufficient permission to access outer(r) (0181.vpr@16.5--16.30) [194302]"}
        perm <= Mask[null, outer(r_1)];
    }
    Mask := Mask[null, outer(r_1):=Mask[null, outer(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, outer(r_1))) {
        havoc newVersion;
        Heap := Heap[null, outer(r_1):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding outer(r) might fail. Fraction 1 / 2 might be negative. (0181.vpr@16.5--16.30) [194303]"}
      perm >= NoPerm;
    Mask := Mask[null, inner(r_1):=Mask[null, inner(r_1)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(outer(r_1), Heap[null, outer(r_1)], inner(r_1), Heap[null, inner(r_1)]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: i := actual(r) -- 0181.vpr@17.5--17.28
    
    // -- Check definedness of actual(r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function actual might not hold. Assertion req(r) might not hold. (0181.vpr@17.19--17.28) [194304]"}
          req(Heap, r_1);
        // Stop execution
        assume false;
      }
    i := actual(Heap, r_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  var i: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, outer(r_1):=Mask[null, outer(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(outer(r), write) in req(r))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume outer#trigger(UnfoldingHeap, outer(r_1));
      assume UnfoldingHeap[null, outer(r_1)] == UnfoldingHeap[null, inner(r_1)];
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access outer(r) (0181.vpr@22.14--22.47) [194305]"}
          perm <= UnfoldingMask[null, outer(r_1)];
      }
      UnfoldingMask := UnfoldingMask[null, outer(r_1):=UnfoldingMask[null, outer(r_1)] - perm];
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, inner(r_1):=UnfoldingMask[null, inner(r_1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(outer(r_1), UnfoldingHeap[null, outer(r_1)], inner(r_1), UnfoldingHeap[null, inner(r_1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          Heap[null, outer#sm(r_1)][o_16, f_21] || Heap[null, inner#sm(r_1)][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        Heap := Heap[null, outer#sm(r_1):=newPMask];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume outer#trigger(UnfoldingHeap, outer(r_1));
      assume UnfoldingHeap[null, outer(r_1)] == UnfoldingHeap[null, inner(r_1)];
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, outer(r_1):=UnfoldingMask[null, outer(r_1)] - perm];
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, inner(r_1):=UnfoldingMask[null, inner(r_1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(outer(r_1), UnfoldingHeap[null, outer(r_1)], inner(r_1), UnfoldingHeap[null, inner(r_1)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume req(Heap, r_1);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(outer(r), 1 / 2) -- 0181.vpr@24.5--24.30
    assume outer#trigger(Heap, outer(r_1));
    assume Heap[null, outer(r_1)] == Heap[null, inner(r_1)];
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Unfolding outer(r) might fail. Fraction 1 / 2 might be negative. (0181.vpr@24.5--24.30) [194307]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding outer(r) might fail. There might be insufficient permission to access outer(r) (0181.vpr@24.5--24.30) [194308]"}
        perm <= Mask[null, outer(r_1)];
    }
    Mask := Mask[null, outer(r_1):=Mask[null, outer(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, outer(r_1))) {
        havoc newVersion;
        Heap := Heap[null, outer(r_1):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding outer(r) might fail. Fraction 1 / 2 might be negative. (0181.vpr@24.5--24.30) [194309]"}
      perm >= NoPerm;
    Mask := Mask[null, inner(r_1):=Mask[null, inner(r_1)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(outer(r_1), Heap[null, outer(r_1)], inner(r_1), Heap[null, inner(r_1)]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: i := actual(r) -- 0181.vpr@25.5--25.28
    
    // -- Check definedness of actual(r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function actual might not hold. Assertion req(r) might not hold. (0181.vpr@25.19--25.28) [194310]"}
          req(Heap, r_1);
        // Stop execution
        assume false;
      }
    i := actual(Heap, r_1);
    assume state(Heap, Mask);
}