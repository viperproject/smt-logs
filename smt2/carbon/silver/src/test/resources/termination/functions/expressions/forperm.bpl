// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:57:00
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/forperm.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/forperm-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

// Function heights (higher height means its body is available earlier):
// - height 2: nonTerminating
// - height 1: test
// - height 0: test2
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
// Translation of domain WellFoundedOrder
// ==================================================

// The type for domain WellFoundedOrder
type WellFoundedOrderDomainType T;

// Translation of domain function decreasing
function  decreasing<T>(arg1_1: T, arg2_1: T): bool;

// Translation of domain function bounded
function  bounded<T>(arg1_1: T): bool;

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function test
// ==================================================

// Uninterpreted function definitions
function  test_2(Heap: HeapType, x: Ref): bool;
function  test'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { test_2(Heap, x) }
  test_2(Heap, x) == test'(Heap, x) && dummyFunction(test#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { test'(Heap, x) }
  dummyFunction(test#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test_2(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> test_2(Heap, x)
);

// Framing axioms
function  test#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test'(Heap, x) }
  state(Heap, Mask) ==> test'(Heap, x) == test#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  test#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  test#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure test#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var x2_26: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of (forperm x2: Ref [x2.f] :: nonTerminating(x2.f))
        if (*) {
          if (HasDirectPerm(Mask, x2_26, f_7)) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.f (forperm.vpr@12.14--12.68) [223124]"}
              HasDirectPerm(Mask, x2_26, f_7);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.f (forperm.vpr@12.14--12.68) [223125]"}
              HasDirectPerm(Mask, x2_26, f_7);
            if (*) {
              // Stop execution
              assume false;
            }
          }
          assume false;
        }
      assume (forall x2_1_1: Ref ::
        { Mask[x2_1_1, f_7] } { Heap[x2_1_1, f_7] }
        HasDirectPerm(Mask, x2_1_1, f_7) ==> nonTerminating(Heap, Heap[x2_1_1, f_7])
      );
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function test2
// ==================================================

// Uninterpreted function definitions
function  test2_1(Heap: HeapType, x: Ref): bool;
function  test2'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { test2_1(Heap, x) }
  test2_1(Heap, x) == test2'(Heap, x) && dummyFunction(test2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { test2'(Heap, x) }
  dummyFunction(test2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test2_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> test2_1(Heap, x)
);

// Framing axioms
function  test2#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test2'(Heap, x) }
  state(Heap, Mask) ==> test2'(Heap, x) == test2#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  test2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  test2#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure test2#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var x2_24: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      
      // -- Check definedness of (forperm x2: Ref [x2.f] :: nonTerminating(x2.f))
        if (*) {
          if (HasDirectPerm(Mask, x2_24, f_7)) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.f (forperm.vpr@20.14--20.68) [223126]"}
              HasDirectPerm(Mask, x2_24, f_7);
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x2.f (forperm.vpr@20.14--20.68) [223127]"}
              HasDirectPerm(Mask, x2_24, f_7);
            if (*) {
              // Stop execution
              assume false;
            }
          }
          assume false;
        }
      assume (forall x2_1_1: Ref ::
        { Mask[x2_1_1, f_7] } { Heap[x2_1_1, f_7] }
        HasDirectPerm(Mask, x2_1_1, f_7) ==> nonTerminating(Heap, Heap[x2_1_1, f_7])
      );
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function nonTerminating
// ==================================================

// Uninterpreted function definitions
function  nonTerminating(Heap: HeapType, v_2: int): bool;
function  nonTerminating'(Heap: HeapType, v_2: int): bool;
axiom (forall Heap: HeapType, v_2: int ::
  { nonTerminating(Heap, v_2) }
  nonTerminating(Heap, v_2) == nonTerminating'(Heap, v_2) && dummyFunction(nonTerminating#triggerStateless(v_2))
);
axiom (forall Heap: HeapType, v_2: int ::
  { nonTerminating'(Heap, v_2) }
  dummyFunction(nonTerminating#triggerStateless(v_2))
);

// Framing axioms
function  nonTerminating#frame(frame: FrameType, v_2: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, v_2: int ::
  { state(Heap, Mask), nonTerminating'(Heap, v_2) }
  state(Heap, Mask) ==> nonTerminating'(Heap, v_2) == nonTerminating#frame(EmptyFrame, v_2)
);

// Trigger function (controlling recursive postconditions)
function  nonTerminating#trigger(frame: FrameType, v_2: int): bool;

// State-independent trigger function
function  nonTerminating#triggerStateless(v_2: int): bool;

// Check contract well-formedness and postcondition
procedure nonTerminating#definedness(v_2: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of method test_pres_termination_proof
// ==================================================

procedure test_pres_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: bool;
  var perm: Perm;
  var $condInEx: bool;
  var x21: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b) -- forperm.vpr@10.14--10.22
    if (b_24) {
      
      // -- Translating statement: inhale acc(x.f, write) -- forperm.vpr@10.14--10.22
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale acc(x.f, write) -- <no position>
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if ($condInEx) -- <no position>
    if ($condInEx) {
      
      // -- Assumptions about local variables
        assume Heap[x21, $allocated];
      
      // -- Translating statement: if (perm(x21.f) > none) -- forperm.vpr@12.15--12.61
        if (Mask[x21, f_7] > NoPerm) {
          
          // -- Translating statement: assert false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [223130]"}
              false;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- forperm.vpr@12.15--12.61
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_pres_termination_proof
// ==================================================

procedure test2_pres_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var $condInEx: bool;
  var x22: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if ($condInEx) -- <no position>
    if ($condInEx) {
      
      // -- Assumptions about local variables
        assume Heap[x22, $allocated];
      
      // -- Translating statement: if (perm(x22.f) > none) -- forperm.vpr@20.15--20.61
        if (Mask[x22, f_7] > NoPerm) {
          
          // -- Translating statement: assert false -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [223131]"}
              false;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- forperm.vpr@20.15--20.61
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}