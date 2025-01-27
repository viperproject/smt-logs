// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:23:50
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0188.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0188-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: f
// - height 1: g
// - height 0: h
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
function  f_6(Heap: HeapType, a_2: int, b_24: int): bool;
function  f'(Heap: HeapType, a_2: int, b_24: int): bool;
axiom (forall Heap: HeapType, a_2: int, b_24: int ::
  { f_6(Heap, a_2, b_24) }
  f_6(Heap, a_2, b_24) == f'(Heap, a_2, b_24) && dummyFunction(f#triggerStateless(a_2, b_24))
);
axiom (forall Heap: HeapType, a_2: int, b_24: int ::
  { f'(Heap, a_2, b_24) }
  dummyFunction(f#triggerStateless(a_2, b_24))
);

// Framing axioms
function  f#frame(frame: FrameType, a_2: int, b_24: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: int, b_24: int ::
  { state(Heap, Mask), f'(Heap, a_2, b_24) }
  state(Heap, Mask) ==> f'(Heap, a_2, b_24) == f#frame(EmptyFrame, a_2, b_24)
);

// Trigger function (controlling recursive postconditions)
function  f#trigger(frame: FrameType, a_2: int, b_24: int): bool;

// State-independent trigger function
function  f#triggerStateless(a_2: int, b_24: int): bool;

// Check contract well-formedness and postcondition
procedure f#definedness(a_2: int, b_24: int) returns (Result: bool)
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
function  g_2(Heap: HeapType, a_2: int, b_24: int): int;
function  g'(Heap: HeapType, a_2: int, b_24: int): int;
axiom (forall Heap: HeapType, a_2: int, b_24: int ::
  { g_2(Heap, a_2, b_24) }
  g_2(Heap, a_2, b_24) == g'(Heap, a_2, b_24) && dummyFunction(g#triggerStateless(a_2, b_24))
);
axiom (forall Heap: HeapType, a_2: int, b_24: int ::
  { g'(Heap, a_2, b_24) }
  dummyFunction(g#triggerStateless(a_2, b_24))
);

// Framing axioms
function  g#frame(frame: FrameType, a_2: int, b_24: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: int, b_24: int ::
  { state(Heap, Mask), g'(Heap, a_2, b_24) }
  state(Heap, Mask) ==> g'(Heap, a_2, b_24) == g#frame(CombineFrames(FrameFragment((if a_2 > b_24 then EmptyFrame else EmptyFrame)), FrameFragment((if b_24 > a_2 then EmptyFrame else EmptyFrame))), a_2, b_24)
);

// Trigger function (controlling recursive postconditions)
function  g#trigger(frame: FrameType, a_2: int, b_24: int): bool;

// State-independent trigger function
function  g#triggerStateless(a_2: int, b_24: int): int;

// Check contract well-formedness and postcondition
procedure g#definedness(a_2: int, b_24: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    if (a_2 > b_24) {
      assume state(Heap, Mask);
      
      // -- Check definedness of f(a, b)
        if (*) {
          // Stop execution
          assume false;
        }
      assume f_6(Heap, a_2, b_24);
    }
    assume state(Heap, Mask);
    if (b_24 > a_2) {
      assume state(Heap, Mask);
      
      // -- Check definedness of f(b, a)
        if (*) {
          // Stop execution
          assume false;
        }
      assume f_6(Heap, b_24, a_2);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function h
// ==================================================

// Uninterpreted function definitions
function  h_2(Heap: HeapType, a_2: int): bool;
function  h'(Heap: HeapType, a_2: int): bool;
axiom (forall Heap: HeapType, a_2: int ::
  { h_2(Heap, a_2) }
  h_2(Heap, a_2) == h'(Heap, a_2) && dummyFunction(h#triggerStateless(a_2))
);
axiom (forall Heap: HeapType, a_2: int ::
  { h'(Heap, a_2) }
  dummyFunction(h#triggerStateless(a_2))
);

// Framing axioms
function  h#frame(frame: FrameType, a_2: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: int ::
  { state(Heap, Mask), h'(Heap, a_2) }
  state(Heap, Mask) ==> h'(Heap, a_2) == h#frame(EmptyFrame, a_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, a_2: int ::
  { state(Heap, Mask), h'(Heap, a_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || h#trigger(EmptyFrame, a_2)) ==> (forall i: int ::
    { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i) } { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i) } { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i) } { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i) }
    g_2(Heap, a_2, i) > 17 ==> h'(Heap, a_2)
  )
);

// Trigger function (controlling recursive postconditions)
function  h#trigger(frame: FrameType, a_2: int): bool;

// State-independent trigger function
function  h#triggerStateless(a_2: int): bool;

// Check contract well-formedness and postcondition
procedure h#definedness(a_2: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_18: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { g(a, i) } g(a, i) > 17 ==> result)
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          if (a_2 > i_18) {
            assert {:msg "  Precondition of function g might not hold. Assertion f(a, i) might not hold. (0188.vpr@13.41--13.48) [83188]"}
              f_6(Heap, a_2, i_18);
          }
          if (i_18 > a_2) {
            assert {:msg "  Precondition of function g might not hold. Assertion f(i, a) might not hold. (0188.vpr@13.41--13.48) [83189]"}
              f_6(Heap, i_18, a_2);
          }
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall i_2: int ::
      { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i_2) } { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i_2) } { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i_2) } { g#frame(CombineFrames(FrameFragment(EmptyFrame), FrameFragment(EmptyFrame)), a_2, i_2) }
      g_2(Heap, a_2, i_2) > 17 ==> Result
    );
    assume state(Heap, Mask);
}