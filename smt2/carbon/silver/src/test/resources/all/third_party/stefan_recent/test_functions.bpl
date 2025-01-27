// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:10:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_functions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_functions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: counter__get
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

const unique counter__x: Field NormalField int;
axiom !IsPredicateField(counter__x);
axiom !IsWandField(counter__x);

// ==================================================
// Translation of function counter__get
// ==================================================

// Uninterpreted function definitions
function  counter__get(Heap: HeapType, diz: Ref): int;
function  counter__get'(Heap: HeapType, diz: Ref): int;
axiom (forall Heap: HeapType, diz: Ref ::
  { counter__get(Heap, diz) }
  counter__get(Heap, diz) == counter__get'(Heap, diz) && dummyFunction(counter__get#triggerStateless(diz))
);
axiom (forall Heap: HeapType, diz: Ref ::
  { counter__get'(Heap, diz) }
  dummyFunction(counter__get#triggerStateless(diz))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), counter__get(Heap, diz) } { state(Heap, Mask), counter__get#triggerStateless(diz), counter__state#trigger(Heap, counter__state(diz)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> diz != null ==> counter__get(Heap, diz) == Heap[diz, counter__x]
);

// Framing axioms
function  counter__get#frame(frame: FrameType, diz: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, diz: Ref ::
  { state(Heap, Mask), counter__get'(Heap, diz) }
  state(Heap, Mask) ==> counter__get'(Heap, diz) == counter__get#frame(Heap[null, counter__state(diz)], diz)
);

// Trigger function (controlling recursive postconditions)
function  counter__get#trigger(frame: FrameType, diz: Ref): bool;

// State-independent trigger function
function  counter__get#triggerStateless(diz: Ref): int;

// Check contract well-formedness and postcondition
procedure counter__get#definedness(diz: Ref) returns (Result: int)
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
    assume Heap[diz, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, counter__state(diz):=Mask[null, counter__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(counter__state(diz), write) in diz.counter__x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume counter__state#trigger(UnfoldingHeap, counter__state(diz));
      assume UnfoldingHeap[null, counter__state(diz)] == FrameFragment(UnfoldingHeap[diz, counter__x]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access counter__state(diz) (test_functions.vpr@6.1--11.2) [24209]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, counter__state(diz)];
      perm := FullPerm;
      assume diz != null;
      UnfoldingMask := UnfoldingMask[diz, counter__x:=UnfoldingMask[diz, counter__x] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.counter__x (test_functions.vpr@6.1--11.2) [24210]"}
        HasDirectPerm(UnfoldingMask, diz, counter__x);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, counter__state#sm(diz):=Heap[null, counter__state#sm(diz)][diz, counter__x:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[diz, counter__x];
}

// ==================================================
// Translation of predicate counter__state
// ==================================================

type PredicateType_counter__state;
function  counter__state(diz: Ref): Field PredicateType_counter__state FrameType;
function  counter__state#sm(diz: Ref): Field PredicateType_counter__state PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(counter__state(diz)) }
  PredicateMaskField(counter__state(diz)) == counter__state#sm(diz)
);
axiom (forall diz: Ref ::
  { counter__state(diz) }
  IsPredicateField(counter__state(diz))
);
axiom (forall diz: Ref ::
  { counter__state(diz) }
  getPredWandId(counter__state(diz)) == 0
);
function  counter__state#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  counter__state#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { counter__state(diz), counter__state(diz2) }
  counter__state(diz) == counter__state(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { counter__state#sm(diz), counter__state#sm(diz2) }
  counter__state#sm(diz) == counter__state#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { counter__state#trigger(Heap, counter__state(diz)) }
  counter__state#everUsed(counter__state(diz))
);

procedure counter__state#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of counter__state
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, counter__x:=Mask[diz, counter__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method counter__counter
// ==================================================

procedure counter__counter(current_thread_id: int, v_2: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_1: int;
  var __flatten_3: int;
  var freshVersion: FrameType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, counter__state(sys__result):=PostMask[null, counter__state(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of counter__get(sys__result) == v
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function counter__get might not hold. Assertion sys__result != null might not hold. (test_functions.vpr@21.11--21.36) [24211]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function counter__get might not hold. There might be insufficient permission to access counter__state(sys__result) (test_functions.vpr@21.11--21.36) [24212]"}
          NoPerm < perm ==> NoPerm < PostMask[null, counter__state(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume counter__get(PostHeap, sys__result) == v_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(counter__x) -- test_functions.vpr@26.3--26.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, counter__x:=Mask[diz, counter__x] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := v -- test_functions.vpr@27.3--27.19
    __flatten_1 := v_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := __flatten_1 -- test_functions.vpr@28.3--28.29
    __flatten_3 := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.counter__x := __flatten_3 -- test_functions.vpr@29.3--29.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.counter__x (test_functions.vpr@29.3--29.32) [24213]"}
      FullPerm == Mask[diz, counter__x];
    Heap := Heap[diz, counter__x:=__flatten_3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(counter__state(diz), write) -- test_functions.vpr@30.3--30.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding counter__state(diz) might fail. There might be insufficient permission to access diz.counter__x (test_functions.vpr@30.3--30.39) [24216]"}
        perm <= Mask[diz, counter__x];
    }
    Mask := Mask[diz, counter__x:=Mask[diz, counter__x] - perm];
    perm := FullPerm;
    Mask := Mask[null, counter__state(diz):=Mask[null, counter__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume counter__state#trigger(Heap, counter__state(diz));
    assume Heap[null, counter__state(diz)] == FrameFragment(Heap[diz, counter__x]);
    if (!HasDirectPerm(Mask, null, counter__state(diz))) {
      Heap := Heap[null, counter__state#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, counter__state(diz):=freshVersion];
    }
    Heap := Heap[null, counter__state#sm(diz):=Heap[null, counter__state#sm(diz)][diz, counter__x:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_functions.vpr@31.3--31.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(counter__state(sys__result), write) &&
  //   counter__get(sys__result) == v) -- test_functions.vpr@32.3--32.110
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_functions.vpr@32.10--32.110) [24218]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access counter__state(sys__result) (test_functions.vpr@32.10--32.110) [24220]"}
        perm <= AssertMask[null, counter__state(sys__result)];
    }
    AssertMask := AssertMask[null, counter__state(sys__result):=AssertMask[null, counter__state(sys__result)] - perm];
    
    // -- Check definedness of counter__get(sys__result) == v
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function counter__get might not hold. Assertion sys__result != null might not hold. (test_functions.vpr@32.79--32.104) [24221]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function counter__get might not hold. There might be insufficient permission to access counter__state(sys__result) (test_functions.vpr@32.79--32.104) [24222]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, counter__state(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion counter__get(sys__result) == v might not hold. (test_functions.vpr@32.10--32.110) [24223]"}
      counter__get(AssertHeap, sys__result) == v_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_functions.vpr@33.3--33.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of counter__counter might not hold. Assertion sys__result != null might not hold. (test_functions.vpr@19.11--19.30) [24224]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of counter__counter might not hold. There might be insufficient permission to access counter__state(sys__result) (test_functions.vpr@20.11--20.50) [24225]"}
        perm <= Mask[null, counter__state(sys__result)];
    }
    Mask := Mask[null, counter__state(sys__result):=Mask[null, counter__state(sys__result)] - perm];
    assert {:msg "  Postcondition of counter__counter might not hold. Assertion counter__get(sys__result) == v might not hold. (test_functions.vpr@21.11--21.41) [24226]"}
      counter__get(Heap, sys__result) == v_2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method counter__incr
// ==================================================

procedure counter__incr(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  var __flatten_2: int;
  var __flatten_4: int;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, counter__state(diz):=Mask[null, counter__state(diz)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, counter__state(diz):=PostMask[null, counter__state(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of counter__get(diz) == old(counter__get(diz)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function counter__get might not hold. Assertion diz != null might not hold. (test_functions.vpr@41.11--41.28) [24227]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function counter__get might not hold. There might be insufficient permission to access counter__state(diz) (test_functions.vpr@41.11--41.28) [24228]"}
          NoPerm < perm ==> NoPerm < PostMask[null, counter__state(diz)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        assert {:msg "  Precondition of function counter__get might not hold. Assertion diz != null might not hold. (test_functions.vpr@41.36--41.53) [24229]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function counter__get might not hold. There might be insufficient permission to access counter__state(diz) (test_functions.vpr@41.36--41.53) [24230]"}
          NoPerm < perm ==> NoPerm < oldMask[null, counter__state(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume counter__get(PostHeap, diz) == counter__get(oldHeap, diz) + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(counter__state(diz), write) -- test_functions.vpr@45.3--45.41
    assume counter__state#trigger(Heap, counter__state(diz));
    assume Heap[null, counter__state(diz)] == FrameFragment(Heap[diz, counter__x]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding counter__state(diz) might fail. There might be insufficient permission to access counter__state(diz) (test_functions.vpr@45.3--45.41) [24233]"}
        perm <= Mask[null, counter__state(diz)];
    }
    Mask := Mask[null, counter__state(diz):=Mask[null, counter__state(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, counter__state(diz))) {
        havoc newVersion;
        Heap := Heap[null, counter__state(diz):=newVersion];
      }
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, counter__x:=Mask[diz, counter__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := diz.counter__x + 1 -- test_functions.vpr@46.3--46.36
    
    // -- Check definedness of diz.counter__x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.counter__x (test_functions.vpr@46.3--46.36) [24235]"}
        HasDirectPerm(Mask, diz, counter__x);
    __flatten_2 := Heap[diz, counter__x] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := __flatten_2 -- test_functions.vpr@47.3--47.29
    __flatten_4 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.counter__x := __flatten_4 -- test_functions.vpr@48.3--48.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.counter__x (test_functions.vpr@48.3--48.32) [24236]"}
      FullPerm == Mask[diz, counter__x];
    Heap := Heap[diz, counter__x:=__flatten_4];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(counter__state(diz), write) -- test_functions.vpr@49.3--49.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding counter__state(diz) might fail. There might be insufficient permission to access diz.counter__x (test_functions.vpr@49.3--49.39) [24239]"}
        perm <= Mask[diz, counter__x];
    }
    Mask := Mask[diz, counter__x:=Mask[diz, counter__x] - perm];
    perm := FullPerm;
    Mask := Mask[null, counter__state(diz):=Mask[null, counter__state(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume counter__state#trigger(Heap, counter__state(diz));
    assume Heap[null, counter__state(diz)] == FrameFragment(Heap[diz, counter__x]);
    if (!HasDirectPerm(Mask, null, counter__state(diz))) {
      Heap := Heap[null, counter__state#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, counter__state(diz):=freshVersion];
    }
    Heap := Heap[null, counter__state#sm(diz):=Heap[null, counter__state#sm(diz)][diz, counter__x:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of counter__incr might not hold. There might be insufficient permission to access counter__state(diz) (test_functions.vpr@40.11--40.42) [24241]"}
        perm <= Mask[null, counter__state(diz)];
    }
    Mask := Mask[null, counter__state(diz):=Mask[null, counter__state(diz)] - perm];
    assert {:msg "  Postcondition of counter__incr might not hold. Assertion counter__get(diz) == old(counter__get(diz)) + 1 might not hold. (test_functions.vpr@41.11--41.58) [24242]"}
      counter__get(Heap, diz) == counter__get(oldHeap, diz) + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}