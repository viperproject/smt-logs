// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0120b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0120b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_19) ==> Heap[o_12, f_19] == ExhaleHeap[o_12, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19), ExhaleHeap[null, PredicateMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> Heap[null, PredicateMaskField(pm_f_19)] == ExhaleHeap[null, PredicateMaskField(pm_f_19)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, PredicateMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19), ExhaleHeap[null, WandMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> Heap[null, WandMaskField(pm_f_19)] == ExhaleHeap[null, WandMaskField(pm_f_19)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, WandMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_51: (Field A B), v: B ::
  { Heap[o_1, f_51:=v] }
  succHeap(Heap, Heap[o_1, f_51:=v])
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
// Translation of domain Type
// ==================================================

// The type for domain Type
type TypeDomainType;

// Translation of domain unique function A
const unique A: TypeDomainType;

// Translation of domain unique function B
const unique B: TypeDomainType;

// Translation of domain function typeOf
function  typeOf(self_1: Ref): TypeDomainType;

// Translation of domain axiom ax_typeOfChoices
axiom (forall x: Ref ::
  { (typeOf(x): TypeDomainType) }
  (typeOf(x): TypeDomainType) == A || (typeOf(x): TypeDomainType) == B
);

// ==================================================
// Translation of all fields
// ==================================================

const unique a_26: Field NormalField Ref;
axiom !IsPredicateField(a_26);
axiom !IsWandField(a_26);
const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> length_1(Heap, this) == (if (typeOf(Heap[this, next]): TypeDomainType) == B then 1 else 1 + length'(Heap, Heap[Heap[this, next], a_26]))
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
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || length#trigger(Heap[null, node_1(this)], this)) ==> length'(Heap, this) >= 1
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
    
    // -- Check definedness of (unfolding acc(node(this), write) in (typeOf(this.next) == B() ? 1 : 1 + length(this.next.a)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume node#trigger(UnfoldingHeap, node_1(this));
      assume UnfoldingHeap[null, node_1(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, val]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if (typeOf(UnfoldingHeap[this, next]): TypeDomainType) == A then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], a_26]), UnfoldingHeap[null, node_1(UnfoldingHeap[UnfoldingHeap[this, next], a_26])]) else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access node(this) (0120b.vpr@29.1--36.2) [59822]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, node_1(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, val:=UnfoldingMask[this, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if ((typeOf(UnfoldingHeap[this, next]): TypeDomainType) == A) {
        perm := FullPerm;
        assume UnfoldingHeap[this, next] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], a_26:=UnfoldingMask[UnfoldingHeap[this, next], a_26] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, node_1(UnfoldingHeap[UnfoldingHeap[this, next], a_26]):=UnfoldingMask[null, node_1(UnfoldingHeap[UnfoldingHeap[this, next], a_26])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(node_1(this), UnfoldingHeap[null, node_1(this)], node_1(UnfoldingHeap[UnfoldingHeap[this, next], a_26]), UnfoldingHeap[null, node_1(UnfoldingHeap[UnfoldingHeap[this, next], a_26])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0120b.vpr@29.1--36.2) [59823]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if ((typeOf(UnfoldingHeap[this, next]): TypeDomainType) == B) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0120b.vpr@29.1--36.2) [59824]"}
          HasDirectPerm(UnfoldingMask, this, next);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next.a (0120b.vpr@29.1--36.2) [59825]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[this, next], a_26);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(this.next.a) (0120b.vpr@34.42--34.61) [59826]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, node_1(UnfoldingHeap[UnfoldingHeap[this, next], a_26])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, node_1(UnfoldingHeap[UnfoldingHeap[this, next], a_26])], UnfoldingHeap[UnfoldingHeap[this, next], a_26]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, node#sm(this):=Heap[null, node#sm(this)][this, val:=true]];
        Heap := Heap[null, node#sm(this):=Heap[null, node#sm(this)][this, next:=true]];
        if ((typeOf(Heap[this, next]): TypeDomainType) == A) {
          Heap := Heap[null, node#sm(this):=Heap[null, node#sm(this)][Heap[this, next], a_26:=true]];
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, node#sm(this)][o_5, f_11] || Heap[null, node#sm(Heap[Heap[this, next], a_26])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, node#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if (typeOf(Heap[this, next]): TypeDomainType) == B then 1 else 1 + length_1(Heap, Heap[Heap[this, next], a_26]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of length might not hold. Assertion result >= 1 might not hold. (0120b.vpr@31.11--31.22) [59827]"}
      Result >= 1;
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
    Mask := Mask[this, val:=Mask[this, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of typeOf(this.next) == A()
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0120b.vpr@20.1--27.2) [59828]"}
        HasDirectPerm(Mask, this, next);
    if ((typeOf(Heap[this, next]): TypeDomainType) == A) {
      
      // -- Check definedness of acc(this.next.a, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0120b.vpr@20.1--27.2) [59829]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      assume Heap[this, next] != null;
      Mask := Mask[Heap[this, next], a_26:=Mask[Heap[this, next], a_26] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(node(this.next.a), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0120b.vpr@20.1--27.2) [59830]"}
          HasDirectPerm(Mask, this, next);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next.a (0120b.vpr@20.1--27.2) [59831]"}
          HasDirectPerm(Mask, Heap[this, next], a_26);
      perm := FullPerm;
      Mask := Mask[null, node_1(Heap[Heap[this, next], a_26]):=Mask[null, node_1(Heap[Heap[this, next], a_26])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method prepend
// ==================================================

procedure prepend(tail_1: Ref, v_2: int) returns (res: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp: Ref;
  var freshObj: Ref;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[tail_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, node_1(tail_1):=Mask[null, node_1(tail_1)] + perm];
    assume state(Heap, Mask);
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
    PostMask := PostMask[null, node_1(res):=PostMask[null, node_1(res)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(res) == old(length(tail)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(res) (0120b.vpr@43.11--43.22) [59832]"}
          NoPerm < perm ==> NoPerm < PostMask[null, node_1(res)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access node(tail) (0120b.vpr@43.30--43.42) [59833]"}
          NoPerm < perm ==> NoPerm < oldMask[null, node_1(tail_1)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, res) == length_1(oldHeap, tail_1) + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[tmp, $allocated];
  
  // -- Translating statement: res := new(val, next) -- 0120b.vpr@48.3--48.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    res := freshObj;
    Mask := Mask[res, val:=Mask[res, val] + FullPerm];
    Mask := Mask[res, next:=Mask[res, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: res.val := v -- 0120b.vpr@49.3--49.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access res.val (0120b.vpr@49.3--49.15) [59834]"}
      FullPerm == Mask[res, val];
    Heap := Heap[res, val:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp := new(a) -- 0120b.vpr@51.3--51.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    tmp := freshObj;
    Mask := Mask[tmp, a_26:=Mask[tmp, a_26] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp.a := tail -- 0120b.vpr@52.3--52.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.a (0120b.vpr@52.3--52.16) [59835]"}
      FullPerm == Mask[tmp, a_26];
    Heap := Heap[tmp, a_26:=tail_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale typeOf(tmp) == A() -- 0120b.vpr@53.10--53.28
    assume (typeOf(tmp): TypeDomainType) == A;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res.next := tmp -- 0120b.vpr@55.3--55.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next (0120b.vpr@55.3--55.18) [59836]"}
      FullPerm == Mask[res, next];
    Heap := Heap[res, next:=tmp];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(node(tail), write) -- 0120b.vpr@57.3--57.25
    assume node#trigger(Heap, node_1(tail_1));
    assume Heap[null, node_1(tail_1)] == CombineFrames(FrameFragment(Heap[tail_1, val]), CombineFrames(FrameFragment(Heap[tail_1, next]), FrameFragment((if (typeOf(Heap[tail_1, next]): TypeDomainType) == A then CombineFrames(FrameFragment(Heap[Heap[tail_1, next], a_26]), Heap[null, node_1(Heap[Heap[tail_1, next], a_26])]) else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding node(tail) might fail. There might be insufficient permission to access node(tail) (0120b.vpr@57.3--57.25) [59839]"}
        perm <= Mask[null, node_1(tail_1)];
    }
    Mask := Mask[null, node_1(tail_1):=Mask[null, node_1(tail_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, node_1(tail_1))) {
        havoc newVersion;
        Heap := Heap[null, node_1(tail_1):=newVersion];
      }
    perm := FullPerm;
    assume tail_1 != null;
    Mask := Mask[tail_1, val:=Mask[tail_1, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume tail_1 != null;
    Mask := Mask[tail_1, next:=Mask[tail_1, next] + perm];
    assume state(Heap, Mask);
    if ((typeOf(Heap[tail_1, next]): TypeDomainType) == A) {
      perm := FullPerm;
      assume Heap[tail_1, next] != null;
      Mask := Mask[Heap[tail_1, next], a_26:=Mask[Heap[tail_1, next], a_26] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, node_1(Heap[Heap[tail_1, next], a_26]):=Mask[null, node_1(Heap[Heap[tail_1, next], a_26])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(node_1(tail_1), Heap[null, node_1(tail_1)], node_1(Heap[Heap[tail_1, next], a_26]), Heap[null, node_1(Heap[Heap[tail_1, next], a_26])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(tail), write) -- 0120b.vpr@58.3--58.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(tail) might fail. There might be insufficient permission to access tail.val (0120b.vpr@58.3--58.23) [59846]"}
        perm <= Mask[tail_1, val];
    }
    Mask := Mask[tail_1, val:=Mask[tail_1, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(tail) might fail. There might be insufficient permission to access tail.next (0120b.vpr@58.3--58.23) [59848]"}
        perm <= Mask[tail_1, next];
    }
    Mask := Mask[tail_1, next:=Mask[tail_1, next] - perm];
    if ((typeOf(Heap[tail_1, next]): TypeDomainType) == A) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(tail) might fail. There might be insufficient permission to access tail.next.a (0120b.vpr@58.3--58.23) [59850]"}
          perm <= Mask[Heap[tail_1, next], a_26];
      }
      Mask := Mask[Heap[tail_1, next], a_26:=Mask[Heap[tail_1, next], a_26] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(tail) might fail. There might be insufficient permission to access node(tail.next.a) (0120b.vpr@58.3--58.23) [59852]"}
          perm <= Mask[null, node_1(Heap[Heap[tail_1, next], a_26])];
      }
      Mask := Mask[null, node_1(Heap[Heap[tail_1, next], a_26]):=Mask[null, node_1(Heap[Heap[tail_1, next], a_26])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_1(tail_1), Heap[null, node_1(tail_1)], node_1(Heap[Heap[tail_1, next], a_26]), Heap[null, node_1(Heap[Heap[tail_1, next], a_26])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_1(tail_1):=Mask[null, node_1(tail_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_1(tail_1));
    assume Heap[null, node_1(tail_1)] == CombineFrames(FrameFragment(Heap[tail_1, val]), CombineFrames(FrameFragment(Heap[tail_1, next]), FrameFragment((if (typeOf(Heap[tail_1, next]): TypeDomainType) == A then CombineFrames(FrameFragment(Heap[Heap[tail_1, next], a_26]), Heap[null, node_1(Heap[Heap[tail_1, next], a_26])]) else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, node_1(tail_1))) {
      Heap := Heap[null, node#sm(tail_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_1(tail_1):=freshVersion];
    }
    Heap := Heap[null, node#sm(tail_1):=Heap[null, node#sm(tail_1)][tail_1, val:=true]];
    Heap := Heap[null, node#sm(tail_1):=Heap[null, node#sm(tail_1)][tail_1, next:=true]];
    if ((typeOf(Heap[tail_1, next]): TypeDomainType) == A) {
      Heap := Heap[null, node#sm(tail_1):=Heap[null, node#sm(tail_1)][Heap[tail_1, next], a_26:=true]];
      havoc newPMask;
      assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
        { newPMask[o_6, f_12] }
        Heap[null, node#sm(tail_1)][o_6, f_12] || Heap[null, node#sm(Heap[Heap[tail_1, next], a_26])][o_6, f_12] ==> newPMask[o_6, f_12]
      );
      Heap := Heap[null, node#sm(tail_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(node(res), write) -- 0120b.vpr@60.3--60.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(res) might fail. There might be insufficient permission to access res.val (0120b.vpr@60.3--60.22) [59856]"}
        perm <= Mask[res, val];
    }
    Mask := Mask[res, val:=Mask[res, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding node(res) might fail. There might be insufficient permission to access res.next (0120b.vpr@60.3--60.22) [59858]"}
        perm <= Mask[res, next];
    }
    Mask := Mask[res, next:=Mask[res, next] - perm];
    if ((typeOf(Heap[res, next]): TypeDomainType) == A) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(res) might fail. There might be insufficient permission to access res.next.a (0120b.vpr@60.3--60.22) [59860]"}
          perm <= Mask[Heap[res, next], a_26];
      }
      Mask := Mask[Heap[res, next], a_26:=Mask[Heap[res, next], a_26] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding node(res) might fail. There might be insufficient permission to access node(res.next.a) (0120b.vpr@60.3--60.22) [59862]"}
          perm <= Mask[null, node_1(Heap[Heap[res, next], a_26])];
      }
      Mask := Mask[null, node_1(Heap[Heap[res, next], a_26]):=Mask[null, node_1(Heap[Heap[res, next], a_26])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(node_1(res), Heap[null, node_1(res)], node_1(Heap[Heap[res, next], a_26]), Heap[null, node_1(Heap[Heap[res, next], a_26])]);
    }
    perm := FullPerm;
    Mask := Mask[null, node_1(res):=Mask[null, node_1(res)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume node#trigger(Heap, node_1(res));
    assume Heap[null, node_1(res)] == CombineFrames(FrameFragment(Heap[res, val]), CombineFrames(FrameFragment(Heap[res, next]), FrameFragment((if (typeOf(Heap[res, next]): TypeDomainType) == A then CombineFrames(FrameFragment(Heap[Heap[res, next], a_26]), Heap[null, node_1(Heap[Heap[res, next], a_26])]) else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, node_1(res))) {
      Heap := Heap[null, node#sm(res):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, node_1(res):=freshVersion];
    }
    Heap := Heap[null, node#sm(res):=Heap[null, node#sm(res)][res, val:=true]];
    Heap := Heap[null, node#sm(res):=Heap[null, node#sm(res)][res, next:=true]];
    if ((typeOf(Heap[res, next]): TypeDomainType) == A) {
      Heap := Heap[null, node#sm(res):=Heap[null, node#sm(res)][Heap[res, next], a_26:=true]];
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, node#sm(res)][o_40, f_52] || Heap[null, node#sm(Heap[Heap[res, next], a_26])][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, node#sm(res):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of prepend might not hold. There might be insufficient permission to access node(res) (0120b.vpr@40.11--40.25) [59864]"}
        perm <= Mask[null, node_1(res)];
    }
    Mask := Mask[null, node_1(res):=Mask[null, node_1(res)] - perm];
    assert {:msg "  Postcondition of prepend might not hold. Assertion length(res) == old(length(tail)) + 1 might not hold. (0120b.vpr@43.11--43.47) [59865]"}
      length_1(Heap, res) == length_1(oldHeap, tail_1) + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}