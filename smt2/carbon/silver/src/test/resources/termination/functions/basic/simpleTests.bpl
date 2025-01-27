// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/simpleTests.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/simpleTests-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 5: fun2
// - height 4: fun5
// - height 3: fun6
// - height 2: fun1
// - height 1: fun4
// - height 0: fun3
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
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, x: int): int;
function  fun1'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun1(Heap, x) }
  fun1(Heap, x) == fun1'(Heap, x) && dummyFunction(fun1#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun1'(Heap, x) }
  dummyFunction(fun1#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun1(Heap, x) == (if x > -10 then fun1'(Heap, x - 1) else 6)
);

// Framing axioms
function  fun1#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun1'(Heap, x) }
  state(Heap, Mask) ==> fun1'(Heap, x) == fun1#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun1#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun1#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x > -10 ? fun1(x - 1) : 6)
      if (x > -10) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun1#trigger(EmptyFrame, x - 1);
        }
      }
  
  // -- Translate function body
    Result := (if x > -10 then fun1(Heap, x - 1) else 6);
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, x: int): int;
function  fun2'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun2(Heap, x) }
  fun2(Heap, x) == fun2'(Heap, x) && dummyFunction(fun2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun2'(Heap, x) }
  dummyFunction(fun2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun2(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> fun2(Heap, x) == (if x > 5 then (if x > 10 then fun2'(Heap, x - 2) else fun2'(Heap, x - 1)) else 1)
);

// Framing axioms
function  fun2#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun2'(Heap, x) }
  state(Heap, Mask) ==> fun2'(Heap, x) == fun2#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun2#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x > 5 ? (x > 10 ? fun2(x - 2) : fun2(x - 1)) : 1)
      if (x > 5) {
        if (x > 10) {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume fun2#trigger(EmptyFrame, x - 2);
          }
        } else {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume fun2#trigger(EmptyFrame, x - 1);
          }
        }
      }
  
  // -- Translate function body
    Result := (if x > 5 then (if x > 10 then fun2(Heap, x - 2) else fun2(Heap, x - 1)) else 1);
}

// ==================================================
// Translation of function fun3
// ==================================================

// Uninterpreted function definitions
function  fun3(Heap: HeapType, x: int, y: int): int;
function  fun3'(Heap: HeapType, x: int, y: int): int;
axiom (forall Heap: HeapType, x: int, y: int ::
  { fun3(Heap, x, y) }
  fun3(Heap, x, y) == fun3'(Heap, x, y) && dummyFunction(fun3#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: int, y: int ::
  { fun3'(Heap, x, y) }
  dummyFunction(fun3#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int ::
  { state(Heap, Mask), fun3(Heap, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> x > 0 && y > 0 ==> fun3(Heap, x, y) == (if y >= x then 8 else fun3'(Heap, y, y))
);

// Framing axioms
function  fun3#frame(frame: FrameType, x: int, y: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int ::
  { state(Heap, Mask), fun3'(Heap, x, y) }
  state(Heap, Mask) ==> fun3'(Heap, x, y) == fun3#frame(EmptyFrame, x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun3#trigger(frame: FrameType, x: int, y: int): bool;

// State-independent trigger function
function  fun3#triggerStateless(x: int, y: int): int;

// Check contract well-formedness and postcondition
procedure fun3#definedness(x: int, y: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume x > 0;
    assume y > 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (y >= x ? 8 : fun3(y, y))
      if (y >= x) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function fun3 might not hold. Assertion y > 0 might not hold. (simpleTests.vpr@24.17--24.26) [18181]"}
            y > 0;
          assert {:msg "  Precondition of function fun3 might not hold. Assertion y > 0 might not hold. (simpleTests.vpr@24.17--24.26) [18182]"}
            y > 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun3#trigger(EmptyFrame, y, y);
        }
      }
  
  // -- Translate function body
    Result := (if y >= x then 8 else fun3(Heap, y, y));
}

// ==================================================
// Translation of function fun4
// ==================================================

// Uninterpreted function definitions
function  fun4(Heap: HeapType, x: int, y: int): int;
function  fun4'(Heap: HeapType, x: int, y: int): int;
axiom (forall Heap: HeapType, x: int, y: int ::
  { fun4(Heap, x, y) }
  fun4(Heap, x, y) == fun4'(Heap, x, y) && dummyFunction(fun4#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: int, y: int ::
  { fun4'(Heap, x, y) }
  dummyFunction(fun4#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int ::
  { state(Heap, Mask), fun4(Heap, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun4(Heap, x, y) == (if x < 5 || y < 8 then 10 else fun4'(Heap, x - 2, y - 3))
);

// Framing axioms
function  fun4#frame(frame: FrameType, x: int, y: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int ::
  { state(Heap, Mask), fun4'(Heap, x, y) }
  state(Heap, Mask) ==> fun4'(Heap, x, y) == fun4#frame(EmptyFrame, x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun4#trigger(frame: FrameType, x: int, y: int): bool;

// State-independent trigger function
function  fun4#triggerStateless(x: int, y: int): int;

// Check contract well-formedness and postcondition
procedure fun4#definedness(x: int, y: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x < 5 || y < 8 ? 10 : fun4(x - 2, y - 3))
      if (x < 5 || y < 8) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun4#trigger(EmptyFrame, x - 2, y - 3);
        }
      }
  
  // -- Translate function body
    Result := (if x < 5 || y < 8 then 10 else fun4(Heap, x - 2, y - 3));
}

// ==================================================
// Translation of function fun5
// ==================================================

// Uninterpreted function definitions
function  fun5(Heap: HeapType, x: int): int;
function  fun5'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun5(Heap, x) }
  fun5(Heap, x) == fun5'(Heap, x) && dummyFunction(fun5#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun5'(Heap, x) }
  dummyFunction(fun5#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun5(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> fun5(Heap, x) == (if x < 10 then fun5'(Heap, x + 2) else 7)
);

// Framing axioms
function  fun5#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun5'(Heap, x) }
  state(Heap, Mask) ==> fun5'(Heap, x) == fun5#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun5#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun5#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun5#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x < 10 ? fun5(x + 2) : 7)
      if (x < 10) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun5#trigger(EmptyFrame, x + 2);
        }
      }
  
  // -- Translate function body
    Result := (if x < 10 then fun5(Heap, x + 2) else 7);
}

// ==================================================
// Translation of function fun6
// ==================================================

// Uninterpreted function definitions
function  fun6(Heap: HeapType, x: int): int;
function  fun6'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { fun6(Heap, x) }
  fun6(Heap, x) == fun6'(Heap, x) && dummyFunction(fun6#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { fun6'(Heap, x) }
  dummyFunction(fun6#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun6(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> fun6(Heap, x) == (if x < 0 then 0 else fun6'(Heap, x - 1))
);

// Framing axioms
function  fun6#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), fun6'(Heap, x) }
  state(Heap, Mask) ==> fun6'(Heap, x) == fun6#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun6#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  fun6#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure fun6#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x < 0 ? 0 : fun6(x - 1))
      if (x < 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fun6#trigger(EmptyFrame, x - 1);
        }
      }
  
  // -- Translate function body
    Result := (if x < 0 then 0 else fun6(Heap, x - 1));
}

// ==================================================
// Translation of method fun1_termination_proof
// ==================================================

procedure fun1_termination_proof(x: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x > -10) -- <no position>
    if (x > -10) {
      
      // -- Translating statement: assert (decreasing(x - 1 + 10, old(x + 10)): Bool) &&
  //   (bounded(old(x + 10)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x - 1 + 10, old(x + 10)): Bool) might not hold. (<no position>) [18183]"}
          (decreasing(x - 1 + 10, x + 10): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x + 10)): Bool) might not hold. (<no position>) [18184]"}
          (bounded(x + 10): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fun2_termination_proof
// ==================================================

procedure fun2_termination_proof(x: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x > 5) -- <no position>
    if (x > 5) {
      
      // -- Translating statement: if (x > 10) -- <no position>
        if (x > 10) {
          
          // -- Translating statement: assert (decreasing(x - 2 + (x - 2), old(x + x)): Bool) &&
  //   (bounded(old(x + x)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(x - 2 + (x - 2), old(x + x)): Bool) might not hold. (<no position>) [18185]"}
              (decreasing(x - 2 + (x - 2), x + x): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(x + x)): Bool) might not hold. (<no position>) [18186]"}
              (bounded(x + x): bool);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: assert (decreasing(x - 1 + (x - 1), old(x + x)): Bool) &&
  //   (bounded(old(x + x)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(x - 1 + (x - 1), old(x + x)): Bool) might not hold. (<no position>) [18187]"}
              (decreasing(x - 1 + (x - 1), x + x): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(x + x)): Bool) might not hold. (<no position>) [18188]"}
              (bounded(x + x): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fun3_termination_proof
// ==================================================

procedure fun3_termination_proof(x: int, y: int) returns ()
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
    assume x > 0;
    assume y > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (y >= x) -- <no position>
    if (y >= x) {
    } else {
      
      // -- Translating statement: assert (decreasing(y, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(y, old(x)): Bool) might not hold. (<no position>) [18189]"}
          (decreasing(y, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [18190]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fun3_pres_termination_proof
// ==================================================

procedure fun3_pres_termination_proof(x: int, y: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b) -- simpleTests.vpr@21.10--21.20
    if (b_24) {
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale x > 0 -- <no position>
        assume x > 0;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fun4_termination_proof
// ==================================================

procedure fun4_termination_proof(x: int, y: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x < 5 || y < 8) -- <no position>
    if (x < 5 || y < 8) {
    } else {
      
      // -- Translating statement: assert (decreasing(x - 2, old(x)): Bool) && (bounded(old(x)): Bool) ||
  //   x - 2 == old(x) &&
  //   ((decreasing(y - 3, old(y)): Bool) && (bounded(old(y)): Bool)) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x - 2, old(x)): Bool) && (bounded(old(x)): Bool) || x - 2 == old(x) && ((decreasing(y - 3, old(y)): Bool) && (bounded(old(y)): Bool)) might not hold. (<no position>) [18191]"}
          ((decreasing(x - 2, x): bool) && (bounded(x): bool)) || (x - 2 == x && ((decreasing(y - 3, y): bool) && (bounded(y): bool)));
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fun5_termination_proof
// ==================================================

procedure fun5_termination_proof(x: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x < 10) -- <no position>
    if (x < 10) {
      
      // -- Translating statement: assert (decreasing(-(x + 2) + 12, old(-x + 12)): Bool) &&
  //   (bounded(old(-x + 12)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(-(x + 2) + 12, old(-x + 12)): Bool) might not hold. (<no position>) [18192]"}
          (decreasing(-(x + 2) + 12, -x + 12): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(-x + 12)): Bool) might not hold. (<no position>) [18193]"}
          (bounded(-x + 12): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}