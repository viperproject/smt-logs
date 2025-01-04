// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:06:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/heap_dependent_triggers.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/heap_dependent_triggers-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
// - height 1: fun01
// - height 0: bar01
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

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, x: Ref, i: int): bool;
function  fun01'(Heap: HeapType, x: Ref, i: int): bool;
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { fun01(Heap, x, i) }
  fun01(Heap, x, i) == fun01'(Heap, x, i) && dummyFunction(fun01#triggerStateless(x, i))
);
axiom (forall Heap: HeapType, x: Ref, i: int ::
  { fun01'(Heap, x, i) }
  dummyFunction(fun01#triggerStateless(x, i))
);

// Framing axioms
function  fun01#frame(frame: FrameType, x: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, i: int ::
  { state(Heap, Mask), fun01'(Heap, x, i) }
  state(Heap, Mask) ==> fun01'(Heap, x, i) == fun01#frame(FrameFragment(Heap[x, f_7]), x, i)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, x: Ref, i: int): bool;

// State-independent trigger function
function  fun01#triggerStateless(x: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure fun01#definedness(x: Ref, i: int) returns (Result: bool)
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
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function bar01
// ==================================================

// Uninterpreted function definitions
function  bar01(Heap: HeapType, i: int): int;
function  bar01'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { bar01(Heap, i) }
  bar01(Heap, i) == bar01'(Heap, i) && dummyFunction(bar01#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { bar01'(Heap, i) }
  dummyFunction(bar01#triggerStateless(i))
);

// Framing axioms
function  bar01#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), bar01'(Heap, i) }
  state(Heap, Mask) ==> bar01'(Heap, i) == bar01#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  bar01#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  bar01#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure bar01#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of method test01a
// ==================================================

procedure test01a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Translating statement: inhale acc(x.f, write) -- heap_dependent_triggers.vpr@12.3--12.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int :: { fun01(x, i) } bar01(i) > 0) -- heap_dependent_triggers.vpr@14.3--14.53
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun01(x, i) } bar01(i) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun01#frame(FrameFragment(Heap[x, f_7]), x, i_1) }
      bar01(Heap, i_1) > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) -- heap_dependent_triggers.vpr@16.3--16.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@16.10--16.18) [155848]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- heap_dependent_triggers.vpr@17.3--17.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x, 5) -- heap_dependent_triggers.vpr@19.3--19.21
    assume state(Heap, Mask);
    
    // -- Check definedness of fun01(x, 5)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@19.10--19.21) [155850]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun01(Heap, x, 5);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert bar01(5) > 0 -- heap_dependent_triggers.vpr@23.3--23.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of bar01(5) > 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion bar01(5) > 0 might not hold. (heap_dependent_triggers.vpr@23.10--23.22) [155851]"}
      bar01(Heap, 5) > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01b
// ==================================================

procedure test01b(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(y.f, write) -- heap_dependent_triggers.vpr@27.3--27.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x != y -- heap_dependent_triggers.vpr@28.3--28.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion x != y might not hold. (heap_dependent_triggers.vpr@28.10--28.16) [155854]"}
      x != y;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int :: { fun01(x, i) } bar01(i) > 0) -- heap_dependent_triggers.vpr@30.3--30.53
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun01(x, i) } bar01(i) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun01#frame(FrameFragment(Heap[x, f_7]), x, i_1) }
      bar01(Heap, i_1) > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(y.f, write) -- heap_dependent_triggers.vpr@32.3--32.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (heap_dependent_triggers.vpr@32.10--32.18) [155856]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.f, write) -- heap_dependent_triggers.vpr@33.3--33.18
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x, 5) -- heap_dependent_triggers.vpr@35.3--35.21
    assume state(Heap, Mask);
    
    // -- Check definedness of fun01(x, 5)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@35.10--35.21) [155858]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun01(Heap, x, 5);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert bar01(5) > 0 -- heap_dependent_triggers.vpr@36.3--36.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of bar01(5) > 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion bar01(5) > 0 might not hold. (heap_dependent_triggers.vpr@36.10--36.22) [155859]"}
      bar01(Heap, 5) > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun01(x, i) } bar01(i) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun01#frame(FrameFragment(Heap[x, f_7]), x, i_1) }
      bar01(Heap, i_1) > 0
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(x.f, write) -- heap_dependent_triggers.vpr@43.3--43.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@43.10--43.18) [155861]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- heap_dependent_triggers.vpr@44.3--44.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale old(fun01(x, 5)) -- heap_dependent_triggers.vpr@46.3--46.26
    assume state(Heap, Mask);
    
    // -- Check definedness of old(fun01(x, 5))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@46.14--46.25) [155863]"}
          NoPerm < perm ==> NoPerm < oldMask[x, f_7];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume fun01(oldHeap, x, 5);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(bar01(5)) > 0 -- heap_dependent_triggers.vpr@47.3--47.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of old(bar01(5)) > 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion old(bar01(5)) > 0 might not hold. (heap_dependent_triggers.vpr@47.10--47.27) [155864]"}
      bar01(oldHeap, 5) > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03a
// ==================================================

procedure test03a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
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
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int :: { old(fun01(x, i)) } bar01(i) > 0) -- heap_dependent_triggers.vpr@53.3--53.58
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { old(fun01(x, i)) } bar01(i) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun01#frame(FrameFragment(oldHeap[x, f_7]), x, i_1) }
      bar01(Heap, i_1) > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale old(fun01(x, 5)) -- heap_dependent_triggers.vpr@55.3--55.26
    assume state(Heap, Mask);
    
    // -- Check definedness of old(fun01(x, 5))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@55.14--55.25) [155865]"}
          NoPerm < perm ==> NoPerm < oldMask[x, f_7];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume fun01(oldHeap, x, 5);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(bar01(5)) > 0 -- heap_dependent_triggers.vpr@56.3--56.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of old(bar01(5)) > 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion old(bar01(5)) > 0 might not hold. (heap_dependent_triggers.vpr@56.10--56.27) [155866]"}
      bar01(oldHeap, 5) > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03b
// ==================================================

procedure test03b(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int :: { old(fun01(x, i)) } bar01(i) > 0) -- heap_dependent_triggers.vpr@62.3--62.58
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { old(fun01(x, i)) } bar01(i) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun01#frame(FrameFragment(oldHeap[x, f_7]), x, i_1) }
      bar01(Heap, i_1) > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(y.f, write) -- heap_dependent_triggers.vpr@64.3--64.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (heap_dependent_triggers.vpr@64.10--64.18) [155868]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.f, write) -- heap_dependent_triggers.vpr@65.3--65.18
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x, 5) -- heap_dependent_triggers.vpr@67.3--67.21
    assume state(Heap, Mask);
    
    // -- Check definedness of fun01(x, 5)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@67.10--67.21) [155870]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun01(Heap, x, 5);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert bar01(5) > 0 -- heap_dependent_triggers.vpr@68.3--68.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of bar01(5) > 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion bar01(5) > 0 might not hold. (heap_dependent_triggers.vpr@68.10--68.22) [155871]"}
      bar01(Heap, 5) > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03c
// ==================================================

procedure test03c(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int :: { old(fun01(x, i)) } bar01(i) > 0) -- heap_dependent_triggers.vpr@74.3--74.58
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { old(fun01(x, i)) } bar01(i) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun01#frame(FrameFragment(oldHeap[x, f_7]), x, i_1) }
      bar01(Heap, i_1) > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) -- heap_dependent_triggers.vpr@76.3--76.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@76.10--76.18) [155873]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.f, write) -- heap_dependent_triggers.vpr@77.3--77.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x, 5) -- heap_dependent_triggers.vpr@79.3--79.21
    assume state(Heap, Mask);
    
    // -- Check definedness of fun01(x, 5)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (heap_dependent_triggers.vpr@79.10--79.21) [155875]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun01(Heap, x, 5);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert bar01(5) > 0 -- heap_dependent_triggers.vpr@83.3--83.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of bar01(5) > 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion bar01(5) > 0 might not hold. (heap_dependent_triggers.vpr@83.10--83.22) [155876]"}
      bar01(Heap, 5) > 0;
    assume state(Heap, Mask);
}