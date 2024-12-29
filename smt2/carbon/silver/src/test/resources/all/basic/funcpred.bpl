// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:40:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/funcpred.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/funcpred-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: itemat
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function itemat
// ==================================================

// Uninterpreted function definitions
function  itemat(Heap: HeapType, node: Ref, i: int): int;
function  itemat'(Heap: HeapType, node: Ref, i: int): int;
axiom (forall Heap: HeapType, node: Ref, i: int ::
  { itemat(Heap, node, i) }
  itemat(Heap, node, i) == itemat'(Heap, node, i) && dummyFunction(itemat#triggerStateless(node, i))
);
axiom (forall Heap: HeapType, node: Ref, i: int ::
  { itemat'(Heap, node, i) }
  dummyFunction(itemat#triggerStateless(node, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, node: Ref, i: int ::
  { state(Heap, Mask), itemat(Heap, node, i) } { state(Heap, Mask), itemat#triggerStateless(node, i), valid#trigger(Heap, valid(node)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> i >= 0 ==> itemat(Heap, node, i) == (if i == 0 || Heap[node, next] == null then Heap[node, value] else itemat'(Heap, Heap[node, next], i - 1))
);

// Framing axioms
function  itemat#frame(frame: FrameType, node: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, node: Ref, i: int ::
  { state(Heap, Mask), itemat'(Heap, node, i) } { state(Heap, Mask), itemat#triggerStateless(node, i), valid#trigger(Heap, valid(node)) }
  state(Heap, Mask) ==> itemat'(Heap, node, i) == itemat#frame(Heap[null, valid(node)], node, i)
);

// Trigger function (controlling recursive postconditions)
function  itemat#trigger(frame: FrameType, node: Ref, i: int): bool;

// State-independent trigger function
function  itemat#triggerStateless(node: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure itemat#definedness(node: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[node, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(node):=Mask[null, valid(node)] + perm];
    assume state(Heap, Mask);
    assume i >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(node), wildcard) in (i == 0 || node.next == null ? node.value : itemat(node.next, i - 1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(node));
      assume UnfoldingHeap[null, valid(node)] == CombineFrames(FrameFragment(UnfoldingHeap[node, next]), CombineFrames(FrameFragment(UnfoldingHeap[node, value]), FrameFragment((if UnfoldingHeap[node, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[node, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(node) (funcpred.vpr@9.1--13.2) [186257]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(node)];
      havoc wildcard;
      perm := wildcard;
      assume node != null;
      UnfoldingMask := UnfoldingMask[node, next:=UnfoldingMask[node, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume node != null;
      UnfoldingMask := UnfoldingMask[node, value:=UnfoldingMask[node, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[node, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[node, next]):=UnfoldingMask[null, valid(UnfoldingHeap[node, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(node), UnfoldingHeap[null, valid(node)], valid(UnfoldingHeap[node, next]), UnfoldingHeap[null, valid(UnfoldingHeap[node, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (!(i == 0)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access node.next (funcpred.vpr@9.1--13.2) [186258]"}
          HasDirectPerm(UnfoldingMask, node, next);
      }
      if (i == 0 || UnfoldingHeap[node, next] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access node.value (funcpred.vpr@9.1--13.2) [186259]"}
          HasDirectPerm(UnfoldingMask, node, value);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access node.next (funcpred.vpr@9.1--13.2) [186260]"}
          HasDirectPerm(UnfoldingMask, node, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function itemat might not hold. There might be insufficient permission to access valid(node.next) (funcpred.vpr@12.91--12.113) [186261]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(UnfoldingHeap[node, next])];
          assert {:msg "  Precondition of function itemat might not hold. Assertion i - 1 >= 0 might not hold. (funcpred.vpr@12.91--12.113) [186262]"}
            i - 1 >= 0;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume itemat#trigger(UnfoldingHeap[null, valid(UnfoldingHeap[node, next])], UnfoldingHeap[node, next], i - 1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(node):=Heap[null, valid#sm(node)][node, next:=true]];
        Heap := Heap[null, valid#sm(node):=Heap[null, valid#sm(node)][node, value:=true]];
        if (Heap[node, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, valid#sm(node)][o_15, f_20] || Heap[null, valid#sm(Heap[node, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, valid#sm(node):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if i == 0 || Heap[node, next] == null then Heap[node, value] else itemat(Heap, Heap[node, next], i - 1));
}

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(this: Ref): Field PredicateType_valid FrameType;
function  valid#sm(this: Ref): Field PredicateType_valid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(valid(this)) }
  PredicateMaskField(valid(this)) == valid#sm(this)
);
axiom (forall this: Ref ::
  { valid(this) }
  IsPredicateField(valid(this))
);
axiom (forall this: Ref ::
  { valid(this) }
  getPredWandId(valid(this)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { valid(this), valid(this2) }
  valid(this) == valid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { valid#sm(this), valid#sm(this2) }
  valid#sm(this) == valid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { valid#trigger(Heap, valid(this)) }
  valid#everUsed(valid(this))
);

procedure valid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
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
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (funcpred.vpr@15.1--19.2) [186263]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (funcpred.vpr@15.1--19.2) [186264]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method a
// ==================================================

procedure a_25(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this), write) -- funcpred.vpr@25.5--25.35
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (funcpred.vpr@25.5--25.35) [186267]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this))) {
        havoc newVersion;
        Heap := Heap[null, valid(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.value := 1 -- funcpred.vpr@26.5--26.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (funcpred.vpr@26.5--26.20) [186271]"}
      FullPerm == Mask[this, value];
    Heap := Heap[this, value:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- funcpred.vpr@27.5--27.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.next (funcpred.vpr@27.5--27.33) [186274]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.value (funcpred.vpr@27.5--27.33) [186276]"}
        perm <= Mask[this, value];
    }
    Mask := Mask[this, value:=Mask[this, value] - perm];
    if (Heap[this, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.next) (funcpred.vpr@27.5--27.33) [186278]"}
          perm <= Mask[null, valid(Heap[this, next])];
      }
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, valid#sm(this)][o_16, f_21] || Heap[null, valid#sm(Heap[this, next])][o_16, f_21] ==> newPMask[o_16, f_21]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: void(this) -- funcpred.vpr@28.5--28.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method void might not hold. There might be insufficient permission to access this.f (funcpred.vpr@28.5--28.15) [186280]"}
          perm <= Mask[this, f_7];
      }
      Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert itemat(this, 0) == 1 -- funcpred.vpr@29.5--29.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of itemat(this, 0) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function itemat might not hold. There might be insufficient permission to access valid(this) (funcpred.vpr@29.12--29.27) [186281]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion itemat(this, 0) == 1 might not hold. (funcpred.vpr@29.12--29.32) [186282]"}
      itemat(Heap, this, 0) == 1;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of a might not hold. There might be insufficient permission to access valid(this) (funcpred.vpr@23.13--23.36) [186283]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method void
// ==================================================

procedure void(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume this != null;
    PostMask := PostMask[this, f_7:=PostMask[this, f_7] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of void might not hold. There might be insufficient permission to access this.f (funcpred.vpr@34.13--34.31) [186284]"}
        perm <= Mask[this, f_7];
    }
    Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}