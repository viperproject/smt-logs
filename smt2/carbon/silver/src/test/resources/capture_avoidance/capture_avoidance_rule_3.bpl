// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:54:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/capture_avoidance/capture_avoidance_rule_3-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_27: Ref, f_24: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_27, f_24] }
  Heap[o_27, $allocated] ==> Heap[Heap[o_27, f_24], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_25) ==> Heap[o_23, f_25] == ExhaleHeap[o_23, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8), ExhaleHeap[null, PredicateMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> Heap[null, PredicateMaskField(pm_f_8)] == ExhaleHeap[null, PredicateMaskField(pm_f_8)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsPredicateField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, PredicateMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8), ExhaleHeap[null, WandMaskField(pm_f_8)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> Heap[null, WandMaskField(pm_f_8)] == ExhaleHeap[null, WandMaskField(pm_f_8)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_8: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_8) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_8) && IsWandField(pm_f_8) ==> (forall <A, B> o2_8: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_8, f_25] }
    Heap[null, WandMaskField(pm_f_8)][o2_8, f_25] ==> Heap[o2_8, f_25] == ExhaleHeap[o2_8, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_27: Ref, f_30: (Field A B), v: B ::
  { Heap[o_27, f_30:=v] }
  succHeap(Heap, Heap[o_27, f_30:=v])
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

function  neverTriggered1(y_3_2: Ref): bool;
function  neverTriggered2(z_1: Ref): bool;
function  neverTriggered3(y: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 4: function3
// - height 3: function2
// - height 2: function0
// - height 1: function4
// - height 0: function1
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

const unique f_7: Field NormalField bool;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function function0
// ==================================================

// Uninterpreted function definitions
function  function0(Heap: HeapType, b_24: bool, c: bool): bool;
function  function0'(Heap: HeapType, b_24: bool, c: bool): bool;
axiom (forall Heap: HeapType, b_24: bool, c: bool ::
  { function0(Heap, b_24, c) }
  function0(Heap, b_24, c) == function0'(Heap, b_24, c) && dummyFunction(function0#triggerStateless(b_24, c))
);
axiom (forall Heap: HeapType, b_24: bool, c: bool ::
  { function0'(Heap, b_24, c) }
  dummyFunction(function0#triggerStateless(b_24, c))
);

// Framing axioms
function  function0#frame(frame: FrameType, b_24: bool, c: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, c: bool ::
  { state(Heap, Mask), function0'(Heap, b_24, c) }
  state(Heap, Mask) ==> function0'(Heap, b_24, c) == function0#frame(EmptyFrame, b_24, c)
);

// Trigger function (controlling recursive postconditions)
function  function0#trigger(frame: FrameType, b_24: bool, c: bool): bool;

// State-independent trigger function
function  function0#triggerStateless(b_24: bool, c: bool): bool;

// Check contract well-formedness and postcondition
procedure function0#definedness(b_24: bool, c: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall z: Int ::b && c)
      if (*) {
        assume false;
      }
    assume (forall z_2: int ::
      
      b_24 && c
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function1
// ==================================================

// Uninterpreted function definitions
function  function1(Heap: HeapType, b_24: bool): bool;
function  function1'(Heap: HeapType, b_24: bool): bool;
axiom (forall Heap: HeapType, b_24: bool ::
  { function1(Heap, b_24) }
  function1(Heap, b_24) == function1'(Heap, b_24) && dummyFunction(function1#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { function1'(Heap, b_24) }
  dummyFunction(function1#triggerStateless(b_24))
);

// Framing axioms
function  function1#frame(frame: FrameType, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), function1'(Heap, b_24) }
  state(Heap, Mask) ==> function1'(Heap, b_24) == function1#frame(EmptyFrame, b_24)
);

// Trigger function (controlling recursive postconditions)
function  function1#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  function1#triggerStateless(b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure function1#definedness(b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall w: Int ::b)
      if (*) {
        assume false;
      }
    assume (forall w_2_2: int ::
      
      b_24
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function2
// ==================================================

// Uninterpreted function definitions
function  function2(Heap: HeapType, b_24: bool): bool;
function  function2'(Heap: HeapType, b_24: bool): bool;
axiom (forall Heap: HeapType, b_24: bool ::
  { function2(Heap, b_24) }
  function2(Heap, b_24) == function2'(Heap, b_24) && dummyFunction(function2#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { function2'(Heap, b_24) }
  dummyFunction(function2#triggerStateless(b_24))
);

// Framing axioms
function  function2#frame(frame: FrameType, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), function2'(Heap, b_24) }
  state(Heap, Mask) ==> function2'(Heap, b_24) == function2#frame(EmptyFrame, b_24)
);

// Trigger function (controlling recursive postconditions)
function  function2#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  function2#triggerStateless(b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure function2#definedness(b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i: Int ::b && b)
      if (*) {
        assume false;
      }
    assume (forall i_2_1: int ::
      
      b_24 && b_24
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function3
// ==================================================

// Uninterpreted function definitions
function  function3(Heap: HeapType, b_24: bool, z: int): bool;
function  function3'(Heap: HeapType, b_24: bool, z: int): bool;
axiom (forall Heap: HeapType, b_24: bool, z: int ::
  { function3(Heap, b_24, z) }
  function3(Heap, b_24, z) == function3'(Heap, b_24, z) && dummyFunction(function3#triggerStateless(b_24, z))
);
axiom (forall Heap: HeapType, b_24: bool, z: int ::
  { function3'(Heap, b_24, z) }
  dummyFunction(function3#triggerStateless(b_24, z))
);

// Framing axioms
function  function3#frame(frame: FrameType, b_24: bool, z: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, z: int ::
  { state(Heap, Mask), function3'(Heap, b_24, z) }
  state(Heap, Mask) ==> function3'(Heap, b_24, z) == function3#frame(EmptyFrame, b_24, z)
);

// Trigger function (controlling recursive postconditions)
function  function3#trigger(frame: FrameType, b_24: bool, z: int): bool;

// State-independent trigger function
function  function3#triggerStateless(b_24: bool, z: int): bool;

// Check contract well-formedness and postcondition
procedure function3#definedness(b_24: bool, z: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall w: Int ::b && z == 0)
      if (*) {
        assume false;
      }
    assume (forall w_2_2: int ::
      
      b_24 && z == 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function function4
// ==================================================

// Uninterpreted function definitions
function  function4(Heap: HeapType, x: bool): bool;
function  function4'(Heap: HeapType, x: bool): bool;
axiom (forall Heap: HeapType, x: bool ::
  { function4(Heap, x) }
  function4(Heap, x) == function4'(Heap, x) && dummyFunction(function4#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: bool ::
  { function4'(Heap, x) }
  dummyFunction(function4#triggerStateless(x))
);

// Framing axioms
function  function4#frame(frame: FrameType, x: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: bool ::
  { state(Heap, Mask), function4'(Heap, x) }
  state(Heap, Mask) ==> function4'(Heap, x) == function4#frame(FrameFragment(function4#condqp1(Heap, x)), x)
);
// ==================================================
// Function used for framing of quantified permission (forall y: Ref ::acc(y.f, write)) in function function4
// ==================================================

function  function4#condqp1(Heap: HeapType, x_1_1_1: bool): int;
function  sk_function4#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: bool ::
  { function4#condqp1(Heap2Heap, x), function4#condqp1(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  (NoPerm < FullPerm <==> NoPerm < FullPerm) && (NoPerm < FullPerm ==> Heap2Heap[sk_function4#condqp1(function4#condqp1(Heap2Heap, x), function4#condqp1(Heap1Heap, x)), f_7] == Heap1Heap[sk_function4#condqp1(function4#condqp1(Heap2Heap, x), function4#condqp1(Heap1Heap, x)), f_7]) ==> function4#condqp1(Heap2Heap, x) == function4#condqp1(Heap1Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  function4#trigger(frame: FrameType, x: bool): bool;

// State-independent trigger function
function  function4#triggerStateless(x: bool): bool;

// Check contract well-formedness and postcondition
procedure function4#definedness(x: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume x;
    
    // -- Check definedness of (forall y: Ref ::acc(y.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource y.f might not be injective. (capture_avoidance_rule_3.vpr@58.12--58.42) [92153]"}
      (forall y_3_2: Ref, y_3_3: Ref ::
      
      (y_3_2 != y_3_3 && NoPerm < FullPerm) && NoPerm < FullPerm ==> y_3_2 != y_3_3
    );
    
    // -- Define Inverse Function
      assume (forall y_3_2: Ref ::
        { Heap[y_3_2, f_7] } { QPMask[y_3_2, f_7] }
        NoPerm < FullPerm ==> qpRange1(y_3_2) && invRecv1(y_3_2) == y_3_2
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        NoPerm < FullPerm && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall y_3_2: Ref ::
        { Heap[y_3_2, f_7] } { QPMask[y_3_2, f_7] }
        y_3_2 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (NoPerm < FullPerm && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(NoPerm < FullPerm && qpRange1(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method client1
// ==================================================

procedure client1(x: int, y: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var res: bool;
  var z_3: int;
  var z_8_1: int;
  var z_10_1: int;
  var z_16_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x == 0;
    assume y == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: res := function0(x == 0, y == 0) -- capture_avoidance_rule_3.vpr@49.3--49.35
    
    // -- Check definedness of function0(x == 0, y == 0)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (*) {
          assert {:msg "  Precondition of function function0 might not hold. Assertion x == 0 might not hold. (capture_avoidance_rule_3.vpr@49.10--49.35) [92154]"}
            x == 0;
          assert {:msg "  Precondition of function function0 might not hold. Assertion y == 0 might not hold. (capture_avoidance_rule_3.vpr@49.10--49.35) [92155]"}
            y == 0;
          assume false;
        }
        assume (forall z_1_1_1: int ::
          
          x == 0 && y == 0
        );
        // Stop execution
        assume false;
      }
    res := function0(Heap, x == 0, y == 0);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function1((forall z: Int ::z == z)) -- capture_avoidance_rule_3.vpr@50.3--50.44
    
    // -- Check definedness of function1((forall z: Int ::z == z))
      if (*) {
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (*) {
          if (*) {
            assert {:msg "  Precondition of function function1 might not hold. Assertion z == z might not hold. (capture_avoidance_rule_3.vpr@50.10--50.44) [92156]"}
              z_3 == z_3;
            assume false;
          }
          assume (forall z_4_1_1: int ::
            
            z_4_1_1 == z_4_1_1
          );
          assume false;
        }
        assume (forall w_1_1_1: int ::
          
          (forall z_5: int ::
            
            z_5 == z_5
          )
        );
        // Stop execution
        assume false;
      }
    res := function1(Heap, (forall z_6: int ::
      
      z_6 == z_6
    ));
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function2((forall z: Int ::z == z)) -- capture_avoidance_rule_3.vpr@51.3--51.44
    
    // -- Check definedness of function2((forall z: Int ::z == z))
      if (*) {
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (*) {
          if (*) {
            assert {:msg "  Precondition of function function2 might not hold. Assertion z == z might not hold. (capture_avoidance_rule_3.vpr@51.10--51.44) [92157]"}
              z_8_1 == z_8_1;
            assume false;
          }
          assume (forall z_9_1_1: int ::
            
            z_9_1_1 == z_9_1_1
          );
          if (*) {
            assert {:msg "  Precondition of function function2 might not hold. Assertion z == z might not hold. (capture_avoidance_rule_3.vpr@51.10--51.44) [92158]"}
              z_10_1 == z_10_1;
            assume false;
          }
          assume (forall z_11_1: int ::
            
            z_11_1 == z_11_1
          );
          assume false;
        }
        assume (forall i_1_1_1: int ::
          
          (forall z_12_1: int ::
            
            z_12_1 == z_12_1
          ) && (forall z_13_1: int ::
            
            z_13_1 == z_13_1
          )
        );
        // Stop execution
        assume false;
      }
    res := function2(Heap, (forall z_14_1: int ::
      
      z_14_1 == z_14_1
    ));
    assume state(Heap, Mask);
  
  // -- Translating statement: res := function3((forall z: Int ::z == z), x) -- capture_avoidance_rule_3.vpr@52.3--52.47
    
    // -- Check definedness of function3((forall z: Int ::z == z), x)
      if (*) {
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (*) {
          if (*) {
            assert {:msg "  Precondition of function function3 might not hold. Assertion z == z might not hold. (capture_avoidance_rule_3.vpr@52.10--52.47) [92159]"}
              z_16_1 == z_16_1;
            assume false;
          }
          assume (forall z_17_1: int ::
            
            z_17_1 == z_17_1
          );
          assert {:msg "  Precondition of function function3 might not hold. Assertion x == 0 might not hold. (capture_avoidance_rule_3.vpr@52.10--52.47) [92160]"}
            x == 0;
          assume false;
        }
        assume (forall w_3_1_1: int ::
          
          (forall z_18_1: int ::
            
            z_18_1 == z_18_1
          ) && x == 0
        );
        // Stop execution
        assume false;
      }
    res := function3(Heap, (forall z_19_1: int ::
      
      z_19_1 == z_19_1
    ), x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method client2
// ==================================================

procedure client2(x: bool) returns (res: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall z: Ref ::acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource z.f might not be injective. (capture_avoidance_rule_3.vpr@62.12--62.37) [92161]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (z_1 != z_1_1 && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        NoPerm < FullPerm ==> qpRange2(z_1) && invRecv2(z_1) == z_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        NoPerm < FullPerm && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        (NoPerm < FullPerm && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!(NoPerm < FullPerm && qpRange2(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume x;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: res := function4(x) -- capture_avoidance_rule_3.vpr@65.3--65.22
    
    // -- Check definedness of function4(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function function4 might not hold. Assertion x might not hold. (capture_avoidance_rule_3.vpr@65.10--65.22) [92162]"}
          x;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver y is injective
          assert {:msg "  Precondition of function function4 might not hold. Quantified resource y.f might not be injective. (capture_avoidance_rule_3.vpr@65.10--65.22) [92163]"}
            (forall y: Ref, y_10: Ref ::
            { neverTriggered3(y), neverTriggered3(y_10) }
            (y != y_10 && NoPerm < FullPerm) && NoPerm < FullPerm ==> y != y_10
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function function4 might not hold. There might be insufficient permission to access y.f (capture_avoidance_rule_3.vpr@65.10--65.22) [92164]"}
            (forall y: Ref ::
            { Heap[y, f_7] } { QPMask[y, f_7] }
            FullPerm > NoPerm ==> Mask[y, f_7] > NoPerm
          );
        
        // -- assumptions for inverse of receiver y
          assume (forall y: Ref ::
            { Heap[y, f_7] } { QPMask[y, f_7] }
            NoPerm < FullPerm ==> qpRange3(y) && invRecv3(y) == y
          );
          assume (forall o_4: Ref ::
            { invRecv3(o_4) }
            NoPerm < FullPerm && qpRange3(o_4) ==> invRecv3(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    res := function4(Heap, x);
    assume state(Heap, Mask);
}