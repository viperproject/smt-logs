// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0249.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0249-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_56: Ref, f_3: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_56, f_3] }
  Heap[o_56, $allocated] ==> Heap[Heap[o_56, f_3], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_38, f_51) ==> Heap[o_38, f_51] == ExhaleHeap[o_38, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26), ExhaleHeap[null, PredicateMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> Heap[null, PredicateMaskField(pm_f_26)] == ExhaleHeap[null, PredicateMaskField(pm_f_26)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_26, f_51] }
    Heap[null, PredicateMaskField(pm_f_26)][o2_26, f_51] ==> Heap[o2_26, f_51] == ExhaleHeap[o2_26, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26), ExhaleHeap[null, WandMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> Heap[null, WandMaskField(pm_f_26)] == ExhaleHeap[null, WandMaskField(pm_f_26)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_26, f_51] }
    Heap[null, WandMaskField(pm_f_26)][o2_26, f_51] ==> Heap[o2_26, f_51] == ExhaleHeap[o2_26, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_38: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_38, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_38, $allocated] ==> ExhaleHeap[o_38, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_56: Ref, f_22: (Field A B), v: B ::
  { Heap[o_56, f_22:=v] }
  succHeap(Heap, Heap[o_56, f_22:=v])
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
// - height 0: int___box__
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
// Translation of function int___box__
// ==================================================

// Uninterpreted function definitions
function  int___box__(Heap: HeapType, vint_2: int): Ref;
function  int___box__'(Heap: HeapType, vint_2: int): Ref;
axiom (forall Heap: HeapType, vint_2: int ::
  { int___box__(Heap, vint_2) }
  int___box__(Heap, vint_2) == int___box__'(Heap, vint_2) && dummyFunction(int___box__#triggerStateless(vint_2))
);
axiom (forall Heap: HeapType, vint_2: int ::
  { int___box__'(Heap, vint_2) }
  dummyFunction(int___box__#triggerStateless(vint_2))
);

// Framing axioms
function  int___box__#frame(frame: FrameType, vint_2: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, vint_2: int ::
  { state(Heap, Mask), int___box__'(Heap, vint_2) }
  state(Heap, Mask) ==> int___box__'(Heap, vint_2) == int___box__#frame(EmptyFrame, vint_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, vint_2: int ::
  { state(Heap, Mask), int___box__'(Heap, vint_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || int___box__#trigger(EmptyFrame, vint_2)) ==> (forall other: int ::
    { int___box__#frame(EmptyFrame, other) }
    (int___box__'(Heap, other) == int___box__'(Heap, vint_2)) == (other == vint_2)
  )
);

// Trigger function (controlling recursive postconditions)
function  int___box__#trigger(frame: FrameType, vint_2: int): bool;

// State-independent trigger function
function  int___box__#triggerStateless(vint_2: int): Ref;

// Check contract well-formedness and postcondition
procedure int___box__#definedness(vint_2: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  var other_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall other: Int :: { int___box__(other) } (int___box__(other) == result) == (other == int))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume int___box__#trigger(EmptyFrame, other_1);
        }
        assume false;
      }
    assume (forall other_2: int ::
      { int___box__#frame(EmptyFrame, other_2) }
      (int___box__(Heap, other_2) == Result) == (other_2 == vint_2)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(i: int, j: int) returns ()
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
  
  // -- Translating statement: inhale int___box__(i) == int___box__(j) -- 0249.vpr@9.10--9.42
    assume state(Heap, Mask);
    
    // -- Check definedness of int___box__(i) == int___box__(j)
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    assume int___box__(Heap, i) == int___box__(Heap, j);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert i == j -- 0249.vpr@10.3--10.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion i == j might not hold. (0249.vpr@10.10--10.16) [68658]"}
      i == j;
    assume state(Heap, Mask);
}