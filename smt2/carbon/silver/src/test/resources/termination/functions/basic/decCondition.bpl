// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:38:11
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/decCondition.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/decCondition-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: g
// - height 1: f1, f2
// - height 0: f2_e, f1_e
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
// Translation of function f1
// ==================================================

// Uninterpreted function definitions
function  f1_3(Heap: HeapType, x: int): int;
function  f1'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { f1_3(Heap, x) }
  f1_3(Heap, x) == f1'(Heap, x) && dummyFunction(f1#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { f1'(Heap, x) }
  dummyFunction(f1#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f1_3(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> f1_3(Heap, x) == (if x == 0 then g_3(Heap, x) else f1'(Heap, x - 1) + f2'(Heap, -(x - 1)) + g_3(Heap, x))
);

// Framing axioms
function  f1#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f1'(Heap, x) }
  state(Heap, Mask) ==> f1'(Heap, x) == f1#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  f1#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  f1#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure f1#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? g(x) : f1(x - 1) + f2(-(x - 1)) + g(x))
      if (x == 0) {
        if (*) {
          // Stop execution
          assume false;
        }
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f1#trigger(EmptyFrame, x - 1);
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then g_3(Heap, x) else f1_3(Heap, x - 1) + f2_3(Heap, -(x - 1)) + g_3(Heap, x));
}

// ==================================================
// Translation of function f2
// ==================================================

// Uninterpreted function definitions
function  f2_3(Heap: HeapType, x: int): int;
function  f2'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { f2_3(Heap, x) }
  f2_3(Heap, x) == f2'(Heap, x) && dummyFunction(f2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { f2'(Heap, x) }
  dummyFunction(f2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f2_3(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> f2_3(Heap, x) == (if x == 0 then g_3(Heap, x) else f2'(Heap, x + 1) + f1'(Heap, -(x + 1)) + g_3(Heap, -x))
);

// Framing axioms
function  f2#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f2'(Heap, x) }
  state(Heap, Mask) ==> f2'(Heap, x) == f2#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  f2#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  f2#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure f2#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? g(x) : f2(x + 1) + f1(-(x + 1)) + g(-x))
      if (x == 0) {
        if (*) {
          // Stop execution
          assume false;
        }
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f2#trigger(EmptyFrame, x + 1);
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then g_3(Heap, x) else f2_3(Heap, x + 1) + f1_3(Heap, -(x + 1)) + g_3(Heap, -x));
}

// ==================================================
// Translation of function g
// ==================================================

// Uninterpreted function definitions
function  g_3(Heap: HeapType, y: int): int;
function  g'(Heap: HeapType, y: int): int;
axiom (forall Heap: HeapType, y: int ::
  { g_3(Heap, y) }
  g_3(Heap, y) == g'(Heap, y) && dummyFunction(g#triggerStateless(y))
);
axiom (forall Heap: HeapType, y: int ::
  { g'(Heap, y) }
  dummyFunction(g#triggerStateless(y))
);

// Framing axioms
function  g#frame(frame: FrameType, y: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, y: int ::
  { state(Heap, Mask), g'(Heap, y) }
  state(Heap, Mask) ==> g'(Heap, y) == g#frame(EmptyFrame, y)
);

// Trigger function (controlling recursive postconditions)
function  g#trigger(frame: FrameType, y: int): bool;

// State-independent trigger function
function  g#triggerStateless(y: int): int;

// Check contract well-formedness and postcondition
procedure g#definedness(y: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of function f1_e
// ==================================================

// Uninterpreted function definitions
function  f1_e(Heap: HeapType, x: int): int;
function  f1_e'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { f1_e(Heap, x) }
  f1_e(Heap, x) == f1_e'(Heap, x) && dummyFunction(f1_e#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { f1_e'(Heap, x) }
  dummyFunction(f1_e#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f1_e(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> f1_e(Heap, x) == (if x == 0 then g_3(Heap, x) else f1_e'(Heap, x - 1) + f2_e'(Heap, x - 1) + g_3(Heap, x))
);

// Framing axioms
function  f1_e#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f1_e'(Heap, x) }
  state(Heap, Mask) ==> f1_e'(Heap, x) == f1_e#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  f1_e#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  f1_e#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure f1_e#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? g(x) : f1_e(x - 1) + f2_e(x - 1) + g(x))
      if (x == 0) {
        if (*) {
          // Stop execution
          assume false;
        }
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f1_e#trigger(EmptyFrame, x - 1);
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then g_3(Heap, x) else f1_e(Heap, x - 1) + f2_e(Heap, x - 1) + g_3(Heap, x));
}

// ==================================================
// Translation of function f2_e
// ==================================================

// Uninterpreted function definitions
function  f2_e(Heap: HeapType, x: int): int;
function  f2_e'(Heap: HeapType, x: int): int;
axiom (forall Heap: HeapType, x: int ::
  { f2_e(Heap, x) }
  f2_e(Heap, x) == f2_e'(Heap, x) && dummyFunction(f2_e#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: int ::
  { f2_e'(Heap, x) }
  dummyFunction(f2_e#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f2_e(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> f2_e(Heap, x) == (if x == 0 then g_3(Heap, x) else f2_e'(Heap, x + 1) + f1_e'(Heap, -(x + 1)) + g_3(Heap, x))
);

// Framing axioms
function  f2_e#frame(frame: FrameType, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: int ::
  { state(Heap, Mask), f2_e'(Heap, x) }
  state(Heap, Mask) ==> f2_e'(Heap, x) == f2_e#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  f2_e#trigger(frame: FrameType, x: int): bool;

// State-independent trigger function
function  f2_e#triggerStateless(x: int): int;

// Check contract well-formedness and postcondition
procedure f2_e#definedness(x: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x == 0 ? g(x) : f2_e(x + 1) + f1_e(-(x + 1)) + g(x))
      if (x == 0) {
        if (*) {
          // Stop execution
          assume false;
        }
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f2_e#trigger(EmptyFrame, x + 1);
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (if x == 0 then g_3(Heap, x) else f2_e(Heap, x + 1) + f1_e(Heap, -(x + 1)) + g_3(Heap, x));
}

// ==================================================
// Translation of method f1_termination_proof
// ==================================================

procedure f1_termination_proof(x: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
      
      // -- Translating statement: assert !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) might not hold. (<no position>) [223673]"}
          !(x >= 0) || (x >= 5 || (0 <= x && x < 5));
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert !old(x >= 0) || x - 1 >= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || x - 1 >= 0 might not hold. (<no position>) [223674]"}
          !(x >= 0) || x - 1 >= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x >= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [223675]"}
            (decreasing(x - 1, x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223676]"}
            (bounded(x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x >= 0) || -(x - 1) <= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || -(x - 1) <= 0 might not hold. (<no position>) [223677]"}
          !(x >= 0) || -(x - 1) <= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x >= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [223678]"}
            (decreasing(x - 1, x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223679]"}
            (bounded(x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) might not hold. (<no position>) [223680]"}
          !(x >= 0) || (x >= 5 || (0 <= x && x < 5));
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method f2_termination_proof
// ==================================================

procedure f2_termination_proof(x: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
      
      // -- Translating statement: assert !old(x <= 0) || (x >= 5 || 0 <= x && x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || (x >= 5 || 0 <= x && x < 5) might not hold. (<no position>) [223681]"}
          !(x <= 0) || (x >= 5 || (0 <= x && x < 5));
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert !old(x <= 0) || x + 1 <= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || x + 1 <= 0 might not hold. (<no position>) [223682]"}
          !(x <= 0) || x + 1 <= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x <= 0) ==>
  //   (decreasing(-(x + 1), old(-x)): Bool) && (bounded(old(-x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x <= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(-(x + 1), old(-x)): Bool) might not hold. (<no position>) [223683]"}
            (decreasing(-(x + 1), -x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(-x)): Bool) might not hold. (<no position>) [223684]"}
            (bounded(-x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x <= 0) || -(x + 1) >= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || -(x + 1) >= 0 might not hold. (<no position>) [223685]"}
          !(x <= 0) || -(x + 1) >= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x <= 0) ==>
  //   (decreasing(-(x + 1), old(-x)): Bool) && (bounded(old(-x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x <= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(-(x + 1), old(-x)): Bool) might not hold. (<no position>) [223686]"}
            (decreasing(-(x + 1), -x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(-x)): Bool) might not hold. (<no position>) [223687]"}
            (bounded(-x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x <= 0) || (-x >= 5 || 0 <= -x && -x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || (-x >= 5 || 0 <= -x && -x < 5) might not hold. (<no position>) [223688]"}
          !(x <= 0) || (-x >= 5 || (0 <= -x && -x < 5));
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method f1_e_termination_proof
// ==================================================

procedure f1_e_termination_proof(x: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
      
      // -- Translating statement: assert !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) might not hold. (<no position>) [223689]"}
          !(x >= 0) || (x >= 5 || (0 <= x && x < 5));
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert !old(x >= 0) || x - 1 >= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || x - 1 >= 0 might not hold. (<no position>) [223690]"}
          !(x >= 0) || x - 1 >= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x >= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [223691]"}
            (decreasing(x - 1, x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223692]"}
            (bounded(x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x >= 0) || x - 1 <= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || x - 1 <= 0 might not hold. (<no position>) [223693]"}
          !(x >= 0) || x - 1 <= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x >= 0) ==>
  //   (decreasing(-(x - 1), old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x >= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(-(x - 1), old(x)): Bool) might not hold. (<no position>) [223694]"}
            (decreasing(-(x - 1), x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [223695]"}
            (bounded(x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x >= 0) || (x >= 5 || 0 <= x && x < 5) might not hold. (<no position>) [223696]"}
          !(x >= 0) || (x >= 5 || (0 <= x && x < 5));
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method f2_e_termination_proof
// ==================================================

procedure f2_e_termination_proof(x: int) returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (x == 0) -- <no position>
    if (x == 0) {
      
      // -- Translating statement: assert !old(x <= 0) || (x >= 5 || 0 <= x && x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || (x >= 5 || 0 <= x && x < 5) might not hold. (<no position>) [223697]"}
          !(x <= 0) || (x >= 5 || (0 <= x && x < 5));
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert !old(x <= 0) || x + 1 <= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || x + 1 <= 0 might not hold. (<no position>) [223698]"}
          !(x <= 0) || x + 1 <= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x <= 0) ==>
  //   (decreasing(-(x + 1), old(-x)): Bool) && (bounded(old(-x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x <= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(-(x + 1), old(-x)): Bool) might not hold. (<no position>) [223699]"}
            (decreasing(-(x + 1), -x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(-x)): Bool) might not hold. (<no position>) [223700]"}
            (bounded(-x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x <= 0) || -(x + 1) >= 0 -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || -(x + 1) >= 0 might not hold. (<no position>) [223701]"}
          !(x <= 0) || -(x + 1) >= 0;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert old(x <= 0) ==>
  //   (decreasing(-(x + 1), old(-x)): Bool) && (bounded(old(-x)): Bool) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (x <= 0) {
          assert {:msg "  Assert might fail. Assertion (decreasing(-(x + 1), old(-x)): Bool) might not hold. (<no position>) [223702]"}
            (decreasing(-(x + 1), -x): bool);
          assert {:msg "  Assert might fail. Assertion (bounded(old(-x)): Bool) might not hold. (<no position>) [223703]"}
            (bounded(-x): bool);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert !old(x <= 0) || (x >= 5 || 0 <= x && x < 5) -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !old(x <= 0) || (x >= 5 || 0 <= x && x < 5) might not hold. (<no position>) [223704]"}
          !(x <= 0) || (x >= 5 || (0 <= x && x < 5));
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}