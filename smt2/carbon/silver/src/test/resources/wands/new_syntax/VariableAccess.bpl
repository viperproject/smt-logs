// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:16:15
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/VariableAccess.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/VariableAccess-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: getNext
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Ref, arg1_2: bool, arg2_2: Ref, arg3_2: Ref, arg4_2: Ref ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function getNext
// ==================================================

// Uninterpreted function definitions
function  getNext(Heap: HeapType, x: Ref): Ref;
function  getNext'(Heap: HeapType, x: Ref): Ref;
axiom (forall Heap: HeapType, x: Ref ::
  { getNext(Heap, x) }
  getNext(Heap, x) == getNext'(Heap, x) && dummyFunction(getNext#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { getNext'(Heap, x) }
  dummyFunction(getNext#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), getNext(Heap, x) } { state(Heap, Mask), getNext#triggerStateless(x), TrueListNode#trigger(Heap, TrueListNode(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> getNext(Heap, x) == Heap[x, next]
);

// Framing axioms
function  getNext#frame(frame: FrameType, x: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), getNext'(Heap, x) }
  state(Heap, Mask) ==> getNext'(Heap, x) == getNext#frame(Heap[null, TrueListNode(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  getNext#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  getNext#triggerStateless(x: Ref): Ref;

// Check contract well-formedness and postcondition
procedure getNext#definedness(x: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, TrueListNode(x):=Mask[null, TrueListNode(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(TrueListNode(x), write) in x.next)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume TrueListNode#trigger(UnfoldingHeap, TrueListNode(x));
      assume UnfoldingHeap[null, TrueListNode(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment(UnfoldingHeap[UnfoldingHeap[x, next], next]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access TrueListNode(x) (VariableAccess.vpr@10.1--13.2) [138540]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, TrueListNode(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[x, next] != null;
      perm := FullPerm;
      assume UnfoldingHeap[x, next] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, next], next:=UnfoldingMask[UnfoldingHeap[x, next], next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (VariableAccess.vpr@10.1--13.2) [138541]"}
        HasDirectPerm(UnfoldingMask, x, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, TrueListNode#sm(x):=Heap[null, TrueListNode#sm(x)][x, next:=true]];
        Heap := Heap[null, TrueListNode#sm(x):=Heap[null, TrueListNode#sm(x)][Heap[x, next], next:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, next];
}

// ==================================================
// Translation of predicate TrueListNode
// ==================================================

type PredicateType_TrueListNode;
function  TrueListNode(x: Ref): Field PredicateType_TrueListNode FrameType;
function  TrueListNode#sm(x: Ref): Field PredicateType_TrueListNode PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(TrueListNode(x)) }
  PredicateMaskField(TrueListNode(x)) == TrueListNode#sm(x)
);
axiom (forall x: Ref ::
  { TrueListNode(x) }
  IsPredicateField(TrueListNode(x))
);
axiom (forall x: Ref ::
  { TrueListNode(x) }
  getPredWandId(TrueListNode(x)) == 0
);
function  TrueListNode#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  TrueListNode#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { TrueListNode(x), TrueListNode(x2) }
  TrueListNode(x) == TrueListNode(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { TrueListNode#sm(x), TrueListNode#sm(x2) }
  TrueListNode#sm(x) == TrueListNode#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { TrueListNode#trigger(Heap, TrueListNode(x)) }
  TrueListNode#everUsed(TrueListNode(x))
);

procedure TrueListNode#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of TrueListNode
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (VariableAccess.vpr@6.1--8.2) [138542]"}
        HasDirectPerm(Mask, x, next);
    assume Heap[x, next] != null;
    
    // -- Check definedness of acc(x.next.next, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (VariableAccess.vpr@6.1--8.2) [138543]"}
        HasDirectPerm(Mask, x, next);
    perm := FullPerm;
    assume Heap[x, next] != null;
    Mask := Mask[Heap[x, next], next:=Mask[Heap[x, next], next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var n: Ref;
  var freshObj: Ref;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var tmp: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_4: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_5: bool;
  var b_6: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_7: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var freshVersion: FrameType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_8: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_9: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[n, $allocated];
  
  // -- Translating statement: n := new(next) -- VariableAccess.vpr@18.5--18.19
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n := freshObj;
    Mask := Mask[n, next:=Mask[n, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next := n -- VariableAccess.vpr@19.5--19.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (VariableAccess.vpr@19.5--19.16) [138544]"}
      FullPerm == Mask[x, next];
    Heap := Heap[x, next:=n];
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(TrueListNode(x), write) && getNext(x) == n {
  //   var tmp: Ref
  //   tmp := n
  //   assert acc(x.next, write) && x.next == tmp
  //   fold acc(TrueListNode(x), write)
  // } -- VariableAccess.vpr@20.5--24.6
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      b_1_1 := b_1_1;
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- VariableAccess.vpr@20.13--20.56
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    
    // -- Assumptions about local variables
      assume UsedHeap[tmp, $allocated];
    if (b_1_1) {
      
      // -- Translating statement: tmp := n -- VariableAccess.vpr@21.9--21.26
        tmp := n;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: assert acc(x.next, write) && x.next == tmp -- VariableAccess.vpr@22.9--22.44
        AssertHeap := Ops_1Heap;
        AssertMask := Ops_1Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(x.next, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, next] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.next, write) might be negative. (VariableAccess.vpr@22.16--22.44) [138545]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, next:=Used_1Mask[rcvLocal, next] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, next] == Used_1Heap[rcvLocal, next];
                Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, next:=Used_1Mask[rcvLocal, next] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, next] == Used_1Heap[rcvLocal, next];
                Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                Heap := Heap[null, wand#sm(true, x, x, n):=Heap[null, wand#sm(true, x, x, n)][x, next:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (VariableAccess.vpr@22.16--22.44) [138546]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        
        // -- Transfer of acc(x.next, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Ops_1Mask[rcvLocal, next] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.next, write) might be negative. (VariableAccess.vpr@22.16--22.44) [138547]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_1_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Used_1Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] + takeTransfer];
                b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
                b_1_1 := b_1_1 && Used_1Heap[rcvLocal, next] == Ops_1Heap[rcvLocal, next];
                Used_1Mask := Used_1Mask[rcvLocal, next:=Used_1Mask[rcvLocal, next] - takeTransfer];
                Used_1Heap := Used_1Heap[null, wand#sm(true, x, x, n):=Used_1Heap[null, wand#sm(true, x, x, n)][x, next:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (VariableAccess.vpr@22.16--22.44) [138548]"}
            b_1_1 && b_1_1 ==> neededTransfer == 0.000000000 && Ops_1Mask[rcvLocal, next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_2_1;
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
            b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_4;
        if (b_1_1 && b_2_1) {
          if (b_1_1) {
            
            // -- Check definedness of x.next == tmp
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (VariableAccess.vpr@22.16--22.44) [138549]"}
                HasDirectPerm(Result_1Mask, x, next);
          }
        }
        assert {:msg "  Assert might fail. Assertion x.next == tmp might not hold. (VariableAccess.vpr@22.16--22.44) [138550]"}
          b_1_1 && b_2_1 ==> Result_1Heap[x, next] == tmp;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: fold acc(TrueListNode(x), write) -- VariableAccess.vpr@23.9--23.29
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_5 := b_5 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(x.next, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, next] + neededTransfer;
          assert {:msg "  Folding TrueListNode(x) might fail. Fraction acc(x.next, write) might be negative. (VariableAccess.vpr@23.9--23.29) [138552]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
                b_5 := b_5 && state(Used_2Heap, Used_2Mask);
                b_5 := b_5 && Ops_1Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
                Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
                b_5 := b_5 && state(Used_2Heap, Used_2Mask);
                b_5 := b_5 && Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
                Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                Heap := Heap[null, wand#sm(true, x, x, n):=Heap[null, wand#sm(true, x, x, n)][x, next:=true]];
              }
            }
          assert {:msg "  Folding TrueListNode(x) might fail. There might be insufficient permission to access x.next (VariableAccess.vpr@23.9--23.29) [138553]"}
            b_1_1 && b_5 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_6 := b_1_1 && b_5;
            b_6 := b_6 && state(Result_2Heap, Result_2Mask);
            b_6 := b_6 && sumMask(Result_2Mask, Ops_1Mask, Used_2Mask);
            b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_2Heap, Used_2Mask);
            b_6 := b_6 && state(Result_2Heap, Result_2Mask);
          b_1_1 := b_1_1 && b_6;
        b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        if (b_1_1 && b_5) {
          if (b_1_1) {
            
            // -- Check definedness of x.next != null
              assert {:msg "  Folding TrueListNode(x) might fail. There might be insufficient permission to access x.next (VariableAccess.vpr@23.9--23.29) [138554]"}
                HasDirectPerm(Result_2Mask, x, next);
          }
        }
        assert {:msg "  Folding TrueListNode(x) might fail. Assertion x.next != null might not hold. (VariableAccess.vpr@23.9--23.29) [138555]"}
          b_1_1 && b_5 ==> Result_2Heap[x, next] != null;
        b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        
        // -- Transfer of acc(x.next.next, write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_5) {
              if (b_1_1) {
                
                // -- Check definedness of acc(x.next.next, write)
                  assert {:msg "  Folding TrueListNode(x) might fail. There might be insufficient permission to access x.next (VariableAccess.vpr@23.9--23.29) [138556]"}
                    HasDirectPerm(Result_2Mask, x, next);
              }
            }
          rcvLocal := Result_2Heap[x, next];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, next] + neededTransfer;
          assert {:msg "  Folding TrueListNode(x) might fail. Fraction acc(x.next.next, write) might be negative. (VariableAccess.vpr@23.9--23.29) [138557]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
                b_5 := b_5 && state(Used_2Heap, Used_2Mask);
                b_5 := b_5 && Ops_1Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
                Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, next:=Used_2Mask[rcvLocal, next] + takeTransfer];
                b_5 := b_5 && state(Used_2Heap, Used_2Mask);
                b_5 := b_5 && Heap[rcvLocal, next] == Used_2Heap[rcvLocal, next];
                Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
                Heap := Heap[null, wand#sm(true, x, x, n):=Heap[null, wand#sm(true, x, x, n)][Heap[x, next], next:=true]];
              }
            }
          assert {:msg "  Folding TrueListNode(x) might fail. There might be insufficient permission to access x.next.next (VariableAccess.vpr@23.9--23.29) [138558]"}
            b_1_1 && b_5 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_7 := b_1_1 && b_5;
            b_7 := b_7 && state(Result_3Heap, Result_3Mask);
            b_7 := b_7 && sumMask(Result_3Mask, Ops_1Mask, Used_2Mask);
            b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_3Heap, Used_2Mask);
            b_7 := b_7 && state(Result_3Heap, Result_3Mask);
          b_1_1 := b_1_1 && b_7;
        b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, TrueListNode(x):=Ops_1Mask[null, TrueListNode(x)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume TrueListNode#trigger(Ops_1Heap, TrueListNode(x));
        assume Ops_1Heap[null, TrueListNode(x)] == CombineFrames(FrameFragment(Ops_1Heap[x, next]), FrameFragment(Ops_1Heap[Ops_1Heap[x, next], next]));
        if (!HasDirectPerm(Ops_1Mask, null, TrueListNode(x))) {
          Ops_1Heap := Ops_1Heap[null, TrueListNode#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, TrueListNode(x):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, TrueListNode#sm(x):=Ops_1Heap[null, TrueListNode#sm(x)][x, next:=true]];
        Ops_1Heap := Ops_1Heap[null, TrueListNode#sm(x):=Ops_1Heap[null, TrueListNode#sm(x)][Ops_1Heap[x, next], next:=true]];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(TrueListNode(x), write) && getNext(x) == n
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_8 := b_8 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(TrueListNode(x), write)
      arg_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[null, TrueListNode(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(TrueListNode(x), write) might be negative. (VariableAccess.vpr@20.5--24.6) [138560]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_8) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, TrueListNode(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, TrueListNode(arg_1):=Used_3Mask[null, TrueListNode(arg_1)] + takeTransfer];
            b_8 := b_8 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, TrueListNode(arg_1):=FullPerm];
            b_8 := b_8 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, TrueListNode(arg_1):=Ops_1Mask[null, TrueListNode(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_8) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, TrueListNode(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, TrueListNode(arg_1):=Used_3Mask[null, TrueListNode(arg_1)] + takeTransfer];
            b_8 := b_8 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, TrueListNode(arg_1):=FullPerm];
            b_8 := b_8 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
            Mask := Mask[null, TrueListNode(arg_1):=Mask[null, TrueListNode(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand#sm(true, x, x, n)][o_15, f_20] || Heap[null, TrueListNode#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand#sm(true, x, x, n):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access TrueListNode(x) (VariableAccess.vpr@20.5--24.6) [138561]"}
        (b_1_1 && b_1_1) && b_8 ==> neededTransfer == 0.000000000 && Used_3Mask[null, TrueListNode(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_9 := b_1_1 && b_8;
        b_9 := b_9 && state(Result_4Heap, Result_4Mask);
        b_9 := b_9 && sumMask(Result_4Mask, Ops_1Mask, Used_3Mask);
        b_9 := (b_9 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_4Heap, Used_3Mask);
        b_9 := b_9 && state(Result_4Heap, Result_4Mask);
      b_1_1 := b_1_1 && b_9;
    if ((b_1_1 && b_1_1) && b_8) {
      if (b_1_1) {
        
        // -- Check definedness of getNext(x) == n
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Result_4Heap;
            ExhaleWellDef0Mask := Result_4Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function getNext might not hold. There might be insufficient permission to access TrueListNode(x) (VariableAccess.vpr@20.41--20.51) [138562]"}
              NoPerm < perm ==> NoPerm < Result_4Mask[null, TrueListNode(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Result_4Heap, ExhaleHeap, Result_4Mask);
            Result_4Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion getNext(x) == n might not hold. (VariableAccess.vpr@20.5--24.6) [138563]"}
      (b_1_1 && b_1_1) && b_8 ==> getNext(Result_4Heap, x) == n;
    assume state(Heap, Mask);
    Mask := Mask[null, wand(true, x, x, n):=Mask[null, wand(true, x, x, n)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}