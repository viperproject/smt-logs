// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:06:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0167.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0167-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_5: Ref, f_3: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_5, f_3] }
  Heap[o_5, $allocated] ==> Heap[Heap[o_5, f_3], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_6, f_9) ==> Heap[o_6, f_9] == ExhaleHeap[o_6, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2), ExhaleHeap[null, PredicateMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> Heap[null, PredicateMaskField(pm_f_2)] == ExhaleHeap[null, PredicateMaskField(pm_f_2)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, PredicateMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2), ExhaleHeap[null, WandMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> Heap[null, WandMaskField(pm_f_2)] == ExhaleHeap[null, WandMaskField(pm_f_2)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, WandMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_6, $allocated] ==> ExhaleHeap[o_6, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_5: Ref, f_10: (Field A B), v: B ::
  { Heap[o_5, f_10:=v] }
  succHeap(Heap, Heap[o_5, f_10:=v])
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
// - height 2: f
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
// Translation of function f
// ==================================================

// Uninterpreted function definitions
function  f_6(Heap: HeapType, n: int): bool;
function  f'(Heap: HeapType, n: int): bool;
axiom (forall Heap: HeapType, n: int ::
  { f_6(Heap, n) }
  f_6(Heap, n) == f'(Heap, n) && dummyFunction(f#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: int ::
  { f'(Heap, n) }
  dummyFunction(f#triggerStateless(n))
);

// Framing axioms
function  f#frame(frame: FrameType, n: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), f'(Heap, n) }
  state(Heap, Mask) ==> f'(Heap, n) == f#frame(EmptyFrame, n)
);

// Trigger function (controlling recursive postconditions)
function  f#trigger(frame: FrameType, n: int): bool;

// State-independent trigger function
function  f#triggerStateless(n: int): bool;

// Check contract well-formedness and postcondition
procedure f#definedness(n: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of function g
// ==================================================

// Uninterpreted function definitions
function  g_3(Heap: HeapType, n: int): bool;
function  g'(Heap: HeapType, n: int): bool;
axiom (forall Heap: HeapType, n: int ::
  { g_3(Heap, n) }
  g_3(Heap, n) == g'(Heap, n) && dummyFunction(g#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: int ::
  { g'(Heap, n) }
  dummyFunction(g#triggerStateless(n))
);

// Framing axioms
function  g#frame(frame: FrameType, n: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), g'(Heap, n) }
  state(Heap, Mask) ==> g'(Heap, n) == g#frame(EmptyFrame, n)
);

// Trigger function (controlling recursive postconditions)
function  g#trigger(frame: FrameType, n: int): bool;

// State-independent trigger function
function  g#triggerStateless(n: int): bool;

// Check contract well-formedness and postcondition
procedure g#definedness(n: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of f(n)
      if (*) {
        // Stop execution
        assume false;
      }
    assume f_6(Heap, n);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function h
// ==================================================

// Uninterpreted function definitions
function  h_3(Heap: HeapType, n: int): bool;
function  h'(Heap: HeapType, n: int): bool;
axiom (forall Heap: HeapType, n: int ::
  { h_3(Heap, n) }
  h_3(Heap, n) == h'(Heap, n) && dummyFunction(h#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: int ::
  { h'(Heap, n) }
  dummyFunction(h#triggerStateless(n))
);

// Framing axioms
function  h#frame(frame: FrameType, n: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), h'(Heap, n) }
  state(Heap, Mask) ==> h'(Heap, n) == h#frame(EmptyFrame, n)
);

// Trigger function (controlling recursive postconditions)
function  h#trigger_1(frame: FrameType, n: int): bool;

// State-independent trigger function
function  h#triggerStateless(n: int): bool;

// Check contract well-formedness and postcondition
procedure h#definedness(n: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i_14: int;
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
  
  // -- Translating statement: inhale (forall i: Int :: { g(i) } i > 4 ==> h(i)) -- 0167.vpr@12.3--12.48
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { g(i) } i > 4 ==> h(i))
      if (*) {
        if (i_14 > 4) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { g#frame(EmptyFrame, i_1) }
      i_1 > 4 ==> h_3(Heap, i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale f(n) && g(n) -- 0167.vpr@21.3--21.22
    assume state(Heap, Mask);
    
    // -- Check definedness of f(n)
      if (*) {
        // Stop execution
        assume false;
      }
    assume f_6(Heap, n);
    assume state(Heap, Mask);
    
    // -- Check definedness of g(n)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function g might not hold. Assertion f(n) might not hold. (0167.vpr@21.18--21.22) [210274]"}
          f_6(Heap, n);
        // Stop execution
        assume false;
      }
    assume g_3(Heap, n);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale n == 5 -- 0167.vpr@22.3--22.16
    assume n == 5;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert h(n) -- 0167.vpr@24.3--24.14
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of h(n)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion h(n) might not hold. (0167.vpr@24.10--24.14) [210275]"}
      h_3(Heap, n);
    assume state(Heap, Mask);
}