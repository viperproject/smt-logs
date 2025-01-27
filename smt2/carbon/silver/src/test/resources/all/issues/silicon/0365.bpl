// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:19:41
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0365.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0365-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: resource
// - height 1: tokCountRef
// - height 0: readers
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
// Translation of domain Epsilon
// ==================================================

// The type for domain Epsilon
type EpsilonDomainType;

// Translation of domain function eps
function  eps(): Perm;

// Translation of domain axiom epsilonPositive
axiom NoPerm < (eps(): Perm);

// ==================================================
// Translation of domain parallelHeaps
// ==================================================

// The type for domain parallelHeaps
type parallelHeapsDomainType;

// Translation of domain function temp
function  temp(x_37: Ref): Ref;

// Translation of domain function temp_inv
function  temp_inv(x_37: Ref): Ref;

// Translation of domain function heap
function  heap(x_37: Ref): int;

// Translation of domain function is_ghost
function  is_ghost(x_37: Ref): bool;

// Translation of domain axiom inv_temp
axiom (forall r_1: Ref ::
  { (temp(r_1): Ref) }
  (temp_inv((temp(r_1): Ref)): Ref) == r_1 && (if (is_ghost(r_1): bool) then (temp(r_1): Ref) == r_1 else (heap((temp(r_1): Ref)): int) == (heap(r_1): int) - 3)
);

// Translation of domain axiom inv_temp_inv
axiom (forall r_1: Ref ::
  { (temp_inv(r_1): Ref) }
  (temp((temp_inv(r_1): Ref)): Ref) == r_1 && (if (is_ghost(r_1): bool) then (temp_inv(r_1): Ref) == r_1 else (heap((temp_inv(r_1): Ref)): int) == (heap(r_1): int) + 3)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique tokCount: Field NormalField int;
axiom !IsPredicateField(tokCount);
axiom !IsWandField(tokCount);

// ==================================================
// Translation of function tokCountRef
// ==================================================

// Uninterpreted function definitions
function  tokCountRef(Heap: HeapType, r_1: Ref): Ref;
function  tokCountRef'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { tokCountRef(Heap, r_1) }
  tokCountRef(Heap, r_1) == tokCountRef'(Heap, r_1) && dummyFunction(tokCountRef#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { tokCountRef'(Heap, r_1) }
  dummyFunction(tokCountRef#triggerStateless(r_1))
);

// Framing axioms
function  tokCountRef#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), tokCountRef'(Heap, r_1) }
  state(Heap, Mask) ==> tokCountRef'(Heap, r_1) == tokCountRef#frame(EmptyFrame, r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), tokCountRef'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || tokCountRef#trigger(EmptyFrame, r_1)) ==> tokCountRef'(Heap, (temp(r_1): Ref)) == tokCountRef'(Heap, r_1)
);

// Trigger function (controlling recursive postconditions)
function  tokCountRef#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  tokCountRef#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure tokCountRef#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of tokCountRef(temp(r)) == result
      if (*) {
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume tokCountRef#trigger(EmptyFrame, (temp(r_1): Ref));
      }
    assume tokCountRef(Heap, (temp(r_1): Ref)) == Result;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function resource
// ==================================================

// Uninterpreted function definitions
function  resource(Heap: HeapType): Ref;
function  resource'(Heap: HeapType): Ref;
axiom (forall Heap: HeapType ::
  { resource(Heap) }
  resource(Heap) == resource'(Heap) && dummyFunction(resource#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { resource'(Heap) }
  dummyFunction(resource#triggerStateless())
);

// Framing axioms
function  resource#frame(frame: FrameType): Ref;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), resource'(Heap) }
  state(Heap, Mask) ==> resource'(Heap) == resource#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  resource#trigger(frame: FrameType): bool;

// State-independent trigger function
function  resource#triggerStateless(): Ref;

// Check contract well-formedness and postcondition
procedure resource#definedness() returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of function readers
// ==================================================

// Uninterpreted function definitions
function  readers(Heap: HeapType): Ref;
function  readers'(Heap: HeapType): Ref;
axiom (forall Heap: HeapType ::
  { readers(Heap) }
  readers(Heap) == readers'(Heap) && dummyFunction(readers#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { readers'(Heap) }
  dummyFunction(readers#triggerStateless())
);

// Framing axioms
function  readers#frame(frame: FrameType): Ref;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), readers'(Heap) }
  state(Heap, Mask) ==> readers'(Heap) == readers#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  readers#trigger(frame: FrameType): bool;

// State-independent trigger function
function  readers#triggerStateless(): Ref;

// Check contract well-formedness and postcondition
procedure readers#definedness() returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of method try_lock_shared
// ==================================================

procedure try_lock_shared() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var v1: int;
  var perm: Perm;
  var v0: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v1 := havocedInt() -- 0365.vpr@42.5--42.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc v1;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 1 / 1 - (v1 \ 4 + 1) * eps() >= none -- 0365.vpr@44.12--44.41
    assume NoPerm <= 1 / 1 - real(v1 div 4 + 1) * (eps(): Perm);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale v1 >= 0 &&
  //   (acc(tokCountRef(resource()).tokCount, 1 / 1 - (v1 \ 4 + 1) * eps()) &&
  //   acc(tokCountRef(readers()).tokCount, 1 / 1 - v1 \ 4 * eps())) -- 0365.vpr@46.5--49.6
    assume v1 >= 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(tokCountRef(resource()).tokCount, 1 / 1 - (v1 \ 4 + 1) * eps())
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    perm := 1 / 1 - real(v1 div 4 + 1) * (eps(): Perm);
    assert {:msg "  Inhale might fail. Fraction 1 / 1 - (v1 \ 4 + 1) * eps() might be negative. (0365.vpr@46.13--48.63) [70564]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> tokCountRef(Heap, resource(Heap)) != null;
    Mask := Mask[tokCountRef(Heap, resource(Heap)), tokCount:=Mask[tokCountRef(Heap, resource(Heap)), tokCount] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(tokCountRef(readers()).tokCount, 1 / 1 - v1 \ 4 * eps())
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    perm := 1 / 1 - real(v1 div 4) * (eps(): Perm);
    assert {:msg "  Inhale might fail. Fraction 1 / 1 - v1 \ 4 * eps() might be negative. (0365.vpr@46.13--48.63) [70565]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> tokCountRef(Heap, readers(Heap)) != null;
    Mask := Mask[tokCountRef(Heap, readers(Heap)), tokCount:=Mask[tokCountRef(Heap, readers(Heap)), tokCount] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: v0 := v1 \ 4 -- 0365.vpr@51.5--51.16
    v0 := v1 div 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale 1 / 1 > v0 * eps() / 1 -- 0365.vpr@52.12--52.32
    assume real(v0) * (eps(): Perm) / 1 < 1 / 1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(tokCountRef(readers()).tokCount) >= 1 / 1 - v0 * eps() / 1 -- 0365.vpr@53.5--53.74
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of perm(tokCountRef(readers()).tokCount) >= 1 / 1 - v0 * eps() / 1
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion perm(tokCountRef(readers()).tokCount) >= 1 / 1 - v0 * eps() / 1 might not hold. (0365.vpr@53.13--53.74) [70566]"}
      1 / 1 - real(v0) * (eps(): Perm) / 1 <= Mask[tokCountRef(Heap, readers(Heap)), tokCount];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(tokCountRef(readers()).tokCount, 1 / 1 - v0 * eps() / 1) -- 0365.vpr@54.5--54.75
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of acc(tokCountRef(readers()).tokCount, 1 / 1 - v0 * eps() / 1)
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    perm := 1 / 1 - real(v0) * (eps(): Perm) / 1;
    assert {:msg "  Assert might fail. Fraction 1 / 1 - v0 * eps() / 1 might be negative. (0365.vpr@54.13--54.75) [70567]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access tokCountRef(readers()).tokCount (0365.vpr@54.13--54.75) [70568]"}
        perm <= AssertMask[tokCountRef(AssertHeap, readers(AssertHeap)), tokCount];
    }
    AssertMask := AssertMask[tokCountRef(AssertHeap, readers(AssertHeap)), tokCount:=AssertMask[tokCountRef(AssertHeap, readers(AssertHeap)), tokCount] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method havocedInt
// ==================================================

procedure havocedInt() returns (res: int)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}