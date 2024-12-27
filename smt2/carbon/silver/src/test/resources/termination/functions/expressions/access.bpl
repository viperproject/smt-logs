// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:57:03
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/access.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/access-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: nonTerminating
// - height 1: test1
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
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function test1
// ==================================================

// Uninterpreted function definitions
function  test1_1(Heap: HeapType, x: Ref): bool;
function  test1'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { test1_1(Heap, x) }
  test1_1(Heap, x) == test1'(Heap, x) && dummyFunction(test1#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { test1'(Heap, x) }
  dummyFunction(test1#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test1_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> test1_1(Heap, x) == nonTerminating(Heap, x)
);

// Framing axioms
function  test1#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test1'(Heap, x) }
  state(Heap, Mask) ==> test1'(Heap, x) == test1#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g])), x)
);

// Trigger function (controlling recursive postconditions)
function  test1#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  test1#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure test1#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of nonTerminating(x)
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := nonTerminating(Heap, x);
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> test2_1(Heap, x) == nonTerminating(Heap, x)
);

// Framing axioms
function  test2#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test2'(Heap, x) }
  state(Heap, Mask) ==> test2'(Heap, x) == test2#frame(CombineFrames(FrameFragment(Heap[x, f_7]), CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]))), x)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of nonTerminating(x)
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := nonTerminating(Heap, x);
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
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of method test1_termination_proof
// ==================================================

procedure test1_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert false -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [223199]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1_pres_termination_proof
// ==================================================

procedure test1_pres_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: bool;
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b) -- access.vpr@11.14--11.34
    if (b_24) {
      
      // -- Translating statement: inhale acc(x.f, write) -- access.vpr@11.14--11.22
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
  
  // -- Translating statement: inhale acc(x.g, write) -- access.vpr@11.26--11.34
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert false -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [223203]"}
      false;
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
  var b1: bool;
  var perm: Perm;
  var b2: bool;
  
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
  
  // -- Translating statement: if (b1) -- access.vpr@19.14--19.46
    if (b1) {
      
      // -- Translating statement: inhale acc(x.f, write) -- access.vpr@19.14--19.22
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
  
  // -- Translating statement: if (b2) -- access.vpr@19.26--19.46
    if (b2) {
      
      // -- Translating statement: inhale acc(x.f, write) -- access.vpr@19.26--19.34
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
  
  // -- Translating statement: inhale acc(x.g, write) -- access.vpr@19.38--19.46
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}