// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:18:50
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0112.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0112-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// - height 15: fun04
// - height 14: fun01
// - height 13: fun11
// - height 12: fun07
// - height 11: fun06
// - height 10: fun03
// - height 9: fun15
// - height 8: fun12
// - height 7: fun13
// - height 6: fun18
// - height 5: fun17
// - height 4: fun05
// - height 3: fun02
// - height 2: fun08
// - height 1: fun16
// - height 0: fun14
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
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType): int;
function  fun01'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun01(Heap) }
  fun01(Heap) == fun01'(Heap) && dummyFunction(fun01#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun01'(Heap) }
  dummyFunction(fun01#triggerStateless())
);

// Framing axioms
function  fun01#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun01'(Heap) }
  state(Heap, Mask) ==> fun01'(Heap) == fun01#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun01'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 14 || fun01#trigger(EmptyFrame)) ==> fun01'(Heap) != 0
);
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun01'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 14 || fun01#trigger(EmptyFrame)) ==> 1 div fun01'(Heap) != 2
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun01#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 14;
  
  // -- Checking definedness of postcondition (no body)
    assume Result != 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of 1 \ result != 2
      assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@6.11--6.26) [193216]"}
        Result != 0;
    assume 1 div Result != 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType): int;
function  fun02'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun02(Heap) }
  fun02(Heap) == fun02'(Heap) && dummyFunction(fun02#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun02'(Heap) }
  dummyFunction(fun02#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun02(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> fun02(Heap) == 1
);

// Framing axioms
function  fun02#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun02'(Heap) }
  state(Heap, Mask) ==> fun02'(Heap) == fun02#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun02'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || fun02#trigger(EmptyFrame)) ==> fun02'(Heap) != 0
);
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun02'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || fun02#trigger(EmptyFrame)) ==> 1 div fun02'(Heap) != 2
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun02#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun02#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Translate function body
    Result := 1;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of fun02 might not hold. Assertion result != 0 might not hold. (0112.vpr@9.11--9.22) [193217]"}
      Result != 0;
    
    // -- Check definedness of 1 \ result != 2
      assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@10.11--10.26) [193218]"}
        Result != 0;
    assert {:msg "  Postcondition of fun02 might not hold. Assertion 1 \ result != 2 might not hold. (0112.vpr@10.11--10.26) [193219]"}
      1 div Result != 2;
}

// ==================================================
// Translation of function fun03
// ==================================================

// Uninterpreted function definitions
function  fun03(Heap: HeapType): int;
function  fun03'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun03(Heap) }
  fun03(Heap) == fun03'(Heap) && dummyFunction(fun03#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun03'(Heap) }
  dummyFunction(fun03#triggerStateless())
);

// Framing axioms
function  fun03#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun03'(Heap) }
  state(Heap, Mask) ==> fun03'(Heap) == fun03#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun03'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 10 || fun03#trigger(EmptyFrame)) ==> fun03'(Heap) != 0
);
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun03'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 10 || fun03#trigger(EmptyFrame)) ==> 1 div fun03'(Heap) != 2
);

// Trigger function (controlling recursive postconditions)
function  fun03#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun03#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun03#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 10;
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume Result != 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ result != 2
          assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@17.11--17.26) [193220]"}
            Result != 0;
        assume 1 div Result != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume state(Heap, Mask);
      
      // -- Check definedness of 1 \ result != 2
        assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@17.11--17.26) [193221]"}
          Result != 0;
      assume 1 div Result != 2;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun04
// ==================================================

// Uninterpreted function definitions
function  fun04(Heap: HeapType): int;
function  fun04'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun04(Heap) }
  fun04(Heap) == fun04'(Heap) && dummyFunction(fun04#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun04'(Heap) }
  dummyFunction(fun04#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun04(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 15 ==> fun04(Heap) == 1
);

// Framing axioms
function  fun04#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun04'(Heap) }
  state(Heap, Mask) ==> fun04'(Heap) == fun04#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun04'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 15 || fun04#trigger(EmptyFrame)) ==> fun04'(Heap) != 0
);
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun04'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 15 || fun04#trigger(EmptyFrame)) ==> 1 div fun04'(Heap) != 2
);

// Trigger function (controlling recursive postconditions)
function  fun04#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun04#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun04#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 15;
  
  // -- Translate function body
    Result := 1;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume Result != 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ result != 2
          assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@21.11--21.26) [193222]"}
            Result != 0;
        assume 1 div Result != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      
      // -- Check definedness of 1 \ result != 2
        assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@21.11--21.26) [193223]"}
          Result != 0;
      assert {:msg "  Postcondition of fun04 might not hold. Assertion 1 \ result != 2 might not hold. (0112.vpr@21.11--21.26) [193224]"}
        1 div Result != 2;
}

// ==================================================
// Translation of function fun05
// ==================================================

// Uninterpreted function definitions
function  fun05(Heap: HeapType): int;
function  fun05'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun05(Heap) }
  fun05(Heap) == fun05'(Heap) && dummyFunction(fun05#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun05'(Heap) }
  dummyFunction(fun05#triggerStateless())
);

// Framing axioms
function  fun05#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun05'(Heap) }
  state(Heap, Mask) ==> fun05'(Heap) == fun05#frame(EmptyFrame)
);

// Postcondition axioms
axiom true;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun05'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || fun05#trigger(EmptyFrame)) ==> 1 div fun05'(Heap) != 2
);

// Trigger function (controlling recursive postconditions)
function  fun05#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun05#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun05#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ result != 2
          assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@27.11--27.26) [193225]"}
            Result != 0;
        assume 1 div Result != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume Result != 0;
      assume state(Heap, Mask);
      
      // -- Check definedness of 1 \ result != 2
        assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@27.11--27.26) [193226]"}
          Result != 0;
      assume 1 div Result != 2;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun06
// ==================================================

// Uninterpreted function definitions
function  fun06(Heap: HeapType): int;
function  fun06'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun06(Heap) }
  fun06(Heap) == fun06'(Heap) && dummyFunction(fun06#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun06'(Heap) }
  dummyFunction(fun06#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun06(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 11 ==> fun06(Heap) == 1
);

// Framing axioms
function  fun06#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun06'(Heap) }
  state(Heap, Mask) ==> fun06'(Heap) == fun06#frame(EmptyFrame)
);

// Postcondition axioms
axiom true;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun06'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 11 || fun06#trigger(EmptyFrame)) ==> 1 div fun06'(Heap) != 2
);

// Trigger function (controlling recursive postconditions)
function  fun06#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun06#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun06#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 11;
  
  // -- Translate function body
    Result := 1;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ result != 2
          assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@32.11--32.26) [193227]"}
            Result != 0;
        assume 1 div Result != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Postcondition of fun06 might not hold. Assertion result != 0 might not hold. (0112.vpr@30.11--30.30) [193228]"}
        Result != 0;
      
      // -- Check definedness of 1 \ result != 2
        assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@32.11--32.26) [193229]"}
          Result != 0;
      assert {:msg "  Postcondition of fun06 might not hold. Assertion 1 \ result != 2 might not hold. (0112.vpr@32.11--32.26) [193230]"}
        1 div Result != 2;
}

// ==================================================
// Translation of function fun07
// ==================================================

// Uninterpreted function definitions
function  fun07(Heap: HeapType): int;
function  fun07'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun07(Heap) }
  fun07(Heap) == fun07'(Heap) && dummyFunction(fun07#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun07'(Heap) }
  dummyFunction(fun07#triggerStateless())
);

// Framing axioms
function  fun07#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun07'(Heap) }
  state(Heap, Mask) ==> fun07'(Heap) == fun07#frame(EmptyFrame)
);

// Postcondition axioms
axiom true;
axiom true;

// Trigger function (controlling recursive postconditions)
function  fun07#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun07#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun07#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 12;
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume Result != 0;
      assume state(Heap, Mask);
      
      // -- Check definedness of 1 \ result != 2
        assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@37.11--37.34) [193231]"}
          Result != 0;
      assume 1 div Result != 2;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun08
// ==================================================

// Uninterpreted function definitions
function  fun08(Heap: HeapType): int;
function  fun08'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun08(Heap) }
  fun08(Heap) == fun08'(Heap) && dummyFunction(fun08#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun08'(Heap) }
  dummyFunction(fun08#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun08(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun08(Heap) == 1
);

// Framing axioms
function  fun08#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun08'(Heap) }
  state(Heap, Mask) ==> fun08'(Heap) == fun08#frame(EmptyFrame)
);

// Postcondition axioms
axiom true;
axiom true;

// Trigger function (controlling recursive postconditions)
function  fun08#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun08#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun08#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := 1;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Postcondition of fun08 might not hold. Assertion result != 0 might not hold. (0112.vpr@40.11--40.30) [193232]"}
        Result != 0;
      
      // -- Check definedness of 1 \ result != 2
        assert {:msg "  Contract might not be well-formed. Divisor result might be zero. (0112.vpr@41.11--41.34) [193233]"}
          Result != 0;
      assert {:msg "  Postcondition of fun08 might not hold. Assertion 1 \ result != 2 might not hold. (0112.vpr@41.11--41.34) [193234]"}
        1 div Result != 2;
}

// ==================================================
// Translation of function fun11
// ==================================================

// Uninterpreted function definitions
function  fun11(Heap: HeapType, x: int): int;
function  fun11'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun11(Heap, x) }
  fun11(Heap, x) == fun11'(Heap, x) && dummyFunction(fun11#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun11'(Heap, x) }
  dummyFunction(fun11#triggerStateless(x))
);

// Framing axioms
function  fun11#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun11'(Heap, x) }
  state(Heap, Mask) ==> fun11'(Heap, x) == fun11#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun11#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun11#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun11#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 13;
  
  // -- Inhaling precondition (with checking)
    assume x != 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of 1 \ x != 2
      assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@46.12--46.22) [193235]"}
        x != 0;
    assume 1 div x != 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun12
// ==================================================

// Uninterpreted function definitions
function  fun12(Heap: HeapType, x: int): int;
function  fun12'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun12(Heap, x) }
  fun12(Heap, x) == fun12'(Heap, x) && dummyFunction(fun12#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun12'(Heap, x) }
  dummyFunction(fun12#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun12(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> x != 0 && 1 div x != 2 ==> fun12(Heap, x) == 1
);

// Framing axioms
function  fun12#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun12'(Heap, x) }
  state(Heap, Mask) ==> fun12'(Heap, x) == fun12#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun12#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun12#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun12#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    assume x != 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of 1 \ x != 2
      assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@50.12--50.22) [193236]"}
        x != 0;
    assume 1 div x != 2;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function fun13
// ==================================================

// Uninterpreted function definitions
function  fun13(Heap: HeapType, x: int): int;
function  fun13'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun13(Heap, x) }
  fun13(Heap, x) == fun13'(Heap, x) && dummyFunction(fun13#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun13'(Heap, x) }
  dummyFunction(fun13#triggerStateless(x))
);

// Framing axioms
function  fun13#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun13'(Heap, x) }
  state(Heap, Mask) ==> fun13'(Heap, x) == fun13#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun13#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun13#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun13#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ x != 2
          assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@57.12--57.22) [193237]"}
            x != 0;
        assume 1 div x != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume x != 0;
      assume state(Heap, Mask);
      
      // -- Check definedness of 1 \ x != 2
        assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@57.12--57.22) [193238]"}
          x != 0;
      assume 1 div x != 2;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun14
// ==================================================

// Uninterpreted function definitions
function  fun14(Heap: HeapType, x: int): int;
function  fun14'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun14(Heap, x) }
  fun14(Heap, x) == fun14'(Heap, x) && dummyFunction(fun14#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun14'(Heap, x) }
  dummyFunction(fun14#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun14(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 1 div x != 2 ==> fun14(Heap, x) == 1
);

// Framing axioms
function  fun14#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun14'(Heap, x) }
  state(Heap, Mask) ==> fun14'(Heap, x) == fun14#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun14#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun14#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun14#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ x != 2
          assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@63.12--63.22) [193239]"}
            x != 0;
        assume 1 div x != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume x != 0;
      assume state(Heap, Mask);
      
      // -- Check definedness of 1 \ x != 2
        assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@63.12--63.22) [193240]"}
          x != 0;
      assume 1 div x != 2;
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function fun15
// ==================================================

// Uninterpreted function definitions
function  fun15(Heap: HeapType, x: int): int;
function  fun15'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun15(Heap, x) }
  fun15(Heap, x) == fun15'(Heap, x) && dummyFunction(fun15#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun15'(Heap, x) }
  dummyFunction(fun15#triggerStateless(x))
);

// Framing axioms
function  fun15#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun15'(Heap, x) }
  state(Heap, Mask) ==> fun15'(Heap, x) == fun15#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun15#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun15#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun15#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 9;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume x != 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ x != 2
          assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@69.12--69.22) [193241]"}
            x != 0;
        assume 1 div x != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      
      // -- Check definedness of 1 \ x != 2
        assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@69.12--69.22) [193242]"}
          x != 0;
      assume 1 div x != 2;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun16
// ==================================================

// Uninterpreted function definitions
function  fun16(Heap: HeapType, x: int): int;
function  fun16'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun16(Heap, x) }
  fun16(Heap, x) == fun16'(Heap, x) && dummyFunction(fun16#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun16'(Heap, x) }
  dummyFunction(fun16#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun16(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> x != 0 && 1 div x != 2 ==> fun16(Heap, x) == 1
);

// Framing axioms
function  fun16#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun16'(Heap, x) }
  state(Heap, Mask) ==> fun16'(Heap, x) == fun16#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun16#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun16#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun16#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume x != 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ x != 2
          assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@74.12--74.22) [193243]"}
            x != 0;
        assume 1 div x != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      
      // -- Check definedness of 1 \ x != 2
        assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@74.12--74.22) [193244]"}
          x != 0;
      assume 1 div x != 2;
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function fun17
// ==================================================

// Uninterpreted function definitions
function  fun17(Heap: HeapType, x: int): int;
function  fun17'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun17(Heap, x) }
  fun17(Heap, x) == fun17'(Heap, x) && dummyFunction(fun17#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun17'(Heap, x) }
  dummyFunction(fun17#triggerStateless(x))
);

// Framing axioms
function  fun17#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun17'(Heap, x) }
  state(Heap, Mask) ==> fun17'(Heap, x) == fun17#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun17#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun17#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun17#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume x != 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ x != 2
          assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@79.12--79.30) [193245]"}
            x != 0;
        assume 1 div x != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun18
// ==================================================

// Uninterpreted function definitions
function  fun18(Heap: HeapType, x: int): int;
function  fun18'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun18(Heap, x) }
  fun18(Heap, x) == fun18'(Heap, x) && dummyFunction(fun18#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun18'(Heap, x) }
  dummyFunction(fun18#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun18(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> x != 0 && 1 div x != 2 ==> fun18(Heap, x) == 1
);

// Framing axioms
function  fun18#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun18'(Heap, x) }
  state(Heap, Mask) ==> fun18'(Heap, x) == fun18#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun18#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun18#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun18#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume x != 0;
        assume state(Heap, Mask);
        
        // -- Check definedness of 1 \ x != 2
          assert {:msg "  Contract might not be well-formed. Divisor x might be zero. (0112.vpr@83.12--83.30) [193246]"}
            x != 0;
        assume 1 div x != 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1;
}