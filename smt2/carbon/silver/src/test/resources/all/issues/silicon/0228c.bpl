// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:42:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0228c.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0228c-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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
// - height 1: fun
// - height 0: get
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
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, v_2: int, i: int): bool;
function  fun'(Heap: HeapType, v_2: int, i: int): bool;
axiom (forall Heap: HeapType, v_2: int, i: int ::
  { fun(Heap, v_2, i) }
  fun(Heap, v_2, i) == fun'(Heap, v_2, i) && dummyFunction(fun#triggerStateless(v_2, i))
);
axiom (forall Heap: HeapType, v_2: int, i: int ::
  { fun'(Heap, v_2, i) }
  dummyFunction(fun#triggerStateless(v_2, i))
);

// Framing axioms
function  fun#frame(frame: FrameType, v_2: int, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, v_2: int, i: int ::
  { state(Heap, Mask), fun'(Heap, v_2, i) }
  state(Heap, Mask) ==> fun'(Heap, v_2, i) == fun#frame(EmptyFrame, v_2, i)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, v_2: int, i: int): bool;

// State-independent trigger function
function  fun#triggerStateless(v_2: int, i: int): bool;

// Check contract well-formedness and postcondition
procedure fun#definedness(v_2: int, i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, x: Ref): int;
function  get'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { get(Heap, x) }
  get(Heap, x) == get'(Heap, x) && dummyFunction(get#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { get'(Heap, x) }
  dummyFunction(get#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get(Heap, x) } { state(Heap, Mask), get#triggerStateless(x), pred#trigger(Heap, pred_3(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, x) == Heap[x, f_7]
);

// Framing axioms
function  get#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get'(Heap, x) }
  state(Heap, Mask) ==> get'(Heap, x) == get#frame(Heap[null, pred_3(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, pred_3(x):=Mask[null, pred_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(pred(x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pred#trigger(UnfoldingHeap, pred_3(x));
      assume UnfoldingHeap[null, pred_3(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[x, f_7]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pred(x) (0228c.vpr@19.1--21.34) [215555]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, pred_3(x)];
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (0228c.vpr@19.1--21.34) [215556]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 2 might be negative. (0228c.vpr@19.1--21.34) [215557]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (0228c.vpr@19.1--21.34) [215558]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
        Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of predicate pred
// ==================================================

type PredicateType_pred;
function  pred_3(x: Ref): Field PredicateType_pred FrameType;
function  pred#sm(x: Ref): Field PredicateType_pred PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(pred_3(x)) }
  PredicateMaskField(pred_3(x)) == pred#sm(x)
);
axiom (forall x: Ref ::
  { pred_3(x) }
  IsPredicateField(pred_3(x))
);
axiom (forall x: Ref ::
  { pred_3(x) }
  getPredWandId(pred_3(x)) == 0
);
function  pred#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pred#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { pred_3(x), pred_3(x2) }
  pred_3(x) == pred_3(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { pred#sm(x), pred#sm(x2) }
  pred#sm(x) == pred#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { pred#trigger(Heap, pred_3(x)) }
  pred#everUsed(pred_3(x))
);

procedure pred#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pred
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0228c.vpr@3.1--5.2) [215559]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0228c.vpr@3.1--5.2) [215560]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var i_14: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var i_3: int;
  
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
  
  // -- Translating statement: inhale acc(pred(x), write) -- 0228c.vpr@12.3--12.22
    perm := FullPerm;
    Mask := Mask[null, pred_3(x):=Mask[null, pred_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { fun((unfolding acc(pred(x), write) in x.f), i) }
  //     0 <= i && i < 10 ==> fun((unfolding acc(pred(x), write) in x.f), i)) -- 0228c.vpr@13.3--13.85
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun((unfolding acc(pred(x), write) in x.f), i) } 0 <= i && i < 10 ==> fun((unfolding acc(pred(x), write) in x.f), i))
      if (*) {
        if (0 <= i_14 && i_14 < 10) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x));
          assume UnfoldingHeap[null, pred_3(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[x, f_7]));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access pred(x) (0228c.vpr@13.10--13.85) [215562]"}
              perm <= UnfoldingMask[null, pred_3(x)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x):=UnfoldingMask[null, pred_3(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (0228c.vpr@13.10--13.85) [215563]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (0228c.vpr@13.10--13.85) [215564]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (0228c.vpr@13.10--13.85) [215565]"}
            HasDirectPerm(UnfoldingMask, x, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            assume state(Heap, Mask);
          if (*) {
            // Stop execution
            assume false;
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun#frame(EmptyFrame, Heap[x, f_7], i_1) }
      0 <= i_1 && i_1 < 10 ==> fun(Heap, Heap[x, f_7], i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { fun((unfolding acc(pred(x), write) in x.f), i) }
  //     0 <= i && i < 10 ==> fun((unfolding acc(pred(x), write) in x.f), i)) -- 0228c.vpr@14.3--14.85
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { fun((unfolding acc(pred(x), write) in x.f), i) } 0 <= i && i < 10 ==> fun((unfolding acc(pred(x), write) in x.f), i))
      if (*) {
        if (0 <= i_2 && i_2 < 10) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume pred#trigger(UnfoldingHeap, pred_3(x));
          assume UnfoldingHeap[null, pred_3(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[x, f_7]));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access pred(x) (0228c.vpr@14.10--14.85) [215566]"}
              perm <= UnfoldingMask[null, pred_3(x)];
          }
          UnfoldingMask := UnfoldingMask[null, pred_3(x):=UnfoldingMask[null, pred_3(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0228c.vpr@14.10--14.85) [215567]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0228c.vpr@14.10--14.85) [215568]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (0228c.vpr@14.10--14.85) [215569]"}
            HasDirectPerm(UnfoldingMask, x, f_7);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            assume state(Heap, Mask);
          if (*) {
            // Stop execution
            assume false;
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (0 <= i_3 && i_3 < 10) {
        assert {:msg "  Assert might fail. Assertion fun((unfolding acc(pred(x), write) in x.f), i) might not hold. (0228c.vpr@14.10--14.85) [215570]"}
          fun(Heap, Heap[x, f_7], i_3);
      }
      assume false;
    }
    assume (forall i_4_1_1: int ::
      { fun#frame(EmptyFrame, Heap[x, f_7], i_4_1_1) }
      0 <= i_4_1_1 && i_4_1_1 < 10 ==> fun(Heap, Heap[x, f_7], i_4_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var i_4: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_6: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var i_3: int;
  
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
  
  // -- Translating statement: inhale acc(pred(x), write) -- 0228c.vpr@24.3--24.22
    perm := FullPerm;
    Mask := Mask[null, pred_3(x):=Mask[null, pred_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { fun(get(x), i) }
  //     0 <= i && i < 10 ==> fun(get(x), i)) -- 0228c.vpr@25.3--25.62
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun(get(x), i) } 0 <= i && i < 10 ==> fun(get(x), i))
      if (*) {
        if (0 <= i_4 && i_4 < 10) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access pred(x) (0228c.vpr@25.52--25.58) [215572]"}
              NoPerm < perm ==> NoPerm < Mask[null, pred_3(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun#frame(EmptyFrame, get#frame(Heap[null, pred_3(x)], x), i_1) }
      0 <= i_1 && i_1 < 10 ==> fun(Heap, get(Heap, x), i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int ::
  //     { fun(get(x), i) }
  //     0 <= i && i < 10 ==> fun(get(x), i)) -- 0228c.vpr@26.3--26.62
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { fun(get(x), i) } 0 <= i && i < 10 ==> fun(get(x), i))
      if (*) {
        if (0 <= i_6 && i_6 < 10) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access pred(x) (0228c.vpr@26.52--26.58) [215573]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pred_3(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i_3 && i_3 < 10) {
        assert {:msg "  Assert might fail. Assertion fun(get(x), i) might not hold. (0228c.vpr@26.10--26.62) [215574]"}
          fun(Heap, get(Heap, x), i_3);
      }
      assume false;
    }
    assume (forall i_4_1_1: int ::
      { fun#frame(EmptyFrame, get#frame(Heap[null, pred_3(x)], x), i_4_1_1) }
      0 <= i_4_1_1 && i_4_1_1 < 10 ==> fun(Heap, get(Heap, x), i_4_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var v_2: int;
  var i_7: int;
  var i_8: int;
  var i_3: int;
  
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
  
  // -- Translating statement: inhale acc(pred(x), write) -- 0228c.vpr@30.3--30.22
    perm := FullPerm;
    Mask := Mask[null, pred_3(x):=Mask[null, pred_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: v := (unfolding acc(pred(x), write) in x.f) -- 0228c.vpr@31.3--31.46
    
    // -- Check definedness of (unfolding acc(pred(x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pred#trigger(UnfoldingHeap, pred_3(x));
      assume UnfoldingHeap[null, pred_3(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[x, f_7]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access pred(x) (0228c.vpr@31.3--31.46) [215576]"}
          perm <= UnfoldingMask[null, pred_3(x)];
      }
      UnfoldingMask := UnfoldingMask[null, pred_3(x):=UnfoldingMask[null, pred_3(x)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0228c.vpr@31.3--31.46) [215577]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0228c.vpr@31.3--31.46) [215578]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (0228c.vpr@31.3--31.46) [215579]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
        Heap := Heap[null, pred#sm(x):=Heap[null, pred#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
    v_2 := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int :: { fun(v, i) } 0 <= i && i < 10 ==> fun(v, i)) -- 0228c.vpr@32.3--32.57
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun(v, i) } 0 <= i && i < 10 ==> fun(v, i))
      if (*) {
        if (0 <= i_7 && i_7 < 10) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun#frame(EmptyFrame, v_2, i_1) }
      0 <= i_1 && i_1 < 10 ==> fun(Heap, v_2, i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int :: { fun(v, i) } 0 <= i && i < 10 ==> fun(v, i)) -- 0228c.vpr@33.3--33.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { fun(v, i) } 0 <= i && i < 10 ==> fun(v, i))
      if (*) {
        if (0 <= i_8 && i_8 < 10) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i_3 && i_3 < 10) {
        assert {:msg "  Assert might fail. Assertion fun(v, i) might not hold. (0228c.vpr@33.10--33.57) [215580]"}
          fun(Heap, v_2, i_3);
      }
      assume false;
    }
    assume (forall i_4_1_1: int ::
      { fun#frame(EmptyFrame, v_2, i_4_1_1) }
      0 <= i_4_1_1 && i_4_1_1 < 10 ==> fun(Heap, v_2, i_4_1_1)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var i_9: int;
  var i_10: int;
  var i_3: int;
  
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
  
  // -- Translating statement: inhale acc(pred(x), write) -- 0228c.vpr@37.3--37.22
    perm := FullPerm;
    Mask := Mask[null, pred_3(x):=Mask[null, pred_3(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pred(x), write) -- 0228c.vpr@38.3--38.22
    assume pred#trigger(Heap, pred_3(x));
    assume Heap[null, pred_3(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, f_7]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pred(x) might fail. There might be insufficient permission to access pred(x) (0228c.vpr@38.3--38.22) [215584]"}
        perm <= Mask[null, pred_3(x)];
    }
    Mask := Mask[null, pred_3(x):=Mask[null, pred_3(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pred_3(x))) {
        havoc newVersion;
        Heap := Heap[null, pred_3(x):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding pred(x) might fail. Fraction 1 / 2 might be negative. (0228c.vpr@38.3--38.22) [215585]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding pred(x) might fail. Fraction 1 / 2 might be negative. (0228c.vpr@38.3--38.22) [215586]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i: Int :: { fun(x.f, i) } 0 <= i && i < 10 ==> fun(x.f, i)) -- 0228c.vpr@39.3--39.59
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { fun(x.f, i) } 0 <= i && i < 10 ==> fun(x.f, i))
      if (*) {
        if (0 <= i_9 && i_9 < 10) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (0228c.vpr@39.10--39.59) [215587]"}
            HasDirectPerm(Mask, x, f_7);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { fun#frame(EmptyFrame, Heap[x, f_7], i_1) }
      0 <= i_1 && i_1 < 10 ==> fun(Heap, Heap[x, f_7], i_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int :: { fun(x.f, i) } 0 <= i && i < 10 ==> fun(x.f, i)) -- 0228c.vpr@40.3--40.59
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int :: { fun(x.f, i) } 0 <= i && i < 10 ==> fun(x.f, i))
      if (*) {
        if (0 <= i_10 && i_10 < 10) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (0228c.vpr@40.10--40.59) [215588]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (0 <= i_3 && i_3 < 10) {
        assert {:msg "  Assert might fail. Assertion fun(x.f, i) might not hold. (0228c.vpr@40.10--40.59) [215589]"}
          fun(Heap, Heap[x, f_7], i_3);
      }
      assume false;
    }
    assume (forall i_4_1_1: int ::
      { fun#frame(EmptyFrame, Heap[x, f_7], i_4_1_1) }
      0 <= i_4_1_1 && i_4_1_1 < 10 ==> fun(Heap, Heap[x, f_7], i_4_1_1)
    );
    assume state(Heap, Mask);
}