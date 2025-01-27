// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:13:12
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
axiom (forall o_41: Ref, f_53: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_41, f_53] }
  Heap[o_41, $allocated] ==> Heap[Heap[o_41, f_53], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_51: Ref, f_62: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_51, f_62] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_51, f_62) ==> Heap[o_51, f_62] == ExhaleHeap[o_51, f_62]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_27), ExhaleHeap[null, PredicateMaskField(pm_f_27)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsPredicateField(pm_f_27) ==> Heap[null, PredicateMaskField(pm_f_27)] == ExhaleHeap[null, PredicateMaskField(pm_f_27)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_27) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsPredicateField(pm_f_27) ==> (forall <A, B> o2_27: Ref, f_62: (Field A B) ::
    { ExhaleHeap[o2_27, f_62] }
    Heap[null, PredicateMaskField(pm_f_27)][o2_27, f_62] ==> Heap[o2_27, f_62] == ExhaleHeap[o2_27, f_62]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_27), ExhaleHeap[null, WandMaskField(pm_f_27)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsWandField(pm_f_27) ==> Heap[null, WandMaskField(pm_f_27)] == ExhaleHeap[null, WandMaskField(pm_f_27)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_27: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_27) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_27) && IsWandField(pm_f_27) ==> (forall <A, B> o2_27: Ref, f_62: (Field A B) ::
    { ExhaleHeap[o2_27, f_62] }
    Heap[null, WandMaskField(pm_f_27)][o2_27, f_62] ==> Heap[o2_27, f_62] == ExhaleHeap[o2_27, f_62]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_51: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_51, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_51, $allocated] ==> ExhaleHeap[o_51, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_41: Ref, f_13: (Field A B), v: B ::
  { Heap[o_41, f_13:=v] }
  succHeap(Heap, Heap[o_41, f_13:=v])
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
function  length_1(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length_1(Heap, this) }
  length_1(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length_1(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), node#trigger(Heap, node_1(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> length_1(Heap, this) == 1 + (if Heap[this, next] == null then 0 else length'(Heap, Heap[this, next]))
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), node#trigger(Heap, node_1(this)) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, node_1(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || length#trigger(Heap[null, node_1(this)], this)) ==> length'(Heap, this) > 0
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
    Mask := Mask[null, node_1(this):=Mask[null, node_1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + (unfolding acc(node(this), write) in (this.next == null ? 0 : length(this.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume node#trigger(UnfoldingHeap, node_1(this));
      assume UnfoldingHeap[null, node_1(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, node_1(UnfoldingHeap[this, next])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access node(this) (recursive_unrolling.vpr@10.1--16.2) [48562]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, node_1(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, node_1(UnfoldingHeap[this, next]):=UnfoldingMask[null, node_1(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(node_1(this), UnfoldingHeap[null, node_1(this)], node_1(UnfoldingHeap[this, next]), UnfoldingHeap[null, node_1(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@10.1--16.2) [48563]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (UnfoldingHeap[this, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@10.1--16.2) [48564]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(this.next) (recursive_unrolling.vpr@15.35--15.52) [48565]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, node_1(UnfoldingHeap[this, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, node_1(UnfoldingHeap[this, next])], UnfoldingHeap[this, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, node#sm(this):=Heap[null, node#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, node#sm(this)][o_5, f_11] || Heap[null, node#sm(Heap[this, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, node#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, node#sm(this):=Heap[null, node#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, node#sm(this)][o_6, f_12] || Heap[null, node#sm(Heap[this, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, node#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1 + (if Heap[this, next] == null then 0 else length_1(Heap, Heap[this, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of length might not hold. Assertion result > 0 might not hold. (recursive_unrolling.vpr@12.12--12.22) [48566]"}
      Result > 0;
}

// ==================================================
// Translation of predicate node
// ==================================================

type PredicateType_node;
function  node_1(this: Ref): Field PredicateType_node FrameType;
function  node#sm(this: Ref): Field PredicateType_node PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(node_1(this)) }
  PredicateMaskField(node_1(this)) == node#sm(this)
);
axiom (forall this: Ref ::
  { node_1(this) }
  IsPredicateField(node_1(this))
);
axiom (forall this: Ref ::
  { node_1(this) }
  getPredWandId(node_1(this)) == 0
);
function  node#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  node#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { node_1(this), node_1(this2) }
  node_1(this) == node_1(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { node#sm(this), node#sm(this2) }
  node#sm(this) == node#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { node#trigger(Heap, node_1(this)) }
  node#everUsed(node_1(this))
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@6.1--8.2) [48567]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(node(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (recursive_unrolling.vpr@6.1--8.2) [48568]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, node_1(Heap[this, next]):=Mask[null, node_1(Heap[this, next])] + perm];
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
  var n1: Ref;
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
    assume Heap[n1, $allocated];
    assume Heap[n2, $allocated];
    assume Heap[n3, $allocated];
    assume Heap[n4, $allocated];
    assume Heap[n5, $allocated];
  
  // -- Translating statement: n1 := new(next) -- recursive_unrolling.vpr@19.16--19.31
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n1 := freshObj;
    Mask := Mask[n1, next:=Mask[n1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: n1.next := null -- recursive_unrolling.vpr@20.3--20.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n1.next (recursive_unrolling.vpr@20.3--20.18) [48569]"}
      FullPerm == Mask[n1, next];
    Heap := Heap[n1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n1), write) -- recursive_unrolling.vpr@21.3--21.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n1) might fail. There might be insufficient permission to access n1.next (recursive_unrolling.vpr@21.3--21.21) [48572]"}
        perm <= Mask[n1, next];
    }
    Mask := Mask[n1, next:=Mask[n1, next] - perm];
    if (Heap[n1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n1) might fail. There might be insufficient permission to access node(n1.next) (recursive_unrolling.vpr@21.3--21.21) [48574]"}
          perm <= Mask[null, node_1(Heap[n1, next])];
      }
      Mask := Mask[null, node_1(Heap[n1, next]):=Mask[null, node_1(Heap[n1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_1(n1), Heap[null, node_1(n1)], node_1(Heap[n1, next]), Heap[null, node_1(Heap[n1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_1(n1):=Mask[null, node_1(n1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_1(n1));
    assume Heap[null, node_1(n1)] == CombineFrames(FrameFragment(Heap[n1, next]), FrameFragment((if Heap[n1, next] != null then Heap[null, node_1(Heap[n1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_1(n1))) {
      Heap := Heap[null, node#sm(n1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_1(n1):=freshVersion];
    }
    Heap := Heap[null, node#sm(n1):=Heap[null, node#sm(n1)][n1, next:=true]];
    if (Heap[n1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, node#sm(n1)][o_40, f_52] || Heap[null, node#sm(Heap[n1, next])][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, node#sm(n1):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n2.next (recursive_unrolling.vpr@24.3--24.16) [48576]"}
      FullPerm == Mask[n2, next];
    Heap := Heap[n2, next:=n1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n2), write) -- recursive_unrolling.vpr@25.3--25.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n2) might fail. There might be insufficient permission to access n2.next (recursive_unrolling.vpr@25.3--25.21) [48579]"}
        perm <= Mask[n2, next];
    }
    Mask := Mask[n2, next:=Mask[n2, next] - perm];
    if (Heap[n2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n2) might fail. There might be insufficient permission to access node(n2.next) (recursive_unrolling.vpr@25.3--25.21) [48581]"}
          perm <= Mask[null, node_1(Heap[n2, next])];
      }
      Mask := Mask[null, node_1(Heap[n2, next]):=Mask[null, node_1(Heap[n2, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_1(n2), Heap[null, node_1(n2)], node_1(Heap[n2, next]), Heap[null, node_1(Heap[n2, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_1(n2):=Mask[null, node_1(n2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_1(n2));
    assume Heap[null, node_1(n2)] == CombineFrames(FrameFragment(Heap[n2, next]), FrameFragment((if Heap[n2, next] != null then Heap[null, node_1(Heap[n2, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_1(n2))) {
      Heap := Heap[null, node#sm(n2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_1(n2):=freshVersion];
    }
    Heap := Heap[null, node#sm(n2):=Heap[null, node#sm(n2)][n2, next:=true]];
    if (Heap[n2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
        { newPMask[o_42, f_55] }
        Heap[null, node#sm(n2)][o_42, f_55] || Heap[null, node#sm(Heap[n2, next])][o_42, f_55] ==> newPMask[o_42, f_55]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n3.next (recursive_unrolling.vpr@28.3--28.16) [48583]"}
      FullPerm == Mask[n3, next];
    Heap := Heap[n3, next:=n2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n3), write) -- recursive_unrolling.vpr@29.3--29.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n3) might fail. There might be insufficient permission to access n3.next (recursive_unrolling.vpr@29.3--29.21) [48586]"}
        perm <= Mask[n3, next];
    }
    Mask := Mask[n3, next:=Mask[n3, next] - perm];
    if (Heap[n3, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n3) might fail. There might be insufficient permission to access node(n3.next) (recursive_unrolling.vpr@29.3--29.21) [48588]"}
          perm <= Mask[null, node_1(Heap[n3, next])];
      }
      Mask := Mask[null, node_1(Heap[n3, next]):=Mask[null, node_1(Heap[n3, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_1(n3), Heap[null, node_1(n3)], node_1(Heap[n3, next]), Heap[null, node_1(Heap[n3, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_1(n3):=Mask[null, node_1(n3)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_1(n3));
    assume Heap[null, node_1(n3)] == CombineFrames(FrameFragment(Heap[n3, next]), FrameFragment((if Heap[n3, next] != null then Heap[null, node_1(Heap[n3, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_1(n3))) {
      Heap := Heap[null, node#sm(n3):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_1(n3):=freshVersion];
    }
    Heap := Heap[null, node#sm(n3):=Heap[null, node#sm(n3)][n3, next:=true]];
    if (Heap[n3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
        { newPMask[o_46, f_60] }
        Heap[null, node#sm(n3)][o_46, f_60] || Heap[null, node#sm(Heap[n3, next])][o_46, f_60] ==> newPMask[o_46, f_60]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@32.3--32.16) [48590]"}
      FullPerm == Mask[n4, next];
    Heap := Heap[n4, next:=n3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n4), write) -- recursive_unrolling.vpr@33.3--33.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n4) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@33.3--33.21) [48593]"}
        perm <= Mask[n4, next];
    }
    Mask := Mask[n4, next:=Mask[n4, next] - perm];
    if (Heap[n4, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n4) might fail. There might be insufficient permission to access node(n4.next) (recursive_unrolling.vpr@33.3--33.21) [48595]"}
          perm <= Mask[null, node_1(Heap[n4, next])];
      }
      Mask := Mask[null, node_1(Heap[n4, next]):=Mask[null, node_1(Heap[n4, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_1(n4), Heap[null, node_1(n4)], node_1(Heap[n4, next]), Heap[null, node_1(Heap[n4, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_1(n4):=Mask[null, node_1(n4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_1(n4));
    assume Heap[null, node_1(n4)] == CombineFrames(FrameFragment(Heap[n4, next]), FrameFragment((if Heap[n4, next] != null then Heap[null, node_1(Heap[n4, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_1(n4))) {
      Heap := Heap[null, node#sm(n4):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_1(n4):=freshVersion];
    }
    Heap := Heap[null, node#sm(n4):=Heap[null, node#sm(n4)][n4, next:=true]];
    if (Heap[n4, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_61: (Field A B) ::
        { newPMask[o, f_61] }
        Heap[null, node#sm(n4)][o, f_61] || Heap[null, node#sm(Heap[n4, next])][o, f_61] ==> newPMask[o, f_61]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access n5.next (recursive_unrolling.vpr@36.3--36.16) [48597]"}
      FullPerm == Mask[n5, next];
    Heap := Heap[n5, next:=n4];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(n5), write) -- recursive_unrolling.vpr@37.3--37.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(n5) might fail. There might be insufficient permission to access n5.next (recursive_unrolling.vpr@37.3--37.21) [48600]"}
        perm <= Mask[n5, next];
    }
    Mask := Mask[n5, next:=Mask[n5, next] - perm];
    if (Heap[n5, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(n5) might fail. There might be insufficient permission to access node(n5.next) (recursive_unrolling.vpr@37.3--37.21) [48602]"}
          perm <= Mask[null, node_1(Heap[n5, next])];
      }
      Mask := Mask[null, node_1(Heap[n5, next]):=Mask[null, node_1(Heap[n5, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_1(n5), Heap[null, node_1(n5)], node_1(Heap[n5, next]), Heap[null, node_1(Heap[n5, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_1(n5):=Mask[null, node_1(n5)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_1(n5));
    assume Heap[null, node_1(n5)] == CombineFrames(FrameFragment(Heap[n5, next]), FrameFragment((if Heap[n5, next] != null then Heap[null, node_1(Heap[n5, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, node_1(n5))) {
      Heap := Heap[null, node#sm(n5):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_1(n5):=freshVersion];
    }
    Heap := Heap[null, node#sm(n5):=Heap[null, node#sm(n5)][n5, next:=true]];
    if (Heap[n5, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
        { newPMask[o_14, f_3] }
        Heap[null, node#sm(n5)][o_14, f_3] || Heap[null, node#sm(Heap[n5, next])][o_14, f_3] ==> newPMask[o_14, f_3]
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(n5) (recursive_unrolling.vpr@39.10--39.20) [48604]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, node_1(n5)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion length(n5) == 5 might not hold. (recursive_unrolling.vpr@39.10--39.25) [48605]"}
      length_1(Heap, n5) == 5;
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
    Mask := Mask[null, node_1(n4):=Mask[null, node_1(n4)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of length(n4) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(n4) (recursive_unrolling.vpr@43.29--43.39) [48606]"}
          NoPerm < perm ==> NoPerm < Mask[null, node_1(n4)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_1(Heap, n4) == 4;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(node(n4), write) -- recursive_unrolling.vpr@45.3--45.23
    assume node#trigger(Heap, node_1(n4));
    assume Heap[null, node_1(n4)] == CombineFrames(FrameFragment(Heap[n4, next]), FrameFragment((if Heap[n4, next] != null then Heap[null, node_1(Heap[n4, next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4) might fail. There might be insufficient permission to access node(n4) (recursive_unrolling.vpr@45.3--45.23) [48609]"}
        perm <= Mask[null, node_1(n4)];
    }
    Mask := Mask[null, node_1(n4):=Mask[null, node_1(n4)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_1(n4))) {
        havoc newVersion;
        Heap := Heap[null, node_1(n4):=newVersion];
      }
    perm := FullPerm;
    assume n4 != null;
    Mask := Mask[n4, next:=Mask[n4, next] + perm];
    assume state(Heap, Mask);
    if (Heap[n4, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_1(Heap[n4, next]):=Mask[null, node_1(Heap[n4, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_1(n4), Heap[null, node_1(n4)], node_1(Heap[n4, next]), Heap[null, node_1(Heap[n4, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(node(n4.next), write) -- recursive_unrolling.vpr@46.3--46.28
    
    // -- Check definedness of acc(node(n4.next), write)
      assert {:msg "  Unfolding node(n4.next) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@46.3--46.28) [48612]"}
        HasDirectPerm(Mask, n4, next);
    assume node#trigger(Heap, node_1(Heap[n4, next]));
    assume Heap[null, node_1(Heap[n4, next])] == CombineFrames(FrameFragment(Heap[Heap[n4, next], next]), FrameFragment((if Heap[Heap[n4, next], next] != null then Heap[null, node_1(Heap[Heap[n4, next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4.next) might fail. There might be insufficient permission to access node(n4.next) (recursive_unrolling.vpr@46.3--46.28) [48615]"}
        perm <= Mask[null, node_1(Heap[n4, next])];
    }
    Mask := Mask[null, node_1(Heap[n4, next]):=Mask[null, node_1(Heap[n4, next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_1(Heap[n4, next]))) {
        havoc newVersion;
        Heap := Heap[null, node_1(Heap[n4, next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[n4, next] != null;
    Mask := Mask[Heap[n4, next], next:=Mask[Heap[n4, next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[n4, next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_1(Heap[Heap[n4, next], next]):=Mask[null, node_1(Heap[Heap[n4, next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_1(Heap[n4, next]), Heap[null, node_1(Heap[n4, next])], node_1(Heap[Heap[n4, next], next]), Heap[null, node_1(Heap[Heap[n4, next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(node(n4.next.next), write) -- recursive_unrolling.vpr@47.3--47.33
    
    // -- Check definedness of acc(node(n4.next.next), write)
      assert {:msg "  Unfolding node(n4.next.next) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@47.3--47.33) [48618]"}
        HasDirectPerm(Mask, n4, next);
      assert {:msg "  Unfolding node(n4.next.next) might fail. There might be insufficient permission to access n4.next.next (recursive_unrolling.vpr@47.3--47.33) [48619]"}
        HasDirectPerm(Mask, Heap[n4, next], next);
    assume node#trigger(Heap, node_1(Heap[Heap[n4, next], next]));
    assume Heap[null, node_1(Heap[Heap[n4, next], next])] == CombineFrames(FrameFragment(Heap[Heap[Heap[n4, next], next], next]), FrameFragment((if Heap[Heap[Heap[n4, next], next], next] != null then Heap[null, node_1(Heap[Heap[Heap[n4, next], next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4.next.next) might fail. There might be insufficient permission to access node(n4.next.next) (recursive_unrolling.vpr@47.3--47.33) [48622]"}
        perm <= Mask[null, node_1(Heap[Heap[n4, next], next])];
    }
    Mask := Mask[null, node_1(Heap[Heap[n4, next], next]):=Mask[null, node_1(Heap[Heap[n4, next], next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_1(Heap[Heap[n4, next], next]))) {
        havoc newVersion;
        Heap := Heap[null, node_1(Heap[Heap[n4, next], next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[Heap[n4, next], next] != null;
    Mask := Mask[Heap[Heap[n4, next], next], next:=Mask[Heap[Heap[n4, next], next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[Heap[n4, next], next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_1(Heap[Heap[Heap[n4, next], next], next]):=Mask[null, node_1(Heap[Heap[Heap[n4, next], next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_1(Heap[Heap[n4, next], next]), Heap[null, node_1(Heap[Heap[n4, next], next])], node_1(Heap[Heap[Heap[n4, next], next], next]), Heap[null, node_1(Heap[Heap[Heap[n4, next], next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(node(n4.next.next.next), write) -- recursive_unrolling.vpr@48.3--48.38
    
    // -- Check definedness of acc(node(n4.next.next.next), write)
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@48.3--48.38) [48625]"}
        HasDirectPerm(Mask, n4, next);
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access n4.next.next (recursive_unrolling.vpr@48.3--48.38) [48626]"}
        HasDirectPerm(Mask, Heap[n4, next], next);
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access n4.next.next.next (recursive_unrolling.vpr@48.3--48.38) [48627]"}
        HasDirectPerm(Mask, Heap[Heap[n4, next], next], next);
    assume node#trigger(Heap, node_1(Heap[Heap[Heap[n4, next], next], next]));
    assume Heap[null, node_1(Heap[Heap[Heap[n4, next], next], next])] == CombineFrames(FrameFragment(Heap[Heap[Heap[Heap[n4, next], next], next], next]), FrameFragment((if Heap[Heap[Heap[Heap[n4, next], next], next], next] != null then Heap[null, node_1(Heap[Heap[Heap[Heap[n4, next], next], next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(n4.next.next.next) might fail. There might be insufficient permission to access node(n4.next.next.next) (recursive_unrolling.vpr@48.3--48.38) [48630]"}
        perm <= Mask[null, node_1(Heap[Heap[Heap[n4, next], next], next])];
    }
    Mask := Mask[null, node_1(Heap[Heap[Heap[n4, next], next], next]):=Mask[null, node_1(Heap[Heap[Heap[n4, next], next], next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_1(Heap[Heap[Heap[n4, next], next], next]))) {
        havoc newVersion;
        Heap := Heap[null, node_1(Heap[Heap[Heap[n4, next], next], next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[Heap[Heap[n4, next], next], next] != null;
    Mask := Mask[Heap[Heap[Heap[n4, next], next], next], next:=Mask[Heap[Heap[Heap[n4, next], next], next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[Heap[Heap[n4, next], next], next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, node_1(Heap[Heap[Heap[Heap[n4, next], next], next], next]):=Mask[null, node_1(Heap[Heap[Heap[Heap[n4, next], next], next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_1(Heap[Heap[Heap[n4, next], next], next]), Heap[null, node_1(Heap[Heap[Heap[n4, next], next], next])], node_1(Heap[Heap[Heap[Heap[n4, next], next], next], next]), Heap[null, node_1(Heap[Heap[Heap[Heap[n4, next], next], next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert n4.next.next.next.next == null -- recursive_unrolling.vpr@50.3--50.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of n4.next.next.next.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next (recursive_unrolling.vpr@50.10--50.40) [48633]"}
        HasDirectPerm(ExhaleWellDef0Mask, n4, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next.next (recursive_unrolling.vpr@50.10--50.40) [48634]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[n4, next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next.next.next (recursive_unrolling.vpr@50.10--50.40) [48635]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[Heap[n4, next], next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access n4.next.next.next.next (recursive_unrolling.vpr@50.10--50.40) [48636]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[Heap[Heap[n4, next], next], next], next);
    assert {:msg "  Assert might fail. Assertion n4.next.next.next.next == null might not hold. (recursive_unrolling.vpr@50.10--50.40) [48637]"}
      Heap[Heap[Heap[Heap[n4, next], next], next], next] == null;
    assume state(Heap, Mask);
}