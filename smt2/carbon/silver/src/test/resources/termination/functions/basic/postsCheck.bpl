// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:33:51
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/postsCheck.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/postsCheck-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: foo
// - height 1: h
// - height 0: g
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
// Translation of domain IntWellFoundedOrder
// ==================================================

// The type for domain IntWellFoundedOrder
type IntWellFoundedOrderDomainType;

// Translation of domain axiom integer_ax_dec
axiom (forall int1: int, int2: int ::
  { (decreasing(int1, int2): bool) }
  int1 < int2 ==> (decreasing(int1, int2): bool)
);

// Translation of domain axiom integer_ax_bound
axiom (forall int1: int ::
  { (bounded(int1): bool) }
  int1 >= 0 ==> (bounded(int1): bool)
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
// Translation of function h
// ==================================================

// Uninterpreted function definitions
function  h_3(Heap: HeapType, x: int): int;
function  h'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { h_3(Heap, x) }
  h_3(Heap, x) == h'(Heap, x) && dummyFunction(h#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { h'(Heap, x) }
  dummyFunction(h#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), h_3(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> x >= 0 ==> h_3(Heap, x) == (if x == 0 then 0 else 1 + h'(Heap, x - 1))
);

// Framing axioms
function  h#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), h'(Heap, x) }
  state(Heap, Mask) ==> h'(Heap, x) == h#frame(EmptyFrame, x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), h'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || h#trigger_1(EmptyFrame, x)) ==> x >= 0 ==> h'(Heap, x) == x
);
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), h'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || h#trigger_1(EmptyFrame, x)) ==> x >= 0 ==> h'(Heap, x) > 0 ==> h'(Heap, x) == h'(Heap, h'(Heap, x) - 1) + 1
);

// Trigger function (controlling recursive postconditions)
function  h#trigger_1(frame: FrameType, x: int): bool;

// State-independent trigger function
function  h#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure h#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? 0 : 1 + h(x - 1))
      if (x == 0) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function h might not hold. Assertion x - 1 >= 0 might not hold. (postsCheck.vpr@12.22--12.28) [223608]"}
            x - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume h#trigger_1(EmptyFrame, x - 1);
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then 0 else 1 + h_3(Heap, x - 1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of h might not hold. Assertion result == x might not hold. (postsCheck.vpr@9.13--9.24) [223609]"}
      Result == x;
    if (Result > 0) {
      
      // -- Check definedness of result == h(result - 1) + 1
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          assert {:msg "  Precondition of function h might not hold. Assertion result - 1 >= 0 might not hold. (postsCheck.vpr@10.38--10.49) [223610]"}
            Result - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume h#trigger_1(EmptyFrame, Result - 1);
        }
      assert {:msg "  Postcondition of h might not hold. Assertion result == h(result - 1) + 1 might not hold. (postsCheck.vpr@10.13--10.53) [223611]"}
        Result == h_3(Heap, Result - 1) + 1;
    }
}

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_2(Heap: HeapType, x: int): int;
function  foo'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { foo_2(Heap, x) }
  foo_2(Heap, x) == foo'(Heap, x) && dummyFunction(foo#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { foo'(Heap, x) }
  dummyFunction(foo#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), foo_2(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> x >= 0 ==> foo_2(Heap, x) == (if x == 0 then 0 else 1 + foo'(Heap, x - 1))
);

// Framing axioms
function  foo#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), foo'(Heap, x) }
  state(Heap, Mask) ==> foo'(Heap, x) == foo#frame(EmptyFrame, x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), foo'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || foo#trigger(EmptyFrame, x)) ==> x >= 0 ==> foo'(Heap, x) == x
);
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), foo'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || foo#trigger(EmptyFrame, x)) ==> x >= 0 ==> foo'(Heap, x) == foo'(Heap, foo'(Heap, x))
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  foo#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure foo#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? 0 : 1 + foo(x - 1))
      if (x == 0) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function foo might not hold. Assertion x - 1 >= 0 might not hold. (postsCheck.vpr@22.22--22.30) [223612]"}
            x - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume foo#trigger(EmptyFrame, x - 1);
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then 0 else 1 + foo_2(Heap, x - 1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of foo might not hold. Assertion result == x might not hold. (postsCheck.vpr@18.13--18.24) [223613]"}
      Result == x;
    
    // -- Check definedness of result == foo(result)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function foo might not hold. Assertion result >= 0 might not hold. (postsCheck.vpr@20.23--20.34) [223614]"}
          Result >= 0;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume foo#trigger(EmptyFrame, Result);
      }
    assert {:msg "  Postcondition of foo might not hold. Assertion result == foo(result) might not hold. (postsCheck.vpr@20.13--20.34) [223615]"}
      Result == foo_2(Heap, Result);
}

// ==================================================
// Translation of function g
// ==================================================

// Uninterpreted function definitions
function  g_3(Heap: HeapType, x: int): int;
function  g'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { g_3(Heap, x) }
  g_3(Heap, x) == g'(Heap, x) && dummyFunction(g#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { g'(Heap, x) }
  dummyFunction(g#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), g_3(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> x >= 0 ==> g_3(Heap, x) == (if x == 0 then 0 else 1 + g'(Heap, x - 1))
);

// Framing axioms
function  g#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), g'(Heap, x) }
  state(Heap, Mask) ==> g'(Heap, x) == g#frame(EmptyFrame, x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), g'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || g#trigger(EmptyFrame, x)) ==> x >= 0 ==> g'(Heap, x) == x
);
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), g'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || g#trigger(EmptyFrame, x)) ==> x >= 0 ==> g'(Heap, x) == g'(Heap, x + 1) - 1
);

// Trigger function (controlling recursive postconditions)
function  g#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  g#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure g#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? 0 : 1 + g(x - 1))
      if (x == 0) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function g might not hold. Assertion x - 1 >= 0 might not hold. (postsCheck.vpr@32.22--32.28) [223616]"}
            x - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume g#trigger(EmptyFrame, x - 1);
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then 0 else 1 + g_3(Heap, x - 1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of g might not hold. Assertion result == x might not hold. (postsCheck.vpr@28.13--28.24) [223617]"}
      Result == x;
    
    // -- Check definedness of result == g(x + 1) - 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function g might not hold. Assertion x + 1 >= 0 might not hold. (postsCheck.vpr@30.23--30.31) [223618]"}
          x + 1 >= 0;
        // Stop execution
        assume false;
      } else {
        // Enable postcondition for recursive call
        assume g#trigger(EmptyFrame, x + 1);
      }
    assert {:msg "  Postcondition of g might not hold. Assertion result == g(x + 1) - 1 might not hold. (postsCheck.vpr@30.13--30.35) [223619]"}
      Result == g_3(Heap, x + 1) - 1;
}

// ==================================================
// Translation of method h_termination_proof
// ==================================================

procedure h_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [223620]"}
          (decreasing(x - 1, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223621]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method h_posts_termination_proof
// ==================================================

procedure h_posts_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var $result: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if ($result == x) -- <no position>
    if ($result == x) {
      
      // -- Translating statement: if ($result > 0) -- <no position>
        if ($result > 0) {
          
          // -- Translating statement: assert (decreasing($result - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing($result - 1, old(x)): Bool) might not hold. (<no position>) [223622]"}
              (decreasing($result - 1, x): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223623]"}
              (bounded(x): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo_termination_proof
// ==================================================

procedure foo_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [223624]"}
          (decreasing(x - 1, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223625]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo_posts_termination_proof
// ==================================================

procedure foo_posts_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var $result: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if ($result == x) -- <no position>
    if ($result == x) {
      
      // -- Translating statement: assert (decreasing($result, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing($result, old(x)): Bool) might not hold. (<no position>) [223626]"}
          (decreasing($result, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223627]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method g_termination_proof
// ==================================================

procedure g_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
    } else {
      
      // -- Translating statement: assert (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [223628]"}
          (decreasing(x - 1, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223629]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method g_posts_termination_proof
// ==================================================

procedure g_posts_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var $result: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if ($result == x) -- <no position>
    if ($result == x) {
      
      // -- Translating statement: assert (decreasing(x + 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x + 1, old(x)): Bool) might not hold. (<no position>) [223630]"}
          (decreasing(x + 1, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223631]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}