// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:23:03
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0118-reduced.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0118-reduced-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: length
// - height 1: list_len
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
  { state(Heap, Mask), length(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), Node#trigger(Heap, Node(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> length(Heap, this) == 10
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, Node(this)], this)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node(this):=Mask[null, Node(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 10;
}

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, this: Ref, i: int): int;
function  get'(Heap: HeapType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { get(Heap, this, i) }
  get(Heap, this, i) == get'(Heap, this, i) && dummyFunction(get#triggerStateless(this, i))
);
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { get'(Heap, this, i) }
  dummyFunction(get#triggerStateless(this, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), get(Heap, this, i) } { state(Heap, Mask), get#triggerStateless(this, i), Node#trigger(Heap, Node(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < length(Heap, this) ==> get(Heap, this, i) == (if i == 0 then -1 else get'(Heap, Heap[this, next], i - 1))
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), get'(Heap, this, i) } { state(Heap, Mask), get#triggerStateless(this, i), Node#trigger(Heap, Node(this)) }
  state(Heap, Mask) ==> get'(Heap, this, i) == get#frame(Heap[null, Node(this)], this, i)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, this: Ref, i: int): bool;

// State-independent trigger function
function  get#triggerStateless(this: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure get#definedness(this: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node(this):=Mask[null, Node(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of i < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access Node(this) (0118-reduced.vpr@13.16--13.28) [216352]"}
          NoPerm < perm ==> NoPerm < Mask[null, Node(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume i < length(Heap, this);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Node(this), write) in (i == 0 ? -1 : get(this.next, i - 1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node#trigger(UnfoldingHeap, Node(this));
      assume UnfoldingHeap[null, Node(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), UnfoldingHeap[null, Node(UnfoldingHeap[this, next])]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node(this) (0118-reduced.vpr@10.1--22.2) [216353]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Node(UnfoldingHeap[this, next]):=UnfoldingMask[null, Node(UnfoldingHeap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Node(this), UnfoldingHeap[null, Node(this)], Node(UnfoldingHeap[this, next]), UnfoldingHeap[null, Node(UnfoldingHeap[this, next])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (i == 0) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0118-reduced.vpr@10.1--22.2) [216354]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access Node(this.next) (0118-reduced.vpr@21.19--21.40) [216355]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node(UnfoldingHeap[this, next])];
          assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i - 1 might not hold. (0118-reduced.vpr@21.19--21.40) [216356]"}
            0 <= i - 1;
          assert {:msg "  Precondition of function get might not hold. Assertion i - 1 < length(this.next) might not hold. (0118-reduced.vpr@21.19--21.40) [216357]"}
            i - 1 < length(UnfoldingHeap, UnfoldingHeap[this, next]);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume get#trigger(UnfoldingHeap[null, Node(UnfoldingHeap[this, next])], UnfoldingHeap[this, next], i - 1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node#sm(this):=Heap[null, Node#sm(this)][this, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
          { newPMask[o_15, f_20] }
          Heap[null, Node#sm(this)][o_15, f_20] || Heap[null, Node#sm(Heap[this, next])][o_15, f_20] ==> newPMask[o_15, f_20]
        );
        Heap := Heap[null, Node#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if i == 0 then -1 else get(Heap, Heap[this, next], i - 1));
}

// ==================================================
// Translation of function list_len
// ==================================================

// Uninterpreted function definitions
function  list_len(Heap: HeapType): int;
function  list_len'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { list_len(Heap) }
  list_len(Heap) == list_len'(Heap) && dummyFunction(list_len#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { list_len'(Heap) }
  dummyFunction(list_len#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), list_len(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> list_len(Heap) == 0
);

// Framing axioms
function  list_len#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), list_len'(Heap) }
  state(Heap, Mask) ==> list_len'(Heap) == list_len#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  list_len#trigger(frame: FrameType): bool;

// State-independent trigger function
function  list_len#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure list_len#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of predicate Node
// ==================================================

type PredicateType_Node;
function  Node(this: Ref): Field PredicateType_Node FrameType;
function  Node#sm(this: Ref): Field PredicateType_Node PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Node(this)) }
  PredicateMaskField(Node(this)) == Node#sm(this)
);
axiom (forall this: Ref ::
  { Node(this) }
  IsPredicateField(Node(this))
);
axiom (forall this: Ref ::
  { Node(this) }
  getPredWandId(Node(this)) == 0
);
function  Node#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Node(this), Node(this2) }
  Node(this) == Node(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Node#sm(this), Node#sm(this2) }
  Node#sm(this) == Node#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Node#trigger(Heap, Node(this)) }
  Node#everUsed(Node(this))
);

procedure Node#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Node
    
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
    
    // -- Check definedness of acc(Node(this.next), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0118-reduced.vpr@28.1--30.2) [216358]"}
        HasDirectPerm(Mask, this, next);
    perm := FullPerm;
    Mask := Mask[null, Node(Heap[this, next]):=Mask[null, Node(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}