// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:36:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/recursive_unrolling.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/recursive_unrolling-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_46: Ref, f_37: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_46, f_37] }
  Heap[o_46, $allocated] ==> Heap[Heap[o_46, f_37], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref, f_54: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, f_54] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_55, f_54) ==> Heap[o_55, f_54] == ExhaleHeap[o_55, f_54]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48), ExhaleHeap[null, PredicateMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> Heap[null, PredicateMaskField(pm_f_48)] == ExhaleHeap[null, PredicateMaskField(pm_f_48)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> (forall <A, B> o2_48: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_48, f_54] }
    Heap[null, PredicateMaskField(pm_f_48)][o2_48, f_54] ==> Heap[o2_48, f_54] == ExhaleHeap[o2_48, f_54]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48), ExhaleHeap[null, WandMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> Heap[null, WandMaskField(pm_f_48)] == ExhaleHeap[null, WandMaskField(pm_f_48)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> (forall <A, B> o2_48: Ref, f_54: (Field A B) ::
    { ExhaleHeap[o2_48, f_54] }
    Heap[null, WandMaskField(pm_f_48)][o2_48, f_54] ==> Heap[o2_48, f_54] == ExhaleHeap[o2_48, f_54]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_55: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_55, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_55, $allocated] ==> ExhaleHeap[o_55, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_46: Ref, f_25: (Field A B), v: B ::
  { Heap[o_46, f_25:=v] }
  succHeap(Heap, Heap[o_46, f_25:=v])
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
// - height 0: length
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

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length(Heap, this) }
  length(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), node#trigger(Heap, node_2(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> length(Heap, this) == 1 + (if Heap[this, next] == null then 0 else length'(Heap, Heap[this, next]))
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), node#trigger(Heap, node_2(this)) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, node_2(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || length#trigger(Heap[null, node_2(this)], this)) ==> length'(Heap, this) > 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, node_2(this):=Mask[null, node_2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + (unfolding acc(node(this), write) in (this.next == null ? 0 : length(this.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume node#trigger(UnfoldingHeap, node_2(this));
      assume UnfoldingHeap[null, node_2(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, node_2(UnfoldingHeap[this, next])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access node(this) (recursive_unrolling.vpr@10.1--16.2) [154567]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, node_2(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, node_2(UnfoldingHeap[this, next]):=UnfoldingMask[null, node_2(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(node_2(this), UnfoldingHeap[null, node_2(this)], node_2(UnfoldingHeap[this, next]), UnfoldingHeap[null, node_2(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@10.1--16.2) [154568]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (UnfoldingHeap[this, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@10.1--16.2) [154569]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(this.next) (recursive_unrolling.vpr@15.35--15.52) [154570]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, node_2(UnfoldingHeap[this, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, node_2(UnfoldingHeap[this, next])], UnfoldingHeap[this, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, node#sm(this):=Heap[null, node#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, node#sm(this)][o_15, f_20] || Heap[null, node#sm(Heap[this, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, node#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, node#sm(this):=Heap[null, node#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, node#sm(this)][o_16, f_21] || Heap[null, node#sm(Heap[this, next])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, node#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1 + (if Heap[this, next] == null then 0 else length(Heap, Heap[this, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of length might not hold. Assertion result > 0 might not hold. (recursive_unrolling.vpr@12.12--12.22) [154571]"}
      Result > 0;
}

// ==================================================
// Translation of predicate node
// ==================================================

type PredicateType_node;
function  node_2(this: Ref): Field PredicateType_node FrameType;
function  node#sm(this: Ref): Field PredicateType_node PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(node_2(this)) }
  PredicateMaskField(node_2(this)) == node#sm(this)
);
axiom (forall this: Ref ::
  { node_2(this) }
  IsPredicateField(node_2(this))
);
axiom (forall this: Ref ::
  { node_2(this) }
  getPredWandId(node_2(this)) == 0
);
function  node#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  node#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { node_2(this), node_2(this2) }
  node_2(this) == node_2(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { node#sm(this), node#sm(this2) }
  node#sm(this) == node#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { node#trigger(Heap, node_2(this)) }
  node#everUsed(node_2(this))
);

procedure node#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of node
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@6.1--8.2) [154572]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(node(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@6.1--8.2) [154573]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, node_2(Heap[this, next]):=Mask[null, node_2(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var n1_1: Ref;
  var n2: Ref;
  var n3: Ref;
  var n4: Ref;
  var n5: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[n1_1, $allocated];
    assume Heap[n2, $allocated];
    assume Heap[n3, $allocated];
    assume Heap[n4, $allocated];
    assume Heap[n5, $allocated];
  
  // -- Translating statement: n1 := new(next) -- recursive_unrolling.vpr@19.16--19.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n1_1 := freshObj;
    Mask := Mask[n1_1, next:=Mask[n1_1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: n1.next := null -- recursive_unrolling.vpr@20.3--20.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n1.next (recursive_unrolling.vpr@20.3--20.18) [154574]"}
      FullPerm == Mask[n1_1, next];
    Heap := Heap[n1_1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n1), write) -- recursive_unrolling.vpr@21.3--21.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n1) might fail. There might be insufficient permission to access n1.next (recursive_unrolling.vpr@21.3--21.21) [154577]"}
        perm <= Mask[n1_1, next];
    }
    Mask := Mask[n1_1, next:=Mask[n1_1, next] - perm];
    if (Heap[n1_1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n1) might fail. There might be insufficient permission to access node(n1.next) (recursive_unrolling.vpr@21.3--21.21) [154579]"}
          perm <= Mask[null, node_2(Heap[n1_1, next])];
      }
      Mask := Mask[null, node_2(Heap[n1_1, next]):=Mask[null, node_2(Heap[n1_1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_2(n1_1), Heap[null, node_2(n1_1)], node_2(Heap[n1_1, next]), Heap[null, node_2(Heap[n1_1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_2(n1_1):=Mask[null, node_2(n1_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_2(n1_1));
    assume Heap[null, node_2(n1_1)] == CombineFrames(FrameFragment(Heap[n1_1, next]), FrameFragment((if Heap[n1_1, next] != null then Heap[null, node_2(Heap[n1_1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_2(n1_1))) {
      Heap := Heap[null, node#sm(n1_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_2(n1_1):=freshVersion];
    }
    Heap := Heap[null, node#sm(n1_1):=Heap[null, node#sm(n1_1)][n1_1, next:=true]];
    if (Heap[n1_1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, node#sm(n1_1)][o_52, f_55] || Heap[null, node#sm(Heap[n1_1, next])][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, node#sm(n1_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: n2 := new(next) -- recursive_unrolling.vpr@23.16--23.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n2 := freshObj;
    Mask := Mask[n2, next:=Mask[n2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: n2.next := n1 -- recursive_unrolling.vpr@24.3--24.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n2.next (recursive_unrolling.vpr@24.3--24.16) [154581]"}
      FullPerm == Mask[n2, next];
    Heap := Heap[n2, next:=n1_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n2), write) -- recursive_unrolling.vpr@25.3--25.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n2) might fail. There might be insufficient permission to access n2.next (recursive_unrolling.vpr@25.3--25.21) [154584]"}
        perm <= Mask[n2, next];
    }
    Mask := Mask[n2, next:=Mask[n2, next] - perm];
    if (Heap[n2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n2) might fail. There might be insufficient permission to access node(n2.next) (recursive_unrolling.vpr@25.3--25.21) [154586]"}
          perm <= Mask[null, node_2(Heap[n2, next])];
      }
      Mask := Mask[null, node_2(Heap[n2, next]):=Mask[null, node_2(Heap[n2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_2(n2), Heap[null, node_2(n2)], node_2(Heap[n2, next]), Heap[null, node_2(Heap[n2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_2(n2):=Mask[null, node_2(n2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_2(n2));
    assume Heap[null, node_2(n2)] == CombineFrames(FrameFragment(Heap[n2, next]), FrameFragment((if Heap[n2, next] != null then Heap[null, node_2(Heap[n2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_2(n2))) {
      Heap := Heap[null, node#sm(n2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_2(n2):=freshVersion];
    }
    Heap := Heap[null, node#sm(n2):=Heap[null, node#sm(n2)][n2, next:=true]];
    if (Heap[n2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
        { newPMask[o_53, f_56] }
        Heap[null, node#sm(n2)][o_53, f_56] || Heap[null, node#sm(Heap[n2, next])][o_53, f_56] ==> newPMask[o_53, f_56]
      );
      Heap := Heap[null, node#sm(n2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: n3 := new(next) -- recursive_unrolling.vpr@27.16--27.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n3 := freshObj;
    Mask := Mask[n3, next:=Mask[n3, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: n3.next := n2 -- recursive_unrolling.vpr@28.3--28.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n3.next (recursive_unrolling.vpr@28.3--28.16) [154588]"}
      FullPerm == Mask[n3, next];
    Heap := Heap[n3, next:=n2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n3), write) -- recursive_unrolling.vpr@29.3--29.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n3) might fail. There might be insufficient permission to access n3.next (recursive_unrolling.vpr@29.3--29.21) [154591]"}
        perm <= Mask[n3, next];
    }
    Mask := Mask[n3, next:=Mask[n3, next] - perm];
    if (Heap[n3, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n3) might fail. There might be insufficient permission to access node(n3.next) (recursive_unrolling.vpr@29.3--29.21) [154593]"}
          perm <= Mask[null, node_2(Heap[n3, next])];
      }
      Mask := Mask[null, node_2(Heap[n3, next]):=Mask[null, node_2(Heap[n3, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_2(n3), Heap[null, node_2(n3)], node_2(Heap[n3, next]), Heap[null, node_2(Heap[n3, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_2(n3):=Mask[null, node_2(n3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_2(n3));
    assume Heap[null, node_2(n3)] == CombineFrames(FrameFragment(Heap[n3, next]), FrameFragment((if Heap[n3, next] != null then Heap[null, node_2(Heap[n3, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_2(n3))) {
      Heap := Heap[null, node#sm(n3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_2(n3):=freshVersion];
    }
    Heap := Heap[null, node#sm(n3):=Heap[null, node#sm(n3)][n3, next:=true]];
    if (Heap[n3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
        { newPMask[o_26, f_29] }
        Heap[null, node#sm(n3)][o_26, f_29] || Heap[null, node#sm(Heap[n3, next])][o_26, f_29] ==> newPMask[o_26, f_29]
      );
      Heap := Heap[null, node#sm(n3):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: n4 := new(next) -- recursive_unrolling.vpr@31.16--31.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n4 := freshObj;
    Mask := Mask[n4, next:=Mask[n4, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: n4.next := n3 -- recursive_unrolling.vpr@32.3--32.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@32.3--32.16) [154595]"}
      FullPerm == Mask[n4, next];
    Heap := Heap[n4, next:=n3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n4), write) -- recursive_unrolling.vpr@33.3--33.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n4) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@33.3--33.21) [154598]"}
        perm <= Mask[n4, next];
    }
    Mask := Mask[n4, next:=Mask[n4, next] - perm];
    if (Heap[n4, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n4) might fail. There might be insufficient permission to access node(n4.next) (recursive_unrolling.vpr@33.3--33.21) [154600]"}
          perm <= Mask[null, node_2(Heap[n4, next])];
      }
      Mask := Mask[null, node_2(Heap[n4, next]):=Mask[null, node_2(Heap[n4, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_2(n4), Heap[null, node_2(n4)], node_2(Heap[n4, next]), Heap[null, node_2(Heap[n4, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_2(n4):=Mask[null, node_2(n4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_2(n4));
    assume Heap[null, node_2(n4)] == CombineFrames(FrameFragment(Heap[n4, next]), FrameFragment((if Heap[n4, next] != null then Heap[null, node_2(Heap[n4, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_2(n4))) {
      Heap := Heap[null, node#sm(n4):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_2(n4):=freshVersion];
    }
    Heap := Heap[null, node#sm(n4):=Heap[null, node#sm(n4)][n4, next:=true]];
    if (Heap[n4, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_85: (Field A B) ::
        { newPMask[o, f_85] }
        Heap[null, node#sm(n4)][o, f_85] || Heap[null, node#sm(Heap[n4, next])][o, f_85] ==> newPMask[o, f_85]
      );
      Heap := Heap[null, node#sm(n4):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: n5 := new(next) -- recursive_unrolling.vpr@35.16--35.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n5 := freshObj;
    Mask := Mask[n5, next:=Mask[n5, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: n5.next := n4 -- recursive_unrolling.vpr@36.3--36.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n5.next (recursive_unrolling.vpr@36.3--36.16) [154602]"}
      FullPerm == Mask[n5, next];
    Heap := Heap[n5, next:=n4];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n5), write) -- recursive_unrolling.vpr@37.3--37.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n5) might fail. There might be insufficient permission to access n5.next (recursive_unrolling.vpr@37.3--37.21) [154605]"}
        perm <= Mask[n5, next];
    }
    Mask := Mask[n5, next:=Mask[n5, next] - perm];
    if (Heap[n5, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n5) might fail. There might be insufficient permission to access node(n5.next) (recursive_unrolling.vpr@37.3--37.21) [154607]"}
          perm <= Mask[null, node_2(Heap[n5, next])];
      }
      Mask := Mask[null, node_2(Heap[n5, next]):=Mask[null, node_2(Heap[n5, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_2(n5), Heap[null, node_2(n5)], node_2(Heap[n5, next]), Heap[null, node_2(Heap[n5, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_2(n5):=Mask[null, node_2(n5)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_2(n5));
    assume Heap[null, node_2(n5)] == CombineFrames(FrameFragment(Heap[n5, next]), FrameFragment((if Heap[n5, next] != null then Heap[null, node_2(Heap[n5, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_2(n5))) {
      Heap := Heap[null, node#sm(n5):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_2(n5):=freshVersion];
    }
    Heap := Heap[null, node#sm(n5):=Heap[null, node#sm(n5)][n5, next:=true]];
    if (Heap[n5, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
        { newPMask[o_11, f_3] }
        Heap[null, node#sm(n5)][o_11, f_3] || Heap[null, node#sm(Heap[n5, next])][o_11, f_3] ==> newPMask[o_11, f_3]
      );
      Heap := Heap[null, node#sm(n5):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert length(n5) == 5 -- recursive_unrolling.vpr@39.3--39.25
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of length(n5) == 5
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(n5) (recursive_unrolling.vpr@39.10--39.20) [154609]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, node_2(n5)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion length(n5) == 5 might not hold. (recursive_unrolling.vpr@39.10--39.25) [154610]"}
      length(Heap, n5) == 5;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(n4: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[n4, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, node_2(n4):=Mask[null, node_2(n4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of length(n4) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(n4) (recursive_unrolling.vpr@43.29--43.39) [154611]"}
          NoPerm < perm ==> NoPerm < Mask[null, node_2(n4)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length(Heap, n4) == 4;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(node(n4), write) -- recursive_unrolling.vpr@45.3--45.23
    assume node#trigger(Heap, node_2(n4));
    assume Heap[null, node_2(n4)] == CombineFrames(FrameFragment(Heap[n4, next]), FrameFragment((if Heap[n4, next] != null then Heap[null, node_2(Heap[n4, next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4) might fail. There might be insufficient permission to access node(n4) (recursive_unrolling.vpr@45.3--45.23) [154614]"}
        perm <= Mask[null, node_2(n4)];
    }
    Mask := Mask[null, node_2(n4):=Mask[null, node_2(n4)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_2(n4))) {
        havoc newVersion;
        Heap := Heap[null, node_2(n4):=newVersion];
      }
    perm := FullPerm;
    assume n4 != null;
    Mask := Mask[n4, next:=Mask[n4, next] + perm];
    assume state(Heap, Mask);
    if (Heap[n4, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_2(Heap[n4, next]):=Mask[null, node_2(Heap[n4, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_2(n4), Heap[null, node_2(n4)], node_2(Heap[n4, next]), Heap[null, node_2(Heap[n4, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(node(n4.next), write) -- recursive_unrolling.vpr@46.3--46.28
    
    // -- Check definedness of acc(node(n4.next), write)
      assert {:msg "  Unfolding node(n4.next) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@46.3--46.28) [154617]"}
        HasDirectPerm(Mask, n4, next);
    assume node#trigger(Heap, node_2(Heap[n4, next]));
    assume Heap[null, node_2(Heap[n4, next])] == CombineFrames(FrameFragment(Heap[Heap[n4, next], next]), FrameFragment((if Heap[Heap[n4, next], next] != null then Heap[null, node_2(Heap[Heap[n4, next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4.next) might fail. There might be insufficient permission to access node(n4.next) (recursive_unrolling.vpr@46.3--46.28) [154620]"}
        perm <= Mask[null, node_2(Heap[n4, next])];
    }
    Mask := Mask[null, node_2(Heap[n4, next]):=Mask[null, node_2(Heap[n4, next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_2(Heap[n4, next]))) {
        havoc newVersion;
        Heap := Heap[null, node_2(Heap[n4, next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[n4, next] != null;
    Mask := Mask[Heap[n4, next], next:=Mask[Heap[n4, next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[n4, next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_2(Heap[Heap[n4, next], next]):=Mask[null, node_2(Heap[Heap[n4, next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_2(Heap[n4, next]), Heap[null, node_2(Heap[n4, next])], node_2(Heap[Heap[n4, next], next]), Heap[null, node_2(Heap[Heap[n4, next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(node(n4.next.next), write) -- recursive_unrolling.vpr@47.3--47.33
    
    // -- Check definedness of acc(node(n4.next.next), write)
      assert {:msg "  Unfolding node(n4.next.next) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@47.3--47.33) [154623]"}
        HasDirectPerm(Mask, n4, next);
      assert {:msg "  Unfolding node(n4.next.next) might fail. There might be insufficient permission to access n4.next.next (recursive_unrolling.vpr@47.3--47.33) [154624]"}
        HasDirectPerm(Mask, Heap[n4, next], next);
    assume node#trigger(Heap, node_2(Heap[Heap[n4, next], next]));
    assume Heap[null, node_2(Heap[Heap[n4, next], next])] == CombineFrames(FrameFragment(Heap[Heap[Heap[n4, next], next], next]), FrameFragment((if Heap[Heap[Heap[n4, next], next], next] != null then Heap[null, node_2(Heap[Heap[Heap[n4, next], next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4.next.next) might fail. There might be insufficient permission to access node(n4.next.next) (recursive_unrolling.vpr@47.3--47.33) [154627]"}
        perm <= Mask[null, node_2(Heap[Heap[n4, next], next])];
    }
    Mask := Mask[null, node_2(Heap[Heap[n4, next], next]):=Mask[null, node_2(Heap[Heap[n4, next], next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_2(Heap[Heap[n4, next], next]))) {
        havoc newVersion;
        Heap := Heap[null, node_2(Heap[Heap[n4, next], next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[Heap[n4, next], next] != null;
    Mask := Mask[Heap[Heap[n4, next], next], next:=Mask[Heap[Heap[n4, next], next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[Heap[n4, next], next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_2(Heap[Heap[Heap[n4, next], next], next]):=Mask[null, node_2(Heap[Heap[Heap[n4, next], next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_2(Heap[Heap[n4, next], next]), Heap[null, node_2(Heap[Heap[n4, next], next])], node_2(Heap[Heap[Heap[n4, next], next], next]), Heap[null, node_2(Heap[Heap[Heap[n4, next], next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(node(n4.next.next.next), write) -- recursive_unrolling.vpr@48.3--48.38
    
    // -- Check definedness of acc(node(n4.next.next.next), write)
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@48.3--48.38) [154630]"}
        HasDirectPerm(Mask, n4, next);
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access n4.next.next (recursive_unrolling.vpr@48.3--48.38) [154631]"}
        HasDirectPerm(Mask, Heap[n4, next], next);
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access n4.next.next.next (recursive_unrolling.vpr@48.3--48.38) [154632]"}
        HasDirectPerm(Mask, Heap[Heap[n4, next], next], next);
    assume node#trigger(Heap, node_2(Heap[Heap[Heap[n4, next], next], next]));
    assume Heap[null, node_2(Heap[Heap[Heap[n4, next], next], next])] == CombineFrames(FrameFragment(Heap[Heap[Heap[Heap[n4, next], next], next], next]), FrameFragment((if Heap[Heap[Heap[Heap[n4, next], next], next], next] != null then Heap[null, node_2(Heap[Heap[Heap[Heap[n4, next], next], next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access node(n4.next.next.next) (recursive_unrolling.vpr@48.3--48.38) [154635]"}
        perm <= Mask[null, node_2(Heap[Heap[Heap[n4, next], next], next])];
    }
    Mask := Mask[null, node_2(Heap[Heap[Heap[n4, next], next], next]):=Mask[null, node_2(Heap[Heap[Heap[n4, next], next], next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_2(Heap[Heap[Heap[n4, next], next], next]))) {
        havoc newVersion;
        Heap := Heap[null, node_2(Heap[Heap[Heap[n4, next], next], next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[Heap[Heap[n4, next], next], next] != null;
    Mask := Mask[Heap[Heap[Heap[n4, next], next], next], next:=Mask[Heap[Heap[Heap[n4, next], next], next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[Heap[Heap[n4, next], next], next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_2(Heap[Heap[Heap[Heap[n4, next], next], next], next]):=Mask[null, node_2(Heap[Heap[Heap[Heap[n4, next], next], next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_2(Heap[Heap[Heap[n4, next], next], next]), Heap[null, node_2(Heap[Heap[Heap[n4, next], next], next])], node_2(Heap[Heap[Heap[Heap[n4, next], next], next], next]), Heap[null, node_2(Heap[Heap[Heap[Heap[n4, next], next], next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert n4.next.next.next.next == null -- recursive_unrolling.vpr@50.3--50.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of n4.next.next.next.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@50.10--50.40) [154638]"}
        HasDirectPerm(ExhaleWellDef0Mask, n4, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next.next (recursive_unrolling.vpr@50.10--50.40) [154639]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[n4, next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next.next.next (recursive_unrolling.vpr@50.10--50.40) [154640]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[Heap[n4, next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next.next.next.next (recursive_unrolling.vpr@50.10--50.40) [154641]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[Heap[Heap[n4, next], next], next], next);
    assert {:msg "  Assert might fail. Assertion n4.next.next.next.next == null might not hold. (recursive_unrolling.vpr@50.10--50.40) [154642]"}
      Heap[Heap[Heap[Heap[n4, next], next], next], next] == null;
    assume state(Heap, Mask);
}