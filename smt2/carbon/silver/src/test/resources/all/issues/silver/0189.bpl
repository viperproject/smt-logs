// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0189.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0189-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_14: Ref, f_22: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_22] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_22], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref, f_23: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, f_23] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_15, f_23) ==> Heap[o_15, f_23] == ExhaleHeap[o_15, f_23]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_15, $allocated] ==> ExhaleHeap[o_15, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_24: (Field A B), v: B ::
  { Heap[o_14, f_24:=v] }
  succHeap(Heap, Heap[o_14, f_24:=v])
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
// - height 1: otherDummy
// - height 0: thirdDummy
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
// Translation of function otherDummy
// ==================================================

// Uninterpreted function definitions
function  otherDummy(Heap: HeapType, i: int): bool;
function  otherDummy'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { otherDummy(Heap, i) }
  otherDummy(Heap, i) == otherDummy'(Heap, i) && dummyFunction(otherDummy#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { otherDummy'(Heap, i) }
  dummyFunction(otherDummy#triggerStateless(i))
);

// Framing axioms
function  otherDummy#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), otherDummy'(Heap, i) }
  state(Heap, Mask) ==> otherDummy'(Heap, i) == otherDummy#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  otherDummy#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  otherDummy#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure otherDummy#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of function thirdDummy
// ==================================================

// Uninterpreted function definitions
function  thirdDummy(Heap: HeapType, i: int): bool;
function  thirdDummy'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { thirdDummy(Heap, i) }
  thirdDummy(Heap, i) == thirdDummy'(Heap, i) && dummyFunction(thirdDummy#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { thirdDummy'(Heap, i) }
  dummyFunction(thirdDummy#triggerStateless(i))
);

// Framing axioms
function  thirdDummy#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), thirdDummy'(Heap, i) }
  state(Heap, Mask) ==> thirdDummy'(Heap, i) == thirdDummy#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  thirdDummy#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  thirdDummy#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure thirdDummy#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of method shouldNotTrigger
// ==================================================

procedure shouldNotTrigger(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var i_18: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (exists i: Int :: { thirdDummy(i) } !(i > 0 ==> otherDummy(i)))
      if (*) {
        if (i_18 > 0) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if ((exists i_1: int ::
      { thirdDummy#frame(EmptyFrame, i_1) }
      !(i_1 > 0 ==> otherDummy(Heap, i_1))
    )) {
      assume !b_24;
    }
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b) -- 0189.vpr@8.5--11.6
    if (b_24) {
      
      // -- Translating statement: assert otherDummy(5) -- 0189.vpr@10.9--10.29
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of otherDummy(5)
          if (*) {
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion otherDummy(5) might not hold. (0189.vpr@10.16--10.29) [53890]"}
          otherDummy(Heap, 5);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method shouldTrigger
// ==================================================

procedure shouldTrigger(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var i_3: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (exists i: Int :: { otherDummy(i) } !(i > 0 ==> otherDummy(i)))
      if (*) {
        if (i_3 > 0) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if ((exists i_1: int ::
      { otherDummy#frame(EmptyFrame, i_1) }
      !(i_1 > 0 ==> otherDummy(Heap, i_1))
    )) {
      assume !b_24;
    }
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b) -- 0189.vpr@17.5--19.6
    if (b_24) {
      
      // -- Translating statement: assert otherDummy(5) -- 0189.vpr@18.9--18.29
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of otherDummy(5)
          if (*) {
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion otherDummy(5) might not hold. (0189.vpr@18.16--18.29) [53891]"}
          otherDummy(Heap, 5);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}