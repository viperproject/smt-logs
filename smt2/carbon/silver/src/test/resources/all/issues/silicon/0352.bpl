// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:04:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0352.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0352-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 3: foo
// - height 2: bar
// - height 1: foo2
// - height 0: foo3
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
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_2(Heap: HeapType): int;
function  foo'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { foo_2(Heap) }
  foo_2(Heap) == foo'(Heap) && dummyFunction(foo#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { foo'(Heap) }
  dummyFunction(foo#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), foo_2(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> foo_2(Heap) == 100
);

// Framing axioms
function  foo#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), foo'(Heap) }
  state(Heap, Mask) ==> foo'(Heap) == foo#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger(frame: FrameType): bool;

// State-independent trigger function
function  foo#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure foo#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Translate function body
    Result := 100;
}

// ==================================================
// Translation of function bar
// ==================================================

// Uninterpreted function definitions
function  bar(Heap: HeapType): int;
function  bar'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { bar(Heap) }
  bar(Heap) == bar'(Heap) && dummyFunction(bar#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { bar'(Heap) }
  dummyFunction(bar#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), bar(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> bar(Heap) == 100
);

// Framing axioms
function  bar#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), bar'(Heap) }
  state(Heap, Mask) ==> bar'(Heap) == bar#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  bar#trigger(frame: FrameType): bool;

// State-independent trigger function
function  bar#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure bar#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := 100;
}

// ==================================================
// Translation of function foo2
// ==================================================

// Uninterpreted function definitions
function  foo2_1(Heap: HeapType): int;
function  foo2'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { foo2_1(Heap) }
  foo2_1(Heap) == foo2'(Heap) && dummyFunction(foo2#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { foo2'(Heap) }
  dummyFunction(foo2#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), foo2_1(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> foo2_1(Heap) == 1
);

// Framing axioms
function  foo2#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), foo2'(Heap) }
  state(Heap, Mask) ==> foo2'(Heap) == foo2#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  foo2#trigger(frame: FrameType): bool;

// State-independent trigger function
function  foo2#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure foo2#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function foo3
// ==================================================

// Uninterpreted function definitions
function  foo3_1(Heap: HeapType, i: int): int;
function  foo3'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { foo3_1(Heap, i) }
  foo3_1(Heap, i) == foo3'(Heap, i) && dummyFunction(foo3#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { foo3'(Heap, i) }
  dummyFunction(foo3#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), foo3_1(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 < i ==> foo3_1(Heap, i) == (if 0 < i then 1 else 1 + foo3'(Heap, i))
);

// Framing axioms
function  foo3#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), foo3'(Heap, i) }
  state(Heap, Mask) ==> foo3'(Heap, i) == foo3#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  foo3#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  foo3#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure foo3#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 < i;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (0 < i ? 1 : 1 + foo3(i))
      if (0 < i) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function foo3 might not hold. Assertion 0 < i might not hold. (0352.vpr@30.19--30.26) [201530]"}
            0 < i;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume foo3#trigger(EmptyFrame, i);
        }
      }
  
  // -- Translate function body
    Result := (if 0 < i then 1 else 1 + foo3_1(Heap, i));
}

// ==================================================
// Translation of method test
// ==================================================

procedure test() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert bar() >= 0 -- 0352.vpr@13.3--13.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of bar() >= 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion bar() >= 0 might not hold. (0352.vpr@13.10--13.20) [201531]"}
      bar(Heap) >= 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert foo2() >= 0 -- 0352.vpr@22.3--22.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo2() >= 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo2() >= 0 might not hold. (0352.vpr@22.10--22.21) [201532]"}
      foo2_1(Heap) >= 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale 0 < i -- 0352.vpr@35.10--35.15
    assume 0 < i;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo3(i) > 0 -- 0352.vpr@36.3--36.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo3(i) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function foo3 might not hold. Assertion 0 < i might not hold. (0352.vpr@36.10--36.17) [201533]"}
          0 < i;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo3(i) > 0 might not hold. (0352.vpr@36.10--36.21) [201534]"}
      foo3_1(Heap, i) > 0;
    assume state(Heap, Mask);
}