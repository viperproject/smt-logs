// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:31:57
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0114.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0114-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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
// - height 1: fun2
// - height 0: fun1
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
// Translation of domain D
// ==================================================

// The type for domain D
type DDomainType;

// Translation of domain function fun3
function  fun3_1(i_79: int): bool;

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, j_9: int): int;
function  fun1'(Heap: HeapType, j_9: int): int;
axiom (forall Heap: HeapType, j_9: int ::
  { fun1(Heap, j_9) }
  fun1(Heap, j_9) == fun1'(Heap, j_9) && dummyFunction(fun1#triggerStateless(j_9))
);
axiom (forall Heap: HeapType, j_9: int ::
  { fun1'(Heap, j_9) }
  dummyFunction(fun1#triggerStateless(j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, j_9: int ::
  { state(Heap, Mask), fun1(Heap, j_9) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun1(Heap, j_9) == 10
);

// Framing axioms
function  fun1#frame(frame: FrameType, j_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, j_9: int ::
  { state(Heap, Mask), fun1'(Heap, j_9) }
  state(Heap, Mask) ==> fun1'(Heap, j_9) == fun1#frame(EmptyFrame, j_9)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, j_9: int): bool;

// State-independent trigger function
function  fun1#triggerStateless(j_9: int): int;

// Check contract well-formedness and postcondition
procedure fun1#definedness(j_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := 10;
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, b_24: bool, x: Ref, y: Ref, j_9: int): int;
function  fun2'(Heap: HeapType, b_24: bool, x: Ref, y: Ref, j_9: int): int;
axiom (forall Heap: HeapType, b_24: bool, x: Ref, y: Ref, j_9: int ::
  { fun2(Heap, b_24, x, y, j_9) }
  fun2(Heap, b_24, x, y, j_9) == fun2'(Heap, b_24, x, y, j_9) && dummyFunction(fun2#triggerStateless(b_24, x, y, j_9))
);
axiom (forall Heap: HeapType, b_24: bool, x: Ref, y: Ref, j_9: int ::
  { fun2'(Heap, b_24, x, y, j_9) }
  dummyFunction(fun2#triggerStateless(b_24, x, y, j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, x: Ref, y: Ref, j_9: int ::
  { state(Heap, Mask), fun2(Heap, b_24, x, y, j_9) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun2(Heap, b_24, x, y, j_9) == 10
);

// Framing axioms
function  fun2#frame(frame: FrameType, b_24: bool, x: Ref, y: Ref, j_9: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, x: Ref, y: Ref, j_9: int ::
  { state(Heap, Mask), fun2'(Heap, b_24, x, y, j_9) }
  state(Heap, Mask) ==> fun2'(Heap, b_24, x, y, j_9) == fun2#frame(FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[y, f_7]))), b_24, x, y, j_9)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, b_24: bool, x: Ref, y: Ref, j_9: int): bool;

// State-independent trigger function
function  fun2#triggerStateless(b_24: bool, x: Ref, y: Ref, j_9: int): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(b_24: bool, x: Ref, y: Ref, j_9: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 10;
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref, b_24: bool): Field PredicateType_P FrameType;
function  P#sm(x: Ref, b_24: bool): Field PredicateType_P PMaskType;
axiom (forall x: Ref, b_24: bool ::
  { PredicateMaskField(P(x, b_24)) }
  PredicateMaskField(P(x, b_24)) == P#sm(x, b_24)
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  IsPredicateField(P(x, b_24))
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  getPredWandId(P(x, b_24)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P(x, b_24), P(x2, b2) }
  P(x, b_24) == P(x2, b2) ==> x == x2 && b_24 == b2
);
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P#sm(x, b_24), P#sm(x2, b2) }
  P#sm(x, b_24) == P#sm(x2, b2) ==> x == x2 && b_24 == b2
);

axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { P#trigger(Heap, P(x, b_24)) }
  P#everUsed(P(x, b_24))
);

procedure P#definedness(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var j_1: int;
  
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
  
  // -- Translating statement: inhale acc(P(x, b), write) -- 0114.vpr@12.3--12.17
    perm := FullPerm;
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { fun1(j) }
  //     (unfolding acc(P(x, b), write) in fun1(j) > 0)) -- 0114.vpr@15.3--15.69
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } (unfolding acc(P(x, b), write) in fun1(j) > 0))
      if (*) {
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume P#trigger(UnfoldingHeap, P(x, b_24));
        assume UnfoldingHeap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(UnfoldingHeap[x, f_7]) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P(x, b) (0114.vpr@15.10--15.69) [210238]"}
            perm <= UnfoldingMask[null, P(x, b_24)];
        }
        UnfoldingMask := UnfoldingMask[null, P(x, b_24):=UnfoldingMask[null, P(x, b_24)] - perm];
        if (b_24) {
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        if (*) {
          // Stop execution
          assume false;
        }
        
        // -- Free assumptions (exp module)
          if (b_24) {
            Heap := Heap[null, P#sm(x, b_24):=Heap[null, P#sm(x, b_24)][x, f_7:=true]];
          }
          assume state(Heap, Mask);
        assume false;
      }
    if (*) {
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume P#trigger(UnfoldingHeap, P(x, b_24));
        assume UnfoldingHeap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(UnfoldingHeap[x, f_7]) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P(x, b) (0114.vpr@15.10--15.69) [210241]"}
            perm <= UnfoldingMask[null, P(x, b_24)];
        }
        UnfoldingMask := UnfoldingMask[null, P(x, b_24):=UnfoldingMask[null, P(x, b_24)] - perm];
        if (b_24) {
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@15.10--15.69) [210243]"}
        fun1(Heap, j_1) > 0;
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { fun1#frame(EmptyFrame, j_2_1_1) }
      fun1(Heap, j_2_1_1) > 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_1: int;
  
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
  
  // -- Translating statement: assert (forall j: Int :: { fun1(j) } (b ? fun1(j) > 0 : fun1(j) > 1)) -- 0114.vpr@20.3--20.66
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } (b ? fun1(j) > 0 : fun1(j) > 1))
      if (*) {
        if (b_24) {
          if (*) {
            // Stop execution
            assume false;
          }
        } else {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (b_24) {
        assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@20.10--20.66) [210244]"}
          fun1(Heap, j_1) > 0;
      } else {
        assert {:msg "  Assert might fail. Assertion fun1(j) > 1 might not hold. (0114.vpr@20.10--20.66) [210245]"}
          fun1(Heap, j_1) > 1;
      }
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { fun1#frame(EmptyFrame, j_2_1_1) }
      (if b_24 then fun1(Heap, j_2_1_1) > 0 else fun1(Heap, j_2_1_1) > 1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, y: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var j_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(y.f, write) -- 0114.vpr@29.3--29.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int :: { fun2(b, x, y, j) } fun2(b, x, y, j) > 0) -- 0114.vpr@31.3--31.66
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun2(b, x, y, j) } fun2(b, x, y, j) > 0)
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          if (b_24) {
            perm := FullPerm;
            assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access x.f (0114.vpr@31.46--31.62) [210248]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
          } else {
            perm := FullPerm;
            assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access y.f (0114.vpr@31.46--31.62) [210249]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion fun2(b, x, y, j) > 0 might not hold. (0114.vpr@31.10--31.66) [210250]"}
        fun2(Heap, b_24, x, y, j_1) > 0;
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { fun2#frame(FrameFragment(FrameFragment(Heap[x, f_7])), b_24, x, y, j_2_1_1) } { fun2#frame(FrameFragment(FrameFragment(Heap[y, f_7])), b_24, x, y, j_2_1_1) }
      fun2(Heap, b_24, x, y, j_2_1_1) > 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref, y: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && acc(y.f, write) -- 0114.vpr@40.3--40.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall j: Int :: { fun2(b, x, y, j) } 0 < j && j < 10 ==> fun3(j)) -- 0114.vpr@42.3--42.73
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { fun2(b, x, y, j) } 0 < j && j < 10 ==> fun3(j))
      if (*) {
        assume false;
      }
    assume (forall j_1: int ::
      { fun2#frame(FrameFragment(FrameFragment(Heap[x, f_7])), b_24, x, y, j_1) } { fun2#frame(FrameFragment(FrameFragment(Heap[y, f_7])), b_24, x, y, j_1) }
      0 < j_1 && j_1 < 10 ==> (fun3_1(j_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun2(b, x, y, 5) > 0 -- 0114.vpr@43.3--43.30
    assume state(Heap, Mask);
    
    // -- Check definedness of fun2(b, x, y, 5) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (b_24) {
          perm := FullPerm;
          assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access x.f (0114.vpr@43.10--43.26) [210253]"}
            NoPerm < perm ==> NoPerm < Mask[x, f_7];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access y.f (0114.vpr@43.10--43.26) [210254]"}
            NoPerm < perm ==> NoPerm < Mask[y, f_7];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun2(Heap, b_24, x, y, 5) > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun3(5) -- 0114.vpr@46.3--46.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion fun3(5) might not hold. (0114.vpr@46.10--46.17) [210255]"}
      (fun3_1(5): bool);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, b_24: bool, c: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var j_1: int;
  var j_4_1: int;
  var j_7_1: int;
  var j_10_2: int;
  var j_13_2: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var j_16_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x, c):=Mask[null, P(x, c)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall j: Int :: { fun1(j) } fun1(j) > 0) -- 0114.vpr@53.3--53.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } fun1(j) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@53.10--53.38) [210256]"}
        fun1(Heap, j_1) > 0;
      assume false;
    }
    assume (forall j_2_1_1: int ::
      { fun1#frame(EmptyFrame, j_2_1_1) }
      fun1(Heap, j_2_1_1) > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int :: { fun1(j) } (false ? true : fun1(j) > 0)) -- 0114.vpr@54.3--54.53
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } (false ? true : fun1(j) > 0))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@54.10--54.53) [210258]"}
        fun1(Heap, j_4_1) > 0;
      assume false;
    }
    assume (forall j_5_1_1: int ::
      { fun1#frame(EmptyFrame, j_5_1_1) }
      fun1(Heap, j_5_1_1) > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int :: { fun1(j) } (b ? fun1(j) > 5 : fun1(j) > 0)) -- 0114.vpr@55.3--55.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } (b ? fun1(j) > 5 : fun1(j) > 0))
      if (*) {
        if (b_24) {
          if (*) {
            // Stop execution
            assume false;
          }
        } else {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (b_24) {
        assert {:msg "  Assert might fail. Assertion fun1(j) > 5 might not hold. (0114.vpr@55.10--55.56) [210259]"}
          fun1(Heap, j_7_1) > 5;
      } else {
        assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@55.10--55.56) [210260]"}
          fun1(Heap, j_7_1) > 0;
      }
      assume false;
    }
    assume (forall j_8_1_1: int ::
      { fun1#frame(EmptyFrame, j_8_1_1) }
      (if b_24 then fun1(Heap, j_8_1_1) > 5 else fun1(Heap, j_8_1_1) > 0)
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int :: { fun1(j) } true ==> fun1(j) > 0) -- 0114.vpr@57.3--57.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } true ==> fun1(j) > 0)
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    if (*) {
      assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@57.10--57.47) [210261]"}
        fun1(Heap, j_10_2) > 0;
      assume false;
    }
    assume (forall j_11_1: int ::
      { fun1#frame(EmptyFrame, j_11_1) }
      fun1(Heap, j_11_1) > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int :: { fun1(j) } b ==> fun1(j) > 0) -- 0114.vpr@58.3--58.44
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } b ==> fun1(j) > 0)
      if (*) {
        if (b_24) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (b_24) {
        assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@58.10--58.44) [210262]"}
          fun1(Heap, j_13_2) > 0;
      }
      assume false;
    }
    assume (forall j_14_1_1: int ::
      { fun1#frame(EmptyFrame, j_14_1_1) }
      b_24 ==> fun1(Heap, j_14_1_1) > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { fun1(j) }
  //     (unfolding acc(P(x, c), write) in fun1(j) > 0)) -- 0114.vpr@61.3--61.64
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { fun1(j) } (unfolding acc(P(x, c), write) in fun1(j) > 0))
      if (*) {
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume P#trigger(UnfoldingHeap, P(x, c));
        assume UnfoldingHeap[null, P(x, c)] == FrameFragment((if c then FrameFragment(UnfoldingHeap[x, f_7]) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P(x, c) (0114.vpr@61.10--61.64) [210263]"}
            perm <= UnfoldingMask[null, P(x, c)];
        }
        UnfoldingMask := UnfoldingMask[null, P(x, c):=UnfoldingMask[null, P(x, c)] - perm];
        if (c) {
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        if (*) {
          // Stop execution
          assume false;
        }
        
        // -- Free assumptions (exp module)
          if (c) {
            Heap := Heap[null, P#sm(x, c):=Heap[null, P#sm(x, c)][x, f_7:=true]];
          }
          assume state(Heap, Mask);
        assume false;
      }
    if (*) {
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume P#trigger(UnfoldingHeap, P(x, c));
        assume UnfoldingHeap[null, P(x, c)] == FrameFragment((if c then FrameFragment(UnfoldingHeap[x, f_7]) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access P(x, c) (0114.vpr@61.10--61.64) [210266]"}
            perm <= UnfoldingMask[null, P(x, c)];
        }
        UnfoldingMask := UnfoldingMask[null, P(x, c):=UnfoldingMask[null, P(x, c)] - perm];
        if (c) {
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. Assertion fun1(j) > 0 might not hold. (0114.vpr@61.10--61.64) [210268]"}
        fun1(Heap, j_16_2) > 0;
      assume false;
    }
    assume (forall j_17_1_1: int ::
      { fun1#frame(EmptyFrame, j_17_1_1) }
      fun1(Heap, j_17_1_1) > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0114.vpr@65.3--65.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0114.vpr@65.10--65.15) [210269]"}
      false;
    assume state(Heap, Mask);
}