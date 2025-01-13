// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:29:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0039b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0039b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: Node_size
// - height 1: Node_val
// - height 0: List_size
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

const unique List_head: Field NormalField Ref;
axiom !IsPredicateField(List_head);
axiom !IsWandField(List_head);
const unique Node_value: Field NormalField int;
axiom !IsPredicateField(Node_value);
axiom !IsWandField(Node_value);
const unique Node_next: Field NormalField Ref;
axiom !IsPredicateField(Node_next);
axiom !IsWandField(Node_next);

// ==================================================
// Translation of function List_size
// ==================================================

// Uninterpreted function definitions
function  List_size(Heap: HeapType, this: Ref): int;
function  List_size'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { List_size(Heap, this) }
  List_size(Heap, this) == List_size'(Heap, this) && dummyFunction(List_size#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { List_size'(Heap, this) }
  dummyFunction(List_size#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), List_size(Heap, this) } { state(Heap, Mask), List_size#triggerStateless(this), List_valid#trigger(Heap, List_valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> List_size(Heap, this) == (if Heap[this, List_head] == null then 0 else Node_size(Heap, Heap[this, List_head]))
);

// Framing axioms
function  List_size#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), List_size'(Heap, this) } { state(Heap, Mask), List_size#triggerStateless(this), List_valid#trigger(Heap, List_valid(this)) }
  state(Heap, Mask) ==> List_size'(Heap, this) == List_size#frame(Heap[null, List_valid(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), List_size'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || List_size#trigger(Heap[null, List_valid(this)], this)) ==> List_size'(Heap, this) >= 0
);

// Trigger function (controlling recursive postconditions)
function  List_size#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  List_size#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure List_size#definedness(this: Ref) returns (Result: int)
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
    Mask := Mask[null, List_valid(this):=Mask[null, List_valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List_valid(this), write) in (this.List_head == null ? 0 : Node_size(this.List_head)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List_valid#trigger(UnfoldingHeap, List_valid(this));
      assume UnfoldingHeap[null, List_valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, List_head]), FrameFragment((if UnfoldingHeap[this, List_head] != null then UnfoldingHeap[null, Node_valid(UnfoldingHeap[this, List_head])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List_valid(this) (0039b.vpr@13.1--18.2) [218947]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List_valid(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, List_head:=UnfoldingMask[this, List_head] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, List_head] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_valid(UnfoldingHeap[this, List_head]):=UnfoldingMask[null, Node_valid(UnfoldingHeap[this, List_head])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(List_valid(this), UnfoldingHeap[null, List_valid(this)], Node_valid(UnfoldingHeap[this, List_head]), UnfoldingHeap[null, Node_valid(UnfoldingHeap[this, List_head])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.List_head (0039b.vpr@13.1--18.2) [218948]"}
        HasDirectPerm(UnfoldingMask, this, List_head);
      if (UnfoldingHeap[this, List_head] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.List_head (0039b.vpr@13.1--18.2) [218949]"}
          HasDirectPerm(UnfoldingMask, this, List_head);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_size might not hold. There might be insufficient permission to access Node_valid(this.List_head) (0039b.vpr@17.74--17.99) [218950]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_valid(UnfoldingHeap[this, List_head])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List_valid#sm(this):=Heap[null, List_valid#sm(this)][this, List_head:=true]];
        if (Heap[this, List_head] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, List_valid#sm(this)][o_15, f_20] || Heap[null, Node_valid#sm(Heap[this, List_head])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, List_valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this, List_head] == null then 0 else Node_size(Heap, Heap[this, List_head]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of List_size might not hold. Assertion result >= 0 might not hold. (0039b.vpr@15.10--15.21) [218951]"}
      Result >= 0;
}

// ==================================================
// Translation of function Node_val
// ==================================================

// Uninterpreted function definitions
function  Node_val_1(Heap: HeapType, this: Ref): int;
function  Node_val'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Node_val_1(Heap, this) }
  Node_val_1(Heap, this) == Node_val'(Heap, this) && dummyFunction(Node_val#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Node_val'(Heap, this) }
  dummyFunction(Node_val#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_val_1(Heap, this) } { state(Heap, Mask), Node_val#triggerStateless(this), Node_valid#trigger(Heap, Node_valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> Node_val_1(Heap, this) == Heap[this, Node_value]
);

// Framing axioms
function  Node_val#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_val'(Heap, this) }
  state(Heap, Mask) ==> Node_val'(Heap, this) == Node_val#frame(Heap[null, Node_valid(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Node_val#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Node_val#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Node_val#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node_valid(this):=Mask[null, Node_valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Node_valid(this), write) in this.Node_value)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node_valid#trigger(UnfoldingHeap, Node_valid(this));
      assume UnfoldingHeap[null, Node_valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Node_value]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_next]), FrameFragment((if UnfoldingHeap[this, Node_next] != null then UnfoldingHeap[null, Node_valid(UnfoldingHeap[this, Node_next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node_valid(this) (0039b.vpr@43.1--47.2) [218952]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_valid(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_value:=UnfoldingMask[this, Node_value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_next:=UnfoldingMask[this, Node_next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Node_next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_valid(UnfoldingHeap[this, Node_next]):=UnfoldingMask[null, Node_valid(UnfoldingHeap[this, Node_next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Node_valid(this), UnfoldingHeap[null, Node_valid(this)], Node_valid(UnfoldingHeap[this, Node_next]), UnfoldingHeap[null, Node_valid(UnfoldingHeap[this, Node_next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_value (0039b.vpr@43.1--47.2) [218953]"}
        HasDirectPerm(UnfoldingMask, this, Node_value);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_valid#sm(this):=Heap[null, Node_valid#sm(this)][this, Node_value:=true]];
        Heap := Heap[null, Node_valid#sm(this):=Heap[null, Node_valid#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Node_valid#sm(this)][o_16, f_21] || Heap[null, Node_valid#sm(Heap[this, Node_next])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Node_valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, Node_value];
}

// ==================================================
// Translation of function Node_size
// ==================================================

// Uninterpreted function definitions
function  Node_size(Heap: HeapType, this: Ref): int;
function  Node_size'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { Node_size(Heap, this) }
  Node_size(Heap, this) == Node_size'(Heap, this) && dummyFunction(Node_size#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Node_size'(Heap, this) }
  dummyFunction(Node_size#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_size(Heap, this) } { state(Heap, Mask), Node_size#triggerStateless(this), Node_valid#trigger(Heap, Node_valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> Node_size(Heap, this) == 1 + (if Heap[this, Node_next] != null then Node_size'(Heap, Heap[this, Node_next]) else 0)
);

// Framing axioms
function  Node_size#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_size'(Heap, this) } { state(Heap, Mask), Node_size#triggerStateless(this), Node_valid#trigger(Heap, Node_valid(this)) }
  state(Heap, Mask) ==> Node_size'(Heap, this) == Node_size#frame(Heap[null, Node_valid(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_size'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || Node_size#trigger(Heap[null, Node_valid(this)], this)) ==> Node_size'(Heap, this) >= 1
);

// Trigger function (controlling recursive postconditions)
function  Node_size#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Node_size#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure Node_size#definedness(this: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node_valid(this):=Mask[null, Node_valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + (unfolding acc(Node_valid(this), write) in (this.Node_next != null ? Node_size(this.Node_next) : 0))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node_valid#trigger(UnfoldingHeap, Node_valid(this));
      assume UnfoldingHeap[null, Node_valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Node_value]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_next]), FrameFragment((if UnfoldingHeap[this, Node_next] != null then UnfoldingHeap[null, Node_valid(UnfoldingHeap[this, Node_next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node_valid(this) (0039b.vpr@49.1--54.2) [218954]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_valid(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_value:=UnfoldingMask[this, Node_value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_next:=UnfoldingMask[this, Node_next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Node_next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_valid(UnfoldingHeap[this, Node_next]):=UnfoldingMask[null, Node_valid(UnfoldingHeap[this, Node_next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Node_valid(this), UnfoldingHeap[null, Node_valid(this)], Node_valid(UnfoldingHeap[this, Node_next]), UnfoldingHeap[null, Node_valid(UnfoldingHeap[this, Node_next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_next (0039b.vpr@49.1--54.2) [218955]"}
        HasDirectPerm(UnfoldingMask, this, Node_next);
      if (UnfoldingHeap[this, Node_next] != null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_next (0039b.vpr@49.1--54.2) [218956]"}
          HasDirectPerm(UnfoldingMask, this, Node_next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_size might not hold. There might be insufficient permission to access Node_valid(this.Node_next) (0039b.vpr@53.74--53.99) [218957]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_valid(UnfoldingHeap[this, Node_next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Node_size#trigger(UnfoldingHeap[null, Node_valid(UnfoldingHeap[this, Node_next])], UnfoldingHeap[this, Node_next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_valid#sm(this):=Heap[null, Node_valid#sm(this)][this, Node_value:=true]];
        Heap := Heap[null, Node_valid#sm(this):=Heap[null, Node_valid#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, Node_valid#sm(this)][o_52, f_55] || Heap[null, Node_valid#sm(Heap[this, Node_next])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Heap := Heap[null, Node_valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_valid#sm(this):=Heap[null, Node_valid#sm(this)][this, Node_value:=true]];
        Heap := Heap[null, Node_valid#sm(this):=Heap[null, Node_valid#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, Node_valid#sm(this)][o_53, f_56] || Heap[null, Node_valid#sm(Heap[this, Node_next])][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          Heap := Heap[null, Node_valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1 + (if Heap[this, Node_next] != null then Node_size(Heap, Heap[this, Node_next]) else 0);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Node_size might not hold. Assertion result >= 1 might not hold. (0039b.vpr@51.11--51.22) [218958]"}
      Result >= 1;
}

// ==================================================
// Translation of predicate List_valid
// ==================================================

type PredicateType_List_valid;
function  List_valid(this: Ref): Field PredicateType_List_valid FrameType;
function  List_valid#sm(this: Ref): Field PredicateType_List_valid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(List_valid(this)) }
  PredicateMaskField(List_valid(this)) == List_valid#sm(this)
);
axiom (forall this: Ref ::
  { List_valid(this) }
  IsPredicateField(List_valid(this))
);
axiom (forall this: Ref ::
  { List_valid(this) }
  getPredWandId(List_valid(this)) == 0
);
function  List_valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List_valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { List_valid(this), List_valid(this2) }
  List_valid(this) == List_valid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { List_valid#sm(this), List_valid#sm(this2) }
  List_valid#sm(this) == List_valid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { List_valid#trigger(Heap, List_valid(this)) }
  List_valid#everUsed(List_valid(this))
);

procedure List_valid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List_valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, List_head:=Mask[this, List_head] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.List_head != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List_head (0039b.vpr@8.1--11.2) [218959]"}
        HasDirectPerm(Mask, this, List_head);
    if (Heap[this, List_head] != null) {
      
      // -- Check definedness of acc(Node_valid(this.List_head), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List_head (0039b.vpr@8.1--11.2) [218960]"}
          HasDirectPerm(Mask, this, List_head);
      perm := FullPerm;
      Mask := Mask[null, Node_valid(Heap[this, List_head]):=Mask[null, Node_valid(Heap[this, List_head])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Node_valid
// ==================================================

type PredicateType_Node_valid;
function  Node_valid(this: Ref): Field PredicateType_Node_valid FrameType;
function  Node_valid#sm(this: Ref): Field PredicateType_Node_valid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Node_valid(this)) }
  PredicateMaskField(Node_valid(this)) == Node_valid#sm(this)
);
axiom (forall this: Ref ::
  { Node_valid(this) }
  IsPredicateField(Node_valid(this))
);
axiom (forall this: Ref ::
  { Node_valid(this) }
  getPredWandId(Node_valid(this)) == 1
);
function  Node_valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node_valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Node_valid(this), Node_valid(this2) }
  Node_valid(this) == Node_valid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Node_valid#sm(this), Node_valid#sm(this2) }
  Node_valid#sm(this) == Node_valid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Node_valid#trigger(Heap, Node_valid(this)) }
  Node_valid#everUsed(Node_valid(this))
);

procedure Node_valid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Node_valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_value:=Mask[this, Node_value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_next:=Mask[this, Node_next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Node_next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_next (0039b.vpr@37.1--41.2) [218961]"}
        HasDirectPerm(Mask, this, Node_next);
    if (Heap[this, Node_next] != null) {
      
      // -- Check definedness of acc(Node_valid(this.Node_next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_next (0039b.vpr@37.1--41.2) [218962]"}
          HasDirectPerm(Mask, this, Node_next);
      perm := FullPerm;
      Mask := Mask[null, Node_valid(Heap[this, Node_next]):=Mask[null, Node_valid(Heap[this, Node_next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method List_test
// ==================================================

procedure List_test(this: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, List_valid(this):=Mask[null, List_valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume i >= 0;
    assume state(Heap, Mask);
    
    // -- Check definedness of i < List_size(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function List_size might not hold. There might be insufficient permission to access List_valid(this) (0039b.vpr@22.26--22.41) [218963]"}
          NoPerm < perm ==> NoPerm < Mask[null, List_valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume i < List_size(Heap, this);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, List_valid(this):=PostMask[null, List_valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert List_size(this) == 1 -- 0039b.vpr@26.3--26.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of List_size(this) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function List_size might not hold. There might be insufficient permission to access List_valid(this) (0039b.vpr@26.10--26.25) [218964]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List_valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion List_size(this) == 1 might not hold. (0039b.vpr@26.10--26.30) [218965]"}
      List_size(Heap, this) == 1;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List_test might not hold. There might be insufficient permission to access List_valid(this) (0039b.vpr@23.11--23.39) [218966]"}
        perm <= Mask[null, List_valid(this)];
    }
    Mask := Mask[null, List_valid(this):=Mask[null, List_valid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}