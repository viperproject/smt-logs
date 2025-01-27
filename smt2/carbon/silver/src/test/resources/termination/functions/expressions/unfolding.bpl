// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:08:58
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 3: nonTerminating
// - height 2: partiallyTerminating
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
function  test(Heap: HeapType, x: Ref): bool;
function  test'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { test(Heap, x) }
  test(Heap, x) == test'(Heap, x) && dummyFunction(test#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { test'(Heap, x) }
  dummyFunction(test#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test(Heap, x) } { state(Heap, Mask), test#triggerStateless(x), foo#trigger(Heap, foo(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> test(Heap, x) == nonTerminating(Heap, x)
);

// Framing axioms
function  test#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test'(Heap, x) } { state(Heap, Mask), test#triggerStateless(x), foo#trigger(Heap, foo(x)) }
  state(Heap, Mask) ==> test'(Heap, x) == test#frame(Heap[null, foo(x)], x)
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
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, foo(x):=Mask[null, foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(foo(x), write) in nonTerminating(x))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume foo#trigger(UnfoldingHeap, foo(x));
      assume UnfoldingHeap[null, foo(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access foo(x) (unfolding.vpr@13.1--19.2) [17916]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, foo(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[x, f_7] == 42;
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, foo#sm(x):=Heap[null, foo#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := nonTerminating(Heap, x);
}

// ==================================================
// Translation of function test2
// ==================================================

// Uninterpreted function definitions
function  test2(Heap: HeapType, x: Ref): bool;
function  test2'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { test2(Heap, x) }
  test2(Heap, x) == test2'(Heap, x) && dummyFunction(test2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { test2'(Heap, x) }
  dummyFunction(test2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test2(Heap, x) } { state(Heap, Mask), test2#triggerStateless(x), foo#trigger(Heap, foo(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> test2(Heap, x) == partiallyTerminating(Heap, x)
);

// Framing axioms
function  test2#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test2'(Heap, x) } { state(Heap, Mask), test2#triggerStateless(x), foo#trigger(Heap, foo(x)) }
  state(Heap, Mask) ==> test2'(Heap, x) == test2#frame(Heap[null, foo(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  test2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  test2#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure test2#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, foo(x):=Mask[null, foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(foo(x), write) in partiallyTerminating(x))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume foo#trigger(UnfoldingHeap, foo(x));
      assume UnfoldingHeap[null, foo(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access foo(x) (unfolding.vpr@21.1--26.2) [17917]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, foo(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[x, f_7] == 42;
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function partiallyTerminating might not hold. There might be insufficient permission to access x.f (unfolding.vpr@25.25--25.48) [17918]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, foo#sm(x):=Heap[null, foo#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := partiallyTerminating(Heap, x);
}

// ==================================================
// Translation of function nonTerminating
// ==================================================

// Uninterpreted function definitions
function  nonTerminating(Heap: HeapType, x: Ref): bool;
function  nonTerminating'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { nonTerminating(Heap, x) }
  nonTerminating(Heap, x) == nonTerminating'(Heap, x) && dummyFunction(nonTerminating#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { nonTerminating'(Heap, x) }
  dummyFunction(nonTerminating#triggerStateless(x))
);

// Framing axioms
function  nonTerminating#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), nonTerminating'(Heap, x) }
  state(Heap, Mask) ==> nonTerminating'(Heap, x) == nonTerminating#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  nonTerminating#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  nonTerminating#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure nonTerminating#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 3;
}

// ==================================================
// Translation of function partiallyTerminating
// ==================================================

// Uninterpreted function definitions
function  partiallyTerminating(Heap: HeapType, x: Ref): bool;
function  partiallyTerminating'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { partiallyTerminating(Heap, x) }
  partiallyTerminating(Heap, x) == partiallyTerminating'(Heap, x) && dummyFunction(partiallyTerminating#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { partiallyTerminating'(Heap, x) }
  dummyFunction(partiallyTerminating#triggerStateless(x))
);

// Framing axioms
function  partiallyTerminating#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), partiallyTerminating'(Heap, x) }
  state(Heap, Mask) ==> partiallyTerminating'(Heap, x) == partiallyTerminating#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  partiallyTerminating#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  partiallyTerminating#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure partiallyTerminating#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate foo
// ==================================================

type PredicateType_foo;
function  foo(x: Ref): Field PredicateType_foo FrameType;
function  foo#sm(x: Ref): Field PredicateType_foo PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(foo(x)) }
  PredicateMaskField(foo(x)) == foo#sm(x)
);
axiom (forall x: Ref ::
  { foo(x) }
  IsPredicateField(foo(x))
);
axiom (forall x: Ref ::
  { foo(x) }
  getPredWandId(foo(x)) == 0
);
function  foo#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  foo#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { foo(x), foo(x2) }
  foo(x) == foo(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { foo#sm(x), foo#sm(x2) }
  foo#sm(x) == foo#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { foo#trigger(Heap, foo(x)) }
  foo#everUsed(foo(x))
);

procedure foo#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of foo
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f == 42
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@8.1--11.2) [17919]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 42;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_termination_proof
// ==================================================

procedure test_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b_24: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, foo(x):=Mask[null, foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b) -- <no position>
    if (b_24) {
      
      // -- Translating statement: unfold acc(foo(x), write) -- <no position>
        assume foo#trigger(Heap, foo(x));
        assume Heap[null, foo(x)] == FrameFragment(Heap[x, f_7]);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding foo(x) might fail. There might be insufficient permission to access foo(x) (<no position>) [17922]"}
            perm <= Mask[null, foo(x)];
        }
        Mask := Mask[null, foo(x):=Mask[null, foo(x)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, foo(x))) {
            havoc newVersion;
            Heap := Heap[null, foo(x):=newVersion];
          }
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume Heap[x, f_7] == 42;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert false -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [17924]"}
          false;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_pres_termination_proof
// ==================================================

procedure test_pres_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(foo(x), write) -- unfolding.vpr@15.14--15.20
    perm := FullPerm;
    Mask := Mask[null, foo(x):=Mask[null, foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_termination_proof
// ==================================================

procedure test2_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, foo(x):=Mask[null, foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b1) -- <no position>
    if (b1) {
      
      // -- Translating statement: unfold acc(foo(x), write) -- <no position>
        assume foo#trigger(Heap, foo(x));
        assume Heap[null, foo(x)] == FrameFragment(Heap[x, f_7]);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding foo(x) might fail. There might be insufficient permission to access foo(x) (<no position>) [17928]"}
            perm <= Mask[null, foo(x)];
        }
        Mask := Mask[null, foo(x):=Mask[null, foo(x)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, foo(x))) {
            havoc newVersion;
            Heap := Heap[null, foo(x):=newVersion];
          }
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume Heap[x, f_7] == 42;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert x.f == 42 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of x.f == 42
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (unfolding.vpr@33.18--33.27) [17930]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
        assert {:msg "  Assert might fail. Assertion x.f == 42 might not hold. (unfolding.vpr@33.18--33.27) [17931]"}
          Heap[x, f_7] == 42;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(foo(x), write) -- unfolding.vpr@23.14--23.20
    perm := FullPerm;
    Mask := Mask[null, foo(x):=Mask[null, foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method partiallyTerminating_pres_termination_proof
// ==================================================

procedure partiallyTerminating_pres_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, wildcard) -- unfolding.vpr@32.14--32.32
    havoc wildcard;
    perm := wildcard;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}