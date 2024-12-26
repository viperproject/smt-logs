// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:23:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0395a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0395a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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

function  neverTriggered3(a_1_1: int, i_1: int, j_1: int): bool;
function  neverTriggered6(a_1_1: int, i_1: int, j_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(msg_sender_1_1: int, amount: int, parameter: int): int;
function  invRecv2(msg_sender_1_1: int, amount: int, parameter: int): int;
function  invRecv3(msg_sender_1_1: int, amount: int, parameter: int): int;
function  invRecv4(msg_sender_1_1: int, amount: int, parameter: int): int;
function  invRecv5(msg_sender_1_1: int, amount: int, parameter: int): int;
function  invRecv6(msg_sender_1_1: int, amount: int, parameter: int): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange3(msg_sender_1_1: int, amount: int, parameter: int): bool;
function  qpRange6(msg_sender_1_1: int, amount: int, parameter: int): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: isInt
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
// Translation of function isInt
// ==================================================

// Uninterpreted function definitions
function  isInt(Heap: HeapType, i: int): bool;
function  isInt'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { isInt(Heap, i) }
  isInt(Heap, i) == isInt'(Heap, i) && dummyFunction(isInt#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { isInt'(Heap, i) }
  dummyFunction(isInt#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), isInt(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> isInt(Heap, i)
);

// Framing axioms
function  isInt#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), isInt'(Heap, i) }
  state(Heap, Mask) ==> isInt'(Heap, i) == isInt#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  isInt#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  isInt#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure isInt#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of predicate accessible_withdraw
// ==================================================

type PredicateType_accessible_withdraw;
function  accessible_withdraw(msg_sender: int, amount: int, parameter: int): Field PredicateType_accessible_withdraw FrameType;
function  accessible_withdraw#sm(msg_sender: int, amount: int, parameter: int): Field PredicateType_accessible_withdraw PMaskType;
axiom (forall msg_sender: int, amount: int, parameter: int ::
  { PredicateMaskField(accessible_withdraw(msg_sender, amount, parameter)) }
  PredicateMaskField(accessible_withdraw(msg_sender, amount, parameter)) == accessible_withdraw#sm(msg_sender, amount, parameter)
);
axiom (forall msg_sender: int, amount: int, parameter: int ::
  { accessible_withdraw(msg_sender, amount, parameter) }
  IsPredicateField(accessible_withdraw(msg_sender, amount, parameter))
);
axiom (forall msg_sender: int, amount: int, parameter: int ::
  { accessible_withdraw(msg_sender, amount, parameter) }
  getPredWandId(accessible_withdraw(msg_sender, amount, parameter)) == 0
);
function  accessible_withdraw#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  accessible_withdraw#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall msg_sender: int, amount: int, parameter: int, msg_sender2: int, amount2: int, parameter2: int ::
  { accessible_withdraw(msg_sender, amount, parameter), accessible_withdraw(msg_sender2, amount2, parameter2) }
  accessible_withdraw(msg_sender, amount, parameter) == accessible_withdraw(msg_sender2, amount2, parameter2) ==> msg_sender == msg_sender2 && (amount == amount2 && parameter == parameter2)
);
axiom (forall msg_sender: int, amount: int, parameter: int, msg_sender2: int, amount2: int, parameter2: int ::
  { accessible_withdraw#sm(msg_sender, amount, parameter), accessible_withdraw#sm(msg_sender2, amount2, parameter2) }
  accessible_withdraw#sm(msg_sender, amount, parameter) == accessible_withdraw#sm(msg_sender2, amount2, parameter2) ==> msg_sender == msg_sender2 && (amount == amount2 && parameter == parameter2)
);

axiom (forall Heap: HeapType, msg_sender: int, amount: int, parameter: int ::
  { accessible_withdraw#trigger(Heap, accessible_withdraw(msg_sender, amount, parameter)) }
  accessible_withdraw#everUsed(accessible_withdraw(msg_sender, amount, parameter))
);

// ==================================================
// Translation of method test1
// ==================================================

procedure test1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var balance_1: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var msg_sender: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Int, i: Int, j: Int ::
  //     { accessible_withdraw(a, i, j) }
  //     balance >= i ==> acc(accessible_withdraw(a, i, j), write)) -- 0395a.vpr@6.3--6.119
    
    // -- Check definedness of (forall a: Int, i: Int, j: Int :: { accessible_withdraw(a, i, j) } balance >= i ==> acc(accessible_withdraw(a, i, j), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(accessible_withdraw(a, i, j), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource accessible_withdraw(a, i, j) might not be injective. (0395a.vpr@6.10--6.119) [208839]"}
        (forall a_1_1: int, i_1: int, j_1: int, a_1_2: int, i_1_1: int, j_1_1: int ::
        { neverTriggered3(a_1_1, i_1, j_1), neverTriggered3(a_1_2, i_1_1, j_1_1) }
        (((((a_1_1 != a_1_2 && i_1 != i_1_1) && j_1 != j_1_1) && balance_1 >= i_1) && balance_1 >= i_1_1) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (a_1_1 != a_1_2 || i_1 != i_1_1) || j_1 != j_1_1
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: int, i_1: int, j_1: int ::
        { Heap[null, accessible_withdraw(a_1_1, i_1, j_1)] } { Mask[null, accessible_withdraw(a_1_1, i_1, j_1)] } { Heap[null, accessible_withdraw(a_1_1, i_1, j_1)] }
        balance_1 >= i_1 && NoPerm < FullPerm ==> ((invRecv1(a_1_1, i_1, j_1) == a_1_1 && invRecv2(a_1_1, i_1, j_1) == i_1) && invRecv3(a_1_1, i_1, j_1) == j_1) && qpRange3(a_1_1, i_1, j_1)
      );
      assume (forall msg_sender_1_1: int, amount: int, parameter: int ::
        { invRecv1(msg_sender_1_1, amount, parameter), invRecv2(msg_sender_1_1, amount, parameter), invRecv3(msg_sender_1_1, amount, parameter) }
        (balance_1 >= invRecv2(msg_sender_1_1, amount, parameter) && NoPerm < FullPerm) && qpRange3(msg_sender_1_1, amount, parameter) ==> (invRecv1(msg_sender_1_1, amount, parameter) == msg_sender_1_1 && invRecv2(msg_sender_1_1, amount, parameter) == amount) && invRecv3(msg_sender_1_1, amount, parameter) == parameter
      );
    
    // -- Define updated permissions
      assume (forall msg_sender_1_1: int, amount: int, parameter: int ::
        { QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] }
        (balance_1 >= invRecv2(msg_sender_1_1, amount, parameter) && NoPerm < FullPerm) && qpRange3(msg_sender_1_1, amount, parameter) ==> (NoPerm < FullPerm ==> (invRecv1(msg_sender_1_1, amount, parameter) == msg_sender_1_1 && invRecv2(msg_sender_1_1, amount, parameter) == amount) && invRecv3(msg_sender_1_1, amount, parameter) == parameter) && QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] == Mask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall msg_sender_1_1: int, amount: int, parameter: int ::
        { QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] }
        !((balance_1 >= invRecv2(msg_sender_1_1, amount, parameter) && NoPerm < FullPerm) && qpRange3(msg_sender_1_1, amount, parameter)) ==> QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] == Mask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(accessible_withdraw(msg_sender, balance + 1, balance + 2)) ==
  //   none -- 0395a.vpr@7.3--7.81
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(accessible_withdraw(msg_sender, balance + 1, balance + 2)) == none might not hold. (0395a.vpr@7.10--7.81) [208840]"}
      Mask[null, accessible_withdraw(msg_sender, balance_1 + 1, balance_1 + 2)] == NoPerm;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_4: int;
  var QPMask: MaskType;
  var balance_1: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var msg_sender: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall a: Int, i: Int, j: Int ::
  //     { accessible_withdraw(a, i, j) }
  //     isInt(a) && (isInt(j) && balance >= i) ==>
  //     acc(accessible_withdraw(a, i, j), write)) -- 0395a.vpr@15.3--15.143
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall a: Int, i: Int, j: Int :: { accessible_withdraw(a, i, j) } isInt(a) && (isInt(j) && balance >= i) ==> acc(accessible_withdraw(a, i, j), write))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (isInt(Heap, a_4)) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(accessible_withdraw(a, i, j), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource accessible_withdraw(a, i, j) might not be injective. (0395a.vpr@15.10--15.143) [208841]"}
        (forall a_1_1: int, i_1: int, j_1: int, a_1_2: int, i_1_1: int, j_1_1: int ::
        { neverTriggered6(a_1_1, i_1, j_1), neverTriggered6(a_1_2, i_1_1, j_1_1) }
        (((((a_1_1 != a_1_2 && i_1 != i_1_1) && j_1 != j_1_1) && (isInt(Heap, a_1_1) && (isInt(Heap, j_1) && balance_1 >= i_1))) && (isInt(Heap, a_1_2) && (isInt(Heap, j_1_1) && balance_1 >= i_1_1))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (a_1_1 != a_1_2 || i_1 != i_1_1) || j_1 != j_1_1
      );
    
    // -- Define Inverse Function
      assume (forall a_1_1: int, i_1: int, j_1: int ::
        { Heap[null, accessible_withdraw(a_1_1, i_1, j_1)] } { Mask[null, accessible_withdraw(a_1_1, i_1, j_1)] } { Heap[null, accessible_withdraw(a_1_1, i_1, j_1)] }
        (isInt(Heap, a_1_1) && (isInt(Heap, j_1) && balance_1 >= i_1)) && NoPerm < FullPerm ==> ((invRecv4(a_1_1, i_1, j_1) == a_1_1 && invRecv5(a_1_1, i_1, j_1) == i_1) && invRecv6(a_1_1, i_1, j_1) == j_1) && qpRange6(a_1_1, i_1, j_1)
      );
      assume (forall msg_sender_1_1: int, amount: int, parameter: int ::
        { invRecv4(msg_sender_1_1, amount, parameter), invRecv5(msg_sender_1_1, amount, parameter), invRecv6(msg_sender_1_1, amount, parameter) }
        ((isInt(Heap, invRecv4(msg_sender_1_1, amount, parameter)) && (isInt(Heap, invRecv6(msg_sender_1_1, amount, parameter)) && balance_1 >= invRecv5(msg_sender_1_1, amount, parameter))) && NoPerm < FullPerm) && qpRange6(msg_sender_1_1, amount, parameter) ==> (invRecv4(msg_sender_1_1, amount, parameter) == msg_sender_1_1 && invRecv5(msg_sender_1_1, amount, parameter) == amount) && invRecv6(msg_sender_1_1, amount, parameter) == parameter
      );
    
    // -- Define updated permissions
      assume (forall msg_sender_1_1: int, amount: int, parameter: int ::
        { QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] }
        ((isInt(Heap, invRecv4(msg_sender_1_1, amount, parameter)) && (isInt(Heap, invRecv6(msg_sender_1_1, amount, parameter)) && balance_1 >= invRecv5(msg_sender_1_1, amount, parameter))) && NoPerm < FullPerm) && qpRange6(msg_sender_1_1, amount, parameter) ==> (NoPerm < FullPerm ==> (invRecv4(msg_sender_1_1, amount, parameter) == msg_sender_1_1 && invRecv5(msg_sender_1_1, amount, parameter) == amount) && invRecv6(msg_sender_1_1, amount, parameter) == parameter) && QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] == Mask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall msg_sender_1_1: int, amount: int, parameter: int ::
        { QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] }
        !(((isInt(Heap, invRecv4(msg_sender_1_1, amount, parameter)) && (isInt(Heap, invRecv6(msg_sender_1_1, amount, parameter)) && balance_1 >= invRecv5(msg_sender_1_1, amount, parameter))) && NoPerm < FullPerm) && qpRange6(msg_sender_1_1, amount, parameter)) ==> QPMask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)] == Mask[null, accessible_withdraw(msg_sender_1_1, amount, parameter)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(accessible_withdraw(msg_sender, balance + 1, balance + 2)) ==
  //   none -- 0395a.vpr@16.3--16.81
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(accessible_withdraw(msg_sender, balance + 1, balance + 2)) == none might not hold. (0395a.vpr@16.10--16.81) [208842]"}
      Mask[null, accessible_withdraw(msg_sender, balance_1 + 1, balance_1 + 2)] == NoPerm;
    assume state(Heap, Mask);
}