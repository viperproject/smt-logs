// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:30:10
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/forall.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/functions/expressions/forall-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(x2_6: Ref): bool;
function  neverTriggered2(x2_1_1: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: nonTerminating
// - height 1: test
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> (forall x2_1_1: Ref ::
    { nonTerminating#frame(EmptyFrame, x2_1_1) }
    x == x2_1_1 ==> nonTerminating(Heap, x2_1_1)
  ) ==> test_2(Heap, x)
);

// Framing axioms
function  test#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test'(Heap, x) }
  state(Heap, Mask) ==> test'(Heap, x) == test#frame(FrameFragment(test#condqp1(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall x2: Ref ::x == x2 ==> acc(x2.f, write)) in function test
// ==================================================

function  test#condqp1(Heap: HeapType, x_2_1: Ref): int;
function  sk_test#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { test#condqp1(Heap2Heap, x), test#condqp1(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (x == sk_test#condqp1(test#condqp1(Heap2Heap, x), test#condqp1(Heap1Heap, x)) && NoPerm < FullPerm <==> x == sk_test#condqp1(test#condqp1(Heap2Heap, x), test#condqp1(Heap1Heap, x)) && NoPerm < FullPerm) && (x == sk_test#condqp1(test#condqp1(Heap2Heap, x), test#condqp1(Heap1Heap, x)) && NoPerm < FullPerm ==> Heap2Heap[sk_test#condqp1(test#condqp1(Heap2Heap, x), test#condqp1(Heap1Heap, x)), f_7] == Heap1Heap[sk_test#condqp1(test#condqp1(Heap2Heap, x), test#condqp1(Heap1Heap, x)), f_7]) ==> test#condqp1(Heap2Heap, x) == test#condqp1(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  test#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  test#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure test#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var x2_24: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall x2: Ref ::x == x2 ==> acc(x2.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x2.f might not be injective. (forall.vpr@10.14--10.75) [223091]"}
      (forall x2_6: Ref, x2_6_1: Ref ::
      
      (((x2_6 != x2_6_1 && x == x2_6) && x == x2_6_1) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x2_6 != x2_6_1
    );
    
    // -- Define Inverse Function
      assume (forall x2_6: Ref ::
        { Heap[x2_6, f_7] } { QPMask[x2_6, f_7] }
        x == x2_6 && NoPerm < FullPerm ==> qpRange1(x2_6) && invRecv1(x2_6) == x2_6
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (x == invRecv1(o_4) && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x2_6: Ref ::
        { Heap[x2_6, f_7] } { QPMask[x2_6, f_7] }
        x == x2_6 ==> x2_6 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((x == invRecv1(o_4) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((x == invRecv1(o_4) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x2: Ref :: { nonTerminating(x2) } x == x2 ==> nonTerminating(x2))
      if (*) {
        if (x == x2_24) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall x2_8: Ref ::
      { nonTerminating#frame(EmptyFrame, x2_8) }
      x == x2_8 ==> nonTerminating(Heap, x2_8)
    );
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function test2
// ==================================================

// Uninterpreted function definitions
function  test2_1(Heap: HeapType, x: Ref): bool;
function  test2'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { test2_1(Heap, x) }
  test2_1(Heap, x) == test2'(Heap, x) && dummyFunction(test2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { test2'(Heap, x) }
  dummyFunction(test2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test2_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (forall x2: Ref ::
    { nonTerminating#frame(EmptyFrame, x2) }
    x == x2 ==> false
  ) ==> test2_1(Heap, x)
);

// Framing axioms
function  test2#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), test2'(Heap, x) }
  state(Heap, Mask) ==> test2'(Heap, x) == test2#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  test2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  test2#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure test2#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x2: Ref :: { nonTerminating(x2) } x == x2 ==> false && nonTerminating(x2))
      if (*) {
        assume false;
      }
    assume (forall x2_3: Ref ::
      { nonTerminating#frame(EmptyFrame, x2_3) }
      x == x2_3 ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
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
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of method test_pres_termination_proof
// ==================================================

procedure test_pres_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b_24: bool;
  var x21: Ref;
  var perm: Perm;
  var QPMask: MaskType;
  var x22: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b) -- forall.vpr@10.14--10.75
    if (b_24) {
      
      // -- Assumptions about local variables
        assume Heap[x21, $allocated];
      
      // -- Translating statement: if (x == x21) -- <no position>
        if (x == x21) {
          
          // -- Translating statement: inhale acc(x21.f, write) -- forall.vpr@10.44--10.53
            perm := FullPerm;
            assume x21 != null;
            Mask := Mask[x21, f_7:=Mask[x21, f_7] + perm];
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
      
      // -- Translating statement: inhale (forall x2: Ref ::x == x2 ==> acc(x2.f, write)) -- <no position>
        
        // -- Check definedness of (forall x2: Ref ::x == x2 ==> acc(x2.f, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Inhale might fail. Quantified resource x2.f might not be injective. (forall.vpr@10.14--10.75) [223093]"}
          (forall x2_1_1: Ref, x2_1_2: Ref ::
          
          (((x2_1_1 != x2_1_2 && x == x2_1_1) && x == x2_1_2) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x2_1_1 != x2_1_2
        );
        
        // -- Define Inverse Function
          assume (forall x2_1_1: Ref ::
            { Heap[x2_1_1, f_7] } { QPMask[x2_1_1, f_7] }
            x == x2_1_1 && NoPerm < FullPerm ==> qpRange2(x2_1_1) && invRecv2(x2_1_1) == x2_1_1
          );
          assume (forall o_4: Ref ::
            { invRecv2(o_4) }
            (x == invRecv2(o_4) && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall x2_1_1: Ref ::
            { Heap[x2_1_1, f_7] } { QPMask[x2_1_1, f_7] }
            x == x2_1_1 ==> x2_1_1 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, f_7] }
            ((x == invRecv2(o_4) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((x == invRecv2(o_4) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Assumptions about local variables
    assume Heap[x22, $allocated];
  
  // -- Translating statement: if (x == x22) -- <no position>
    if (x == x22) {
      
      // -- Translating statement: assert false -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [223094]"}
          false;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2_pres_termination_proof
// ==================================================

procedure test2_pres_termination_proof(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x23: Ref;
  var b1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x23, $allocated];
  
  // -- Translating statement: if (x == x23) -- <no position>
    if (x == x23) {
      
      // -- Translating statement: if (b1) -- forall.vpr@18.44--18.71
        if (b1) {
          
          // -- Translating statement: inhale false -- <no position>
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: inhale false -- <no position>
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: assert false -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [223095]"}
          false;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}