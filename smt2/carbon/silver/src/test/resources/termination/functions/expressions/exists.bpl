// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:57:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/exists.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/exists-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_6: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_6, f_9] }
  Heap[o_6, $allocated] ==> Heap[Heap[o_6, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref, f_35: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, f_35] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_30, f_35) ==> Heap[o_30, f_35] == ExhaleHeap[o_30, f_35]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_30, $allocated] ==> ExhaleHeap[o_30, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_6: Ref, f_16: (Field A B), v: B ::
  { Heap[o_6, f_16:=v] }
  succHeap(Heap, Heap[o_6, f_16:=v])
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
// - height 6: nonTerminating
// - height 5: partiallyTerminating
// - height 4: test
// - height 3: test3
// - height 2: test4
// - height 1: test5
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
function  test_2(Heap: HeapType, x: Ref): bool;
function  test'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { test_2(Heap, x) }
  test_2(Heap, x) == test'(Heap, x) && dummyFunction(test#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { test'(Heap, x) }
  dummyFunction(test#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test_2(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> test_2(Heap, x) == (exists x2: Ref ::
    { nonTerminating#frame(EmptyFrame, x2) }
    x == x2 && nonTerminating(Heap, x2)
  )
);

// Framing axioms
function  test#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test'(Heap, x) }
  state(Heap, Mask) ==> test'(Heap, x) == test#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  test#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  test#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure test#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var x2_26: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (exists x2: Ref :: { nonTerminating(x2) } x == x2 && nonTerminating(x2))
      if (*) {
        if (x == x2_26) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (exists x2_2_1: Ref ::
      { nonTerminating#frame(EmptyFrame, x2_2_1) }
      x == x2_2_1 && nonTerminating(Heap, x2_2_1)
    );
}

// ==================================================
// Translation of function test2
// ==================================================

// Uninterpreted function definitions
function  test2_1(Heap: HeapType): bool;
function  test2'(Heap: HeapType): bool;
axiom (forall Heap: HeapType ::
  { test2_1(Heap) }
  test2_1(Heap) == test2'(Heap) && dummyFunction(test2#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { test2'(Heap) }
  dummyFunction(test2#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), test2_1(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> test2_1(Heap) == (exists x2: int ::
    { partiallyTerminating#frame(EmptyFrame, x2) }
    partiallyTerminating(Heap, x2)
  )
);

// Framing axioms
function  test2#frame(frame: FrameType): bool;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), test2'(Heap) }
  state(Heap, Mask) ==> test2'(Heap) == test2#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  test2#trigger(frame: FrameType): bool;

// State-independent trigger function
function  test2#triggerStateless(): bool;

// Check contract well-formedness and postcondition
procedure test2#definedness() returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (exists x2: Int :: { partiallyTerminating(x2) } partiallyTerminating(x2))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (exists x2_2_1: int ::
      { partiallyTerminating#frame(EmptyFrame, x2_2_1) }
      partiallyTerminating(Heap, x2_2_1)
    );
}

// ==================================================
// Translation of function test3
// ==================================================

// Uninterpreted function definitions
function  test3_1(Heap: HeapType, x: int): bool;
function  test3'(Heap: HeapType, x: int): bool;
axiom (forall Heap: HeapType, x: int ::
  { test3_1(Heap, x) }
  test3_1(Heap, x) == test3'(Heap, x) && dummyFunction(test3#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { test3'(Heap, x) }
  dummyFunction(test3#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), test3_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> x == 42 ==> test3_1(Heap, x) == (exists x2: int ::
    { partiallyTerminating#frame(EmptyFrame, x2) }
    x == x2 && partiallyTerminating(Heap, x2)
  )
);

// Framing axioms
function  test3#frame(frame: FrameType, x: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), test3'(Heap, x) }
  state(Heap, Mask) ==> test3'(Heap, x) == test3#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  test3#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  test3#triggerStateless(x: int): bool;

// Check contract well-formedness and postcondition
procedure test3#definedness(x: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var x2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume x == 42;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (exists x2: Int :: { partiallyTerminating(x2) } x == x2 && partiallyTerminating(x2))
      if (*) {
        if (x == x2_1) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (exists x2_2_1: int ::
      { partiallyTerminating#frame(EmptyFrame, x2_2_1) }
      x == x2_2_1 && partiallyTerminating(Heap, x2_2_1)
    );
}

// ==================================================
// Translation of function test4
// ==================================================

// Uninterpreted function definitions
function  test4_1(Heap: HeapType, x: int): bool;
function  test4'(Heap: HeapType, x: int): bool;
axiom (forall Heap: HeapType, x: int ::
  { test4_1(Heap, x) }
  test4_1(Heap, x) == test4'(Heap, x) && dummyFunction(test4#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { test4'(Heap, x) }
  dummyFunction(test4#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), test4_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> test4_1(Heap, x) == ((exists x2: int ::
    
    x == x2
  ) && partiallyTerminating(Heap, x))
);

// Framing axioms
function  test4#frame(frame: FrameType, x: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), test4'(Heap, x) }
  state(Heap, Mask) ==> test4'(Heap, x) == test4#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  test4#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  test4#triggerStateless(x: int): bool;

// Check contract well-formedness and postcondition
procedure test4#definedness(x: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (exists x2: Int :: x == x2) && partiallyTerminating(x)
      if (*) {
        assume false;
      }
      if ((exists x2_2_1: int ::
        
        x == x2_2_1
      )) {
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (exists x2_3: int ::
      
      x == x2_3
    ) && partiallyTerminating(Heap, x);
}

// ==================================================
// Translation of function test5
// ==================================================

// Uninterpreted function definitions
function  test5_1(Heap: HeapType, x: int): bool;
function  test5'(Heap: HeapType, x: int): bool;
axiom (forall Heap: HeapType, x: int ::
  { test5_1(Heap, x) }
  test5_1(Heap, x) == test5'(Heap, x) && dummyFunction(test5#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { test5'(Heap, x) }
  dummyFunction(test5#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), test5_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> test5_1(Heap, x) == ((exists x2: int ::
    
    x == x2 && x != x2
  ) && partiallyTerminating(Heap, x))
);

// Framing axioms
function  test5#frame(frame: FrameType, x: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), test5'(Heap, x) }
  state(Heap, Mask) ==> test5'(Heap, x) == test5#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  test5#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  test5#triggerStateless(x: int): bool;

// Check contract well-formedness and postcondition
procedure test5#definedness(x: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (exists x2: Int :: x == x2 && x != x2) && partiallyTerminating(x)
      if (*) {
        assume false;
      }
      if ((exists x2_2_1: int ::
        
        x == x2_2_1 && x != x2_2_1
      )) {
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (exists x2_3: int ::
      
      x == x2_3 && x != x2_3
    ) && partiallyTerminating(Heap, x);
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
    assume AssumeFunctionsAbove == 6;
}

// ==================================================
// Translation of function partiallyTerminating
// ==================================================

// Uninterpreted function definitions
function  partiallyTerminating(Heap: HeapType, x: int): bool;
function  partiallyTerminating'(Heap: HeapType, x: int): bool;
axiom (forall Heap: HeapType, x: int ::
  { partiallyTerminating(Heap, x) }
  partiallyTerminating(Heap, x) == partiallyTerminating'(Heap, x) && dummyFunction(partiallyTerminating#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { partiallyTerminating'(Heap, x) }
  dummyFunction(partiallyTerminating#triggerStateless(x))
);

// Framing axioms
function  partiallyTerminating#frame(frame: FrameType, x: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), partiallyTerminating'(Heap, x) }
  state(Heap, Mask) ==> partiallyTerminating'(Heap, x) == partiallyTerminating#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  partiallyTerminating#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  partiallyTerminating#triggerStateless(x: int): bool;

// Check contract well-formedness and postcondition
procedure partiallyTerminating#definedness(x: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
}

// ==================================================
// Translation of method test_termination_proof
// ==================================================

procedure test_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x21: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
  
  // -- Assumptions about local variables
    assume Heap[x21, $allocated];
  
  // -- Translating statement: inhale x == x21 && nonTerminating(x21) -- exists.vpr@12.5--12.52
    assume x == x21;
    assume state(Heap, Mask);
    
    // -- Check definedness of nonTerminating(x21)
      if (*) {
        // Stop execution
        assume false;
      }
    assume nonTerminating(Heap, x21);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x == x21) -- <no position>
    if (x == x21) {
      
      // -- Translating statement: assert false -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [223164]"}
          false;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_termination_proof
// ==================================================

procedure test2_termination_proof() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x22: int;
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
  
  // -- Translating statement: inhale partiallyTerminating(x22) -- exists.vpr@20.5--20.47
    assume state(Heap, Mask);
    
    // -- Check definedness of partiallyTerminating(x22)
      if (*) {
        // Stop execution
        assume false;
      }
    assume partiallyTerminating(Heap, x22);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x22 == 42 -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x22 == 42 might not hold. (exists.vpr@50.18--50.25) [223165]"}
      x22 == 42;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3_termination_proof
// ==================================================

procedure test3_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x23: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x == 42;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale x == x23 && partiallyTerminating(x23) -- exists.vpr@28.5--28.58
    assume x == x23;
    assume state(Heap, Mask);
    
    // -- Check definedness of partiallyTerminating(x23)
      if (*) {
        // Stop execution
        assume false;
      }
    assume partiallyTerminating(Heap, x23);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x == x23) -- <no position>
    if (x == x23) {
      
      // -- Translating statement: assert x23 == 42 -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion x23 == 42 might not hold. (exists.vpr@50.18--50.25) [223166]"}
          x23 == 42;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4_termination_proof
// ==================================================

procedure test4_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x24: int;
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
  
  // -- Translating statement: inhale x == x24 -- exists.vpr@36.6--36.31
    assume x == x24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((exists x2: Int :: x == x2)) -- <no position>
    
    // -- Check definedness of (exists x2: Int :: x == x2)
      if (*) {
        assume false;
      }
    if ((exists x2: int ::
      
      x == x2
    )) {
      
      // -- Translating statement: assert x == 42 -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion x == 42 might not hold. (exists.vpr@50.18--50.25) [223167]"}
          x == 42;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5_termination_proof
// ==================================================

procedure test5_termination_proof(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x25: int;
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
  
  // -- Translating statement: inhale x == x25 && x != x25 -- exists.vpr@43.6--43.42
    assume x == x25;
    assume x != x25;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((exists x2: Int :: x == x2 && x != x2)) -- <no position>
    
    // -- Check definedness of (exists x2: Int :: x == x2 && x != x2)
      if (*) {
        assume false;
      }
    if ((exists x2: int ::
      
      x == x2 && x != x2
    )) {
      
      // -- Translating statement: assert x == 42 -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion x == 42 might not hold. (exists.vpr@50.18--50.25) [223168]"}
          x == 42;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}