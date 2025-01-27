// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0348.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0348-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 5: bar
// - height 4: bufferRight
// - height 3: arrayAt
// - height 2: inner
// - height 1: outer
// - height 0: foo
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique right_1: Field NormalField int;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_1(Heap: HeapType, x: Ref): int;
function  foo'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { foo_1(Heap, x) }
  foo_1(Heap, x) == foo'(Heap, x) && dummyFunction(foo#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo'(Heap, x) }
  dummyFunction(foo#triggerStateless(x))
);

// Framing axioms
function  foo#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo'(Heap, x) }
  state(Heap, Mask) ==> foo'(Heap, x) == foo#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger_1(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure foo#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of function bar
// ==================================================

// Uninterpreted function definitions
function  bar(Heap: HeapType, i: int): bool;
function  bar'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { bar(Heap, i) }
  bar(Heap, i) == bar'(Heap, i) && dummyFunction(bar#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { bar'(Heap, i) }
  dummyFunction(bar#triggerStateless(i))
);

// Framing axioms
function  bar#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), bar'(Heap, i) }
  state(Heap, Mask) ==> bar'(Heap, i) == bar#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  bar#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  bar#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure bar#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume 0 < i;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function inner
// ==================================================

// Uninterpreted function definitions
function  inner(Heap: HeapType, x: Ref): int;
function  inner'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { inner(Heap, x) }
  inner(Heap, x) == inner'(Heap, x) && dummyFunction(inner#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { inner'(Heap, x) }
  dummyFunction(inner#triggerStateless(x))
);

// Framing axioms
function  inner#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), inner'(Heap, x) }
  state(Heap, Mask) ==> inner'(Heap, x) == inner#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  inner#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  inner#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure inner#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function outer
// ==================================================

// Uninterpreted function definitions
function  outer(Heap: HeapType, x: Ref, v_2: int): bool;
function  outer'(Heap: HeapType, x: Ref, v_2: int): bool;
axiom (forall Heap: HeapType, x: Ref, v_2: int ::
  { outer(Heap, x, v_2) }
  outer(Heap, x, v_2) == outer'(Heap, x, v_2) && dummyFunction(outer#triggerStateless(x, v_2))
);
axiom (forall Heap: HeapType, x: Ref, v_2: int ::
  { outer'(Heap, x, v_2) }
  dummyFunction(outer#triggerStateless(x, v_2))
);

// Framing axioms
function  outer#frame(frame: FrameType, x: Ref, v_2: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, v_2: int ::
  { state(Heap, Mask), outer'(Heap, x, v_2) }
  state(Heap, Mask) ==> outer'(Heap, x, v_2) == outer#frame(Heap[null, P(x)], x, v_2)
);

// Trigger function (controlling recursive postconditions)
function  outer#trigger(frame: FrameType, x: Ref, v_2: int): bool;

// State-independent trigger function
function  outer#triggerStateless(x: Ref, v_2: int): bool;

// Check contract well-formedness and postcondition
procedure outer#definedness(x: Ref, v_2: int) returns (Result: bool)
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
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(P(x), write) in v == 0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(x) (0348.vpr@23.12--23.36) [61323]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume v_2 == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function arrayAt
// ==================================================

// Uninterpreted function definitions
function  arrayAt(Heap: HeapType, buffer: Ref, index: int): int;
function  arrayAt'(Heap: HeapType, buffer: Ref, index: int): int;
axiom (forall Heap: HeapType, buffer: Ref, index: int ::
  { arrayAt(Heap, buffer, index) }
  arrayAt(Heap, buffer, index) == arrayAt'(Heap, buffer, index) && dummyFunction(arrayAt#triggerStateless(buffer, index))
);
axiom (forall Heap: HeapType, buffer: Ref, index: int ::
  { arrayAt'(Heap, buffer, index) }
  dummyFunction(arrayAt#triggerStateless(buffer, index))
);

// Framing axioms
function  arrayAt#frame(frame: FrameType, buffer: Ref, index: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, buffer: Ref, index: int ::
  { state(Heap, Mask), arrayAt'(Heap, buffer, index) }
  state(Heap, Mask) ==> arrayAt'(Heap, buffer, index) == arrayAt#frame(Heap[null, gapBuffer(buffer)], buffer, index)
);

// Trigger function (controlling recursive postconditions)
function  arrayAt#trigger(frame: FrameType, buffer: Ref, index: int): bool;

// State-independent trigger function
function  arrayAt#triggerStateless(buffer: Ref, index: int): int;

// Check contract well-formedness and postcondition
procedure arrayAt#definedness(buffer: Ref, index: int) returns (Result: int)
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
    assume Heap[buffer, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, gapBuffer(buffer):=Mask[null, gapBuffer(buffer)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(gapBuffer(buffer), write) in index >= 0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume gapBuffer#trigger(UnfoldingHeap, gapBuffer(buffer));
      assume UnfoldingHeap[null, gapBuffer(buffer)] == FrameFragment(UnfoldingHeap[buffer, right_1]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access gapBuffer(buffer) (0348.vpr@38.12--38.53) [61324]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, gapBuffer(buffer)];
      perm := FullPerm;
      assume buffer != null;
      UnfoldingMask := UnfoldingMask[buffer, right_1:=UnfoldingMask[buffer, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, gapBuffer#sm(buffer):=Heap[null, gapBuffer#sm(buffer)][buffer, right_1:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume gapBuffer#trigger(UnfoldingHeap, gapBuffer(buffer));
      assume UnfoldingHeap[null, gapBuffer(buffer)] == FrameFragment(UnfoldingHeap[buffer, right_1]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      perm := FullPerm;
      assume buffer != null;
      UnfoldingMask := UnfoldingMask[buffer, right_1:=UnfoldingMask[buffer, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume index >= 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function bufferRight
// ==================================================

// Uninterpreted function definitions
function  bufferRight(Heap: HeapType, buffer: Ref): int;
function  bufferRight'(Heap: HeapType, buffer: Ref): int;
axiom (forall Heap: HeapType, buffer: Ref ::
  { bufferRight(Heap, buffer) }
  bufferRight(Heap, buffer) == bufferRight'(Heap, buffer) && dummyFunction(bufferRight#triggerStateless(buffer))
);
axiom (forall Heap: HeapType, buffer: Ref ::
  { bufferRight'(Heap, buffer) }
  dummyFunction(bufferRight#triggerStateless(buffer))
);

// Framing axioms
function  bufferRight#frame(frame: FrameType, buffer: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, buffer: Ref ::
  { state(Heap, Mask), bufferRight'(Heap, buffer) }
  state(Heap, Mask) ==> bufferRight'(Heap, buffer) == bufferRight#frame(Heap[null, gapBuffer(buffer)], buffer)
);

// Trigger function (controlling recursive postconditions)
function  bufferRight#trigger(frame: FrameType, buffer: Ref): bool;

// State-independent trigger function
function  bufferRight#triggerStateless(buffer: Ref): int;

// Check contract well-formedness and postcondition
procedure bufferRight#definedness(buffer: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[buffer, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, gapBuffer(buffer):=Mask[null, gapBuffer(buffer)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

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
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate gapBuffer
// ==================================================

type PredicateType_gapBuffer;
function  gapBuffer(buffer: Ref): Field PredicateType_gapBuffer FrameType;
function  gapBuffer#sm(buffer: Ref): Field PredicateType_gapBuffer PMaskType;
axiom (forall buffer: Ref ::
  { PredicateMaskField(gapBuffer(buffer)) }
  PredicateMaskField(gapBuffer(buffer)) == gapBuffer#sm(buffer)
);
axiom (forall buffer: Ref ::
  { gapBuffer(buffer) }
  IsPredicateField(gapBuffer(buffer))
);
axiom (forall buffer: Ref ::
  { gapBuffer(buffer) }
  getPredWandId(gapBuffer(buffer)) == 1
);
function  gapBuffer#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  gapBuffer#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall buffer: Ref, buffer2: Ref ::
  { gapBuffer(buffer), gapBuffer(buffer2) }
  gapBuffer(buffer) == gapBuffer(buffer2) ==> buffer == buffer2
);
axiom (forall buffer: Ref, buffer2: Ref ::
  { gapBuffer#sm(buffer), gapBuffer#sm(buffer2) }
  gapBuffer#sm(buffer) == gapBuffer#sm(buffer2) ==> buffer == buffer2
);

axiom (forall Heap: HeapType, buffer: Ref ::
  { gapBuffer#trigger(Heap, gapBuffer(buffer)) }
  gapBuffer#everUsed(gapBuffer(buffer))
);

procedure gapBuffer#definedness(buffer: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of gapBuffer
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[buffer, $allocated];
    perm := FullPerm;
    assume buffer != null;
    Mask := Mask[buffer, right_1:=Mask[buffer, right_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(x: Ref) returns ()
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
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale bar(foo(x)) -- 0348.vpr@11.10--11.21
    assume state(Heap, Mask);
    
    // -- Check definedness of bar(foo(x))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function bar might not hold. Assertion 0 < foo(x) might not hold. (0348.vpr@11.10--11.21) [61325]"}
          0 < foo_1(Heap, x);
        // Stop execution
        assume false;
      }
    assume bar(Heap, foo_1(Heap, x));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of outer(x, inner(x))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function inner might not hold. There might be insufficient permission to access P(x) (0348.vpr@28.21--28.29) [61326]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function outer might not hold. There might be insufficient permission to access P(x) (0348.vpr@28.12--28.30) [61327]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume P#trigger(UnfoldingHeap, P(x));
          assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function outer might not hold. There might be insufficient permission to access P(x) (0348.vpr@28.12--28.30) [61328]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Precondition of function outer might not hold. Assertion inner(x) == 0 might not hold. (0348.vpr@28.12--28.30) [61329]"}
          inner(Heap, x) == 0;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume outer(Heap, x, inner(Heap, x));
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
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
  
  // -- Translating statement: inhale acc(P(x), write) -- 0348.vpr@31.3--31.14
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale outer(x, inner(x)) -- 0348.vpr@33.3--33.28
    assume state(Heap, Mask);
    
    // -- Check definedness of outer(x, inner(x))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function inner might not hold. There might be insufficient permission to access P(x) (0348.vpr@33.19--33.27) [61331]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function outer might not hold. There might be insufficient permission to access P(x) (0348.vpr@33.10--33.28) [61332]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume P#trigger(UnfoldingHeap, P(x));
          assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function outer might not hold. There might be insufficient permission to access P(x) (0348.vpr@33.10--33.28) [61333]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Precondition of function outer might not hold. Assertion inner(x) == 0 might not hold. (0348.vpr@33.10--33.28) [61334]"}
          inner(Heap, x) == 0;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume outer(Heap, x, inner(Heap, x));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method cursor_left
// ==================================================

procedure cursor_left(buffer: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[buffer, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, gapBuffer(buffer):=Mask[null, gapBuffer(buffer)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of bufferRight(buffer) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function bufferRight might not hold. There might be insufficient permission to access gapBuffer(buffer) (0348.vpr@49.12--49.31) [61335]"}
          NoPerm < perm ==> NoPerm < Mask[null, gapBuffer(buffer)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume bufferRight(Heap, buffer) == 4;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of arrayAt(buffer, bufferRight(buffer)) == 5
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function bufferRight might not hold. There might be insufficient permission to access gapBuffer(buffer) (0348.vpr@50.28--50.47) [61336]"}
          NoPerm < perm ==> NoPerm < Mask[null, gapBuffer(buffer)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function arrayAt might not hold. There might be insufficient permission to access gapBuffer(buffer) (0348.vpr@50.12--50.48) [61337]"}
          NoPerm < perm ==> NoPerm < Mask[null, gapBuffer(buffer)];
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume gapBuffer#trigger(UnfoldingHeap, gapBuffer(buffer));
          assume UnfoldingHeap[null, gapBuffer(buffer)] == FrameFragment(UnfoldingHeap[buffer, right_1]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function arrayAt might not hold. There might be insufficient permission to access gapBuffer(buffer) (0348.vpr@50.12--50.48) [61338]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, gapBuffer(buffer)];
          perm := FullPerm;
          assume buffer != null;
          UnfoldingMask := UnfoldingMask[buffer, right_1:=UnfoldingMask[buffer, right_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Precondition of function arrayAt might not hold. Assertion bufferRight(buffer) >= 0 might not hold. (0348.vpr@50.12--50.48) [61339]"}
          bufferRight(Heap, buffer) >= 0;
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, gapBuffer#sm(buffer):=Heap[null, gapBuffer#sm(buffer)][buffer, right_1:=true]];
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume arrayAt(Heap, buffer, bufferRight(Heap, buffer)) == 5;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
}

// ==================================================
// Translation of method callee
// ==================================================

procedure callee(i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 < i;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method caller
// ==================================================

procedure caller(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var arg_i: int;
  
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
  
  // -- Translating statement: inhale acc(P(x), write) -- 0348.vpr@59.3--59.14
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: callee(inner(x)) -- 0348.vpr@61.3--61.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of inner(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function inner might not hold. There might be insufficient permission to access P(x) (0348.vpr@61.10--61.18) [61341]"}
          NoPerm < perm ==> NoPerm < Mask[null, P(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    arg_i := inner(Heap, x);
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method callee might not hold. Assertion 0 < inner(x) might not hold. (0348.vpr@61.3--61.19) [61342]"}
        0 < arg_i;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}