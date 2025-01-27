// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:09:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/conditions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/basic/conditions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 5: f7
// - height 4: f4
// - height 3: f6
// - height 2: f3
// - height 1: f1
// - height 0: f5
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
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function f1
// ==================================================

// Uninterpreted function definitions
function  f1(Heap: HeapType, i: int): int;
function  f1'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { f1(Heap, i) }
  f1(Heap, i) == f1'(Heap, i) && dummyFunction(f1#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { f1'(Heap, i) }
  dummyFunction(f1#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f1(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> i >= 0 ==> f1(Heap, i) == (if i < 10 then 1 else (if f1'(Heap, i - 1) < 4 || f1'(Heap, i - 3) < 6 then 1 else f1'(Heap, i - 1)))
);

// Framing axioms
function  f1#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f1'(Heap, i) }
  state(Heap, Mask) ==> f1'(Heap, i) == f1#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  f1#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  f1#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure f1#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume i >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < 10 ? 1 : (f1(i - 1) < 4 || f1(i - 3) < 6 ? 1 : f1(i - 1)))
      if (i < 10) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function f1 might not hold. Assertion i - 1 >= 0 might not hold. (conditions.vpr@10.19--10.26) [18255]"}
            i - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f1#trigger(EmptyFrame, i - 1);
        }
        if (!(f1(Heap, i - 1) < 4)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function f1 might not hold. Assertion i - 3 >= 0 might not hold. (conditions.vpr@10.35--10.42) [18256]"}
              i - 3 >= 0;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume f1#trigger(EmptyFrame, i - 3);
          }
        }
        if (f1(Heap, i - 1) < 4 || f1(Heap, i - 3) < 6) {
        } else {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function f1 might not hold. Assertion i - 1 >= 0 might not hold. (conditions.vpr@10.54--10.61) [18257]"}
              i - 1 >= 0;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume f1#trigger(EmptyFrame, i - 1);
          }
        }
      }
  
  // -- Translate function body
    Result := (if i < 10 then 1 else (if f1(Heap, i - 1) < 4 || f1(Heap, i - 3) < 6 then 1 else f1(Heap, i - 1)));
}

// ==================================================
// Translation of function f3
// ==================================================

// Uninterpreted function definitions
function  f3(Heap: HeapType, i: int): int;
function  f3'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { f3(Heap, i) }
  f3(Heap, i) == f3'(Heap, i) && dummyFunction(f3#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { f3'(Heap, i) }
  dummyFunction(f3#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f3(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> f3(Heap, i) == 1
);

// Framing axioms
function  f3#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f3'(Heap, i) }
  state(Heap, Mask) ==> f3'(Heap, i) == f3#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  f3#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  f3#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure f3#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function f4
// ==================================================

// Uninterpreted function definitions
function  f4(Heap: HeapType, i: int): int;
function  f4'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { f4(Heap, i) }
  f4(Heap, i) == f4'(Heap, i) && dummyFunction(f4#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { f4'(Heap, i) }
  dummyFunction(f4#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f4(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> f4(Heap, i) == 1
);

// Framing axioms
function  f4#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f4'(Heap, i) }
  state(Heap, Mask) ==> f4'(Heap, i) == f4#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  f4#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  f4#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure f4#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function f5
// ==================================================

// Uninterpreted function definitions
function  f5(Heap: HeapType, i: int): int;
function  f5'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { f5(Heap, i) }
  f5(Heap, i) == f5'(Heap, i) && dummyFunction(f5#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { f5'(Heap, i) }
  dummyFunction(f5#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f5(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> f5(Heap, i) == 7
);

// Framing axioms
function  f5#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f5'(Heap, i) }
  state(Heap, Mask) ==> f5'(Heap, i) == f5#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  f5#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  f5#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure f5#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := 7;
}

// ==================================================
// Translation of function f6
// ==================================================

// Uninterpreted function definitions
function  f6(Heap: HeapType, xs: Ref, x: int): int;
function  f6'(Heap: HeapType, xs: Ref, x: int): int;
axiom (forall Heap: HeapType, xs: Ref, x: int ::
  { f6(Heap, xs, x) }
  f6(Heap, xs, x) == f6'(Heap, xs, x) && dummyFunction(f6#triggerStateless(xs, x))
);
axiom (forall Heap: HeapType, xs: Ref, x: int ::
  { f6'(Heap, xs, x) }
  dummyFunction(f6#triggerStateless(xs, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, x: int ::
  { state(Heap, Mask), f6(Heap, xs, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> x >= 0 && f7(Heap, x) ==> f6(Heap, xs, x) == (if x != 0 then f6'(Heap, xs, x - 1) else x)
);

// Framing axioms
function  f6#frame(frame: FrameType, xs: Ref, x: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref, x: int ::
  { state(Heap, Mask), f6'(Heap, xs, x) }
  state(Heap, Mask) ==> f6'(Heap, xs, x) == f6#frame(Heap[null, list(xs)], xs, x)
);

// Trigger function (controlling recursive postconditions)
function  f6#trigger(frame: FrameType, xs: Ref, x: int): bool;

// State-independent trigger function
function  f6#triggerStateless(xs: Ref, x: int): int;

// Check contract well-formedness and postcondition
procedure f6#definedness(xs: Ref, x: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume x >= 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of f7(x)
      if (*) {
        // Stop execution
        assume false;
      }
    assume f7(Heap, x);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (x != 0 ? f6(xs, x - 1) : x)
      if (x != 0) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function f6 might not hold. There might be insufficient permission to access list(xs) (conditions.vpr@46.14--46.25) [18258]"}
            NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
          assert {:msg "  Precondition of function f6 might not hold. Assertion x - 1 >= 0 might not hold. (conditions.vpr@46.14--46.25) [18259]"}
            x - 1 >= 0;
          assert {:msg "  Precondition of function f6 might not hold. Assertion f7(x - 1) might not hold. (conditions.vpr@46.14--46.25) [18260]"}
            f7(Heap, x - 1);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f6#trigger(Heap[null, list(xs)], xs, x - 1);
        }
      }
  
  // -- Translate function body
    Result := (if x != 0 then f6(Heap, xs, x - 1) else x);
}

// ==================================================
// Translation of function f7
// ==================================================

// Uninterpreted function definitions
function  f7(Heap: HeapType, y: int): bool;
function  f7'(Heap: HeapType, y: int): bool;
axiom (forall Heap: HeapType, y: int ::
  { f7(Heap, y) }
  f7(Heap, y) == f7'(Heap, y) && dummyFunction(f7#triggerStateless(y))
);
axiom (forall Heap: HeapType, y: int ::
  { f7'(Heap, y) }
  dummyFunction(f7#triggerStateless(y))
);

// Framing axioms
function  f7#frame(frame: FrameType, y: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: int ::
  { state(Heap, Mask), f7'(Heap, y) }
  state(Heap, Mask) ==> f7'(Heap, y) == f7#frame(EmptyFrame, y)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, y: int ::
  { state(Heap, Mask), f7'(Heap, y) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 5 || f7#trigger(EmptyFrame, y)) ==> f7'(Heap, y)
);

// Trigger function (controlling recursive postconditions)
function  f7#trigger(frame: FrameType, y: int): bool;

// State-independent trigger function
function  f7#triggerStateless(y: int): bool;

// Check contract well-formedness and postcondition
procedure f7#definedness(y: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Checking definedness of postcondition (no body)
    assume Result;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(xs: Ref): Field PredicateType_list FrameType;
function  list#sm(xs: Ref): Field PredicateType_list PMaskType;
axiom (forall xs: Ref ::
  { PredicateMaskField(list(xs)) }
  PredicateMaskField(list(xs)) == list#sm(xs)
);
axiom (forall xs: Ref ::
  { list(xs) }
  IsPredicateField(list(xs))
);
axiom (forall xs: Ref ::
  { list(xs) }
  getPredWandId(list(xs)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: Ref, xs2: Ref ::
  { list(xs), list(xs2) }
  list(xs) == list(xs2) ==> xs == xs2
);
axiom (forall xs: Ref, xs2: Ref ::
  { list#sm(xs), list#sm(xs2) }
  list#sm(xs) == list#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: Ref ::
  { list#trigger(Heap, list(xs)) }
  list#everUsed(list(xs))
);

procedure list#definedness(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[xs, $allocated];
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (conditions.vpr@37.1--40.2) [18261]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Check definedness of acc(list(xs.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (conditions.vpr@37.1--40.2) [18262]"}
          HasDirectPerm(Mask, xs, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method f1_termination_proof
// ==================================================

procedure f1_termination_proof(i: int) returns ()
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
    assume i >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (i < 10) -- <no position>
    if (i < 10) {
    } else {
      
      // -- Translating statement: assert (decreasing(i - 1, old(i)): Bool) && (bounded(old(i)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(i - 1, old(i)): Bool) might not hold. (<no position>) [18263]"}
          (decreasing(i - 1, i): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(i)): Bool) might not hold. (<no position>) [18264]"}
          (bounded(i): bool);
        assume state(Heap, Mask);
      
      // -- Translating statement: if (f1(i - 1) >= 4) -- <no position>
        
        // -- Check definedness of f1(i - 1) >= 4
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function f1 might not hold. Assertion i - 1 >= 0 might not hold. (conditions.vpr@10.19--10.26) [18265]"}
              i - 1 >= 0;
            // Stop execution
            assume false;
          }
        if (f1(Heap, i - 1) >= 4) {
          
          // -- Translating statement: assert (decreasing(i - 3, old(i)): Bool) && (bounded(old(i)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(i - 3, old(i)): Bool) might not hold. (<no position>) [18266]"}
              (decreasing(i - 3, i): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(i)): Bool) might not hold. (<no position>) [18267]"}
              (bounded(i): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: if (f1(i - 1) < 4 || f1(i - 3) < 6) -- <no position>
        
        // -- Check definedness of f1(i - 1) < 4 || f1(i - 3) < 6
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function f1 might not hold. Assertion i - 1 >= 0 might not hold. (conditions.vpr@10.19--10.26) [18268]"}
              i - 1 >= 0;
            // Stop execution
            assume false;
          }
          if (!(f1(Heap, i - 1) < 4)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  Precondition of function f1 might not hold. Assertion i - 3 >= 0 might not hold. (conditions.vpr@10.35--10.42) [18269]"}
                i - 3 >= 0;
              // Stop execution
              assume false;
            }
          }
        if (f1(Heap, i - 1) < 4 || f1(Heap, i - 3) < 6) {
        } else {
          
          // -- Translating statement: assert (decreasing(i - 1, old(i)): Bool) && (bounded(old(i)): Bool) -- <no position>
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion (decreasing(i - 1, old(i)): Bool) might not hold. (<no position>) [18270]"}
              (decreasing(i - 1, i): bool);
            assert {:msg "  Assert might fail. Assertion (bounded(old(i)): Bool) might not hold. (<no position>) [18271]"}
              (bounded(i): bool);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method f6_termination_proof
// ==================================================

procedure f6_termination_proof(xs: Ref, x: int) returns ()
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
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume x >= 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of f7(x)
      if (*) {
        // Stop execution
        assume false;
      }
    assume f7(Heap, x);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (x != 0) -- <no position>
    if (x != 0) {
      
      // -- Translating statement: assert (decreasing(x - 1, old(x)): Bool) && (bounded(old(x)): Bool) -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion (decreasing(x - 1, old(x)): Bool) might not hold. (<no position>) [18272]"}
          (decreasing(x - 1, x): bool);
        assert {:msg "  Assert might fail. Assertion (bounded(old(x)): Bool) might not hold. (<no position>) [18273]"}
          (bounded(x): bool);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method f6_pres_termination_proof
// ==================================================

procedure f6_pres_termination_proof(xs: Ref, x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b1: bool;
  var b_24: bool;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b1) -- conditions.vpr@43.14--43.43
    if (b1) {
      
      // -- Translating statement: if (b) -- conditions.vpr@43.15--43.33
        if (b_24) {
          
          // -- Translating statement: inhale acc(list(xs), write) -- conditions.vpr@43.15--43.23
            perm := FullPerm;
            Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- <no position>
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale acc(list(xs), write) -- <no position>
            perm := FullPerm;
            Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale acc(list(xs), write) && x >= 0 -- <no position>
        perm := FullPerm;
        Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
        assume state(Heap, Mask);
        assume x >= 0;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x >= 0 -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x >= 0 might not hold. (conditions.vpr@51.18--51.24) [18277]"}
      x >= 0;
    assume state(Heap, Mask);
}