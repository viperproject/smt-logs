// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:29:40
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/postconditions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/postconditions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 1: wrapNot
// - height 0: wrap
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
// Translation of domain Wrap
// ==================================================

// The type for domain Wrap
type WrapDomainType;

// Translation of domain function WrappedInt
function  WrappedInt(data_2: int): WrapDomainType;

// Translation of domain function get_Wrap_data
function  get_Wrap_data(t_9: WrapDomainType): int;

// Translation of domain function Wrap_tag
function  Wrap_tag(t_9: WrapDomainType): int;

// Translation of anonymous domain axiom
axiom (forall data_1: int ::
  { (WrappedInt(data_1): WrapDomainType) }
  data_1 == (get_Wrap_data((WrappedInt(data_1): WrapDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall data_1: int ::
  { (WrappedInt(data_1): WrapDomainType) }
  (Wrap_tag((WrappedInt(data_1): WrapDomainType)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall t_2: WrapDomainType ::
  { (Wrap_tag(t_2): int) } { (get_Wrap_data(t_2): int) }
  t_2 == (WrappedInt((get_Wrap_data(t_2): int)): WrapDomainType)
);

// ==================================================
// Translation of function wrap
// ==================================================

// Uninterpreted function definitions
function  wrap_1(Heap: HeapType, data_1: int): WrapDomainType;
function  wrap'(Heap: HeapType, data_1: int): WrapDomainType;
axiom (forall Heap: HeapType, data_1: int ::
  { wrap_1(Heap, data_1) }
  wrap_1(Heap, data_1) == wrap'(Heap, data_1) && dummyFunction(wrap#triggerStateless(data_1))
);
axiom (forall Heap: HeapType, data_1: int ::
  { wrap'(Heap, data_1) }
  dummyFunction(wrap#triggerStateless(data_1))
);

// Framing axioms
function  wrap#frame(frame: FrameType, data_1: int): WrapDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, data_1: int ::
  { state(Heap, Mask), wrap'(Heap, data_1) }
  state(Heap, Mask) ==> wrap'(Heap, data_1) == wrap#frame(EmptyFrame, data_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, data_1: int ::
  { state(Heap, Mask), wrap'(Heap, data_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || wrap#trigger_1(EmptyFrame, data_1)) ==> (get_Wrap_data(wrap'(Heap, data_1)): int) == data_1
);

// Trigger function (controlling recursive postconditions)
function  wrap#trigger_1(frame: FrameType, data_1: int): bool;

// State-independent trigger function
function  wrap#triggerStateless(data_1: int): WrapDomainType;

// Check contract well-formedness and postcondition
procedure wrap#definedness(data_1: int) returns (Result: WrapDomainType)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume (get_Wrap_data(Result): int) == data_1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function wrapNot
// ==================================================

// Uninterpreted function definitions
function  wrapNot(Heap: HeapType, data_1: int): WrapDomainType;
function  wrapNot'(Heap: HeapType, data_1: int): WrapDomainType;
axiom (forall Heap: HeapType, data_1: int ::
  { wrapNot(Heap, data_1) }
  wrapNot(Heap, data_1) == wrapNot'(Heap, data_1) && dummyFunction(wrapNot#triggerStateless(data_1))
);
axiom (forall Heap: HeapType, data_1: int ::
  { wrapNot'(Heap, data_1) }
  dummyFunction(wrapNot#triggerStateless(data_1))
);

// Framing axioms
function  wrapNot#frame(frame: FrameType, data_1: int): WrapDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, data_1: int ::
  { state(Heap, Mask), wrapNot'(Heap, data_1) }
  state(Heap, Mask) ==> wrapNot'(Heap, data_1) == wrapNot#frame(EmptyFrame, data_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, data_1: int ::
  { state(Heap, Mask), wrapNot'(Heap, data_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || wrapNot#trigger(EmptyFrame, data_1)) ==> (get_Wrap_data(wrapNot'(Heap, data_1)): int) != data_1
);

// Trigger function (controlling recursive postconditions)
function  wrapNot#trigger(frame: FrameType, data_1: int): bool;

// State-independent trigger function
function  wrapNot#triggerStateless(data_1: int): WrapDomainType;

// Check contract well-formedness and postcondition
procedure wrapNot#definedness(data_1: int) returns (Result: WrapDomainType)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Checking definedness of postcondition (no body)
    assume (get_Wrap_data(Result): int) != data_1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method wrapTest
// ==================================================

procedure wrapTest() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: WrapDomainType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var y: WrapDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := wrap(1) -- postconditions.vpr@18.3--18.25
    
    // -- Check definedness of wrap(1)
      if (*) {
        // Stop execution
        assume false;
      }
    x := wrap_1(Heap, 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get_Wrap_data(x) == 1 -- postconditions.vpr@19.3--19.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion get_Wrap_data(x) == 1 might not hold. (postconditions.vpr@19.10--19.21) [222866]"}
      (get_Wrap_data(x): int) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: y := wrapNot(1) -- postconditions.vpr@20.3--20.28
    
    // -- Check definedness of wrapNot(1)
      if (*) {
        // Stop execution
        assume false;
      }
    y := wrapNot(Heap, 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get_Wrap_data(y) == 1 -- postconditions.vpr@22.3--22.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion get_Wrap_data(y) == 1 might not hold. (postconditions.vpr@22.10--22.21) [222867]"}
      (get_Wrap_data(y): int) == 1;
    assume state(Heap, Mask);
}