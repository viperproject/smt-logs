// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:31:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_new_syntax/ListIterator.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/examples_new_syntax/ListIterator-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_90: Ref, f_196: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_90, f_196] }
  Heap[o_90, $allocated] ==> Heap[Heap[o_90, f_196], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_92: Ref, f_197: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_92, f_197] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_92, f_197) ==> Heap[o_92, f_197] == ExhaleHeap[o_92, f_197]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_49), ExhaleHeap[null, PredicateMaskField(pm_f_49)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsPredicateField(pm_f_49) ==> Heap[null, PredicateMaskField(pm_f_49)] == ExhaleHeap[null, PredicateMaskField(pm_f_49)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_49) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsPredicateField(pm_f_49) ==> (forall <A, B> o2_49: Ref, f_197: (Field A B) ::
    { ExhaleHeap[o2_49, f_197] }
    Heap[null, PredicateMaskField(pm_f_49)][o2_49, f_197] ==> Heap[o2_49, f_197] == ExhaleHeap[o2_49, f_197]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_49), ExhaleHeap[null, WandMaskField(pm_f_49)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsWandField(pm_f_49) ==> Heap[null, WandMaskField(pm_f_49)] == ExhaleHeap[null, WandMaskField(pm_f_49)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_49) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsWandField(pm_f_49) ==> (forall <A, B> o2_49: Ref, f_197: (Field A B) ::
    { ExhaleHeap[o2_49, f_197] }
    Heap[null, WandMaskField(pm_f_49)][o2_49, f_197] ==> Heap[o2_49, f_197] == ExhaleHeap[o2_49, f_197]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_92: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_92, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_92, $allocated] ==> ExhaleHeap[o_92, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_90: Ref, f_79: (Field A B), v: B ::
  { Heap[o_90, f_79:=v] }
  succHeap(Heap, Heap[o_90, f_79:=v])
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
// - height 4: Node_get_prev
// - height 3: Node_get_next
// - height 2: Node_rev_prev
// - height 1: Node_rev_next
// - height 0: Node_first
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
function  wand(arg1: Ref, arg2: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 6
);
axiom (forall arg1: Ref, arg2: Ref, arg1_2: Ref, arg2_2: Ref ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Ref): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Ref): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Ref): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1(arg1, arg2) }
  IsWandField(wand_1(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1#ft(arg1, arg2) }
  IsWandField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1(arg1, arg2) }
  !IsPredicateField(wand_1(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1#ft(arg1, arg2) }
  !IsPredicateField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { WandMaskField(wand_1#ft(arg1, arg2)) }
  wand_1#sm(arg1, arg2) == WandMaskField(wand_1#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: Ref ::
  { wand_1(arg1, arg2) }
  getPredWandId(wand_1(arg1, arg2)) == 7
);
axiom (forall arg1: Ref, arg2: Ref, arg1_2: Ref, arg2_2: Ref ::
  { wand_1(arg1, arg2), wand_1(arg1_2, arg2_2) }
  wand_1(arg1, arg2) == wand_1(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);

// ==================================================
// Translation of all fields
// ==================================================

const unique Iterator_iteratee: Field NormalField Ref;
axiom !IsPredicateField(Iterator_iteratee);
axiom !IsWandField(Iterator_iteratee);
const unique Iterator_current: Field NormalField Ref;
axiom !IsPredicateField(Iterator_current);
axiom !IsWandField(Iterator_current);
const unique Iterator_last: Field NormalField Ref;
axiom !IsPredicateField(Iterator_last);
axiom !IsWandField(Iterator_last);
const unique List_sentinel: Field NormalField Ref;
axiom !IsPredicateField(List_sentinel);
axiom !IsWandField(List_sentinel);
const unique Node_val: Field NormalField int;
axiom !IsPredicateField(Node_val);
axiom !IsWandField(Node_val);
const unique Node_prev: Field NormalField Ref;
axiom !IsPredicateField(Node_prev);
axiom !IsWandField(Node_prev);
const unique Node_next: Field NormalField Ref;
axiom !IsPredicateField(Node_next);
axiom !IsWandField(Node_next);

// ==================================================
// Translation of function Node_get_next
// ==================================================

// Uninterpreted function definitions
function  Node_get_next(Heap: HeapType, this: Ref): Ref;
function  Node_get_next'(Heap: HeapType, this: Ref): Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { Node_get_next(Heap, this) }
  Node_get_next(Heap, this) == Node_get_next'(Heap, this) && dummyFunction(Node_get_next#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Node_get_next'(Heap, this) }
  dummyFunction(Node_get_next#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_get_next(Heap, this) } { state(Heap, Mask), Node_get_next#triggerStateless(this), Node_state#trigger(Heap, Node_state(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> Node_get_next(Heap, this) == Heap[this, Node_next]
);

// Framing axioms
function  Node_get_next#frame(frame: FrameType, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_get_next'(Heap, this) }
  state(Heap, Mask) ==> Node_get_next'(Heap, this) == Node_get_next#frame(Heap[null, Node_state(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Node_get_next#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Node_get_next#triggerStateless(this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Node_get_next#definedness(this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node_state(this):=Mask[null, Node_state(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Node_state(this), write) in this.Node_next)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node_state#trigger(UnfoldingHeap, Node_state(this));
      assume UnfoldingHeap[null, Node_state(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Node_val]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_prev]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_next]), FrameFragment((if UnfoldingHeap[this, Node_next] != null then UnfoldingHeap[null, Node_state(UnfoldingHeap[this, Node_next])] else EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node_state(this) (ListIterator.vpr@297.1--299.48) [136260]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_state(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_val:=UnfoldingMask[this, Node_val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_prev:=UnfoldingMask[this, Node_prev] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_next:=UnfoldingMask[this, Node_next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Node_next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_state(UnfoldingHeap[this, Node_next]):=UnfoldingMask[null, Node_state(UnfoldingHeap[this, Node_next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Node_state(this), UnfoldingHeap[null, Node_state(this)], Node_state(UnfoldingHeap[this, Node_next]), UnfoldingHeap[null, Node_state(UnfoldingHeap[this, Node_next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_next (ListIterator.vpr@297.1--299.48) [136261]"}
        HasDirectPerm(UnfoldingMask, this, Node_next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_val:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_prev:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, Node_state#sm(this)][o_15, f_20] || Heap[null, Node_state#sm(Heap[this, Node_next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, Node_state#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, Node_next];
}

// ==================================================
// Translation of function Node_get_prev
// ==================================================

// Uninterpreted function definitions
function  Node_get_prev(Heap: HeapType, this: Ref): Ref;
function  Node_get_prev'(Heap: HeapType, this: Ref): Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { Node_get_prev(Heap, this) }
  Node_get_prev(Heap, this) == Node_get_prev'(Heap, this) && dummyFunction(Node_get_prev#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Node_get_prev'(Heap, this) }
  dummyFunction(Node_get_prev#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_get_prev(Heap, this) } { state(Heap, Mask), Node_get_prev#triggerStateless(this), Node_state#trigger(Heap, Node_state(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> Node_get_prev(Heap, this) == Heap[this, Node_prev]
);

// Framing axioms
function  Node_get_prev#frame(frame: FrameType, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_get_prev'(Heap, this) }
  state(Heap, Mask) ==> Node_get_prev'(Heap, this) == Node_get_prev#frame(Heap[null, Node_state(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Node_get_prev#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Node_get_prev#triggerStateless(this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Node_get_prev#definedness(this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node_state(this):=Mask[null, Node_state(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Node_state(this), write) in this.Node_prev)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node_state#trigger(UnfoldingHeap, Node_state(this));
      assume UnfoldingHeap[null, Node_state(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Node_val]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_prev]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_next]), FrameFragment((if UnfoldingHeap[this, Node_next] != null then UnfoldingHeap[null, Node_state(UnfoldingHeap[this, Node_next])] else EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node_state(this) (ListIterator.vpr@301.1--303.48) [136262]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_state(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_val:=UnfoldingMask[this, Node_val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_prev:=UnfoldingMask[this, Node_prev] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_next:=UnfoldingMask[this, Node_next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Node_next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_state(UnfoldingHeap[this, Node_next]):=UnfoldingMask[null, Node_state(UnfoldingHeap[this, Node_next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Node_state(this), UnfoldingHeap[null, Node_state(this)], Node_state(UnfoldingHeap[this, Node_next]), UnfoldingHeap[null, Node_state(UnfoldingHeap[this, Node_next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@301.1--303.48) [136263]"}
        HasDirectPerm(UnfoldingMask, this, Node_prev);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_val:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_prev:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, Node_state#sm(this)][o_16, f_21] || Heap[null, Node_state#sm(Heap[this, Node_next])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, Node_state#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, Node_prev];
}

// ==================================================
// Translation of function Node_rev_next
// ==================================================

// Uninterpreted function definitions
function  Node_rev_next(Heap: HeapType, this: Ref): Ref;
function  Node_rev_next'(Heap: HeapType, this: Ref): Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { Node_rev_next(Heap, this) }
  Node_rev_next(Heap, this) == Node_rev_next'(Heap, this) && dummyFunction(Node_rev_next#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Node_rev_next'(Heap, this) }
  dummyFunction(Node_rev_next#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_rev_next(Heap, this) } { state(Heap, Mask), Node_rev_next#triggerStateless(this), Node_reverse#trigger(Heap, Node_reverse(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> Node_rev_next(Heap, this) == Heap[this, Node_next]
);

// Framing axioms
function  Node_rev_next#frame(frame: FrameType, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_rev_next'(Heap, this) }
  state(Heap, Mask) ==> Node_rev_next'(Heap, this) == Node_rev_next#frame(Heap[null, Node_reverse(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Node_rev_next#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Node_rev_next#triggerStateless(this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Node_rev_next#definedness(this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node_reverse(this):=Mask[null, Node_reverse(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Node_reverse(this), write) in this.Node_next)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node_reverse#trigger(UnfoldingHeap, Node_reverse(this));
      assume UnfoldingHeap[null, Node_reverse(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Node_val]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_prev]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_next]), FrameFragment((if UnfoldingHeap[this, Node_prev] != null then UnfoldingHeap[null, Node_reverse(UnfoldingHeap[this, Node_prev])] else EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node_reverse(this) (ListIterator.vpr@305.1--307.50) [136264]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_reverse(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_val:=UnfoldingMask[this, Node_val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_prev:=UnfoldingMask[this, Node_prev] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_next:=UnfoldingMask[this, Node_next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Node_prev] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_reverse(UnfoldingHeap[this, Node_prev]):=UnfoldingMask[null, Node_reverse(UnfoldingHeap[this, Node_prev])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Node_reverse(this), UnfoldingHeap[null, Node_reverse(this)], Node_reverse(UnfoldingHeap[this, Node_prev]), UnfoldingHeap[null, Node_reverse(UnfoldingHeap[this, Node_prev])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Node_rev_next(UnfoldingHeap, UnfoldingHeap[this, Node_prev]) == this;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_next (ListIterator.vpr@305.1--307.50) [136265]"}
        HasDirectPerm(UnfoldingMask, this, Node_next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_val:=true]];
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_prev:=true]];
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_prev] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, Node_reverse#sm(this)][o_52, f_55] || Heap[null, Node_reverse#sm(Heap[this, Node_prev])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Heap := Heap[null, Node_reverse#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, Node_next];
}

// ==================================================
// Translation of function Node_rev_prev
// ==================================================

// Uninterpreted function definitions
function  Node_rev_prev(Heap: HeapType, this: Ref): Ref;
function  Node_rev_prev'(Heap: HeapType, this: Ref): Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { Node_rev_prev(Heap, this) }
  Node_rev_prev(Heap, this) == Node_rev_prev'(Heap, this) && dummyFunction(Node_rev_prev#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Node_rev_prev'(Heap, this) }
  dummyFunction(Node_rev_prev#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_rev_prev(Heap, this) } { state(Heap, Mask), Node_rev_prev#triggerStateless(this), Node_reverse#trigger(Heap, Node_reverse(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> Node_rev_prev(Heap, this) == Heap[this, Node_prev]
);

// Framing axioms
function  Node_rev_prev#frame(frame: FrameType, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_rev_prev'(Heap, this) }
  state(Heap, Mask) ==> Node_rev_prev'(Heap, this) == Node_rev_prev#frame(Heap[null, Node_reverse(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Node_rev_prev#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Node_rev_prev#triggerStateless(this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Node_rev_prev#definedness(this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node_reverse(this):=Mask[null, Node_reverse(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Node_reverse(this), write) in this.Node_prev)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node_reverse#trigger(UnfoldingHeap, Node_reverse(this));
      assume UnfoldingHeap[null, Node_reverse(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Node_val]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_prev]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_next]), FrameFragment((if UnfoldingHeap[this, Node_prev] != null then UnfoldingHeap[null, Node_reverse(UnfoldingHeap[this, Node_prev])] else EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node_reverse(this) (ListIterator.vpr@309.1--311.50) [136266]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_reverse(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_val:=UnfoldingMask[this, Node_val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_prev:=UnfoldingMask[this, Node_prev] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_next:=UnfoldingMask[this, Node_next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Node_prev] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_reverse(UnfoldingHeap[this, Node_prev]):=UnfoldingMask[null, Node_reverse(UnfoldingHeap[this, Node_prev])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Node_reverse(this), UnfoldingHeap[null, Node_reverse(this)], Node_reverse(UnfoldingHeap[this, Node_prev]), UnfoldingHeap[null, Node_reverse(UnfoldingHeap[this, Node_prev])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Node_rev_next(UnfoldingHeap, UnfoldingHeap[this, Node_prev]) == this;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@309.1--311.50) [136267]"}
        HasDirectPerm(UnfoldingMask, this, Node_prev);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_val:=true]];
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_prev:=true]];
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_prev] != null) {
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, Node_reverse#sm(this)][o_53, f_56] || Heap[null, Node_reverse#sm(Heap[this, Node_prev])][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          Heap := Heap[null, Node_reverse#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, Node_prev];
}

// ==================================================
// Translation of function Node_first
// ==================================================

// Uninterpreted function definitions
function  Node_first(Heap: HeapType, this: Ref): Ref;
function  Node_first'(Heap: HeapType, this: Ref): Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { Node_first(Heap, this) }
  Node_first(Heap, this) == Node_first'(Heap, this) && dummyFunction(Node_first#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { Node_first'(Heap, this) }
  dummyFunction(Node_first#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_first(Heap, this) } { state(Heap, Mask), Node_first#triggerStateless(this), Node_reverse#trigger(Heap, Node_reverse(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Node_first(Heap, this) == (if Heap[this, Node_prev] == null then this else Node_first'(Heap, Heap[this, Node_prev]))
);

// Framing axioms
function  Node_first#frame(frame: FrameType, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), Node_first'(Heap, this) } { state(Heap, Mask), Node_first#triggerStateless(this), Node_reverse#trigger(Heap, Node_reverse(this)) }
  state(Heap, Mask) ==> Node_first'(Heap, this) == Node_first#frame(Heap[null, Node_reverse(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  Node_first#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  Node_first#triggerStateless(this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure Node_first#definedness(this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
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
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Node_reverse(this):=Mask[null, Node_reverse(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Node_reverse(this), write) in (this.Node_prev == null ? this : Node_first(this.Node_prev)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Node_reverse#trigger(UnfoldingHeap, Node_reverse(this));
      assume UnfoldingHeap[null, Node_reverse(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, Node_val]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_prev]), CombineFrames(FrameFragment(UnfoldingHeap[this, Node_next]), FrameFragment((if UnfoldingHeap[this, Node_prev] != null then UnfoldingHeap[null, Node_reverse(UnfoldingHeap[this, Node_prev])] else EmptyFrame)))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Node_reverse(this) (ListIterator.vpr@314.1--317.94) [136268]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_reverse(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_val:=UnfoldingMask[this, Node_val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_prev:=UnfoldingMask[this, Node_prev] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, Node_next:=UnfoldingMask[this, Node_next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, Node_prev] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, Node_reverse(UnfoldingHeap[this, Node_prev]):=UnfoldingMask[null, Node_reverse(UnfoldingHeap[this, Node_prev])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(Node_reverse(this), UnfoldingHeap[null, Node_reverse(this)], Node_reverse(UnfoldingHeap[this, Node_prev]), UnfoldingHeap[null, Node_reverse(UnfoldingHeap[this, Node_prev])]);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assume Node_rev_next(UnfoldingHeap, UnfoldingHeap[this, Node_prev]) == this;
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@314.1--317.94) [136269]"}
        HasDirectPerm(UnfoldingMask, this, Node_prev);
      if (UnfoldingHeap[this, Node_prev] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@314.1--317.94) [136270]"}
          HasDirectPerm(UnfoldingMask, this, Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_first might not hold. There might be insufficient permission to access Node_reverse(this.Node_prev) (ListIterator.vpr@317.67--317.93) [136271]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, Node_reverse(UnfoldingHeap[this, Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Node_first#trigger(UnfoldingHeap[null, Node_reverse(UnfoldingHeap[this, Node_prev])], UnfoldingHeap[this, Node_prev]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_val:=true]];
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_prev:=true]];
        Heap := Heap[null, Node_reverse#sm(this):=Heap[null, Node_reverse#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_prev] != null) {
          havoc newPMask;
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            Heap[null, Node_reverse#sm(this)][o_26, f_29] || Heap[null, Node_reverse#sm(Heap[this, Node_prev])][o_26, f_29] ==> newPMask[o_26, f_29]
          );
          Heap := Heap[null, Node_reverse#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this, Node_prev] == null then this else Node_first(Heap, Heap[this, Node_prev]));
}

// ==================================================
// Translation of predicate Iterator_ready
// ==================================================

type PredicateType_Iterator_ready;
function  Iterator_ready(this: Ref): Field PredicateType_Iterator_ready FrameType;
function  Iterator_ready#sm(this: Ref): Field PredicateType_Iterator_ready PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Iterator_ready(this)) }
  PredicateMaskField(Iterator_ready(this)) == Iterator_ready#sm(this)
);
axiom (forall this: Ref ::
  { Iterator_ready(this) }
  IsPredicateField(Iterator_ready(this))
);
axiom (forall this: Ref ::
  { Iterator_ready(this) }
  getPredWandId(Iterator_ready(this)) == 0
);
function  Iterator_ready#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Iterator_ready#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Iterator_ready(this), Iterator_ready(this2) }
  Iterator_ready(this) == Iterator_ready(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Iterator_ready#sm(this), Iterator_ready#sm(this2) }
  Iterator_ready#sm(this) == Iterator_ready#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Iterator_ready#trigger(Heap, Iterator_ready(this)) }
  Iterator_ready#everUsed(Iterator_ready(this))
);

procedure Iterator_ready#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of Iterator_ready
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (ListIterator.vpr@74.1--95.96) [136272]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_iteratee != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@74.1--95.96) [136273]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
    assume Heap[this, Iterator_iteratee] != null;
    
    // -- Check definedness of acc(this.Iterator_iteratee.List_sentinel, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@74.1--95.96) [136274]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
    perm := FullPerm;
    assume Heap[this, Iterator_iteratee] != null;
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_iteratee.List_sentinel != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@74.1--95.96) [136275]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@74.1--95.96) [136276]"}
        HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
    assume Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_current != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136277]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assume Heap[this, Iterator_current] != null;
    
    // -- Check definedness of acc(this.Iterator_current.Node_val, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136278]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_current.Node_next, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136279]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_current.Node_prev, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136280]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_current.Node_prev == null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136281]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@74.1--95.96) [136282]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      
      // -- Check definedness of this.Iterator_current == this.Iterator_iteratee.List_sentinel
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136283]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@74.1--95.96) [136284]"}
          HasDirectPerm(Mask, this, Iterator_iteratee);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@74.1--95.96) [136285]"}
          HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
      assume Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    
    // -- Check definedness of this.Iterator_current.Node_prev != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136286]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@74.1--95.96) [136287]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      
      // -- Check definedness of acc(Node_reverse(this.Iterator_current.Node_prev), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136288]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@74.1--95.96) [136289]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136290]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@74.1--95.96) [136291]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_first might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@91.6--91.49) [136292]"}
            NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@74.1--95.96) [136293]"}
          HasDirectPerm(Mask, this, Iterator_iteratee);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@74.1--95.96) [136294]"}
          HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
      assume Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assume state(Heap, Mask);
      
      // -- Check definedness of Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136295]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@74.1--95.96) [136296]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@92.6--92.52) [136297]"}
            NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136298]"}
          HasDirectPerm(Mask, this, Iterator_current);
      assume Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
    }
    
    // -- Check definedness of this.Iterator_current.Node_next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136299]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@74.1--95.96) [136300]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      
      // -- Check definedness of acc(Node_state(this.Iterator_current.Node_next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@74.1--95.96) [136301]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@74.1--95.96) [136302]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Iterator_readyForNext
// ==================================================

type PredicateType_Iterator_readyForNext;
function  Iterator_readyForNext(this: Ref): Field PredicateType_Iterator_readyForNext FrameType;
function  Iterator_readyForNext#sm(this: Ref): Field PredicateType_Iterator_readyForNext PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Iterator_readyForNext(this)) }
  PredicateMaskField(Iterator_readyForNext(this)) == Iterator_readyForNext#sm(this)
);
axiom (forall this: Ref ::
  { Iterator_readyForNext(this) }
  IsPredicateField(Iterator_readyForNext(this))
);
axiom (forall this: Ref ::
  { Iterator_readyForNext(this) }
  getPredWandId(Iterator_readyForNext(this)) == 1
);
function  Iterator_readyForNext#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Iterator_readyForNext#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Iterator_readyForNext(this), Iterator_readyForNext(this2) }
  Iterator_readyForNext(this) == Iterator_readyForNext(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Iterator_readyForNext#sm(this), Iterator_readyForNext#sm(this2) }
  Iterator_readyForNext#sm(this) == Iterator_readyForNext#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Iterator_readyForNext#trigger(Heap, Iterator_readyForNext(this)) }
  Iterator_readyForNext#everUsed(Iterator_readyForNext(this))
);

procedure Iterator_readyForNext#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of Iterator_readyForNext
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (ListIterator.vpr@98.1--122.46) [136303]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_iteratee != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@98.1--122.46) [136304]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
    assume Heap[this, Iterator_iteratee] != null;
    
    // -- Check definedness of acc(this.Iterator_iteratee.List_sentinel, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@98.1--122.46) [136305]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
    perm := FullPerm;
    assume Heap[this, Iterator_iteratee] != null;
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_iteratee.List_sentinel != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@98.1--122.46) [136306]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@98.1--122.46) [136307]"}
        HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
    assume Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_current != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136308]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assume Heap[this, Iterator_current] != null;
    
    // -- Check definedness of acc(this.Iterator_current.Node_val, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136309]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_current.Node_next, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136310]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_current.Node_prev, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136311]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_current.Node_prev == null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136312]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@98.1--122.46) [136313]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      
      // -- Check definedness of this.Iterator_current == this.Iterator_iteratee.List_sentinel
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136314]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@98.1--122.46) [136315]"}
          HasDirectPerm(Mask, this, Iterator_iteratee);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@98.1--122.46) [136316]"}
          HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
      assume Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    
    // -- Check definedness of this.Iterator_current.Node_prev != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136317]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@98.1--122.46) [136318]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      
      // -- Check definedness of acc(Node_reverse(this.Iterator_current.Node_prev), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136319]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@98.1--122.46) [136320]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136321]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@98.1--122.46) [136322]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_first might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@115.6--115.49) [136323]"}
            NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@98.1--122.46) [136324]"}
          HasDirectPerm(Mask, this, Iterator_iteratee);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@98.1--122.46) [136325]"}
          HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
      assume Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assume state(Heap, Mask);
      
      // -- Check definedness of Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136326]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@98.1--122.46) [136327]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@116.6--116.52) [136328]"}
            NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136329]"}
          HasDirectPerm(Mask, this, Iterator_current);
      assume Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
    }
    
    // -- Check definedness of this.Iterator_current.Node_next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136330]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@98.1--122.46) [136331]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      
      // -- Check definedness of acc(Node_state(this.Iterator_current.Node_next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136332]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@98.1--122.46) [136333]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.Iterator_current.Node_next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@98.1--122.46) [136334]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@98.1--122.46) [136335]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
    assume Heap[Heap[this, Iterator_current], Node_next] != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Iterator_readyForRemove
// ==================================================

type PredicateType_Iterator_readyForRemove;
function  Iterator_readyForRemove(this: Ref): Field PredicateType_Iterator_readyForRemove FrameType;
function  Iterator_readyForRemove#sm(this: Ref): Field PredicateType_Iterator_readyForRemove PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Iterator_readyForRemove(this)) }
  PredicateMaskField(Iterator_readyForRemove(this)) == Iterator_readyForRemove#sm(this)
);
axiom (forall this: Ref ::
  { Iterator_readyForRemove(this) }
  IsPredicateField(Iterator_readyForRemove(this))
);
axiom (forall this: Ref ::
  { Iterator_readyForRemove(this) }
  getPredWandId(Iterator_readyForRemove(this)) == 2
);
function  Iterator_readyForRemove#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Iterator_readyForRemove#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Iterator_readyForRemove(this), Iterator_readyForRemove(this2) }
  Iterator_readyForRemove(this) == Iterator_readyForRemove(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Iterator_readyForRemove#sm(this), Iterator_readyForRemove#sm(this2) }
  Iterator_readyForRemove#sm(this) == Iterator_readyForRemove#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Iterator_readyForRemove#trigger(Heap, Iterator_readyForRemove(this)) }
  Iterator_readyForRemove#everUsed(Iterator_readyForRemove(this))
);

procedure Iterator_readyForRemove#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of Iterator_readyForRemove
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (ListIterator.vpr@125.1--159.60) [136336]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_iteratee != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@125.1--159.60) [136337]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
    assume Heap[this, Iterator_iteratee] != null;
    
    // -- Check definedness of acc(this.Iterator_iteratee.List_sentinel, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@125.1--159.60) [136338]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
    perm := FullPerm;
    assume Heap[this, Iterator_iteratee] != null;
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_iteratee.List_sentinel != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@125.1--159.60) [136339]"}
        HasDirectPerm(Mask, this, Iterator_iteratee);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@125.1--159.60) [136340]"}
        HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
    assume Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_current != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136341]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assume Heap[this, Iterator_current] != null;
    
    // -- Check definedness of acc(this.Iterator_current.Node_val, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136342]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_current.Node_next, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136343]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_current.Node_prev, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136344]"}
        HasDirectPerm(Mask, this, Iterator_current);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_current.Node_prev == null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136345]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@125.1--159.60) [136346]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      
      // -- Check definedness of this.Iterator_current == this.Iterator_iteratee.List_sentinel
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136347]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@125.1--159.60) [136348]"}
          HasDirectPerm(Mask, this, Iterator_iteratee);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@125.1--159.60) [136349]"}
          HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
      assume Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    
    // -- Check definedness of this.Iterator_current.Node_next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136350]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@125.1--159.60) [136351]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      
      // -- Check definedness of acc(Node_state(this.Iterator_current.Node_next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136352]"}
          HasDirectPerm(Mask, this, Iterator_current);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@125.1--159.60) [136353]"}
          HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.Iterator_current.Node_prev == this.Iterator_last
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136354]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@125.1--159.60) [136355]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_prev);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136356]"}
        HasDirectPerm(Mask, this, Iterator_last);
    assume Heap[Heap[this, Iterator_current], Node_prev] == Heap[this, Iterator_last];
    
    // -- Check definedness of this.Iterator_last != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136357]"}
        HasDirectPerm(Mask, this, Iterator_last);
    assume Heap[this, Iterator_last] != null;
    
    // -- Check definedness of acc(this.Iterator_last.Node_val, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136358]"}
        HasDirectPerm(Mask, this, Iterator_last);
    perm := FullPerm;
    assume Heap[this, Iterator_last] != null;
    Mask := Mask[Heap[this, Iterator_last], Node_val:=Mask[Heap[this, Iterator_last], Node_val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_last.Node_next, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136359]"}
        HasDirectPerm(Mask, this, Iterator_last);
    perm := FullPerm;
    assume Heap[this, Iterator_last] != null;
    Mask := Mask[Heap[this, Iterator_last], Node_next:=Mask[Heap[this, Iterator_last], Node_next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.Iterator_last.Node_prev, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136360]"}
        HasDirectPerm(Mask, this, Iterator_last);
    perm := FullPerm;
    assume Heap[this, Iterator_last] != null;
    Mask := Mask[Heap[this, Iterator_last], Node_prev:=Mask[Heap[this, Iterator_last], Node_prev] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Iterator_last.Node_prev == null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136361]"}
        HasDirectPerm(Mask, this, Iterator_last);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last.Node_prev (ListIterator.vpr@125.1--159.60) [136362]"}
        HasDirectPerm(Mask, Heap[this, Iterator_last], Node_prev);
    if (Heap[Heap[this, Iterator_last], Node_prev] == null) {
      
      // -- Check definedness of this.Iterator_last == this.Iterator_iteratee.List_sentinel
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136363]"}
          HasDirectPerm(Mask, this, Iterator_last);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@125.1--159.60) [136364]"}
          HasDirectPerm(Mask, this, Iterator_iteratee);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@125.1--159.60) [136365]"}
          HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
      assume Heap[this, Iterator_last] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    
    // -- Check definedness of this.Iterator_last.Node_prev != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136366]"}
        HasDirectPerm(Mask, this, Iterator_last);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last.Node_prev (ListIterator.vpr@125.1--159.60) [136367]"}
        HasDirectPerm(Mask, Heap[this, Iterator_last], Node_prev);
    if (Heap[Heap[this, Iterator_last], Node_prev] != null) {
      
      // -- Check definedness of acc(Node_reverse(this.Iterator_last.Node_prev), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136368]"}
          HasDirectPerm(Mask, this, Iterator_last);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last.Node_prev (ListIterator.vpr@125.1--159.60) [136369]"}
          HasDirectPerm(Mask, Heap[this, Iterator_last], Node_prev);
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Node_first(this.Iterator_last.Node_prev) == this.Iterator_iteratee.List_sentinel
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136370]"}
          HasDirectPerm(Mask, this, Iterator_last);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last.Node_prev (ListIterator.vpr@125.1--159.60) [136371]"}
          HasDirectPerm(Mask, Heap[this, Iterator_last], Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_first might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_last.Node_prev) (ListIterator.vpr@155.6--155.46) [136372]"}
            NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@125.1--159.60) [136373]"}
          HasDirectPerm(Mask, this, Iterator_iteratee);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@125.1--159.60) [136374]"}
          HasDirectPerm(Mask, Heap[this, Iterator_iteratee], List_sentinel);
      assume Node_first(Heap, Heap[Heap[this, Iterator_last], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assume state(Heap, Mask);
      
      // -- Check definedness of Node_rev_next(this.Iterator_last.Node_prev) == this.Iterator_last
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136375]"}
          HasDirectPerm(Mask, this, Iterator_last);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last.Node_prev (ListIterator.vpr@125.1--159.60) [136376]"}
          HasDirectPerm(Mask, Heap[this, Iterator_last], Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_last.Node_prev) (ListIterator.vpr@156.6--156.49) [136377]"}
            NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136378]"}
          HasDirectPerm(Mask, this, Iterator_last);
      assume Node_rev_next(Heap, Heap[Heap[this, Iterator_last], Node_prev]) == Heap[this, Iterator_last];
    }
    
    // -- Check definedness of this.Iterator_last.Node_next == this.Iterator_current
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@125.1--159.60) [136379]"}
        HasDirectPerm(Mask, this, Iterator_last);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_last.Node_next (ListIterator.vpr@125.1--159.60) [136380]"}
        HasDirectPerm(Mask, Heap[this, Iterator_last], Node_next);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@125.1--159.60) [136381]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assume Heap[Heap[this, Iterator_last], Node_next] == Heap[this, Iterator_current];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate List_state
// ==================================================

type PredicateType_List_state;
function  List_state(this: Ref): Field PredicateType_List_state FrameType;
function  List_state#sm(this: Ref): Field PredicateType_List_state PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(List_state(this)) }
  PredicateMaskField(List_state(this)) == List_state#sm(this)
);
axiom (forall this: Ref ::
  { List_state(this) }
  IsPredicateField(List_state(this))
);
axiom (forall this: Ref ::
  { List_state(this) }
  getPredWandId(List_state(this)) == 3
);
function  List_state#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List_state#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { List_state(this), List_state(this2) }
  List_state(this) == List_state(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { List_state#sm(this), List_state#sm(this2) }
  List_state#sm(this) == List_state#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { List_state#trigger(Heap, List_state(this)) }
  List_state#everUsed(List_state(this))
);

procedure List_state#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List_state
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, List_sentinel:=Mask[this, List_sentinel] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.List_sentinel != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@252.1--253.91) [136382]"}
        HasDirectPerm(Mask, this, List_sentinel);
    assume Heap[this, List_sentinel] != null;
    
    // -- Check definedness of acc(Node_state(this.List_sentinel), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@252.1--253.91) [136383]"}
        HasDirectPerm(Mask, this, List_sentinel);
    perm := FullPerm;
    Mask := Mask[null, Node_state(Heap[this, List_sentinel]):=Mask[null, Node_state(Heap[this, List_sentinel])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Node_state
// ==================================================

type PredicateType_Node_state;
function  Node_state(this: Ref): Field PredicateType_Node_state FrameType;
function  Node_state#sm(this: Ref): Field PredicateType_Node_state PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Node_state(this)) }
  PredicateMaskField(Node_state(this)) == Node_state#sm(this)
);
axiom (forall this: Ref ::
  { Node_state(this) }
  IsPredicateField(Node_state(this))
);
axiom (forall this: Ref ::
  { Node_state(this) }
  getPredWandId(Node_state(this)) == 4
);
function  Node_state#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node_state#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Node_state(this), Node_state(this2) }
  Node_state(this) == Node_state(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Node_state#sm(this), Node_state#sm(this2) }
  Node_state#sm(this) == Node_state#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Node_state#trigger(Heap, Node_state(this)) }
  Node_state#everUsed(Node_state(this))
);

procedure Node_state#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Node_state
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_val:=Mask[this, Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_prev:=Mask[this, Node_prev] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_next:=Mask[this, Node_next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Node_next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_next (ListIterator.vpr@286.1--288.62) [136384]"}
        HasDirectPerm(Mask, this, Node_next);
    if (Heap[this, Node_next] != null) {
      
      // -- Check definedness of acc(Node_state(this.Node_next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_next (ListIterator.vpr@286.1--288.62) [136385]"}
          HasDirectPerm(Mask, this, Node_next);
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[this, Node_next]):=Mask[null, Node_state(Heap[this, Node_next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Node_reverse
// ==================================================

type PredicateType_Node_reverse;
function  Node_reverse(this: Ref): Field PredicateType_Node_reverse FrameType;
function  Node_reverse#sm(this: Ref): Field PredicateType_Node_reverse PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Node_reverse(this)) }
  PredicateMaskField(Node_reverse(this)) == Node_reverse#sm(this)
);
axiom (forall this: Ref ::
  { Node_reverse(this) }
  IsPredicateField(Node_reverse(this))
);
axiom (forall this: Ref ::
  { Node_reverse(this) }
  getPredWandId(Node_reverse(this)) == 5
);
function  Node_reverse#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Node_reverse#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Node_reverse(this), Node_reverse(this2) }
  Node_reverse(this) == Node_reverse(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Node_reverse#sm(this), Node_reverse#sm(this2) }
  Node_reverse#sm(this) == Node_reverse#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Node_reverse#trigger(Heap, Node_reverse(this)) }
  Node_reverse#everUsed(Node_reverse(this))
);

procedure Node_reverse#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Check definedness of predicate body of Node_reverse
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_val:=Mask[this, Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_prev:=Mask[this, Node_prev] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_next:=Mask[this, Node_next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.Node_prev != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@292.1--294.105) [136386]"}
        HasDirectPerm(Mask, this, Node_prev);
    if (Heap[this, Node_prev] != null) {
      
      // -- Check definedness of acc(Node_reverse(this.Node_prev), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@292.1--294.105) [136387]"}
          HasDirectPerm(Mask, this, Node_prev);
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[this, Node_prev]):=Mask[null, Node_reverse(Heap[this, Node_prev])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Node_rev_next(this.Node_prev) == this
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@292.1--294.105) [136388]"}
          HasDirectPerm(Mask, this, Node_prev);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(this.Node_prev) (ListIterator.vpr@294.66--294.95) [136389]"}
            NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(Heap[this, Node_prev])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assume Node_rev_next(Heap, Heap[this, Node_prev]) == this;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method main
// ==================================================

procedure main(l_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var arg_v: int;
  var b_24: bool;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var tmp: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume l_2 != null;
    perm := FullPerm;
    Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] + perm];
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
    assume l_2 != null;
    perm := FullPerm;
    PostMask := PostMask[null, List_state(l_2):=PostMask[null, List_state(l_2)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[i, $allocated];
  
  // -- Translating statement: List_put(l, 1) -- ListIterator.vpr@27.3--27.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method List_put might not hold. There might be insufficient permission to access List_state(l) (ListIterator.vpr@27.3--27.17) [136390]"}
          perm <= Mask[null, List_state(l_2)];
      }
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: List_put(l, 0) -- ListIterator.vpr@28.3--28.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method List_put might not hold. There might be insufficient permission to access List_state(l) (ListIterator.vpr@28.3--28.17) [136391]"}
          perm <= Mask[null, List_state(l_2)];
      }
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: List_put(l, -1) -- ListIterator.vpr@29.3--29.18
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_v := -1;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method List_put might not hold. There might be insufficient permission to access List_state(l) (ListIterator.vpr@29.3--29.18) [136392]"}
          perm <= Mask[null, List_state(l_2)];
      }
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: i := Iterator_new(l) -- ListIterator.vpr@33.3--33.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Iterator_new might not hold. Assertion l != null might not hold. (ListIterator.vpr@33.3--33.23) [136393]"}
        l_2 != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Iterator_new might not hold. There might be insufficient permission to access List_state(l) (ListIterator.vpr@33.3--33.23) [136394]"}
          perm <= Mask[null, List_state(l_2)];
      }
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc i;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
      assume state(Heap, Mask);
      Mask := Mask[null, wand_1(i, l_2):=Mask[null, wand_1(i, l_2)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[i, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: b := Iterator_hasNext(i) -- ListIterator.vpr@36.3--36.27
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Iterator_hasNext might not hold. There might be insufficient permission to access Iterator_ready(i) (ListIterator.vpr@36.3--36.27) [136395]"}
          perm <= Mask[null, Iterator_ready(i)];
      }
      Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc b_24;
    
    // -- Inhaling postcondition
      if (b_24) {
        perm := FullPerm;
        Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] + perm];
        assume state(Heap, Mask);
      }
      if (!b_24) {
        perm := FullPerm;
        Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (b) -- ListIterator.vpr@39.3--60.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (b_24) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant b ==> acc(Iterator_readyForNext(i), write) might not hold on entry. There might be insufficient permission to access Iterator_readyForNext(i) (ListIterator.vpr@40.13--40.43) [136396]"}
              perm <= Mask[null, Iterator_readyForNext(i)];
          }
          Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] - perm];
        }
        if (!b_24) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant !b ==> acc(Iterator_ready(i), write) might not hold on entry. There might be insufficient permission to access Iterator_ready(i) (ListIterator.vpr@41.13--41.37) [136397]"}
              perm <= Mask[null, Iterator_ready(i)];
          }
          Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] - perm];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc b_24;
    
    // -- Check definedness of invariant
      if (*) {
        if (b_24) {
          perm := FullPerm;
          Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        if (!b_24) {
          perm := FullPerm;
          Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        if (b_24) {
          perm := FullPerm;
          Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] + perm];
          assume state(Heap, Mask);
        }
        if (!b_24) {
          perm := FullPerm;
          Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        // Check and assume guard
        assume b_24;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: tmp := Iterator_next(i) -- ListIterator.vpr@45.5--45.28
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Iterator_next might not hold. There might be insufficient permission to access Iterator_readyForNext(i) (ListIterator.vpr@45.5--45.28) [136398]"}
                  perm <= Mask[null, Iterator_readyForNext(i)];
              }
              Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Havocing target variables
              havoc tmp;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              Mask := Mask[null, Iterator_readyForRemove(i):=Mask[null, Iterator_readyForRemove(i)] + perm];
              assume state(Heap, Mask);
              Mask := Mask[null, wand(i, i):=Mask[null, wand(i, i)] + FullPerm];
              assume state(Heap, Mask);
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: if (tmp < 0) -- ListIterator.vpr@48.5--56.6
            if (tmp < 0) {
              
              // -- Translating statement: Iterator_remove(i) -- ListIterator.vpr@51.7--51.25
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Iterator_remove might not hold. There might be insufficient permission to access Iterator_readyForRemove(i) (ListIterator.vpr@51.7--51.25) [136399]"}
                      perm <= Mask[null, Iterator_readyForRemove(i)];
                  }
                  Mask := Mask[null, Iterator_readyForRemove(i):=Mask[null, Iterator_readyForRemove(i)] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: apply acc(Iterator_readyForRemove(i), write) --*
  //   acc(Iterator_ready(i), write) -- ListIterator.vpr@55.7--55.61
                
                // -- check if wand is held and remove an instance
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  // permLe
                  assert {:msg "  Applying wand might fail. Magic wand instance not found. (ListIterator.vpr@55.7--55.61) [136400]"}
                    FullPerm <= Mask[null, wand(i, i)];
                  Mask := Mask[null, wand(i, i):=Mask[null, wand(i, i)] - FullPerm];
                assume state(Heap, Mask);
                
                // -- check if LHS holds and remove permissions 
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Applying wand might fail. There might be insufficient permission to access Iterator_readyForRemove(i) (ListIterator.vpr@55.7--55.61) [136401]"}
                      perm <= Mask[null, Iterator_readyForRemove(i)];
                  }
                  Mask := Mask[null, Iterator_readyForRemove(i):=Mask[null, Iterator_readyForRemove(i)] - perm];
                assume state(Heap, Mask);
                
                // -- inhale the RHS of the wand
                  perm := FullPerm;
                  Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: b := Iterator_hasNext(i) -- ListIterator.vpr@59.5--59.29
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Iterator_hasNext might not hold. There might be insufficient permission to access Iterator_ready(i) (ListIterator.vpr@59.5--59.29) [136402]"}
                  perm <= Mask[null, Iterator_ready(i)];
              }
              Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Havocing target variables
              havoc b_24;
            
            // -- Inhaling postcondition
              if (b_24) {
                perm := FullPerm;
                Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] + perm];
                assume state(Heap, Mask);
              }
              if (!b_24) {
                perm := FullPerm;
                Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
                assume state(Heap, Mask);
              }
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (b_24) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant b ==> acc(Iterator_readyForNext(i), write) might not be preserved. There might be insufficient permission to access Iterator_readyForNext(i) (ListIterator.vpr@40.13--40.43) [136403]"}
              perm <= Mask[null, Iterator_readyForNext(i)];
          }
          Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] - perm];
        }
        if (!b_24) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant !b ==> acc(Iterator_ready(i), write) might not be preserved. There might be insufficient permission to access Iterator_ready(i) (ListIterator.vpr@41.13--41.37) [136404]"}
              perm <= Mask[null, Iterator_ready(i)];
          }
          Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] - perm];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !b_24;
      assume state(Heap, Mask);
      if (b_24) {
        perm := FullPerm;
        Mask := Mask[null, Iterator_readyForNext(i):=Mask[null, Iterator_readyForNext(i)] + perm];
        assume state(Heap, Mask);
      }
      if (!b_24) {
        perm := FullPerm;
        Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(Iterator_ready(i), write) --* acc(List_state(l), write) -- ListIterator.vpr@63.3--63.44
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (ListIterator.vpr@63.3--63.44) [136405]"}
        FullPerm <= Mask[null, wand_1(i, l_2)];
      Mask := Mask[null, wand_1(i, l_2):=Mask[null, wand_1(i, l_2)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access Iterator_ready(i) (ListIterator.vpr@63.3--63.44) [136407]"}
          perm <= Mask[null, Iterator_ready(i)];
      }
      Mask := Mask[null, Iterator_ready(i):=Mask[null, Iterator_ready(i)] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main might not hold. Assertion l != null might not hold. (ListIterator.vpr@23.10--23.34) [136409]"}
      l_2 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of main might not hold. There might be insufficient permission to access List_state(l) (ListIterator.vpr@23.10--23.34) [136410]"}
        perm <= Mask[null, List_state(l_2)];
    }
    Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Iterator_new
// ==================================================

procedure Iterator_new(l_2: Ref) returns (this: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var rcvLocal: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var b_6: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_7: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var arg_1_1: Ref;
  var b_8: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var b_9: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var ExhaleHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var arg_fst: Ref;
  var arg_nxt: Ref;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_10: bool;
  var arg_2: Ref;
  var b_11: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var arg_3: Ref;
  var b_12: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var b_13: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_14: bool;
  var b_15: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var b_16: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_17: bool;
  var b_18: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var arg_4: Ref;
  var b_19: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_20: bool;
  var arg_5: Ref;
  var b_21: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_2, $allocated];
  
  // -- Checked inhaling of precondition
    assume l_2 != null;
    perm := FullPerm;
    Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] + perm];
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
    PostMask := PostMask[null, Iterator_ready(this):=PostMask[null, Iterator_ready(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(Iterator_ready(this), write) --* acc(List_state(l), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Iterator_ready(this):=WandDefLHSMask[null, Iterator_ready(this)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- ListIterator.vpr@167.10--167.48
          lhs3:
          Labellhs3Heap := WandDefLHSHeap;
          Labellhs3Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, List_state(l_2):=WandDefRHSMask[null, List_state(l_2)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand_1(this, l_2):=PostMask[null, wand_1(this, l_2)] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this := new(Iterator_iteratee, Iterator_current, Iterator_last) -- ListIterator.vpr@168.3--168.64
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    this := freshObj;
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] + FullPerm];
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] + FullPerm];
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(List_state(l), write) -- ListIterator.vpr@169.3--169.23
    assume List_state#trigger(Heap, List_state(l_2));
    assume Heap[null, List_state(l_2)] == CombineFrames(FrameFragment(Heap[l_2, List_sentinel]), Heap[null, Node_state(Heap[l_2, List_sentinel])]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List_state(l) might fail. There might be insufficient permission to access List_state(l) (ListIterator.vpr@169.3--169.23) [136413]"}
        perm <= Mask[null, List_state(l_2)];
    }
    Mask := Mask[null, List_state(l_2):=Mask[null, List_state(l_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List_state(l_2))) {
        havoc newVersion;
        Heap := Heap[null, List_state(l_2):=newVersion];
      }
    perm := FullPerm;
    assume l_2 != null;
    Mask := Mask[l_2, List_sentinel:=Mask[l_2, List_sentinel] + perm];
    assume state(Heap, Mask);
    assume Heap[l_2, List_sentinel] != null;
    perm := FullPerm;
    Mask := Mask[null, Node_state(Heap[l_2, List_sentinel]):=Mask[null, Node_state(Heap[l_2, List_sentinel])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(List_state(l_2), Heap[null, List_state(l_2)], Node_state(Heap[l_2, List_sentinel]), Heap[null, Node_state(Heap[l_2, List_sentinel])]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_current := l.List_sentinel -- ListIterator.vpr@170.3--170.43
    
    // -- Check definedness of l.List_sentinel
      assert {:msg "  Assignment might fail. There might be insufficient permission to access l.List_sentinel (ListIterator.vpr@170.3--170.43) [136416]"}
        HasDirectPerm(Mask, l_2, List_sentinel);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@170.3--170.43) [136417]"}
      FullPerm == Mask[this, Iterator_current];
    Heap := Heap[this, Iterator_current:=Heap[l_2, List_sentinel]];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Node_state(this.Iterator_current), write) -- ListIterator.vpr@171.3--171.43
    
    // -- Check definedness of acc(Node_state(this.Iterator_current), write)
      assert {:msg "  Unfolding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@171.3--171.43) [136418]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assume Node_state#trigger(Heap, Node_state(Heap[this, Iterator_current]));
    assume Heap[null, Node_state(Heap[this, Iterator_current])] == CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access Node_state(this.Iterator_current) (ListIterator.vpr@171.3--171.43) [136421]"}
        perm <= Mask[null, Node_state(Heap[this, Iterator_current])];
    }
    Mask := Mask[null, Node_state(Heap[this, Iterator_current]):=Mask[null, Node_state(Heap[this, Iterator_current])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Node_state(Heap[this, Iterator_current]))) {
        havoc newVersion;
        Heap := Heap[null, Node_state(Heap[this, Iterator_current]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Node_state(Heap[this, Iterator_current]), Heap[null, Node_state(Heap[this, Iterator_current])], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_current.Node_prev := null -- ListIterator.vpr@172.3--172.42
    
    // -- Check definedness of this.Iterator_current
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@172.3--172.42) [136426]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@172.3--172.42) [136427]"}
      FullPerm == Mask[Heap[this, Iterator_current], Node_prev];
    Heap := Heap[Heap[this, Iterator_current], Node_prev:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_iteratee := l -- ListIterator.vpr@173.3--173.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@173.3--173.30) [136428]"}
      FullPerm == Mask[this, Iterator_iteratee];
    Heap := Heap[this, Iterator_iteratee:=l_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Iterator_ready(this), write) -- ListIterator.vpr@174.3--174.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Folding Iterator_ready(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@174.3--174.28) [136430]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@174.3--174.28) [136431]"}
        perm <= Mask[this, Iterator_iteratee];
    }
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] - perm];
    assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee != null might not hold. (ListIterator.vpr@174.3--174.28) [136432]"}
      Heap[this, Iterator_iteratee] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@174.3--174.28) [136434]"}
        perm <= Mask[Heap[this, Iterator_iteratee], List_sentinel];
    }
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] - perm];
    assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee.List_sentinel != null might not hold. (ListIterator.vpr@174.3--174.28) [136435]"}
      Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@174.3--174.28) [136437]"}
        perm <= Mask[this, Iterator_current];
    }
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@174.3--174.28) [136439]"}
        perm <= Mask[this, Iterator_last];
    }
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] - perm];
    assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current != null might not hold. (ListIterator.vpr@174.3--174.28) [136440]"}
      Heap[this, Iterator_current] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@174.3--174.28) [136442]"}
        perm <= Mask[Heap[this, Iterator_current], Node_val];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@174.3--174.28) [136444]"}
        perm <= Mask[Heap[this, Iterator_current], Node_next];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@174.3--174.28) [136446]"}
        perm <= Mask[Heap[this, Iterator_current], Node_prev];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] - perm];
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@174.3--174.28) [136447]"}
        Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@174.3--174.28) [136449]"}
          perm <= Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
      }
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])]);
      assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@174.3--174.28) [136450]"}
        Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current might not hold. (ListIterator.vpr@174.3--174.28) [136451]"}
        Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_state(this.Iterator_current.Node_next) (ListIterator.vpr@174.3--174.28) [136453]"}
          perm <= Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])];
      }
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Iterator_ready#trigger(Heap, Iterator_ready(this));
    assume Heap[null, Iterator_ready(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
    if (!HasDirectPerm(Mask, null, Iterator_ready(this))) {
      Heap := Heap[null, Iterator_ready#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Iterator_ready(this):=freshVersion];
    }
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_iteratee:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_iteratee], List_sentinel:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_current:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_last:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_val:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_next:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_prev:=true]];
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_85: (Field A B) ::
        { newPMask[o, f_85] }
        Heap[null, Iterator_ready#sm(this)][o, f_85] || Heap[null, Node_reverse#sm(Heap[Heap[this, Iterator_current], Node_prev])][o, f_85] ==> newPMask[o, f_85]
      );
      Heap := Heap[null, Iterator_ready#sm(this):=newPMask];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
        { newPMask[o_11, f_3] }
        Heap[null, Iterator_ready#sm(this)][o_11, f_3] || Heap[null, Node_state#sm(Heap[Heap[this, Iterator_current], Node_next])][o_11, f_3] ==> newPMask[o_11, f_3]
      );
      Heap := Heap[null, Iterator_ready#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(Iterator_ready(this), write) --* acc(List_state(l), write) {
  //   unfold acc(Iterator_ready(this), write)
  //   fold acc(Node_state(this.Iterator_current), write)
  //   if (Node_get_prev(this.Iterator_current) != null) {
  //     Node_swap(Node_get_prev(this.Iterator_current), this.Iterator_iteratee.List_sentinel,
  //       this.Iterator_current)
  //   }
  //   assert acc(this.Iterator_iteratee, write)
  //   fold acc(List_state(l), write)
  // } -- ListIterator.vpr@176.3--190.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1;
      Ops_1Mask := Ops_1Mask[null, Iterator_ready(this):=Ops_1Mask[null, Iterator_ready(this)] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs4 -- ListIterator.vpr@176.11--176.49
      lhs4:
      Labellhs4Heap := Ops_1Heap;
      Labellhs4Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(Iterator_ready(this), write) -- ListIterator.vpr@177.5--177.32
        assume Iterator_ready#trigger(Ops_1Heap, Iterator_ready(this));
        assume Ops_1Heap[null, Iterator_ready(this)] == CombineFrames(FrameFragment(Ops_1Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Ops_1Heap[this, Iterator_current]), CombineFrames(FrameFragment(Ops_1Heap[this, Iterator_last]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev] != null then Ops_1Heap[null, Node_reverse(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next] != null then Ops_1Heap[null, Node_state(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(Iterator_ready(this), write)
          arg_1 := this;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, Iterator_ready(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding Iterator_ready(this) might fail. Fraction acc(Iterator_ready(this), write) might be negative. (ListIterator.vpr@177.5--177.32) [136456]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Iterator_ready(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Iterator_ready(arg_1):=Used_1Mask[null, Iterator_ready(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Iterator_ready(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Iterator_ready(arg_1):=Ops_1Mask[null, Iterator_ready(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Iterator_ready(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Iterator_ready(arg_1):=Used_1Mask[null, Iterator_ready(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Iterator_ready(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, Iterator_ready(arg_1):=Mask[null, Iterator_ready(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
                  { newPMask[o_35, f_17] }
                  Heap[null, wand_1#sm(this, l_2)][o_35, f_17] || Heap[null, Iterator_ready#sm(this)][o_35, f_17] ==> newPMask[o_35, f_17]
                );
                Heap := Heap[null, wand_1#sm(this, l_2):=newPMask];
              }
            }
          assert {:msg "  Unfolding Iterator_ready(this) might fail. There might be insufficient permission to access Iterator_ready(this) (ListIterator.vpr@177.5--177.32) [136457]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Iterator_ready(arg_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := 1 / 2;
        assert {:msg "  Unfolding Iterator_ready(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@177.5--177.32) [136458]"}
          perm >= NoPerm;
        b_1_1 := b_1_1 && (perm > NoPerm ==> this != null);
        Ops_1Mask := Ops_1Mask[this, Iterator_iteratee:=Ops_1Mask[this, Iterator_iteratee] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && Ops_1Heap[this, Iterator_iteratee] != null;
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[this, Iterator_iteratee] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[this, Iterator_iteratee], List_sentinel:=Ops_1Mask[Ops_1Heap[this, Iterator_iteratee], List_sentinel] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && Ops_1Heap[Ops_1Heap[this, Iterator_iteratee], List_sentinel] != null;
        perm := FullPerm;
        b_1_1 := b_1_1 && this != null;
        Ops_1Mask := Ops_1Mask[this, Iterator_current:=Ops_1Mask[this, Iterator_current] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && this != null;
        Ops_1Mask := Ops_1Mask[this, Iterator_last:=Ops_1Mask[this, Iterator_last] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && Ops_1Heap[this, Iterator_current] != null;
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[this, Iterator_current] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[this, Iterator_current], Node_val:=Ops_1Mask[Ops_1Heap[this, Iterator_current], Node_val] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[this, Iterator_current] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[this, Iterator_current], Node_next:=Ops_1Mask[Ops_1Heap[this, Iterator_current], Node_next] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[this, Iterator_current] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[this, Iterator_current], Node_prev:=Ops_1Mask[Ops_1Heap[this, Iterator_current], Node_prev] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        if (Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev] == null) {
          b_1_1 := b_1_1 && Ops_1Heap[this, Iterator_current] == Ops_1Heap[Ops_1Heap[this, Iterator_iteratee], List_sentinel];
        }
        if (Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev] != null) {
          perm := FullPerm;
          b_1_1 := b_1_1;
          Ops_1Mask := Ops_1Mask[null, Node_reverse(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev]):=Ops_1Mask[null, Node_reverse(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev])] + perm];
          
          // -- Extra unfolding of predicate
            b_1_1 := b_1_1 && InsidePredicate(Iterator_ready(this), Ops_1Heap[null, Iterator_ready(this)], Node_reverse(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev]), Ops_1Heap[null, Node_reverse(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev])]);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && Node_first(Ops_1Heap, Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev]) == Ops_1Heap[Ops_1Heap[this, Iterator_iteratee], List_sentinel];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          b_1_1 := b_1_1 && Node_rev_next(Ops_1Heap, Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_prev]) == Ops_1Heap[this, Iterator_current];
        }
        if (Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next] != null) {
          perm := FullPerm;
          b_1_1 := b_1_1;
          Ops_1Mask := Ops_1Mask[null, Node_state(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next]):=Ops_1Mask[null, Node_state(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next])] + perm];
          
          // -- Extra unfolding of predicate
            b_1_1 := b_1_1 && InsidePredicate(Iterator_ready(this), Ops_1Heap[null, Iterator_ready(this)], Node_state(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next]), Ops_1Heap[null, Node_state(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next])]);
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: fold acc(Node_state(this.Iterator_current), write) -- ListIterator.vpr@178.5--178.43
        if (b_1_1) {
          
          // -- Check definedness of acc(Node_state(this.Iterator_current), write)
            assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@178.5--178.43) [136467]"}
              HasDirectPerm(Ops_1Mask, this, Iterator_current);
        }
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(this.Iterator_current.Node_val, write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_4) {
              if (b_1_1) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_val, write)
                  assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@178.5--178.43) [136469]"}
                    HasDirectPerm(Ops_1Mask, this, Iterator_current);
              }
            }
          rcvLocal := Ops_1Heap[this, Iterator_current];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, Node_val] + neededTransfer;
          assert {:msg "  Folding Node_state(this.Iterator_current) might fail. Fraction acc(this.Iterator_current.Node_val, write) might be negative. (ListIterator.vpr@178.5--178.43) [136470]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, Node_val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, Node_val:=Used_2Mask[rcvLocal, Node_val] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Ops_1Heap[rcvLocal, Node_val] == Used_2Heap[rcvLocal, Node_val];
                Ops_1Mask := Ops_1Mask[rcvLocal, Node_val:=Ops_1Mask[rcvLocal, Node_val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, Node_val:=Used_2Mask[rcvLocal, Node_val] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Heap[rcvLocal, Node_val] == Used_2Heap[rcvLocal, Node_val];
                Mask := Mask[rcvLocal, Node_val:=Mask[rcvLocal, Node_val] - takeTransfer];
                Heap := Heap[null, wand_1#sm(this, l_2):=Heap[null, wand_1#sm(this, l_2)][Heap[this, Iterator_current], Node_val:=true]];
              }
            }
          assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@178.5--178.43) [136471]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, Node_val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_1_1 && b_4;
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
            b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        
        // -- Transfer of acc(this.Iterator_current.Node_prev, write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_4) {
              if (b_1_1) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_prev, write)
                  assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@178.5--178.43) [136472]"}
                    HasDirectPerm(Result_1Mask, this, Iterator_current);
              }
            }
          rcvLocal := Result_1Heap[this, Iterator_current];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, Node_prev] + neededTransfer;
          assert {:msg "  Folding Node_state(this.Iterator_current) might fail. Fraction acc(this.Iterator_current.Node_prev, write) might be negative. (ListIterator.vpr@178.5--178.43) [136473]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, Node_prev];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, Node_prev:=Used_2Mask[rcvLocal, Node_prev] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Ops_1Heap[rcvLocal, Node_prev] == Used_2Heap[rcvLocal, Node_prev];
                Ops_1Mask := Ops_1Mask[rcvLocal, Node_prev:=Ops_1Mask[rcvLocal, Node_prev] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_prev];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, Node_prev:=Used_2Mask[rcvLocal, Node_prev] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Heap[rcvLocal, Node_prev] == Used_2Heap[rcvLocal, Node_prev];
                Mask := Mask[rcvLocal, Node_prev:=Mask[rcvLocal, Node_prev] - takeTransfer];
                Heap := Heap[null, wand_1#sm(this, l_2):=Heap[null, wand_1#sm(this, l_2)][Heap[this, Iterator_current], Node_prev:=true]];
              }
            }
          assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@178.5--178.43) [136474]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, Node_prev] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_6 := b_1_1 && b_4;
            b_6 := b_6 && state(Result_2Heap, Result_2Mask);
            b_6 := b_6 && sumMask(Result_2Mask, Ops_1Mask, Used_2Mask);
            b_6 := (b_6 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_2Heap, Used_2Mask);
            b_6 := b_6 && state(Result_2Heap, Result_2Mask);
          b_1_1 := b_1_1 && b_6;
        b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        
        // -- Transfer of acc(this.Iterator_current.Node_next, write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_4) {
              if (b_1_1) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_next, write)
                  assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@178.5--178.43) [136475]"}
                    HasDirectPerm(Result_2Mask, this, Iterator_current);
              }
            }
          rcvLocal := Result_2Heap[this, Iterator_current];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, Node_next] + neededTransfer;
          assert {:msg "  Folding Node_state(this.Iterator_current) might fail. Fraction acc(this.Iterator_current.Node_next, write) might be negative. (ListIterator.vpr@178.5--178.43) [136476]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, Node_next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, Node_next:=Used_2Mask[rcvLocal, Node_next] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Ops_1Heap[rcvLocal, Node_next] == Used_2Heap[rcvLocal, Node_next];
                Ops_1Mask := Ops_1Mask[rcvLocal, Node_next:=Ops_1Mask[rcvLocal, Node_next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, Node_next:=Used_2Mask[rcvLocal, Node_next] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                b_4 := b_4 && Heap[rcvLocal, Node_next] == Used_2Heap[rcvLocal, Node_next];
                Mask := Mask[rcvLocal, Node_next:=Mask[rcvLocal, Node_next] - takeTransfer];
                Heap := Heap[null, wand_1#sm(this, l_2):=Heap[null, wand_1#sm(this, l_2)][Heap[this, Iterator_current], Node_next:=true]];
              }
            }
          assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@178.5--178.43) [136477]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, Node_next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_7 := b_1_1 && b_4;
            b_7 := b_7 && state(Result_3Heap, Result_3Mask);
            b_7 := b_7 && sumMask(Result_3Mask, Ops_1Mask, Used_2Mask);
            b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_3Heap, Used_2Mask);
            b_7 := b_7 && state(Result_3Heap, Result_3Mask);
          b_1_1 := b_1_1 && b_7;
        b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        if (b_1_1 ==> Result_3Heap[Result_3Heap[this, Iterator_current], Node_next] != null) {
          
          // -- Transfer of acc(Node_state(this.Iterator_current.Node_next), write)
            
            // -- checking if access predicate defined in used state
              if (b_1_1 && b_4) {
                if (b_1_1) {
                  
                  // -- Check definedness of acc(Node_state(this.Iterator_current.Node_next), write)
                    assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@178.5--178.43) [136478]"}
                      HasDirectPerm(Result_3Mask, this, Iterator_current);
                    assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@178.5--178.43) [136479]"}
                      HasDirectPerm(Result_3Mask, Result_3Heap[this, Iterator_current], Node_next);
                }
              }
            arg_1_1 := Result_3Heap[Result_3Heap[this, Iterator_current], Node_next];
            neededTransfer := FullPerm;
            initNeededTransfer := Used_2Mask[null, Node_state(arg_1_1)] + neededTransfer;
            assert {:msg "  Folding Node_state(this.Iterator_current) might fail. Fraction acc(Node_state(this.Iterator_current.Node_next), write) might be negative. (ListIterator.vpr@178.5--178.43) [136480]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_1Mask[null, Node_state(arg_1_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_2Mask := Used_2Mask[null, Node_state(arg_1_1):=Used_2Mask[null, Node_state(arg_1_1)] + takeTransfer];
                  b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                  TempMask := ZeroMask[null, Node_state(arg_1_1):=FullPerm];
                  b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                  Ops_1Mask := Ops_1Mask[null, Node_state(arg_1_1):=Ops_1Mask[null, Node_state(arg_1_1)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Node_state(arg_1_1)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_2Mask := Used_2Mask[null, Node_state(arg_1_1):=Used_2Mask[null, Node_state(arg_1_1)] + takeTransfer];
                  b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                  TempMask := ZeroMask[null, Node_state(arg_1_1):=FullPerm];
                  b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                  Mask := Mask[null, Node_state(arg_1_1):=Mask[null, Node_state(arg_1_1)] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
                    { newPMask[o_1, f_11] }
                    Heap[null, wand_1#sm(this, l_2)][o_1, f_11] || Heap[null, Node_state#sm(Heap[Heap[this, Iterator_current], Node_next])][o_1, f_11] ==> newPMask[o_1, f_11]
                  );
                  Heap := Heap[null, wand_1#sm(this, l_2):=newPMask];
                }
              }
            assert {:msg "  Folding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access Node_state(this.Iterator_current.Node_next) (ListIterator.vpr@178.5--178.43) [136481]"}
              b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Node_state(arg_1_1)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_8 := b_1_1 && b_4;
              b_8 := b_8 && state(Result_4Heap, Result_4Mask);
              b_8 := b_8 && sumMask(Result_4Mask, Ops_1Mask, Used_2Mask);
              b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_4Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_4Heap, Used_2Mask);
              b_8 := b_8 && state(Result_4Heap, Result_4Mask);
            b_1_1 := b_1_1 && b_8;
          b_1_1 := b_1_1 && b_4;
          b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_9 := b_1_1 && b_4;
          b_9 := b_9 && state(Result_5Heap, Result_5Mask);
          b_9 := b_9 && sumMask(Result_5Mask, Ops_1Mask, Used_2Mask);
          b_9 := (b_9 && IdenticalOnKnownLocations(Ops_1Heap, Result_5Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_5Heap, Used_2Mask);
          b_9 := b_9 && state(Result_5Heap, Result_5Mask);
        b_1_1 := b_1_1 && b_9;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, Node_state(Ops_1Heap[this, Iterator_current]):=Ops_1Mask[null, Node_state(Ops_1Heap[this, Iterator_current])] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume Node_state#trigger(Ops_1Heap, Node_state(Ops_1Heap[this, Iterator_current]));
        assume Ops_1Heap[null, Node_state(Ops_1Heap[this, Iterator_current])] == CombineFrames(FrameFragment(Ops_1Heap[Result_5Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Ops_1Heap[Result_5Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment(Ops_1Heap[Result_5Heap[this, Iterator_current], Node_next]), FrameFragment((if Ops_1Heap[Result_5Heap[this, Iterator_current], Node_next] != null then Ops_1Heap[null, Node_state(Ops_1Heap[Result_5Heap[this, Iterator_current], Node_next])] else EmptyFrame)))));
        if (!HasDirectPerm(Ops_1Mask, null, Node_state(Ops_1Heap[this, Iterator_current]))) {
          Ops_1Heap := Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current]):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, Node_state(Ops_1Heap[this, Iterator_current]):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current]):=Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current])][Ops_1Heap[this, Iterator_current], Node_val:=true]];
        Ops_1Heap := Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current]):=Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current])][Ops_1Heap[this, Iterator_current], Node_prev:=true]];
        Ops_1Heap := Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current]):=Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current])][Ops_1Heap[this, Iterator_current], Node_next:=true]];
        if (Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
            { newPMask[o_12, f_9] }
            Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current])][o_12, f_9] || Ops_1Heap[null, Node_state#sm(Ops_1Heap[Ops_1Heap[this, Iterator_current], Node_next])][o_12, f_9] ==> newPMask[o_12, f_9]
          );
          Ops_1Heap := Ops_1Heap[null, Node_state#sm(Ops_1Heap[this, Iterator_current]):=newPMask];
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: if (Node_get_prev(this.Iterator_current) != null) -- ListIterator.vpr@181.5--183.6
        if (b_1_1) {
          
          // -- Check definedness of Node_get_prev(this.Iterator_current) != null
            assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@181.9--181.53) [136483]"}
              HasDirectPerm(Ops_1Mask, this, Iterator_current);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Ops_1Heap;
              ExhaleWellDef0Mask := Ops_1Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function Node_get_prev might not hold. There might be insufficient permission to access Node_state(this.Iterator_current) (ListIterator.vpr@181.9--181.45) [136484]"}
                NoPerm < perm ==> NoPerm < Ops_1Mask[null, Node_state(Ops_1Heap[this, Iterator_current])];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
              Ops_1Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
        }
        if (b_1_1 ==> Node_get_prev(Ops_1Heap, Ops_1Heap[this, Iterator_current]) != null) {
          
          // -- Translating statement: Node_swap(Node_get_prev(this.Iterator_current), this.Iterator_iteratee.List_sentinel,
  //   this.Iterator_current) -- ListIterator.vpr@182.9--182.117
            PreCallHeap := Ops_1Heap;
            PreCallMask := Ops_1Mask;
            if (b_1_1) {
              
              // -- Check definedness of Node_get_prev(this.Iterator_current)
                assert {:msg "  Method call might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@182.9--182.117) [136485]"}
                  HasDirectPerm(Ops_1Mask, this, Iterator_current);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Ops_1Heap;
                  ExhaleWellDef0Mask := Ops_1Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Node_get_prev might not hold. There might be insufficient permission to access Node_state(this.Iterator_current) (ListIterator.vpr@182.19--182.55) [136486]"}
                    NoPerm < perm ==> NoPerm < Ops_1Mask[null, Node_state(Ops_1Heap[this, Iterator_current])];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                  Ops_1Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
            }
            if (b_1_1) {
              
              // -- Check definedness of this.Iterator_iteratee.List_sentinel
                assert {:msg "  Method call might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@182.9--182.117) [136487]"}
                  HasDirectPerm(Ops_1Mask, this, Iterator_iteratee);
                assert {:msg "  Method call might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@182.9--182.117) [136488]"}
                  HasDirectPerm(Ops_1Mask, Ops_1Heap[this, Iterator_iteratee], List_sentinel);
            }
            if (b_1_1) {
              
              // -- Check definedness of this.Iterator_current
                assert {:msg "  Method call might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@182.9--182.117) [136489]"}
                  HasDirectPerm(Ops_1Mask, this, Iterator_current);
            }
            arg_this := Node_get_prev(Ops_1Heap, Ops_1Heap[this, Iterator_current]);
            arg_fst := Ops_1Heap[Ops_1Heap[this, Iterator_iteratee], List_sentinel];
            arg_nxt := Ops_1Heap[this, Iterator_current];
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Ops_1Heap;
              ExhaleWellDef0Mask := Ops_1Mask;
              havoc Used_3Heap;
              Used_3Mask := ZeroMask;
              b_10 := b_10 && state(Used_3Heap, Used_3Mask);
              assert {:msg "  The precondition of method Node_swap might not hold. Assertion this.Iterator_iteratee.List_sentinel != null might not hold. (ListIterator.vpr@182.9--182.117) [136490]"}
                b_1_1 && b_10 ==> arg_fst != null;
              b_1_1 := b_1_1 && b_10;
              
              // -- Transfer of acc(Node_reverse(arg_this), write)
                arg_2 := arg_this;
                neededTransfer := FullPerm;
                initNeededTransfer := Used_3Mask[null, Node_reverse(arg_2)] + neededTransfer;
                assert {:msg "  The precondition of method Node_swap might not hold. Fraction acc(Node_reverse(Node_get_prev(this.Iterator_current)), write) might be negative. (ListIterator.vpr@182.9--182.117) [136491]"}
                  neededTransfer >= 0.000000000;
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_1_1 && b_10) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Ops_1Mask[null, Node_reverse(arg_2)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_3Mask := Used_3Mask[null, Node_reverse(arg_2):=Used_3Mask[null, Node_reverse(arg_2)] + takeTransfer];
                      b_10 := b_10 && state(Used_3Heap, Used_3Mask);
                      TempMask := ZeroMask[null, Node_reverse(arg_2):=FullPerm];
                      b_10 := b_10 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
                      Ops_1Mask := Ops_1Mask[null, Node_reverse(arg_2):=Ops_1Mask[null, Node_reverse(arg_2)] - takeTransfer];
                    }
                  }
                
                // -- transfer code for top state of stack
                  // accumulate constraints which need to be satisfied for transfer to occur
                  accVar2 := true;
                  // actual code for the transfer from current state on stack
                  if (((b_1_1 && b_10) && accVar2) && neededTransfer > 0.000000000) {
                    maskTransfer := Mask[null, Node_reverse(arg_2)];
                    if (neededTransfer <= maskTransfer) {
                      takeTransfer := neededTransfer;
                    } else {
                      takeTransfer := maskTransfer;
                    }
                    if (takeTransfer > 0.000000000) {
                      neededTransfer := neededTransfer - takeTransfer;
                      Used_3Mask := Used_3Mask[null, Node_reverse(arg_2):=Used_3Mask[null, Node_reverse(arg_2)] + takeTransfer];
                      b_10 := b_10 && state(Used_3Heap, Used_3Mask);
                      TempMask := ZeroMask[null, Node_reverse(arg_2):=FullPerm];
                      b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                      Mask := Mask[null, Node_reverse(arg_2):=Mask[null, Node_reverse(arg_2)] - takeTransfer];
                      havoc newPMask;
                      assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
                        { newPMask[o_22, f_24] }
                        Heap[null, wand_1#sm(this, l_2)][o_22, f_24] || Heap[null, Node_reverse#sm(arg_this)][o_22, f_24] ==> newPMask[o_22, f_24]
                      );
                      Heap := Heap[null, wand_1#sm(this, l_2):=newPMask];
                    }
                  }
                assert {:msg "  The precondition of method Node_swap might not hold. There might be insufficient permission to access Node_reverse(Node_get_prev(this.Iterator_current)) (ListIterator.vpr@182.9--182.117) [136492]"}
                  b_1_1 && b_10 ==> neededTransfer == 0.000000000 && Used_3Mask[null, Node_reverse(arg_2)] == initNeededTransfer;
                
                // -- Creating state which is the sum of the two previously built up states
                  b_11 := b_1_1 && b_10;
                  b_11 := b_11 && state(Result_6Heap, Result_6Mask);
                  b_11 := b_11 && sumMask(Result_6Mask, Ops_1Mask, Used_3Mask);
                  b_11 := (b_11 && IdenticalOnKnownLocations(Ops_1Heap, Result_6Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_6Heap, Used_3Mask);
                  b_11 := b_11 && state(Result_6Heap, Result_6Mask);
                b_1_1 := b_1_1 && b_11;
              b_1_1 := b_1_1 && b_10;
              if (b_1_1 && b_10) {
                if (b_1_1) {
                  
                  // -- Check definedness of Node_rev_next(arg_this) == arg_nxt
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef1Heap := Result_6Heap;
                      ExhaleWellDef1Mask := Result_6Mask;
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(arg_this) (ListIterator.vpr@332.47--332.66) [136493]"}
                        NoPerm < perm ==> NoPerm < Result_6Mask[null, Node_reverse(arg_this)];
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Result_6Heap, ExhaleHeap, Result_6Mask);
                      Result_6Heap := ExhaleHeap;
                      // Stop execution
                      assume false;
                    }
                }
              }
              assert {:msg "  The precondition of method Node_swap might not hold. Assertion Node_rev_next(Node_get_prev(this.Iterator_current)) == this.Iterator_current might not hold. (ListIterator.vpr@182.9--182.117) [136494]"}
                b_1_1 && b_10 ==> Node_rev_next(Result_6Heap, arg_this) == arg_nxt;
              b_1_1 := b_1_1 && b_10;
              if (b_1_1 ==> arg_nxt != null) {
                
                // -- Transfer of acc(Node_state(arg_nxt), write)
                  arg_3 := arg_nxt;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_3Mask[null, Node_state(arg_3)] + neededTransfer;
                  assert {:msg "  The precondition of method Node_swap might not hold. Fraction acc(Node_state(this.Iterator_current), write) might be negative. (ListIterator.vpr@182.9--182.117) [136495]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_10) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_1Mask[null, Node_state(arg_3)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[null, Node_state(arg_3):=Used_3Mask[null, Node_state(arg_3)] + takeTransfer];
                        b_10 := b_10 && state(Used_3Heap, Used_3Mask);
                        TempMask := ZeroMask[null, Node_state(arg_3):=FullPerm];
                        b_10 := b_10 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
                        Ops_1Mask := Ops_1Mask[null, Node_state(arg_3):=Ops_1Mask[null, Node_state(arg_3)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if (((b_1_1 && b_10) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, Node_state(arg_3)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_3Mask := Used_3Mask[null, Node_state(arg_3):=Used_3Mask[null, Node_state(arg_3)] + takeTransfer];
                        b_10 := b_10 && state(Used_3Heap, Used_3Mask);
                        TempMask := ZeroMask[null, Node_state(arg_3):=FullPerm];
                        b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                        Mask := Mask[null, Node_state(arg_3):=Mask[null, Node_state(arg_3)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
                          { newPMask[o_3, f_12] }
                          Heap[null, wand_1#sm(this, l_2)][o_3, f_12] || Heap[null, Node_state#sm(arg_nxt)][o_3, f_12] ==> newPMask[o_3, f_12]
                        );
                        Heap := Heap[null, wand_1#sm(this, l_2):=newPMask];
                      }
                    }
                  assert {:msg "  The precondition of method Node_swap might not hold. There might be insufficient permission to access Node_state(this.Iterator_current) (ListIterator.vpr@182.9--182.117) [136496]"}
                    b_1_1 && b_10 ==> neededTransfer == 0.000000000 && Used_3Mask[null, Node_state(arg_3)] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_12 := b_1_1 && b_10;
                    b_12 := b_12 && state(Result_7Heap, Result_7Mask);
                    b_12 := b_12 && sumMask(Result_7Mask, Ops_1Mask, Used_3Mask);
                    b_12 := (b_12 && IdenticalOnKnownLocations(Ops_1Heap, Result_7Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_7Heap, Used_3Mask);
                    b_12 := b_12 && state(Result_7Heap, Result_7Mask);
                  b_1_1 := b_1_1 && b_12;
                b_1_1 := b_1_1 && b_10;
              }
              
              // -- Creating state which is the sum of the two previously built up states
                b_13 := b_1_1 && b_10;
                b_13 := b_13 && state(Result_8Heap, Result_8Mask);
                b_13 := b_13 && sumMask(Result_8Mask, Ops_1Mask, Used_3Mask);
                b_13 := (b_13 && IdenticalOnKnownLocations(Ops_1Heap, Result_8Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_8Heap, Used_3Mask);
                b_13 := b_13 && state(Result_8Heap, Result_8Mask);
              b_1_1 := b_1_1 && b_13;
              if (b_1_1 && b_10) {
                if (b_1_1) {
                  
                  // -- Check definedness of Node_first(arg_this) == arg_fst
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef1Heap := Result_8Heap;
                      ExhaleWellDef1Mask := Result_8Mask;
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Node_first might not hold. There might be insufficient permission to access Node_reverse(arg_this) (ListIterator.vpr@332.114--332.130) [136497]"}
                        NoPerm < perm ==> NoPerm < Result_8Mask[null, Node_reverse(arg_this)];
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Result_8Heap, ExhaleHeap, Result_8Mask);
                      Result_8Heap := ExhaleHeap;
                      // Stop execution
                      assume false;
                    }
                }
              }
              assert {:msg "  The precondition of method Node_swap might not hold. Assertion Node_first(Node_get_prev(this.Iterator_current)) == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@182.9--182.117) [136498]"}
                b_1_1 && b_10 ==> Node_first(Result_8Heap, arg_this) == arg_fst;
              b_1_1 := b_1_1 && b_10;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
              Ops_1Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              b_1_1 := b_1_1 && arg_fst != null;
              perm := FullPerm;
              b_1_1 := b_1_1;
              Ops_1Mask := Ops_1Mask[null, Node_state(arg_fst):=Ops_1Mask[null, Node_state(arg_fst)] + perm];
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: assert acc(this.Iterator_iteratee, write) -- ListIterator.vpr@188.5--188.39
        AssertHeap := Ops_1Heap;
        AssertMask := Ops_1Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_14 := b_14 && state(Used_4Heap, Used_4Mask);
        
        // -- Transfer of acc(this.Iterator_iteratee, write)
          rcvLocal := this;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[rcvLocal, Iterator_iteratee] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(this.Iterator_iteratee, write) might be negative. (ListIterator.vpr@188.12--188.39) [136499]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, Iterator_iteratee];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, Iterator_iteratee:=Used_4Mask[rcvLocal, Iterator_iteratee] + takeTransfer];
                b_14 := b_14 && state(Used_4Heap, Used_4Mask);
                b_14 := b_14 && Ops_1Heap[rcvLocal, Iterator_iteratee] == Used_4Heap[rcvLocal, Iterator_iteratee];
                Ops_1Mask := Ops_1Mask[rcvLocal, Iterator_iteratee:=Ops_1Mask[rcvLocal, Iterator_iteratee] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_14) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Iterator_iteratee];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, Iterator_iteratee:=Used_4Mask[rcvLocal, Iterator_iteratee] + takeTransfer];
                b_14 := b_14 && state(Used_4Heap, Used_4Mask);
                b_14 := b_14 && Heap[rcvLocal, Iterator_iteratee] == Used_4Heap[rcvLocal, Iterator_iteratee];
                Mask := Mask[rcvLocal, Iterator_iteratee:=Mask[rcvLocal, Iterator_iteratee] - takeTransfer];
                Heap := Heap[null, wand_1#sm(this, l_2):=Heap[null, wand_1#sm(this, l_2)][this, Iterator_iteratee:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@188.12--188.39) [136500]"}
            b_1_1 && b_14 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, Iterator_iteratee] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_15 := b_1_1 && b_14;
            b_15 := b_15 && state(Result_9Heap, Result_9Mask);
            b_15 := b_15 && sumMask(Result_9Mask, Ops_1Mask, Used_4Mask);
            b_15 := (b_15 && IdenticalOnKnownLocations(Ops_1Heap, Result_9Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_9Heap, Used_4Mask);
            b_15 := b_15 && state(Result_9Heap, Result_9Mask);
          b_1_1 := b_1_1 && b_15;
        b_1_1 := b_1_1 && b_14;
        b_1_1 := b_1_1 && Used_4Heap == Ops_1Heap;
        
        // -- Transfer of acc(this.Iterator_iteratee, write)
          rcvLocal := this;
          neededTransfer := FullPerm;
          initNeededTransfer := Ops_1Mask[rcvLocal, Iterator_iteratee] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(this.Iterator_iteratee, write) might be negative. (ListIterator.vpr@188.12--188.39) [136501]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_1_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Used_4Mask[rcvLocal, Iterator_iteratee];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Ops_1Mask := Ops_1Mask[rcvLocal, Iterator_iteratee:=Ops_1Mask[rcvLocal, Iterator_iteratee] + takeTransfer];
                b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
                b_1_1 := b_1_1 && Used_4Heap[rcvLocal, Iterator_iteratee] == Ops_1Heap[rcvLocal, Iterator_iteratee];
                Used_4Mask := Used_4Mask[rcvLocal, Iterator_iteratee:=Used_4Mask[rcvLocal, Iterator_iteratee] - takeTransfer];
                Used_4Heap := Used_4Heap[null, wand_1#sm(this, l_2):=Used_4Heap[null, wand_1#sm(this, l_2)][this, Iterator_iteratee:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@188.12--188.39) [136502]"}
            b_1_1 && b_1_1 ==> neededTransfer == 0.000000000 && Ops_1Mask[rcvLocal, Iterator_iteratee] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_16 := b_1_1 && b_14;
            b_16 := b_16 && state(Result_10Heap, Result_10Mask);
            b_16 := b_16 && sumMask(Result_10Mask, Ops_1Mask, Used_4Mask);
            b_16 := (b_16 && IdenticalOnKnownLocations(Ops_1Heap, Result_10Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_10Heap, Used_4Mask);
            b_16 := b_16 && state(Result_10Heap, Result_10Mask);
          b_1_1 := b_1_1 && b_16;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: fold acc(List_state(l), write) -- ListIterator.vpr@189.5--189.23
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_17 := b_17 && state(Used_5Heap, Used_5Mask);
        
        // -- Transfer of acc(l.List_sentinel, write)
          rcvLocal := l_2;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_5Mask[rcvLocal, List_sentinel] + neededTransfer;
          assert {:msg "  Folding List_state(l) might fail. Fraction acc(l.List_sentinel, write) might be negative. (ListIterator.vpr@189.5--189.23) [136504]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_17) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, List_sentinel];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, List_sentinel:=Used_5Mask[rcvLocal, List_sentinel] + takeTransfer];
                b_17 := b_17 && state(Used_5Heap, Used_5Mask);
                b_17 := b_17 && Ops_1Heap[rcvLocal, List_sentinel] == Used_5Heap[rcvLocal, List_sentinel];
                Ops_1Mask := Ops_1Mask[rcvLocal, List_sentinel:=Ops_1Mask[rcvLocal, List_sentinel] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_17) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, List_sentinel];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, List_sentinel:=Used_5Mask[rcvLocal, List_sentinel] + takeTransfer];
                b_17 := b_17 && state(Used_5Heap, Used_5Mask);
                b_17 := b_17 && Heap[rcvLocal, List_sentinel] == Used_5Heap[rcvLocal, List_sentinel];
                Mask := Mask[rcvLocal, List_sentinel:=Mask[rcvLocal, List_sentinel] - takeTransfer];
                Heap := Heap[null, wand_1#sm(this, l_2):=Heap[null, wand_1#sm(this, l_2)][l_2, List_sentinel:=true]];
              }
            }
          assert {:msg "  Folding List_state(l) might fail. There might be insufficient permission to access l.List_sentinel (ListIterator.vpr@189.5--189.23) [136505]"}
            b_1_1 && b_17 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, List_sentinel] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_18 := b_1_1 && b_17;
            b_18 := b_18 && state(Result_11Heap, Result_11Mask);
            b_18 := b_18 && sumMask(Result_11Mask, Ops_1Mask, Used_5Mask);
            b_18 := (b_18 && IdenticalOnKnownLocations(Ops_1Heap, Result_11Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_11Heap, Used_5Mask);
            b_18 := b_18 && state(Result_11Heap, Result_11Mask);
          b_1_1 := b_1_1 && b_18;
        b_1_1 := b_1_1 && b_17;
        b_1_1 := b_1_1 && Used_5Heap == Ops_1Heap;
        if (b_1_1 && b_17) {
          if (b_1_1) {
            
            // -- Check definedness of l.List_sentinel != null
              assert {:msg "  Folding List_state(l) might fail. There might be insufficient permission to access l.List_sentinel (ListIterator.vpr@189.5--189.23) [136506]"}
                HasDirectPerm(Result_11Mask, l_2, List_sentinel);
          }
        }
        assert {:msg "  Folding List_state(l) might fail. Assertion l.List_sentinel != null might not hold. (ListIterator.vpr@189.5--189.23) [136507]"}
          b_1_1 && b_17 ==> Result_11Heap[l_2, List_sentinel] != null;
        b_1_1 := b_1_1 && b_17;
        b_1_1 := b_1_1 && Used_5Heap == Ops_1Heap;
        
        // -- Transfer of acc(Node_state(l.List_sentinel), write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_17) {
              if (b_1_1) {
                
                // -- Check definedness of acc(Node_state(l.List_sentinel), write)
                  assert {:msg "  Folding List_state(l) might fail. There might be insufficient permission to access l.List_sentinel (ListIterator.vpr@189.5--189.23) [136508]"}
                    HasDirectPerm(Result_11Mask, l_2, List_sentinel);
              }
            }
          arg_4 := Result_11Heap[l_2, List_sentinel];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_5Mask[null, Node_state(arg_4)] + neededTransfer;
          assert {:msg "  Folding List_state(l) might fail. Fraction acc(Node_state(l.List_sentinel), write) might be negative. (ListIterator.vpr@189.5--189.23) [136509]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_17) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Node_state(arg_4)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[null, Node_state(arg_4):=Used_5Mask[null, Node_state(arg_4)] + takeTransfer];
                b_17 := b_17 && state(Used_5Heap, Used_5Mask);
                TempMask := ZeroMask[null, Node_state(arg_4):=FullPerm];
                b_17 := b_17 && IdenticalOnKnownLocations(Ops_1Heap, Used_5Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Node_state(arg_4):=Ops_1Mask[null, Node_state(arg_4)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_17) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Node_state(arg_4)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[null, Node_state(arg_4):=Used_5Mask[null, Node_state(arg_4)] + takeTransfer];
                b_17 := b_17 && state(Used_5Heap, Used_5Mask);
                TempMask := ZeroMask[null, Node_state(arg_4):=FullPerm];
                b_17 := b_17 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
                Mask := Mask[null, Node_state(arg_4):=Mask[null, Node_state(arg_4)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
                  { newPMask[o_46, f_35] }
                  Heap[null, wand_1#sm(this, l_2)][o_46, f_35] || Heap[null, Node_state#sm(Heap[l_2, List_sentinel])][o_46, f_35] ==> newPMask[o_46, f_35]
                );
                Heap := Heap[null, wand_1#sm(this, l_2):=newPMask];
              }
            }
          assert {:msg "  Folding List_state(l) might fail. There might be insufficient permission to access Node_state(l.List_sentinel) (ListIterator.vpr@189.5--189.23) [136510]"}
            b_1_1 && b_17 ==> neededTransfer == 0.000000000 && Used_5Mask[null, Node_state(arg_4)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_19 := b_1_1 && b_17;
            b_19 := b_19 && state(Result_12Heap, Result_12Mask);
            b_19 := b_19 && sumMask(Result_12Mask, Ops_1Mask, Used_5Mask);
            b_19 := (b_19 && IdenticalOnKnownLocations(Ops_1Heap, Result_12Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_12Heap, Used_5Mask);
            b_19 := b_19 && state(Result_12Heap, Result_12Mask);
          b_1_1 := b_1_1 && b_19;
        b_1_1 := b_1_1 && b_17;
        b_1_1 := b_1_1 && Used_5Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, List_state(l_2):=Ops_1Mask[null, List_state(l_2)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume List_state#trigger(Ops_1Heap, List_state(l_2));
        assume Ops_1Heap[null, List_state(l_2)] == CombineFrames(FrameFragment(Ops_1Heap[l_2, List_sentinel]), Ops_1Heap[null, Node_state(Ops_1Heap[l_2, List_sentinel])]);
        if (!HasDirectPerm(Ops_1Mask, null, List_state(l_2))) {
          Ops_1Heap := Ops_1Heap[null, List_state#sm(l_2):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, List_state(l_2):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, List_state#sm(l_2):=Ops_1Heap[null, List_state#sm(l_2)][l_2, List_sentinel:=true]];
        havoc newPMask;
        assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
          { newPMask[o_41, f_25] }
          Ops_1Heap[null, List_state#sm(l_2)][o_41, f_25] || Ops_1Heap[null, Node_state#sm(Ops_1Heap[l_2, List_sentinel])][o_41, f_25] ==> newPMask[o_41, f_25]
        );
        Ops_1Heap := Ops_1Heap[null, List_state#sm(l_2):=newPMask];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(List_state(l), write)
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_20 := b_20 && state(Used_6Heap, Used_6Mask);
    
    // -- Transfer of acc(List_state(l), write)
      arg_5 := l_2;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_6Mask[null, List_state(arg_5)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(List_state(l), write) might be negative. (ListIterator.vpr@176.3--190.4) [136512]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, List_state(arg_5)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, List_state(arg_5):=Used_6Mask[null, List_state(arg_5)] + takeTransfer];
            b_20 := b_20 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, List_state(arg_5):=FullPerm];
            b_20 := b_20 && IdenticalOnKnownLocations(Ops_1Heap, Used_6Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, List_state(arg_5):=Ops_1Mask[null, List_state(arg_5)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_20) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, List_state(arg_5)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, List_state(arg_5):=Used_6Mask[null, List_state(arg_5)] + takeTransfer];
            b_20 := b_20 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, List_state(arg_5):=FullPerm];
            b_20 := b_20 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
            Mask := Mask[null, List_state(arg_5):=Mask[null, List_state(arg_5)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
              { newPMask[o_34, f_44] }
              Heap[null, wand_1#sm(this, l_2)][o_34, f_44] || Heap[null, List_state#sm(l_2)][o_34, f_44] ==> newPMask[o_34, f_44]
            );
            Heap := Heap[null, wand_1#sm(this, l_2):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access List_state(l) (ListIterator.vpr@176.3--190.4) [136513]"}
        (b_1_1 && b_1_1) && b_20 ==> neededTransfer == 0.000000000 && Used_6Mask[null, List_state(arg_5)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_21 := b_1_1 && b_20;
        b_21 := b_21 && state(Result_13Heap, Result_13Mask);
        b_21 := b_21 && sumMask(Result_13Mask, Ops_1Mask, Used_6Mask);
        b_21 := (b_21 && IdenticalOnKnownLocations(Ops_1Heap, Result_13Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_13Heap, Used_6Mask);
        b_21 := b_21 && state(Result_13Heap, Result_13Mask);
      b_1_1 := b_1_1 && b_21;
    Mask := Mask[null, wand_1(this, l_2):=Mask[null, wand_1(this, l_2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Iterator_new might not hold. There might be insufficient permission to access Iterator_ready(this) (ListIterator.vpr@164.10--164.30) [136514]"}
        perm <= Mask[null, Iterator_ready(this)];
    }
    Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] - perm];
    // permLe
    assert {:msg "  Postcondition of Iterator_new might not hold. Magic wand instance not found. (ListIterator.vpr@167.10--167.48) [136515]"}
      FullPerm <= Mask[null, wand_1(this, l_2)];
    Mask := Mask[null, wand_1(this, l_2):=Mask[null, wand_1(this, l_2)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Iterator_hasNext
// ==================================================

procedure Iterator_hasNext(this: Ref) returns (res: bool)
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
    Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] + perm];
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
    if (res) {
      perm := FullPerm;
      PostMask := PostMask[null, Iterator_readyForNext(this):=PostMask[null, Iterator_readyForNext(this)] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    if (!res) {
      perm := FullPerm;
      PostMask := PostMask[null, Iterator_ready(this):=PostMask[null, Iterator_ready(this)] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Iterator_ready(this), write) -- ListIterator.vpr@202.3--202.30
    assume Iterator_ready#trigger(Heap, Iterator_ready(this));
    assume Heap[null, Iterator_ready(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Iterator_ready(this) might fail. There might be insufficient permission to access Iterator_ready(this) (ListIterator.vpr@202.3--202.30) [136518]"}
        perm <= Mask[null, Iterator_ready(this)];
    }
    Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Iterator_ready(this))) {
        havoc newVersion;
        Heap := Heap[null, Iterator_ready(this):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding Iterator_ready(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@202.3--202.30) [136519]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] + perm];
    assume state(Heap, Mask);
    assume Heap[this, Iterator_iteratee] != null;
    perm := FullPerm;
    assume Heap[this, Iterator_iteratee] != null;
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] + perm];
    assume state(Heap, Mask);
    assume Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] + perm];
    assume state(Heap, Mask);
    assume Heap[this, Iterator_current] != null;
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      assume Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assume state(Heap, Mask);
      assume Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := this.Iterator_current.Node_next != null -- ListIterator.vpr@203.3--203.49
    
    // -- Check definedness of this.Iterator_current.Node_next != null
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@203.3--203.49) [136528]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@203.3--203.49) [136529]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
    res := Heap[Heap[this, Iterator_current], Node_next] != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (!res) -- ListIterator.vpr@204.3--208.4
    if (!res) {
      
      // -- Translating statement: fold acc(Iterator_ready(this), write) -- ListIterator.vpr@205.5--205.30
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Folding Iterator_ready(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@205.5--205.30) [136531]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@205.5--205.30) [136532]"}
            perm <= Mask[this, Iterator_iteratee];
        }
        Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] - perm];
        assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee != null might not hold. (ListIterator.vpr@205.5--205.30) [136533]"}
          Heap[this, Iterator_iteratee] != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@205.5--205.30) [136535]"}
            perm <= Mask[Heap[this, Iterator_iteratee], List_sentinel];
        }
        Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] - perm];
        assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee.List_sentinel != null might not hold. (ListIterator.vpr@205.5--205.30) [136536]"}
          Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@205.5--205.30) [136538]"}
            perm <= Mask[this, Iterator_current];
        }
        Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@205.5--205.30) [136540]"}
            perm <= Mask[this, Iterator_last];
        }
        Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] - perm];
        assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current != null might not hold. (ListIterator.vpr@205.5--205.30) [136541]"}
          Heap[this, Iterator_current] != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@205.5--205.30) [136543]"}
            perm <= Mask[Heap[this, Iterator_current], Node_val];
        }
        Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@205.5--205.30) [136545]"}
            perm <= Mask[Heap[this, Iterator_current], Node_next];
        }
        Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@205.5--205.30) [136547]"}
            perm <= Mask[Heap[this, Iterator_current], Node_prev];
        }
        Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] - perm];
        if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
          assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@205.5--205.30) [136548]"}
            Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
        }
        if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@205.5--205.30) [136550]"}
              perm <= Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
          }
          Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])]);
          assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@205.5--205.30) [136551]"}
            Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
          assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current might not hold. (ListIterator.vpr@205.5--205.30) [136552]"}
            Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
        }
        if (Heap[Heap[this, Iterator_current], Node_next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_state(this.Iterator_current.Node_next) (ListIterator.vpr@205.5--205.30) [136554]"}
              perm <= Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])];
          }
          Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
        }
        perm := FullPerm;
        Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Iterator_ready#trigger(Heap, Iterator_ready(this));
        assume Heap[null, Iterator_ready(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
        if (!HasDirectPerm(Mask, null, Iterator_ready(this))) {
          Heap := Heap[null, Iterator_ready#sm(this):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, Iterator_ready(this):=freshVersion];
        }
        Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_iteratee:=true]];
        Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_iteratee], List_sentinel:=true]];
        Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_current:=true]];
        Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_last:=true]];
        Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_val:=true]];
        Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_next:=true]];
        Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_prev:=true]];
        if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
          havoc newPMask;
          assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
            { newPMask[o_55, f_36] }
            Heap[null, Iterator_ready#sm(this)][o_55, f_36] || Heap[null, Node_reverse#sm(Heap[Heap[this, Iterator_current], Node_prev])][o_55, f_36] ==> newPMask[o_55, f_36]
          );
          Heap := Heap[null, Iterator_ready#sm(this):=newPMask];
        }
        if (Heap[Heap[this, Iterator_current], Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
            { newPMask[o_42, f_26] }
            Heap[null, Iterator_ready#sm(this)][o_42, f_26] || Heap[null, Node_state#sm(Heap[Heap[this, Iterator_current], Node_next])][o_42, f_26] ==> newPMask[o_42, f_26]
          );
          Heap := Heap[null, Iterator_ready#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: fold acc(Iterator_readyForNext(this), write) -- ListIterator.vpr@207.5--207.37
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Folding Iterator_readyForNext(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@207.5--207.37) [136557]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@207.5--207.37) [136558]"}
            perm <= Mask[this, Iterator_iteratee];
        }
        Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] - perm];
        assert {:msg "  Folding Iterator_readyForNext(this) might fail. Assertion this.Iterator_iteratee != null might not hold. (ListIterator.vpr@207.5--207.37) [136559]"}
          Heap[this, Iterator_iteratee] != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@207.5--207.37) [136561]"}
            perm <= Mask[Heap[this, Iterator_iteratee], List_sentinel];
        }
        Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] - perm];
        assert {:msg "  Folding Iterator_readyForNext(this) might fail. Assertion this.Iterator_iteratee.List_sentinel != null might not hold. (ListIterator.vpr@207.5--207.37) [136562]"}
          Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@207.5--207.37) [136564]"}
            perm <= Mask[this, Iterator_current];
        }
        Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@207.5--207.37) [136566]"}
            perm <= Mask[this, Iterator_last];
        }
        Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] - perm];
        assert {:msg "  Folding Iterator_readyForNext(this) might fail. Assertion this.Iterator_current != null might not hold. (ListIterator.vpr@207.5--207.37) [136567]"}
          Heap[this, Iterator_current] != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@207.5--207.37) [136569]"}
            perm <= Mask[Heap[this, Iterator_current], Node_val];
        }
        Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@207.5--207.37) [136571]"}
            perm <= Mask[Heap[this, Iterator_current], Node_next];
        }
        Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@207.5--207.37) [136573]"}
            perm <= Mask[Heap[this, Iterator_current], Node_prev];
        }
        Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] - perm];
        if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. Assertion this.Iterator_current == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@207.5--207.37) [136574]"}
            Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
        }
        if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@207.5--207.37) [136576]"}
              perm <= Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
          }
          Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Iterator_readyForNext(this), Heap[null, Iterator_readyForNext(this)], Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])]);
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. Assertion Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@207.5--207.37) [136577]"}
            Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
          assert {:msg "  Folding Iterator_readyForNext(this) might fail. Assertion Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current might not hold. (ListIterator.vpr@207.5--207.37) [136578]"}
            Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
        }
        if (Heap[Heap[this, Iterator_current], Node_next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Iterator_readyForNext(this) might fail. There might be insufficient permission to access Node_state(this.Iterator_current.Node_next) (ListIterator.vpr@207.5--207.37) [136580]"}
              perm <= Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])];
          }
          Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Iterator_readyForNext(this), Heap[null, Iterator_readyForNext(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
        }
        assert {:msg "  Folding Iterator_readyForNext(this) might fail. Assertion this.Iterator_current.Node_next != null might not hold. (ListIterator.vpr@207.5--207.37) [136581]"}
          Heap[Heap[this, Iterator_current], Node_next] != null;
        perm := FullPerm;
        Mask := Mask[null, Iterator_readyForNext(this):=Mask[null, Iterator_readyForNext(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Iterator_readyForNext#trigger(Heap, Iterator_readyForNext(this));
        assume Heap[null, Iterator_readyForNext(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
        if (!HasDirectPerm(Mask, null, Iterator_readyForNext(this))) {
          Heap := Heap[null, Iterator_readyForNext#sm(this):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, Iterator_readyForNext(this):=freshVersion];
        }
        Heap := Heap[null, Iterator_readyForNext#sm(this):=Heap[null, Iterator_readyForNext#sm(this)][this, Iterator_iteratee:=true]];
        Heap := Heap[null, Iterator_readyForNext#sm(this):=Heap[null, Iterator_readyForNext#sm(this)][Heap[this, Iterator_iteratee], List_sentinel:=true]];
        Heap := Heap[null, Iterator_readyForNext#sm(this):=Heap[null, Iterator_readyForNext#sm(this)][this, Iterator_current:=true]];
        Heap := Heap[null, Iterator_readyForNext#sm(this):=Heap[null, Iterator_readyForNext#sm(this)][this, Iterator_last:=true]];
        Heap := Heap[null, Iterator_readyForNext#sm(this):=Heap[null, Iterator_readyForNext#sm(this)][Heap[this, Iterator_current], Node_val:=true]];
        Heap := Heap[null, Iterator_readyForNext#sm(this):=Heap[null, Iterator_readyForNext#sm(this)][Heap[this, Iterator_current], Node_next:=true]];
        Heap := Heap[null, Iterator_readyForNext#sm(this):=Heap[null, Iterator_readyForNext#sm(this)][Heap[this, Iterator_current], Node_prev:=true]];
        if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
          havoc newPMask;
          assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
            { newPMask[o_13, f_45] }
            Heap[null, Iterator_readyForNext#sm(this)][o_13, f_45] || Heap[null, Node_reverse#sm(Heap[Heap[this, Iterator_current], Node_prev])][o_13, f_45] ==> newPMask[o_13, f_45]
          );
          Heap := Heap[null, Iterator_readyForNext#sm(this):=newPMask];
        }
        if (Heap[Heap[this, Iterator_current], Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
            { newPMask[o_43, f_13] }
            Heap[null, Iterator_readyForNext#sm(this)][o_43, f_13] || Heap[null, Node_state#sm(Heap[Heap[this, Iterator_current], Node_next])][o_43, f_13] ==> newPMask[o_43, f_13]
          );
          Heap := Heap[null, Iterator_readyForNext#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (res) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Iterator_hasNext might not hold. There might be insufficient permission to access Iterator_readyForNext(this) (ListIterator.vpr@198.10--198.45) [136583]"}
          perm <= Mask[null, Iterator_readyForNext(this)];
      }
      Mask := Mask[null, Iterator_readyForNext(this):=Mask[null, Iterator_readyForNext(this)] - perm];
    }
    if (!res) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Iterator_hasNext might not hold. There might be insufficient permission to access Iterator_ready(this) (ListIterator.vpr@201.10--201.39) [136584]"}
          perm <= Mask[null, Iterator_ready(this)];
      }
      Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Iterator_next
// ==================================================

procedure Iterator_next(this: Ref) returns (res: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_23: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_22: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_1: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_24_1: bool;
  var arg_6: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var b_25: bool;
  var Result_14Heap: HeapType;
  var Result_14Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_26: bool;
  var rcvLocal: Ref;
  var b_27: bool;
  var Result_15Heap: HeapType;
  var Result_15Mask: MaskType;
  var b_28: bool;
  var Result_16Heap: HeapType;
  var Result_16Mask: MaskType;
  var b_29: bool;
  var Result_17Heap: HeapType;
  var Result_17Mask: MaskType;
  var arg_7: Ref;
  var b_30: bool;
  var Result_18Heap: HeapType;
  var Result_18Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var b_31: bool;
  var Result_19Heap: HeapType;
  var Result_19Mask: MaskType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_32: bool;
  var b_33: bool;
  var Result_20Heap: HeapType;
  var Result_20Mask: MaskType;
  var b_34: bool;
  var Result_21Heap: HeapType;
  var Result_21Mask: MaskType;
  var b_35: bool;
  var Result_22Heap: HeapType;
  var Result_22Mask: MaskType;
  var b_36: bool;
  var Result_23Heap: HeapType;
  var Result_23Mask: MaskType;
  var b_37: bool;
  var Result_24Heap: HeapType;
  var Result_24Mask: MaskType;
  var b_38: bool;
  var Result_25Heap: HeapType;
  var Result_25Mask: MaskType;
  var b_39: bool;
  var Result_26Heap: HeapType;
  var Result_26Mask: MaskType;
  var b_40: bool;
  var Result_27Heap: HeapType;
  var Result_27Mask: MaskType;
  var arg_8: Ref;
  var b_41: bool;
  var Result_28Heap: HeapType;
  var Result_28Mask: MaskType;
  var b_42: bool;
  var Result_29Heap: HeapType;
  var Result_29Mask: MaskType;
  var arg_9: Ref;
  var b_43: bool;
  var Result_30Heap: HeapType;
  var Result_30Mask: MaskType;
  var b_44: bool;
  var Result_31Heap: HeapType;
  var Result_31Mask: MaskType;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_45: bool;
  var arg_10: Ref;
  var b_46: bool;
  var Result_32Heap: HeapType;
  var Result_32Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Iterator_readyForNext(this):=Mask[null, Iterator_readyForNext(this)] + perm];
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
    PostMask := PostMask[null, Iterator_readyForRemove(this):=PostMask[null, Iterator_readyForRemove(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(Iterator_readyForRemove(this), write) --* acc(Iterator_ready(this), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, Iterator_readyForRemove(this):=WandDefLHSMask[null, Iterator_readyForRemove(this)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- ListIterator.vpr@217.9--217.63
          lhs6:
          Labellhs6Heap := WandDefLHSHeap;
          Labellhs6Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Iterator_ready(this):=WandDefRHSMask[null, Iterator_ready(this)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand(this, this):=PostMask[null, wand(this, this)] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Iterator_readyForNext(this), write) -- ListIterator.vpr@218.3--218.37
    assume Iterator_readyForNext#trigger(Heap, Iterator_readyForNext(this));
    assume Heap[null, Iterator_readyForNext(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Iterator_readyForNext(this) might fail. There might be insufficient permission to access Iterator_readyForNext(this) (ListIterator.vpr@218.3--218.37) [136587]"}
        perm <= Mask[null, Iterator_readyForNext(this)];
    }
    Mask := Mask[null, Iterator_readyForNext(this):=Mask[null, Iterator_readyForNext(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Iterator_readyForNext(this))) {
        havoc newVersion;
        Heap := Heap[null, Iterator_readyForNext(this):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding Iterator_readyForNext(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@218.3--218.37) [136588]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] + perm];
    assume state(Heap, Mask);
    assume Heap[this, Iterator_iteratee] != null;
    perm := FullPerm;
    assume Heap[this, Iterator_iteratee] != null;
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] + perm];
    assume state(Heap, Mask);
    assume Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] + perm];
    assume state(Heap, Mask);
    assume Heap[this, Iterator_current] != null;
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      assume Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Iterator_readyForNext(this), Heap[null, Iterator_readyForNext(this)], Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assume state(Heap, Mask);
      assume Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Iterator_readyForNext(this), Heap[null, Iterator_readyForNext(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
      assume state(Heap, Mask);
    }
    assume Heap[Heap[this, Iterator_current], Node_next] != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_last := this.Iterator_current -- ListIterator.vpr@219.3--219.44
    
    // -- Check definedness of this.Iterator_current
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@219.3--219.44) [136597]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@219.3--219.44) [136598]"}
      FullPerm == Mask[this, Iterator_last];
    Heap := Heap[this, Iterator_last:=Heap[this, Iterator_current]];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_current := this.Iterator_current.Node_next -- ListIterator.vpr@220.3--220.57
    
    // -- Check definedness of this.Iterator_current.Node_next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@220.3--220.57) [136599]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@220.3--220.57) [136600]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@220.3--220.57) [136601]"}
      FullPerm == Mask[this, Iterator_current];
    Heap := Heap[this, Iterator_current:=Heap[Heap[this, Iterator_current], Node_next]];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Node_state(this.Iterator_current), write) -- ListIterator.vpr@221.3--221.43
    
    // -- Check definedness of acc(Node_state(this.Iterator_current), write)
      assert {:msg "  Unfolding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@221.3--221.43) [136602]"}
        HasDirectPerm(Mask, this, Iterator_current);
    assume Node_state#trigger(Heap, Node_state(Heap[this, Iterator_current]));
    assume Heap[null, Node_state(Heap[this, Iterator_current])] == CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Node_state(this.Iterator_current) might fail. There might be insufficient permission to access Node_state(this.Iterator_current) (ListIterator.vpr@221.3--221.43) [136605]"}
        perm <= Mask[null, Node_state(Heap[this, Iterator_current])];
    }
    Mask := Mask[null, Node_state(Heap[this, Iterator_current]):=Mask[null, Node_state(Heap[this, Iterator_current])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Node_state(Heap[this, Iterator_current]))) {
        havoc newVersion;
        Heap := Heap[null, Node_state(Heap[this, Iterator_current]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Node_state(Heap[this, Iterator_current]), Heap[null, Node_state(Heap[this, Iterator_current])], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := this.Iterator_current.Node_val -- ListIterator.vpr@222.3--222.40
    
    // -- Check definedness of this.Iterator_current.Node_val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@222.3--222.40) [136610]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@222.3--222.40) [136611]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_val);
    res := Heap[Heap[this, Iterator_current], Node_val];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_current.Node_prev := this.Iterator_last -- ListIterator.vpr@223.3--223.54
    
    // -- Check definedness of this.Iterator_current
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@223.3--223.54) [136612]"}
        HasDirectPerm(Mask, this, Iterator_current);
    
    // -- Check definedness of this.Iterator_last
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@223.3--223.54) [136613]"}
        HasDirectPerm(Mask, this, Iterator_last);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@223.3--223.54) [136614]"}
      FullPerm == Mask[Heap[this, Iterator_current], Node_prev];
    Heap := Heap[Heap[this, Iterator_current], Node_prev:=Heap[this, Iterator_last]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Iterator_readyForRemove(this), write) -- ListIterator.vpr@224.3--224.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@224.3--224.37) [136616]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@224.3--224.37) [136617]"}
        perm <= Mask[this, Iterator_iteratee];
    }
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] - perm];
    assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_iteratee != null might not hold. (ListIterator.vpr@224.3--224.37) [136618]"}
      Heap[this, Iterator_iteratee] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@224.3--224.37) [136620]"}
        perm <= Mask[Heap[this, Iterator_iteratee], List_sentinel];
    }
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] - perm];
    assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_iteratee.List_sentinel != null might not hold. (ListIterator.vpr@224.3--224.37) [136621]"}
      Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@224.3--224.37) [136623]"}
        perm <= Mask[this, Iterator_current];
    }
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@224.3--224.37) [136625]"}
        perm <= Mask[this, Iterator_last];
    }
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] - perm];
    assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_current != null might not hold. (ListIterator.vpr@224.3--224.37) [136626]"}
      Heap[this, Iterator_current] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@224.3--224.37) [136628]"}
        perm <= Mask[Heap[this, Iterator_current], Node_val];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@224.3--224.37) [136630]"}
        perm <= Mask[Heap[this, Iterator_current], Node_next];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@224.3--224.37) [136632]"}
        perm <= Mask[Heap[this, Iterator_current], Node_prev];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] - perm];
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_current == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@224.3--224.37) [136633]"}
        Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access Node_state(this.Iterator_current.Node_next) (ListIterator.vpr@224.3--224.37) [136635]"}
          perm <= Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])];
      }
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Iterator_readyForRemove(this), Heap[null, Iterator_readyForRemove(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
    }
    assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_current.Node_prev == this.Iterator_last might not hold. (ListIterator.vpr@224.3--224.37) [136636]"}
      Heap[Heap[this, Iterator_current], Node_prev] == Heap[this, Iterator_last];
    assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_last != null might not hold. (ListIterator.vpr@224.3--224.37) [136637]"}
      Heap[this, Iterator_last] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_last.Node_val (ListIterator.vpr@224.3--224.37) [136639]"}
        perm <= Mask[Heap[this, Iterator_last], Node_val];
    }
    Mask := Mask[Heap[this, Iterator_last], Node_val:=Mask[Heap[this, Iterator_last], Node_val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_last.Node_next (ListIterator.vpr@224.3--224.37) [136641]"}
        perm <= Mask[Heap[this, Iterator_last], Node_next];
    }
    Mask := Mask[Heap[this, Iterator_last], Node_next:=Mask[Heap[this, Iterator_last], Node_next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access this.Iterator_last.Node_prev (ListIterator.vpr@224.3--224.37) [136643]"}
        perm <= Mask[Heap[this, Iterator_last], Node_prev];
    }
    Mask := Mask[Heap[this, Iterator_last], Node_prev:=Mask[Heap[this, Iterator_last], Node_prev] - perm];
    if (Heap[Heap[this, Iterator_last], Node_prev] == null) {
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_last == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@224.3--224.37) [136644]"}
        Heap[this, Iterator_last] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_last], Node_prev] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access Node_reverse(this.Iterator_last.Node_prev) (ListIterator.vpr@224.3--224.37) [136646]"}
          perm <= Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])];
      }
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Iterator_readyForRemove(this), Heap[null, Iterator_readyForRemove(this)], Node_reverse(Heap[Heap[this, Iterator_last], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])]);
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion Node_first(this.Iterator_last.Node_prev) == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@224.3--224.37) [136647]"}
        Node_first(Heap, Heap[Heap[this, Iterator_last], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion Node_rev_next(this.Iterator_last.Node_prev) == this.Iterator_last might not hold. (ListIterator.vpr@224.3--224.37) [136648]"}
        Node_rev_next(Heap, Heap[Heap[this, Iterator_last], Node_prev]) == Heap[this, Iterator_last];
    }
    assert {:msg "  Folding Iterator_readyForRemove(this) might fail. Assertion this.Iterator_last.Node_next == this.Iterator_current might not hold. (ListIterator.vpr@224.3--224.37) [136649]"}
      Heap[Heap[this, Iterator_last], Node_next] == Heap[this, Iterator_current];
    perm := FullPerm;
    Mask := Mask[null, Iterator_readyForRemove(this):=Mask[null, Iterator_readyForRemove(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Iterator_readyForRemove#trigger(Heap, Iterator_readyForRemove(this));
    assume Heap[null, Iterator_readyForRemove(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_last], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_last], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_last], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_last], Node_prev] == null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_last], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])] else EmptyFrame)))))))))))))));
    if (!HasDirectPerm(Mask, null, Iterator_readyForRemove(this))) {
      Heap := Heap[null, Iterator_readyForRemove#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Iterator_readyForRemove(this):=freshVersion];
    }
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][this, Iterator_iteratee:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][Heap[this, Iterator_iteratee], List_sentinel:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][this, Iterator_current:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][this, Iterator_last:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][Heap[this, Iterator_current], Node_val:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][Heap[this, Iterator_current], Node_next:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][Heap[this, Iterator_current], Node_prev:=true]];
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
        { newPMask[o_47, f_41] }
        Heap[null, Iterator_readyForRemove#sm(this)][o_47, f_41] || Heap[null, Node_state#sm(Heap[Heap[this, Iterator_current], Node_next])][o_47, f_41] ==> newPMask[o_47, f_41]
      );
      Heap := Heap[null, Iterator_readyForRemove#sm(this):=newPMask];
    }
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][Heap[this, Iterator_last], Node_val:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][Heap[this, Iterator_last], Node_next:=true]];
    Heap := Heap[null, Iterator_readyForRemove#sm(this):=Heap[null, Iterator_readyForRemove#sm(this)][Heap[this, Iterator_last], Node_prev:=true]];
    if (Heap[Heap[this, Iterator_last], Node_prev] != null) {
      havoc newPMask;
      assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
        { newPMask[o_14, f_51] }
        Heap[null, Iterator_readyForRemove#sm(this)][o_14, f_51] || Heap[null, Node_reverse#sm(Heap[Heap[this, Iterator_last], Node_prev])][o_14, f_51] ==> newPMask[o_14, f_51]
      );
      Heap := Heap[null, Iterator_readyForRemove#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(Iterator_readyForRemove(this), write) --*
  // acc(Iterator_ready(this), write) {
  //   unfold acc(Iterator_readyForRemove(this), write)
  //   fold acc(Node_reverse(this.Iterator_current.Node_prev), write)
  //   fold acc(Iterator_ready(this), write)
  // } -- ListIterator.vpr@226.3--233.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_22 := b_22 && state(Used_7Heap, Used_7Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_23) {
      perm := FullPerm;
      b_23 := b_23;
      Ops_3Mask := Ops_3Mask[null, Iterator_readyForRemove(this):=Ops_3Mask[null, Iterator_readyForRemove(this)] + perm];
      b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
    }
    b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs7 -- ListIterator.vpr@226.11--226.65
      lhs7:
      Labellhs7Heap := Ops_3Heap;
      Labellhs7Mask := Ops_3Mask;
      b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_23) {
      
      // -- Translating statement: unfold acc(Iterator_readyForRemove(this), write) -- ListIterator.vpr@227.5--227.41
        assume Iterator_readyForRemove#trigger(Ops_3Heap, Iterator_readyForRemove(this));
        assume Ops_3Heap[null, Iterator_readyForRemove(this)] == CombineFrames(FrameFragment(Ops_3Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Ops_3Heap[this, Iterator_current]), CombineFrames(FrameFragment(Ops_3Heap[this, Iterator_last]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next] != null then Ops_3Heap[null, Node_state(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next])] else EmptyFrame)), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_val]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_next]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev]), CombineFrames(FrameFragment((if Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev] == null then EmptyFrame else EmptyFrame)), FrameFragment((if Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev] != null then Ops_3Heap[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev])] else EmptyFrame)))))))))))))));
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_24_1 := b_24_1 && state(Used_8Heap, Used_8Mask);
        
        // -- Transfer of acc(Iterator_readyForRemove(this), write)
          arg_6 := this;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_8Mask[null, Iterator_readyForRemove(arg_6)] + neededTransfer;
          assert {:msg "  Unfolding Iterator_readyForRemove(this) might fail. Fraction acc(Iterator_readyForRemove(this), write) might be negative. (ListIterator.vpr@227.5--227.41) [136652]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, Iterator_readyForRemove(arg_6)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[null, Iterator_readyForRemove(arg_6):=Used_8Mask[null, Iterator_readyForRemove(arg_6)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_8Heap, Used_8Mask);
                TempMask := ZeroMask[null, Iterator_readyForRemove(arg_6):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Ops_3Heap, Used_8Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, Iterator_readyForRemove(arg_6):=Ops_3Mask[null, Iterator_readyForRemove(arg_6)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_24_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Iterator_readyForRemove(arg_6)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[null, Iterator_readyForRemove(arg_6):=Used_8Mask[null, Iterator_readyForRemove(arg_6)] + takeTransfer];
                b_24_1 := b_24_1 && state(Used_8Heap, Used_8Mask);
                TempMask := ZeroMask[null, Iterator_readyForRemove(arg_6):=FullPerm];
                b_24_1 := b_24_1 && IdenticalOnKnownLocations(Heap, Used_8Heap, TempMask);
                Mask := Mask[null, Iterator_readyForRemove(arg_6):=Mask[null, Iterator_readyForRemove(arg_6)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
                  { newPMask[o_44, f_14] }
                  Heap[null, wand#sm(this, this)][o_44, f_14] || Heap[null, Iterator_readyForRemove#sm(this)][o_44, f_14] ==> newPMask[o_44, f_14]
                );
                Heap := Heap[null, wand#sm(this, this):=newPMask];
              }
            }
          assert {:msg "  Unfolding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access Iterator_readyForRemove(this) (ListIterator.vpr@227.5--227.41) [136653]"}
            b_23 && b_24_1 ==> neededTransfer == 0.000000000 && Used_8Mask[null, Iterator_readyForRemove(arg_6)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_25 := b_23 && b_24_1;
            b_25 := b_25 && state(Result_14Heap, Result_14Mask);
            b_25 := b_25 && sumMask(Result_14Mask, Ops_3Mask, Used_8Mask);
            b_25 := (b_25 && IdenticalOnKnownLocations(Ops_3Heap, Result_14Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_14Heap, Used_8Mask);
            b_25 := b_25 && state(Result_14Heap, Result_14Mask);
          b_23 := b_23 && b_25;
        b_23 := b_23 && b_24_1;
        b_23 := b_23 && Used_8Heap == Ops_3Heap;
        perm := 1 / 2;
        assert {:msg "  Unfolding Iterator_readyForRemove(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@227.5--227.41) [136654]"}
          perm >= NoPerm;
        b_23 := b_23 && (perm > NoPerm ==> this != null);
        Ops_3Mask := Ops_3Mask[this, Iterator_iteratee:=Ops_3Mask[this, Iterator_iteratee] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && Ops_3Heap[this, Iterator_iteratee] != null;
        perm := FullPerm;
        b_23 := b_23 && Ops_3Heap[this, Iterator_iteratee] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[this, Iterator_iteratee], List_sentinel:=Ops_3Mask[Ops_3Heap[this, Iterator_iteratee], List_sentinel] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && Ops_3Heap[Ops_3Heap[this, Iterator_iteratee], List_sentinel] != null;
        perm := FullPerm;
        b_23 := b_23 && this != null;
        Ops_3Mask := Ops_3Mask[this, Iterator_current:=Ops_3Mask[this, Iterator_current] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        perm := FullPerm;
        b_23 := b_23 && this != null;
        Ops_3Mask := Ops_3Mask[this, Iterator_last:=Ops_3Mask[this, Iterator_last] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && Ops_3Heap[this, Iterator_current] != null;
        perm := FullPerm;
        b_23 := b_23 && Ops_3Heap[this, Iterator_current] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[this, Iterator_current], Node_val:=Ops_3Mask[Ops_3Heap[this, Iterator_current], Node_val] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        perm := FullPerm;
        b_23 := b_23 && Ops_3Heap[this, Iterator_current] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[this, Iterator_current], Node_next:=Ops_3Mask[Ops_3Heap[this, Iterator_current], Node_next] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        perm := FullPerm;
        b_23 := b_23 && Ops_3Heap[this, Iterator_current] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[this, Iterator_current], Node_prev:=Ops_3Mask[Ops_3Heap[this, Iterator_current], Node_prev] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        if (Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev] == null) {
          b_23 := b_23 && Ops_3Heap[this, Iterator_current] == Ops_3Heap[Ops_3Heap[this, Iterator_iteratee], List_sentinel];
        }
        if (Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next] != null) {
          perm := FullPerm;
          b_23 := b_23;
          Ops_3Mask := Ops_3Mask[null, Node_state(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next]):=Ops_3Mask[null, Node_state(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next])] + perm];
          
          // -- Extra unfolding of predicate
            b_23 := b_23 && InsidePredicate(Iterator_readyForRemove(this), Ops_3Heap[null, Iterator_readyForRemove(this)], Node_state(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next]), Ops_3Heap[null, Node_state(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next])]);
          b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        }
        b_23 := b_23 && Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev] == Ops_3Heap[this, Iterator_last];
        b_23 := b_23 && Ops_3Heap[this, Iterator_last] != null;
        perm := FullPerm;
        b_23 := b_23 && Ops_3Heap[this, Iterator_last] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[this, Iterator_last], Node_val:=Ops_3Mask[Ops_3Heap[this, Iterator_last], Node_val] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        perm := FullPerm;
        b_23 := b_23 && Ops_3Heap[this, Iterator_last] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[this, Iterator_last], Node_next:=Ops_3Mask[Ops_3Heap[this, Iterator_last], Node_next] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        perm := FullPerm;
        b_23 := b_23 && Ops_3Heap[this, Iterator_last] != null;
        Ops_3Mask := Ops_3Mask[Ops_3Heap[this, Iterator_last], Node_prev:=Ops_3Mask[Ops_3Heap[this, Iterator_last], Node_prev] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        if (Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev] == null) {
          b_23 := b_23 && Ops_3Heap[this, Iterator_last] == Ops_3Heap[Ops_3Heap[this, Iterator_iteratee], List_sentinel];
        }
        if (Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev] != null) {
          perm := FullPerm;
          b_23 := b_23;
          Ops_3Mask := Ops_3Mask[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev]):=Ops_3Mask[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev])] + perm];
          
          // -- Extra unfolding of predicate
            b_23 := b_23 && InsidePredicate(Iterator_readyForRemove(this), Ops_3Heap[null, Iterator_readyForRemove(this)], Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev]), Ops_3Heap[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev])]);
          b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
          b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
          b_23 := b_23 && Node_first(Ops_3Heap, Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev]) == Ops_3Heap[Ops_3Heap[this, Iterator_iteratee], List_sentinel];
          b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
          b_23 := b_23 && Node_rev_next(Ops_3Heap, Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_prev]) == Ops_3Heap[this, Iterator_last];
        }
        b_23 := b_23 && Ops_3Heap[Ops_3Heap[this, Iterator_last], Node_next] == Ops_3Heap[this, Iterator_current];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_23) {
      
      // -- Translating statement: fold acc(Node_reverse(this.Iterator_current.Node_prev), write) -- ListIterator.vpr@230.5--230.55
        if (b_23) {
          
          // -- Check definedness of acc(Node_reverse(this.Iterator_current.Node_prev), write)
            assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@230.5--230.55) [136666]"}
              HasDirectPerm(Ops_3Mask, this, Iterator_current);
            assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@230.5--230.55) [136667]"}
              HasDirectPerm(Ops_3Mask, Ops_3Heap[this, Iterator_current], Node_prev);
        }
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_26 := b_26 && state(Used_9Heap, Used_9Mask);
        
        // -- Transfer of acc(this.Iterator_current.Node_prev.Node_val, write)
          
          // -- checking if access predicate defined in used state
            if (b_23 && b_26) {
              if (b_23) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_prev.Node_val, write)
                  assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@230.5--230.55) [136669]"}
                    HasDirectPerm(Ops_3Mask, this, Iterator_current);
                  assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@230.5--230.55) [136670]"}
                    HasDirectPerm(Ops_3Mask, Ops_3Heap[this, Iterator_current], Node_prev);
              }
            }
          rcvLocal := Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[rcvLocal, Node_val] + neededTransfer;
          assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. Fraction acc(this.Iterator_current.Node_prev.Node_val, write) might be negative. (ListIterator.vpr@230.5--230.55) [136671]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Node_val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, Node_val:=Used_9Mask[rcvLocal, Node_val] + takeTransfer];
                b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                b_26 := b_26 && Ops_3Heap[rcvLocal, Node_val] == Used_9Heap[rcvLocal, Node_val];
                Ops_3Mask := Ops_3Mask[rcvLocal, Node_val:=Ops_3Mask[rcvLocal, Node_val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, Node_val:=Used_9Mask[rcvLocal, Node_val] + takeTransfer];
                b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                b_26 := b_26 && Heap[rcvLocal, Node_val] == Used_9Heap[rcvLocal, Node_val];
                Mask := Mask[rcvLocal, Node_val:=Mask[rcvLocal, Node_val] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][Heap[Heap[this, Iterator_current], Node_prev], Node_val:=true]];
              }
            }
          assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev.Node_val (ListIterator.vpr@230.5--230.55) [136672]"}
            b_23 && b_26 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, Node_val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_27 := b_23 && b_26;
            b_27 := b_27 && state(Result_15Heap, Result_15Mask);
            b_27 := b_27 && sumMask(Result_15Mask, Ops_3Mask, Used_9Mask);
            b_27 := (b_27 && IdenticalOnKnownLocations(Ops_3Heap, Result_15Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_15Heap, Used_9Mask);
            b_27 := b_27 && state(Result_15Heap, Result_15Mask);
          b_23 := b_23 && b_27;
        b_23 := b_23 && b_26;
        b_23 := b_23 && Used_9Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_current.Node_prev.Node_prev, write)
          
          // -- checking if access predicate defined in used state
            if (b_23 && b_26) {
              if (b_23) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_prev.Node_prev, write)
                  assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@230.5--230.55) [136673]"}
                    HasDirectPerm(Result_15Mask, this, Iterator_current);
                  assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@230.5--230.55) [136674]"}
                    HasDirectPerm(Result_15Mask, Result_15Heap[this, Iterator_current], Node_prev);
              }
            }
          rcvLocal := Result_15Heap[Result_15Heap[this, Iterator_current], Node_prev];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[rcvLocal, Node_prev] + neededTransfer;
          assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. Fraction acc(this.Iterator_current.Node_prev.Node_prev, write) might be negative. (ListIterator.vpr@230.5--230.55) [136675]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Node_prev];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, Node_prev:=Used_9Mask[rcvLocal, Node_prev] + takeTransfer];
                b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                b_26 := b_26 && Ops_3Heap[rcvLocal, Node_prev] == Used_9Heap[rcvLocal, Node_prev];
                Ops_3Mask := Ops_3Mask[rcvLocal, Node_prev:=Ops_3Mask[rcvLocal, Node_prev] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_prev];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, Node_prev:=Used_9Mask[rcvLocal, Node_prev] + takeTransfer];
                b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                b_26 := b_26 && Heap[rcvLocal, Node_prev] == Used_9Heap[rcvLocal, Node_prev];
                Mask := Mask[rcvLocal, Node_prev:=Mask[rcvLocal, Node_prev] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][Heap[Heap[this, Iterator_current], Node_prev], Node_prev:=true]];
              }
            }
          assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev.Node_prev (ListIterator.vpr@230.5--230.55) [136676]"}
            b_23 && b_26 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, Node_prev] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_28 := b_23 && b_26;
            b_28 := b_28 && state(Result_16Heap, Result_16Mask);
            b_28 := b_28 && sumMask(Result_16Mask, Ops_3Mask, Used_9Mask);
            b_28 := (b_28 && IdenticalOnKnownLocations(Ops_3Heap, Result_16Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_16Heap, Used_9Mask);
            b_28 := b_28 && state(Result_16Heap, Result_16Mask);
          b_23 := b_23 && b_28;
        b_23 := b_23 && b_26;
        b_23 := b_23 && Used_9Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_current.Node_prev.Node_next, write)
          
          // -- checking if access predicate defined in used state
            if (b_23 && b_26) {
              if (b_23) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_prev.Node_next, write)
                  assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@230.5--230.55) [136677]"}
                    HasDirectPerm(Result_16Mask, this, Iterator_current);
                  assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@230.5--230.55) [136678]"}
                    HasDirectPerm(Result_16Mask, Result_16Heap[this, Iterator_current], Node_prev);
              }
            }
          rcvLocal := Result_16Heap[Result_16Heap[this, Iterator_current], Node_prev];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_9Mask[rcvLocal, Node_next] + neededTransfer;
          assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. Fraction acc(this.Iterator_current.Node_prev.Node_next, write) might be negative. (ListIterator.vpr@230.5--230.55) [136679]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Node_next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, Node_next:=Used_9Mask[rcvLocal, Node_next] + takeTransfer];
                b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                b_26 := b_26 && Ops_3Heap[rcvLocal, Node_next] == Used_9Heap[rcvLocal, Node_next];
                Ops_3Mask := Ops_3Mask[rcvLocal, Node_next:=Ops_3Mask[rcvLocal, Node_next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_9Mask := Used_9Mask[rcvLocal, Node_next:=Used_9Mask[rcvLocal, Node_next] + takeTransfer];
                b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                b_26 := b_26 && Heap[rcvLocal, Node_next] == Used_9Heap[rcvLocal, Node_next];
                Mask := Mask[rcvLocal, Node_next:=Mask[rcvLocal, Node_next] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][Heap[Heap[this, Iterator_current], Node_prev], Node_next:=true]];
              }
            }
          assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev.Node_next (ListIterator.vpr@230.5--230.55) [136680]"}
            b_23 && b_26 ==> neededTransfer == 0.000000000 && Used_9Mask[rcvLocal, Node_next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_29 := b_23 && b_26;
            b_29 := b_29 && state(Result_17Heap, Result_17Mask);
            b_29 := b_29 && sumMask(Result_17Mask, Ops_3Mask, Used_9Mask);
            b_29 := (b_29 && IdenticalOnKnownLocations(Ops_3Heap, Result_17Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_17Heap, Used_9Mask);
            b_29 := b_29 && state(Result_17Heap, Result_17Mask);
          b_23 := b_23 && b_29;
        b_23 := b_23 && b_26;
        b_23 := b_23 && Used_9Heap == Ops_3Heap;
        if (b_23 ==> Result_17Heap[Result_17Heap[Result_17Heap[this, Iterator_current], Node_prev], Node_prev] != null) {
          
          // -- Transfer of acc(Node_reverse(this.Iterator_current.Node_prev.Node_prev), write)
            
            // -- checking if access predicate defined in used state
              if (b_23 && b_26) {
                if (b_23) {
                  
                  // -- Check definedness of acc(Node_reverse(this.Iterator_current.Node_prev.Node_prev), write)
                    assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@230.5--230.55) [136681]"}
                      HasDirectPerm(Result_17Mask, this, Iterator_current);
                    assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@230.5--230.55) [136682]"}
                      HasDirectPerm(Result_17Mask, Result_17Heap[this, Iterator_current], Node_prev);
                    assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev.Node_prev (ListIterator.vpr@230.5--230.55) [136683]"}
                      HasDirectPerm(Result_17Mask, Result_17Heap[Result_17Heap[this, Iterator_current], Node_prev], Node_prev);
                }
              }
            arg_7 := Result_17Heap[Result_17Heap[Result_17Heap[this, Iterator_current], Node_prev], Node_prev];
            neededTransfer := FullPerm;
            initNeededTransfer := Used_9Mask[null, Node_reverse(arg_7)] + neededTransfer;
            assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. Fraction acc(Node_reverse(this.Iterator_current.Node_prev.Node_prev), write) might be negative. (ListIterator.vpr@230.5--230.55) [136684]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, Node_reverse(arg_7)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_9Mask := Used_9Mask[null, Node_reverse(arg_7):=Used_9Mask[null, Node_reverse(arg_7)] + takeTransfer];
                  b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                  TempMask := ZeroMask[null, Node_reverse(arg_7):=FullPerm];
                  b_26 := b_26 && IdenticalOnKnownLocations(Ops_3Heap, Used_9Heap, TempMask);
                  Ops_3Mask := Ops_3Mask[null, Node_reverse(arg_7):=Ops_3Mask[null, Node_reverse(arg_7)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_23 && b_26) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Node_reverse(arg_7)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_9Mask := Used_9Mask[null, Node_reverse(arg_7):=Used_9Mask[null, Node_reverse(arg_7)] + takeTransfer];
                  b_26 := b_26 && state(Used_9Heap, Used_9Mask);
                  TempMask := ZeroMask[null, Node_reverse(arg_7):=FullPerm];
                  b_26 := b_26 && IdenticalOnKnownLocations(Heap, Used_9Heap, TempMask);
                  Mask := Mask[null, Node_reverse(arg_7):=Mask[null, Node_reverse(arg_7)] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
                    { newPMask[o_28, f_42] }
                    Heap[null, wand#sm(this, this)][o_28, f_42] || Heap[null, Node_reverse#sm(Heap[Heap[Heap[this, Iterator_current], Node_prev], Node_prev])][o_28, f_42] ==> newPMask[o_28, f_42]
                  );
                  Heap := Heap[null, wand#sm(this, this):=newPMask];
                }
              }
            assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev.Node_prev) (ListIterator.vpr@230.5--230.55) [136685]"}
              b_23 && b_26 ==> neededTransfer == 0.000000000 && Used_9Mask[null, Node_reverse(arg_7)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_30 := b_23 && b_26;
              b_30 := b_30 && state(Result_18Heap, Result_18Mask);
              b_30 := b_30 && sumMask(Result_18Mask, Ops_3Mask, Used_9Mask);
              b_30 := (b_30 && IdenticalOnKnownLocations(Ops_3Heap, Result_18Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_18Heap, Used_9Mask);
              b_30 := b_30 && state(Result_18Heap, Result_18Mask);
            b_23 := b_23 && b_30;
          b_23 := b_23 && b_26;
          b_23 := b_23 && Used_9Heap == Ops_3Heap;
          if (b_23 && b_26) {
            if (b_23) {
              
              // -- Check definedness of Node_rev_next(this.Iterator_current.Node_prev.Node_prev) == this.Iterator_current.Node_prev
                assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@230.5--230.55) [136686]"}
                  HasDirectPerm(Result_18Mask, this, Iterator_current);
                assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@230.5--230.55) [136687]"}
                  HasDirectPerm(Result_18Mask, Result_18Heap[this, Iterator_current], Node_prev);
                assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev.Node_prev (ListIterator.vpr@230.5--230.55) [136688]"}
                  HasDirectPerm(Result_18Mask, Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev], Node_prev);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := Result_18Heap;
                  ExhaleWellDef1Mask := Result_18Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev.Node_prev) (ListIterator.vpr@294.66--294.95) [136689]"}
                    NoPerm < perm ==> NoPerm < Result_18Mask[null, Node_reverse(Result_18Heap[Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev], Node_prev])];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(Node_reverse(Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev]), Result_18Heap[null, Node_reverse(Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev])], Node_reverse(Result_18Heap[Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev], Node_prev]), Result_18Heap[null, Node_reverse(Result_18Heap[Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev], Node_prev])]);
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Result_18Heap, ExhaleHeap, Result_18Mask);
                  Result_18Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@230.5--230.55) [136690]"}
                  HasDirectPerm(Result_18Mask, this, Iterator_current);
                assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@230.5--230.55) [136691]"}
                  HasDirectPerm(Result_18Mask, Result_18Heap[this, Iterator_current], Node_prev);
            }
          }
          assert {:msg "  Folding Node_reverse(this.Iterator_current.Node_prev) might fail. Assertion Node_rev_next(this.Iterator_current.Node_prev.Node_prev) == this.Iterator_current.Node_prev might not hold. (ListIterator.vpr@230.5--230.55) [136692]"}
            b_23 && b_26 ==> Node_rev_next(Result_18Heap, Result_18Heap[Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev], Node_prev]) == Result_18Heap[Result_18Heap[this, Iterator_current], Node_prev];
          b_23 := b_23 && b_26;
          b_23 := b_23 && Used_9Heap == Ops_3Heap;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_31 := b_23 && b_26;
          b_31 := b_31 && state(Result_19Heap, Result_19Mask);
          b_31 := b_31 && sumMask(Result_19Mask, Ops_3Mask, Used_9Mask);
          b_31 := (b_31 && IdenticalOnKnownLocations(Ops_3Heap, Result_19Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_9Heap, Result_19Heap, Used_9Mask);
          b_31 := b_31 && state(Result_19Heap, Result_19Mask);
        b_23 := b_23 && b_31;
        perm := FullPerm;
        b_23 := b_23;
        Ops_3Mask := Ops_3Mask[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]):=Ops_3Mask[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        assume Node_reverse#trigger(Ops_3Heap, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]));
        assume Ops_3Heap[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])] == CombineFrames(FrameFragment(Ops_3Heap[Result_19Heap[Result_19Heap[this, Iterator_current], Node_prev], Node_val]), CombineFrames(FrameFragment(Ops_3Heap[Result_19Heap[Result_19Heap[this, Iterator_current], Node_prev], Node_prev]), CombineFrames(FrameFragment(Ops_3Heap[Result_19Heap[Result_19Heap[this, Iterator_current], Node_prev], Node_next]), FrameFragment((if Ops_3Heap[Result_19Heap[Result_19Heap[this, Iterator_current], Node_prev], Node_prev] != null then Ops_3Heap[null, Node_reverse(Ops_3Heap[Result_19Heap[Result_19Heap[this, Iterator_current], Node_prev], Node_prev])] else EmptyFrame)))));
        if (!HasDirectPerm(Ops_3Mask, null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]))) {
          Ops_3Heap := Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]):=Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])][Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev], Node_val:=true]];
        Ops_3Heap := Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]):=Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])][Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev], Node_prev:=true]];
        Ops_3Heap := Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]):=Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])][Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev], Node_next:=true]];
        if (Ops_3Heap[Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev], Node_prev] != null) {
          havoc newPMask;
          assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
            { newPMask[o_76, f_34] }
            Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])][o_76, f_34] || Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev], Node_prev])][o_76, f_34] ==> newPMask[o_76, f_34]
          );
          Ops_3Heap := Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]):=newPMask];
        }
        assume state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_23) {
      
      // -- Translating statement: fold acc(Iterator_ready(this), write) -- ListIterator.vpr@232.5--232.30
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_32 := b_32 && state(Used_10Heap, Used_10Mask);
        
        // -- Transfer of acc(this.Iterator_iteratee, 1 / 2)
          rcvLocal := this;
          neededTransfer := 1 / 2;
          initNeededTransfer := Used_10Mask[rcvLocal, Iterator_iteratee] + neededTransfer;
          assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(this.Iterator_iteratee, 1 / 2) might be negative. (ListIterator.vpr@232.5--232.30) [136695]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Iterator_iteratee];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Iterator_iteratee:=Used_10Mask[rcvLocal, Iterator_iteratee] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Ops_3Heap[rcvLocal, Iterator_iteratee] == Used_10Heap[rcvLocal, Iterator_iteratee];
                Ops_3Mask := Ops_3Mask[rcvLocal, Iterator_iteratee:=Ops_3Mask[rcvLocal, Iterator_iteratee] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Iterator_iteratee];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Iterator_iteratee:=Used_10Mask[rcvLocal, Iterator_iteratee] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Heap[rcvLocal, Iterator_iteratee] == Used_10Heap[rcvLocal, Iterator_iteratee];
                Mask := Mask[rcvLocal, Iterator_iteratee:=Mask[rcvLocal, Iterator_iteratee] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][this, Iterator_iteratee:=true]];
              }
            }
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@232.5--232.30) [136696]"}
            b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, Iterator_iteratee] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_33 := b_23 && b_32;
            b_33 := b_33 && state(Result_20Heap, Result_20Mask);
            b_33 := b_33 && sumMask(Result_20Mask, Ops_3Mask, Used_10Mask);
            b_33 := (b_33 && IdenticalOnKnownLocations(Ops_3Heap, Result_20Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_20Heap, Used_10Mask);
            b_33 := b_33 && state(Result_20Heap, Result_20Mask);
          b_23 := b_23 && b_33;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        if (b_23 && b_32) {
          if (b_23) {
            
            // -- Check definedness of this.Iterator_iteratee != null
              assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@232.5--232.30) [136697]"}
                HasDirectPerm(Result_20Mask, this, Iterator_iteratee);
          }
        }
        assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee != null might not hold. (ListIterator.vpr@232.5--232.30) [136698]"}
          b_23 && b_32 ==> Result_20Heap[this, Iterator_iteratee] != null;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_iteratee.List_sentinel, write)
          
          // -- checking if access predicate defined in used state
            if (b_23 && b_32) {
              if (b_23) {
                
                // -- Check definedness of acc(this.Iterator_iteratee.List_sentinel, write)
                  assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@232.5--232.30) [136699]"}
                    HasDirectPerm(Result_20Mask, this, Iterator_iteratee);
              }
            }
          rcvLocal := Result_20Heap[this, Iterator_iteratee];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, List_sentinel] + neededTransfer;
          assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(this.Iterator_iteratee.List_sentinel, write) might be negative. (ListIterator.vpr@232.5--232.30) [136700]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, List_sentinel];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, List_sentinel:=Used_10Mask[rcvLocal, List_sentinel] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Ops_3Heap[rcvLocal, List_sentinel] == Used_10Heap[rcvLocal, List_sentinel];
                Ops_3Mask := Ops_3Mask[rcvLocal, List_sentinel:=Ops_3Mask[rcvLocal, List_sentinel] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, List_sentinel];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, List_sentinel:=Used_10Mask[rcvLocal, List_sentinel] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Heap[rcvLocal, List_sentinel] == Used_10Heap[rcvLocal, List_sentinel];
                Mask := Mask[rcvLocal, List_sentinel:=Mask[rcvLocal, List_sentinel] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][Heap[this, Iterator_iteratee], List_sentinel:=true]];
              }
            }
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@232.5--232.30) [136701]"}
            b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, List_sentinel] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_34 := b_23 && b_32;
            b_34 := b_34 && state(Result_21Heap, Result_21Mask);
            b_34 := b_34 && sumMask(Result_21Mask, Ops_3Mask, Used_10Mask);
            b_34 := (b_34 && IdenticalOnKnownLocations(Ops_3Heap, Result_21Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_21Heap, Used_10Mask);
            b_34 := b_34 && state(Result_21Heap, Result_21Mask);
          b_23 := b_23 && b_34;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        if (b_23 && b_32) {
          if (b_23) {
            
            // -- Check definedness of this.Iterator_iteratee.List_sentinel != null
              assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@232.5--232.30) [136702]"}
                HasDirectPerm(Result_21Mask, this, Iterator_iteratee);
              assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@232.5--232.30) [136703]"}
                HasDirectPerm(Result_21Mask, Result_21Heap[this, Iterator_iteratee], List_sentinel);
          }
        }
        assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee.List_sentinel != null might not hold. (ListIterator.vpr@232.5--232.30) [136704]"}
          b_23 && b_32 ==> Result_21Heap[Result_21Heap[this, Iterator_iteratee], List_sentinel] != null;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_current, write)
          rcvLocal := this;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, Iterator_current] + neededTransfer;
          assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(this.Iterator_current, write) might be negative. (ListIterator.vpr@232.5--232.30) [136705]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Iterator_current];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Iterator_current:=Used_10Mask[rcvLocal, Iterator_current] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Ops_3Heap[rcvLocal, Iterator_current] == Used_10Heap[rcvLocal, Iterator_current];
                Ops_3Mask := Ops_3Mask[rcvLocal, Iterator_current:=Ops_3Mask[rcvLocal, Iterator_current] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Iterator_current];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Iterator_current:=Used_10Mask[rcvLocal, Iterator_current] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Heap[rcvLocal, Iterator_current] == Used_10Heap[rcvLocal, Iterator_current];
                Mask := Mask[rcvLocal, Iterator_current:=Mask[rcvLocal, Iterator_current] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][this, Iterator_current:=true]];
              }
            }
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136706]"}
            b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, Iterator_current] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_35 := b_23 && b_32;
            b_35 := b_35 && state(Result_22Heap, Result_22Mask);
            b_35 := b_35 && sumMask(Result_22Mask, Ops_3Mask, Used_10Mask);
            b_35 := (b_35 && IdenticalOnKnownLocations(Ops_3Heap, Result_22Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_22Heap, Used_10Mask);
            b_35 := b_35 && state(Result_22Heap, Result_22Mask);
          b_23 := b_23 && b_35;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_last, write)
          rcvLocal := this;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, Iterator_last] + neededTransfer;
          assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(this.Iterator_last, write) might be negative. (ListIterator.vpr@232.5--232.30) [136707]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Iterator_last];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Iterator_last:=Used_10Mask[rcvLocal, Iterator_last] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Ops_3Heap[rcvLocal, Iterator_last] == Used_10Heap[rcvLocal, Iterator_last];
                Ops_3Mask := Ops_3Mask[rcvLocal, Iterator_last:=Ops_3Mask[rcvLocal, Iterator_last] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Iterator_last];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Iterator_last:=Used_10Mask[rcvLocal, Iterator_last] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Heap[rcvLocal, Iterator_last] == Used_10Heap[rcvLocal, Iterator_last];
                Mask := Mask[rcvLocal, Iterator_last:=Mask[rcvLocal, Iterator_last] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][this, Iterator_last:=true]];
              }
            }
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@232.5--232.30) [136708]"}
            b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, Iterator_last] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_36 := b_23 && b_32;
            b_36 := b_36 && state(Result_23Heap, Result_23Mask);
            b_36 := b_36 && sumMask(Result_23Mask, Ops_3Mask, Used_10Mask);
            b_36 := (b_36 && IdenticalOnKnownLocations(Ops_3Heap, Result_23Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_23Heap, Used_10Mask);
            b_36 := b_36 && state(Result_23Heap, Result_23Mask);
          b_23 := b_23 && b_36;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        if (b_23 && b_32) {
          if (b_23) {
            
            // -- Check definedness of this.Iterator_current != null
              assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136709]"}
                HasDirectPerm(Result_23Mask, this, Iterator_current);
          }
        }
        assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current != null might not hold. (ListIterator.vpr@232.5--232.30) [136710]"}
          b_23 && b_32 ==> Result_23Heap[this, Iterator_current] != null;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_current.Node_val, write)
          
          // -- checking if access predicate defined in used state
            if (b_23 && b_32) {
              if (b_23) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_val, write)
                  assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136711]"}
                    HasDirectPerm(Result_23Mask, this, Iterator_current);
              }
            }
          rcvLocal := Result_23Heap[this, Iterator_current];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, Node_val] + neededTransfer;
          assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(this.Iterator_current.Node_val, write) might be negative. (ListIterator.vpr@232.5--232.30) [136712]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Node_val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Node_val:=Used_10Mask[rcvLocal, Node_val] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Ops_3Heap[rcvLocal, Node_val] == Used_10Heap[rcvLocal, Node_val];
                Ops_3Mask := Ops_3Mask[rcvLocal, Node_val:=Ops_3Mask[rcvLocal, Node_val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Node_val:=Used_10Mask[rcvLocal, Node_val] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Heap[rcvLocal, Node_val] == Used_10Heap[rcvLocal, Node_val];
                Mask := Mask[rcvLocal, Node_val:=Mask[rcvLocal, Node_val] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][Heap[this, Iterator_current], Node_val:=true]];
              }
            }
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@232.5--232.30) [136713]"}
            b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, Node_val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_37 := b_23 && b_32;
            b_37 := b_37 && state(Result_24Heap, Result_24Mask);
            b_37 := b_37 && sumMask(Result_24Mask, Ops_3Mask, Used_10Mask);
            b_37 := (b_37 && IdenticalOnKnownLocations(Ops_3Heap, Result_24Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_24Heap, Used_10Mask);
            b_37 := b_37 && state(Result_24Heap, Result_24Mask);
          b_23 := b_23 && b_37;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_current.Node_next, write)
          
          // -- checking if access predicate defined in used state
            if (b_23 && b_32) {
              if (b_23) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_next, write)
                  assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136714]"}
                    HasDirectPerm(Result_24Mask, this, Iterator_current);
              }
            }
          rcvLocal := Result_24Heap[this, Iterator_current];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, Node_next] + neededTransfer;
          assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(this.Iterator_current.Node_next, write) might be negative. (ListIterator.vpr@232.5--232.30) [136715]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Node_next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Node_next:=Used_10Mask[rcvLocal, Node_next] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Ops_3Heap[rcvLocal, Node_next] == Used_10Heap[rcvLocal, Node_next];
                Ops_3Mask := Ops_3Mask[rcvLocal, Node_next:=Ops_3Mask[rcvLocal, Node_next] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_next];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Node_next:=Used_10Mask[rcvLocal, Node_next] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Heap[rcvLocal, Node_next] == Used_10Heap[rcvLocal, Node_next];
                Mask := Mask[rcvLocal, Node_next:=Mask[rcvLocal, Node_next] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][Heap[this, Iterator_current], Node_next:=true]];
              }
            }
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@232.5--232.30) [136716]"}
            b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, Node_next] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_38 := b_23 && b_32;
            b_38 := b_38 && state(Result_25Heap, Result_25Mask);
            b_38 := b_38 && sumMask(Result_25Mask, Ops_3Mask, Used_10Mask);
            b_38 := (b_38 && IdenticalOnKnownLocations(Ops_3Heap, Result_25Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_25Heap, Used_10Mask);
            b_38 := b_38 && state(Result_25Heap, Result_25Mask);
          b_23 := b_23 && b_38;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        
        // -- Transfer of acc(this.Iterator_current.Node_prev, write)
          
          // -- checking if access predicate defined in used state
            if (b_23 && b_32) {
              if (b_23) {
                
                // -- Check definedness of acc(this.Iterator_current.Node_prev, write)
                  assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136717]"}
                    HasDirectPerm(Result_25Mask, this, Iterator_current);
              }
            }
          rcvLocal := Result_25Heap[this, Iterator_current];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_10Mask[rcvLocal, Node_prev] + neededTransfer;
          assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(this.Iterator_current.Node_prev, write) might be negative. (ListIterator.vpr@232.5--232.30) [136718]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Node_prev];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Node_prev:=Used_10Mask[rcvLocal, Node_prev] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Ops_3Heap[rcvLocal, Node_prev] == Used_10Heap[rcvLocal, Node_prev];
                Ops_3Mask := Ops_3Mask[rcvLocal, Node_prev:=Ops_3Mask[rcvLocal, Node_prev] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Node_prev];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_10Mask := Used_10Mask[rcvLocal, Node_prev:=Used_10Mask[rcvLocal, Node_prev] + takeTransfer];
                b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                b_32 := b_32 && Heap[rcvLocal, Node_prev] == Used_10Heap[rcvLocal, Node_prev];
                Mask := Mask[rcvLocal, Node_prev:=Mask[rcvLocal, Node_prev] - takeTransfer];
                Heap := Heap[null, wand#sm(this, this):=Heap[null, wand#sm(this, this)][Heap[this, Iterator_current], Node_prev:=true]];
              }
            }
          assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@232.5--232.30) [136719]"}
            b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[rcvLocal, Node_prev] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_39 := b_23 && b_32;
            b_39 := b_39 && state(Result_26Heap, Result_26Mask);
            b_39 := b_39 && sumMask(Result_26Mask, Ops_3Mask, Used_10Mask);
            b_39 := (b_39 && IdenticalOnKnownLocations(Ops_3Heap, Result_26Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_26Heap, Used_10Mask);
            b_39 := b_39 && state(Result_26Heap, Result_26Mask);
          b_23 := b_23 && b_39;
        b_23 := b_23 && b_32;
        b_23 := b_23 && Used_10Heap == Ops_3Heap;
        if (b_23 ==> Result_26Heap[Result_26Heap[this, Iterator_current], Node_prev] == null) {
          if (b_23 && b_32) {
            if (b_23) {
              
              // -- Check definedness of this.Iterator_current == this.Iterator_iteratee.List_sentinel
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136720]"}
                  HasDirectPerm(Result_26Mask, this, Iterator_current);
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@232.5--232.30) [136721]"}
                  HasDirectPerm(Result_26Mask, this, Iterator_iteratee);
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@232.5--232.30) [136722]"}
                  HasDirectPerm(Result_26Mask, Result_26Heap[this, Iterator_iteratee], List_sentinel);
            }
          }
          assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@232.5--232.30) [136723]"}
            b_23 && b_32 ==> Result_26Heap[this, Iterator_current] == Result_26Heap[Result_26Heap[this, Iterator_iteratee], List_sentinel];
          b_23 := b_23 && b_32;
          b_23 := b_23 && Used_10Heap == Ops_3Heap;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_40 := b_23 && b_32;
          b_40 := b_40 && state(Result_27Heap, Result_27Mask);
          b_40 := b_40 && sumMask(Result_27Mask, Ops_3Mask, Used_10Mask);
          b_40 := (b_40 && IdenticalOnKnownLocations(Ops_3Heap, Result_27Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_27Heap, Used_10Mask);
          b_40 := b_40 && state(Result_27Heap, Result_27Mask);
        b_23 := b_23 && b_40;
        if (b_23 ==> Result_27Heap[Result_27Heap[this, Iterator_current], Node_prev] != null) {
          
          // -- Transfer of acc(Node_reverse(this.Iterator_current.Node_prev), write)
            
            // -- checking if access predicate defined in used state
              if (b_23 && b_32) {
                if (b_23) {
                  
                  // -- Check definedness of acc(Node_reverse(this.Iterator_current.Node_prev), write)
                    assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136724]"}
                      HasDirectPerm(Result_27Mask, this, Iterator_current);
                    assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@232.5--232.30) [136725]"}
                      HasDirectPerm(Result_27Mask, Result_27Heap[this, Iterator_current], Node_prev);
                }
              }
            arg_8 := Result_27Heap[Result_27Heap[this, Iterator_current], Node_prev];
            neededTransfer := FullPerm;
            initNeededTransfer := Used_10Mask[null, Node_reverse(arg_8)] + neededTransfer;
            assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(Node_reverse(this.Iterator_current.Node_prev), write) might be negative. (ListIterator.vpr@232.5--232.30) [136726]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, Node_reverse(arg_8)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_10Mask := Used_10Mask[null, Node_reverse(arg_8):=Used_10Mask[null, Node_reverse(arg_8)] + takeTransfer];
                  b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                  TempMask := ZeroMask[null, Node_reverse(arg_8):=FullPerm];
                  b_32 := b_32 && IdenticalOnKnownLocations(Ops_3Heap, Used_10Heap, TempMask);
                  Ops_3Mask := Ops_3Mask[null, Node_reverse(arg_8):=Ops_3Mask[null, Node_reverse(arg_8)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Node_reverse(arg_8)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_10Mask := Used_10Mask[null, Node_reverse(arg_8):=Used_10Mask[null, Node_reverse(arg_8)] + takeTransfer];
                  b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                  TempMask := ZeroMask[null, Node_reverse(arg_8):=FullPerm];
                  b_32 := b_32 && IdenticalOnKnownLocations(Heap, Used_10Heap, TempMask);
                  Mask := Mask[null, Node_reverse(arg_8):=Mask[null, Node_reverse(arg_8)] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
                    { newPMask[o_51, f_46] }
                    Heap[null, wand#sm(this, this)][o_51, f_46] || Heap[null, Node_reverse#sm(Heap[Heap[this, Iterator_current], Node_prev])][o_51, f_46] ==> newPMask[o_51, f_46]
                  );
                  Heap := Heap[null, wand#sm(this, this):=newPMask];
                }
              }
            assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@232.5--232.30) [136727]"}
              b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[null, Node_reverse(arg_8)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_41 := b_23 && b_32;
              b_41 := b_41 && state(Result_28Heap, Result_28Mask);
              b_41 := b_41 && sumMask(Result_28Mask, Ops_3Mask, Used_10Mask);
              b_41 := (b_41 && IdenticalOnKnownLocations(Ops_3Heap, Result_28Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_28Heap, Used_10Mask);
              b_41 := b_41 && state(Result_28Heap, Result_28Mask);
            b_23 := b_23 && b_41;
          b_23 := b_23 && b_32;
          b_23 := b_23 && Used_10Heap == Ops_3Heap;
          if (b_23 && b_32) {
            if (b_23) {
              
              // -- Check definedness of Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136728]"}
                  HasDirectPerm(Result_28Mask, this, Iterator_current);
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@232.5--232.30) [136729]"}
                  HasDirectPerm(Result_28Mask, Result_28Heap[this, Iterator_current], Node_prev);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := Result_28Heap;
                  ExhaleWellDef1Mask := Result_28Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Node_first might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@91.6--91.49) [136730]"}
                    NoPerm < perm ==> NoPerm < Result_28Mask[null, Node_reverse(Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev])];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(Iterator_ready(this), Result_28Heap[null, Iterator_ready(this)], Node_reverse(Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev]), Result_28Heap[null, Node_reverse(Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev])]);
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Result_28Heap, ExhaleHeap, Result_28Mask);
                  Result_28Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@232.5--232.30) [136731]"}
                  HasDirectPerm(Result_28Mask, this, Iterator_iteratee);
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@232.5--232.30) [136732]"}
                  HasDirectPerm(Result_28Mask, Result_28Heap[this, Iterator_iteratee], List_sentinel);
            }
          }
          assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@232.5--232.30) [136733]"}
            b_23 && b_32 ==> Node_first(Result_28Heap, Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev]) == Result_28Heap[Result_28Heap[this, Iterator_iteratee], List_sentinel];
          b_23 := b_23 && b_32;
          b_23 := b_23 && Used_10Heap == Ops_3Heap;
          if (b_23 && b_32) {
            if (b_23) {
              
              // -- Check definedness of Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136734]"}
                  HasDirectPerm(Result_28Mask, this, Iterator_current);
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@232.5--232.30) [136735]"}
                  HasDirectPerm(Result_28Mask, Result_28Heap[this, Iterator_current], Node_prev);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := Result_28Heap;
                  ExhaleWellDef1Mask := Result_28Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@92.6--92.52) [136736]"}
                    NoPerm < perm ==> NoPerm < Result_28Mask[null, Node_reverse(Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev])];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(Iterator_ready(this), Result_28Heap[null, Iterator_ready(this)], Node_reverse(Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev]), Result_28Heap[null, Node_reverse(Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev])]);
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Result_28Heap, ExhaleHeap, Result_28Mask);
                  Result_28Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136737]"}
                  HasDirectPerm(Result_28Mask, this, Iterator_current);
            }
          }
          assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current might not hold. (ListIterator.vpr@232.5--232.30) [136738]"}
            b_23 && b_32 ==> Node_rev_next(Result_28Heap, Result_28Heap[Result_28Heap[this, Iterator_current], Node_prev]) == Result_28Heap[this, Iterator_current];
          b_23 := b_23 && b_32;
          b_23 := b_23 && Used_10Heap == Ops_3Heap;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_42 := b_23 && b_32;
          b_42 := b_42 && state(Result_29Heap, Result_29Mask);
          b_42 := b_42 && sumMask(Result_29Mask, Ops_3Mask, Used_10Mask);
          b_42 := (b_42 && IdenticalOnKnownLocations(Ops_3Heap, Result_29Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_29Heap, Used_10Mask);
          b_42 := b_42 && state(Result_29Heap, Result_29Mask);
        b_23 := b_23 && b_42;
        if (b_23 ==> Result_29Heap[Result_29Heap[this, Iterator_current], Node_next] != null) {
          
          // -- Transfer of acc(Node_state(this.Iterator_current.Node_next), write)
            
            // -- checking if access predicate defined in used state
              if (b_23 && b_32) {
                if (b_23) {
                  
                  // -- Check definedness of acc(Node_state(this.Iterator_current.Node_next), write)
                    assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@232.5--232.30) [136739]"}
                      HasDirectPerm(Result_29Mask, this, Iterator_current);
                    assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@232.5--232.30) [136740]"}
                      HasDirectPerm(Result_29Mask, Result_29Heap[this, Iterator_current], Node_next);
                }
              }
            arg_9 := Result_29Heap[Result_29Heap[this, Iterator_current], Node_next];
            neededTransfer := FullPerm;
            initNeededTransfer := Used_10Mask[null, Node_state(arg_9)] + neededTransfer;
            assert {:msg "  Folding Iterator_ready(this) might fail. Fraction acc(Node_state(this.Iterator_current.Node_next), write) might be negative. (ListIterator.vpr@232.5--232.30) [136741]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_3Mask[null, Node_state(arg_9)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_10Mask := Used_10Mask[null, Node_state(arg_9):=Used_10Mask[null, Node_state(arg_9)] + takeTransfer];
                  b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                  TempMask := ZeroMask[null, Node_state(arg_9):=FullPerm];
                  b_32 := b_32 && IdenticalOnKnownLocations(Ops_3Heap, Used_10Heap, TempMask);
                  Ops_3Mask := Ops_3Mask[null, Node_state(arg_9):=Ops_3Mask[null, Node_state(arg_9)] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_23 && b_32) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[null, Node_state(arg_9)];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_10Mask := Used_10Mask[null, Node_state(arg_9):=Used_10Mask[null, Node_state(arg_9)] + takeTransfer];
                  b_32 := b_32 && state(Used_10Heap, Used_10Mask);
                  TempMask := ZeroMask[null, Node_state(arg_9):=FullPerm];
                  b_32 := b_32 && IdenticalOnKnownLocations(Heap, Used_10Heap, TempMask);
                  Mask := Mask[null, Node_state(arg_9):=Mask[null, Node_state(arg_9)] - takeTransfer];
                  havoc newPMask;
                  assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
                    { newPMask[o_29, f_81] }
                    Heap[null, wand#sm(this, this)][o_29, f_81] || Heap[null, Node_state#sm(Heap[Heap[this, Iterator_current], Node_next])][o_29, f_81] ==> newPMask[o_29, f_81]
                  );
                  Heap := Heap[null, wand#sm(this, this):=newPMask];
                }
              }
            assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_state(this.Iterator_current.Node_next) (ListIterator.vpr@232.5--232.30) [136742]"}
              b_23 && b_32 ==> neededTransfer == 0.000000000 && Used_10Mask[null, Node_state(arg_9)] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_43 := b_23 && b_32;
              b_43 := b_43 && state(Result_30Heap, Result_30Mask);
              b_43 := b_43 && sumMask(Result_30Mask, Ops_3Mask, Used_10Mask);
              b_43 := (b_43 && IdenticalOnKnownLocations(Ops_3Heap, Result_30Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_30Heap, Used_10Mask);
              b_43 := b_43 && state(Result_30Heap, Result_30Mask);
            b_23 := b_23 && b_43;
          b_23 := b_23 && b_32;
          b_23 := b_23 && Used_10Heap == Ops_3Heap;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_44 := b_23 && b_32;
          b_44 := b_44 && state(Result_31Heap, Result_31Mask);
          b_44 := b_44 && sumMask(Result_31Mask, Ops_3Mask, Used_10Mask);
          b_44 := (b_44 && IdenticalOnKnownLocations(Ops_3Heap, Result_31Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_10Heap, Result_31Heap, Used_10Mask);
          b_44 := b_44 && state(Result_31Heap, Result_31Mask);
        b_23 := b_23 && b_44;
        perm := FullPerm;
        b_23 := b_23;
        Ops_3Mask := Ops_3Mask[null, Iterator_ready(this):=Ops_3Mask[null, Iterator_ready(this)] + perm];
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
        assume Iterator_ready#trigger(Ops_3Heap, Iterator_ready(this));
        assume Ops_3Heap[null, Iterator_ready(this)] == CombineFrames(FrameFragment(Ops_3Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Ops_3Heap[this, Iterator_current]), CombineFrames(FrameFragment(Ops_3Heap[this, Iterator_last]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev] != null then Ops_3Heap[null, Node_reverse(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next] != null then Ops_3Heap[null, Node_state(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
        if (!HasDirectPerm(Ops_3Mask, null, Iterator_ready(this))) {
          Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, Iterator_ready(this):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=Ops_3Heap[null, Iterator_ready#sm(this)][this, Iterator_iteratee:=true]];
        Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=Ops_3Heap[null, Iterator_ready#sm(this)][Ops_3Heap[this, Iterator_iteratee], List_sentinel:=true]];
        Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=Ops_3Heap[null, Iterator_ready#sm(this)][this, Iterator_current:=true]];
        Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=Ops_3Heap[null, Iterator_ready#sm(this)][this, Iterator_last:=true]];
        Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=Ops_3Heap[null, Iterator_ready#sm(this)][Ops_3Heap[this, Iterator_current], Node_val:=true]];
        Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=Ops_3Heap[null, Iterator_ready#sm(this)][Ops_3Heap[this, Iterator_current], Node_next:=true]];
        Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=Ops_3Heap[null, Iterator_ready#sm(this)][Ops_3Heap[this, Iterator_current], Node_prev:=true]];
        if (Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev] != null) {
          havoc newPMask;
          assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
            { newPMask[o_77, f_52] }
            Ops_3Heap[null, Iterator_ready#sm(this)][o_77, f_52] || Ops_3Heap[null, Node_reverse#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_prev])][o_77, f_52] ==> newPMask[o_77, f_52]
          );
          Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=newPMask];
        }
        if (Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
            { newPMask[o_78, f_49] }
            Ops_3Heap[null, Iterator_ready#sm(this)][o_78, f_49] || Ops_3Heap[null, Node_state#sm(Ops_3Heap[Ops_3Heap[this, Iterator_current], Node_next])][o_78, f_49] ==> newPMask[o_78, f_49]
          );
          Ops_3Heap := Ops_3Heap[null, Iterator_ready#sm(this):=newPMask];
        }
        assume state(Ops_3Heap, Ops_3Mask);
        b_23 := b_23 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(Iterator_ready(this), write)
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_45 := b_45 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(Iterator_ready(this), write)
      arg_10 := this;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_11Mask[null, Iterator_ready(arg_10)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Iterator_ready(this), write) might be negative. (ListIterator.vpr@226.3--233.4) [136744]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_23 && b_23) && b_45) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, Iterator_ready(arg_10)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, Iterator_ready(arg_10):=Used_11Mask[null, Iterator_ready(arg_10)] + takeTransfer];
            b_45 := b_45 && state(Used_11Heap, Used_11Mask);
            TempMask := ZeroMask[null, Iterator_ready(arg_10):=FullPerm];
            b_45 := b_45 && IdenticalOnKnownLocations(Ops_3Heap, Used_11Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, Iterator_ready(arg_10):=Ops_3Mask[null, Iterator_ready(arg_10)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_23 && b_23) && b_45) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Iterator_ready(arg_10)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, Iterator_ready(arg_10):=Used_11Mask[null, Iterator_ready(arg_10)] + takeTransfer];
            b_45 := b_45 && state(Used_11Heap, Used_11Mask);
            TempMask := ZeroMask[null, Iterator_ready(arg_10):=FullPerm];
            b_45 := b_45 && IdenticalOnKnownLocations(Heap, Used_11Heap, TempMask);
            Mask := Mask[null, Iterator_ready(arg_10):=Mask[null, Iterator_ready(arg_10)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_63: Ref, f_86: (Field A B) ::
              { newPMask[o_63, f_86] }
              Heap[null, wand#sm(this, this)][o_63, f_86] || Heap[null, Iterator_ready#sm(this)][o_63, f_86] ==> newPMask[o_63, f_86]
            );
            Heap := Heap[null, wand#sm(this, this):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Iterator_ready(this) (ListIterator.vpr@226.3--233.4) [136745]"}
        (b_23 && b_23) && b_45 ==> neededTransfer == 0.000000000 && Used_11Mask[null, Iterator_ready(arg_10)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_46 := b_23 && b_45;
        b_46 := b_46 && state(Result_32Heap, Result_32Mask);
        b_46 := b_46 && sumMask(Result_32Mask, Ops_3Mask, Used_11Mask);
        b_46 := (b_46 && IdenticalOnKnownLocations(Ops_3Heap, Result_32Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_32Heap, Used_11Mask);
        b_46 := b_46 && state(Result_32Heap, Result_32Mask);
      b_23 := b_23 && b_46;
    Mask := Mask[null, wand(this, this):=Mask[null, wand(this, this)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Iterator_next might not hold. There might be insufficient permission to access Iterator_readyForRemove(this) (ListIterator.vpr@214.9--214.38) [136746]"}
        perm <= Mask[null, Iterator_readyForRemove(this)];
    }
    Mask := Mask[null, Iterator_readyForRemove(this):=Mask[null, Iterator_readyForRemove(this)] - perm];
    // permLe
    assert {:msg "  Postcondition of Iterator_next might not hold. Magic wand instance not found. (ListIterator.vpr@217.9--217.63) [136747]"}
      FullPerm <= Mask[null, wand(this, this)];
    Mask := Mask[null, wand(this, this):=Mask[null, wand(this, this)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Iterator_remove
// ==================================================

procedure Iterator_remove(this: Ref) returns ()
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
    Mask := Mask[null, Iterator_readyForRemove(this):=Mask[null, Iterator_readyForRemove(this)] + perm];
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
    PostMask := PostMask[null, Iterator_ready(this):=PostMask[null, Iterator_ready(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Iterator_readyForRemove(this), write) -- ListIterator.vpr@240.3--240.39
    assume Iterator_readyForRemove#trigger(Heap, Iterator_readyForRemove(this));
    assume Heap[null, Iterator_readyForRemove(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_last], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_last], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_last], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_last], Node_prev] == null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_last], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])] else EmptyFrame)))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Iterator_readyForRemove(this) might fail. There might be insufficient permission to access Iterator_readyForRemove(this) (ListIterator.vpr@240.3--240.39) [136750]"}
        perm <= Mask[null, Iterator_readyForRemove(this)];
    }
    Mask := Mask[null, Iterator_readyForRemove(this):=Mask[null, Iterator_readyForRemove(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Iterator_readyForRemove(this))) {
        havoc newVersion;
        Heap := Heap[null, Iterator_readyForRemove(this):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding Iterator_readyForRemove(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@240.3--240.39) [136751]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] + perm];
    assume state(Heap, Mask);
    assume Heap[this, Iterator_iteratee] != null;
    perm := FullPerm;
    assume Heap[this, Iterator_iteratee] != null;
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] + perm];
    assume state(Heap, Mask);
    assume Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] + perm];
    assume state(Heap, Mask);
    assume Heap[this, Iterator_current] != null;
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_current] != null;
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      assume Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Iterator_readyForRemove(this), Heap[null, Iterator_readyForRemove(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
      assume state(Heap, Mask);
    }
    assume Heap[Heap[this, Iterator_current], Node_prev] == Heap[this, Iterator_last];
    assume Heap[this, Iterator_last] != null;
    perm := FullPerm;
    assume Heap[this, Iterator_last] != null;
    Mask := Mask[Heap[this, Iterator_last], Node_val:=Mask[Heap[this, Iterator_last], Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_last] != null;
    Mask := Mask[Heap[this, Iterator_last], Node_next:=Mask[Heap[this, Iterator_last], Node_next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, Iterator_last] != null;
    Mask := Mask[Heap[this, Iterator_last], Node_prev:=Mask[Heap[this, Iterator_last], Node_prev] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, Iterator_last], Node_prev] == null) {
      assume Heap[this, Iterator_last] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_last], Node_prev] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Iterator_readyForRemove(this), Heap[null, Iterator_readyForRemove(this)], Node_reverse(Heap[Heap[this, Iterator_last], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_last], Node_prev])]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Node_first(Heap, Heap[Heap[this, Iterator_last], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assume state(Heap, Mask);
      assume Node_rev_next(Heap, Heap[Heap[this, Iterator_last], Node_prev]) == Heap[this, Iterator_last];
    }
    assume Heap[Heap[this, Iterator_last], Node_next] == Heap[this, Iterator_current];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_last.Node_next := this.Iterator_current.Node_next -- ListIterator.vpr@241.3--241.66
    
    // -- Check definedness of this.Iterator_last
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@241.3--241.66) [136763]"}
        HasDirectPerm(Mask, this, Iterator_last);
    
    // -- Check definedness of this.Iterator_current.Node_next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@241.3--241.66) [136764]"}
        HasDirectPerm(Mask, this, Iterator_current);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@241.3--241.66) [136765]"}
        HasDirectPerm(Mask, Heap[this, Iterator_current], Node_next);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_last.Node_next (ListIterator.vpr@241.3--241.66) [136766]"}
      FullPerm == Mask[Heap[this, Iterator_last], Node_next];
    Heap := Heap[Heap[this, Iterator_last], Node_next:=Heap[Heap[this, Iterator_current], Node_next]];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Iterator_current := this.Iterator_last -- ListIterator.vpr@242.3--242.46
    
    // -- Check definedness of this.Iterator_last
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@242.3--242.46) [136767]"}
        HasDirectPerm(Mask, this, Iterator_last);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@242.3--242.46) [136768]"}
      FullPerm == Mask[this, Iterator_current];
    Heap := Heap[this, Iterator_current:=Heap[this, Iterator_last]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Iterator_ready(this), write) -- ListIterator.vpr@243.3--243.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Folding Iterator_ready(this) might fail. Fraction 1 / 2 might be negative. (ListIterator.vpr@243.3--243.28) [136770]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee (ListIterator.vpr@243.3--243.28) [136771]"}
        perm <= Mask[this, Iterator_iteratee];
    }
    Mask := Mask[this, Iterator_iteratee:=Mask[this, Iterator_iteratee] - perm];
    assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee != null might not hold. (ListIterator.vpr@243.3--243.28) [136772]"}
      Heap[this, Iterator_iteratee] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_iteratee.List_sentinel (ListIterator.vpr@243.3--243.28) [136774]"}
        perm <= Mask[Heap[this, Iterator_iteratee], List_sentinel];
    }
    Mask := Mask[Heap[this, Iterator_iteratee], List_sentinel:=Mask[Heap[this, Iterator_iteratee], List_sentinel] - perm];
    assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_iteratee.List_sentinel != null might not hold. (ListIterator.vpr@243.3--243.28) [136775]"}
      Heap[Heap[this, Iterator_iteratee], List_sentinel] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current (ListIterator.vpr@243.3--243.28) [136777]"}
        perm <= Mask[this, Iterator_current];
    }
    Mask := Mask[this, Iterator_current:=Mask[this, Iterator_current] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_last (ListIterator.vpr@243.3--243.28) [136779]"}
        perm <= Mask[this, Iterator_last];
    }
    Mask := Mask[this, Iterator_last:=Mask[this, Iterator_last] - perm];
    assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current != null might not hold. (ListIterator.vpr@243.3--243.28) [136780]"}
      Heap[this, Iterator_current] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_val (ListIterator.vpr@243.3--243.28) [136782]"}
        perm <= Mask[Heap[this, Iterator_current], Node_val];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_val:=Mask[Heap[this, Iterator_current], Node_val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_next (ListIterator.vpr@243.3--243.28) [136784]"}
        perm <= Mask[Heap[this, Iterator_current], Node_next];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_next:=Mask[Heap[this, Iterator_current], Node_next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access this.Iterator_current.Node_prev (ListIterator.vpr@243.3--243.28) [136786]"}
        perm <= Mask[Heap[this, Iterator_current], Node_prev];
    }
    Mask := Mask[Heap[this, Iterator_current], Node_prev:=Mask[Heap[this, Iterator_current], Node_prev] - perm];
    if (Heap[Heap[this, Iterator_current], Node_prev] == null) {
      assert {:msg "  Folding Iterator_ready(this) might fail. Assertion this.Iterator_current == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@243.3--243.28) [136787]"}
        Heap[this, Iterator_current] == Heap[Heap[this, Iterator_iteratee], List_sentinel];
    }
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_reverse(this.Iterator_current.Node_prev) (ListIterator.vpr@243.3--243.28) [136789]"}
          perm <= Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])];
      }
      Mask := Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]):=Mask[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_reverse(Heap[Heap[this, Iterator_current], Node_prev]), Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])]);
      assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_first(this.Iterator_current.Node_prev) == this.Iterator_iteratee.List_sentinel might not hold. (ListIterator.vpr@243.3--243.28) [136790]"}
        Node_first(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[Heap[this, Iterator_iteratee], List_sentinel];
      assert {:msg "  Folding Iterator_ready(this) might fail. Assertion Node_rev_next(this.Iterator_current.Node_prev) == this.Iterator_current might not hold. (ListIterator.vpr@243.3--243.28) [136791]"}
        Node_rev_next(Heap, Heap[Heap[this, Iterator_current], Node_prev]) == Heap[this, Iterator_current];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Iterator_ready(this) might fail. There might be insufficient permission to access Node_state(this.Iterator_current.Node_next) (ListIterator.vpr@243.3--243.28) [136793]"}
          perm <= Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])];
      }
      Mask := Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next]):=Mask[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Iterator_ready(this), Heap[null, Iterator_ready(this)], Node_state(Heap[Heap[this, Iterator_current], Node_next]), Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Iterator_ready#trigger(Heap, Iterator_ready(this));
    assume Heap[null, Iterator_ready(this)] == CombineFrames(FrameFragment(Heap[this, Iterator_iteratee]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_iteratee], List_sentinel]), CombineFrames(FrameFragment(Heap[this, Iterator_current]), CombineFrames(FrameFragment(Heap[this, Iterator_last]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_next]), CombineFrames(FrameFragment(Heap[Heap[this, Iterator_current], Node_prev]), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] == null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, Iterator_current], Node_prev] != null then Heap[null, Node_reverse(Heap[Heap[this, Iterator_current], Node_prev])] else EmptyFrame)), FrameFragment((if Heap[Heap[this, Iterator_current], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, Iterator_current], Node_next])] else EmptyFrame)))))))))));
    if (!HasDirectPerm(Mask, null, Iterator_ready(this))) {
      Heap := Heap[null, Iterator_ready#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Iterator_ready(this):=freshVersion];
    }
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_iteratee:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_iteratee], List_sentinel:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_current:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][this, Iterator_last:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_val:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_next:=true]];
    Heap := Heap[null, Iterator_ready#sm(this):=Heap[null, Iterator_ready#sm(this)][Heap[this, Iterator_current], Node_prev:=true]];
    if (Heap[Heap[this, Iterator_current], Node_prev] != null) {
      havoc newPMask;
      assume (forall <A, B> o_79: Ref, f_87: (Field A B) ::
        { newPMask[o_79, f_87] }
        Heap[null, Iterator_ready#sm(this)][o_79, f_87] || Heap[null, Node_reverse#sm(Heap[Heap[this, Iterator_current], Node_prev])][o_79, f_87] ==> newPMask[o_79, f_87]
      );
      Heap := Heap[null, Iterator_ready#sm(this):=newPMask];
    }
    if (Heap[Heap[this, Iterator_current], Node_next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
        { newPMask[o_80, f_88] }
        Heap[null, Iterator_ready#sm(this)][o_80, f_88] || Heap[null, Node_state#sm(Heap[Heap[this, Iterator_current], Node_next])][o_80, f_88] ==> newPMask[o_80, f_88]
      );
      Heap := Heap[null, Iterator_ready#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Iterator_remove might not hold. There might be insufficient permission to access Iterator_ready(this) (ListIterator.vpr@239.9--239.29) [136795]"}
        perm <= Mask[null, Iterator_ready(this)];
    }
    Mask := Mask[null, Iterator_ready(this):=Mask[null, Iterator_ready(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List_new
// ==================================================

procedure List_new() returns (this: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var sent: Ref;
  var freshObj: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
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
    PostMask := PostMask[null, List_state(this):=PostMask[null, List_state(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[sent, $allocated];
  
  // -- Translating statement: this := new(List_sentinel) -- ListIterator.vpr@258.3--258.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    this := freshObj;
    Mask := Mask[this, List_sentinel:=Mask[this, List_sentinel] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: sent := Node_new(0, null) -- ListIterator.vpr@260.3--260.27
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      if (null != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Node_new might not hold. There might be insufficient permission to access Node_state(null) (ListIterator.vpr@260.3--260.27) [136796]"}
            perm <= Mask[null, Node_state(null)];
        }
        Mask := Mask[null, Node_state(null):=Mask[null, Node_state(null)] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sent;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Node_state(sent):=Mask[null, Node_state(sent)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Node_get_next(Heap, sent) == null;
      assume sent != null;
      assume state(Heap, Mask);
    assume Heap[sent, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.List_sentinel := sent -- ListIterator.vpr@261.3--261.29
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@261.3--261.29) [136797]"}
      FullPerm == Mask[this, List_sentinel];
    Heap := Heap[this, List_sentinel:=sent];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List_state(this), write) -- ListIterator.vpr@262.3--262.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List_state(this) might fail. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@262.3--262.24) [136800]"}
        perm <= Mask[this, List_sentinel];
    }
    Mask := Mask[this, List_sentinel:=Mask[this, List_sentinel] - perm];
    assert {:msg "  Folding List_state(this) might fail. Assertion this.List_sentinel != null might not hold. (ListIterator.vpr@262.3--262.24) [136801]"}
      Heap[this, List_sentinel] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List_state(this) might fail. There might be insufficient permission to access Node_state(this.List_sentinel) (ListIterator.vpr@262.3--262.24) [136803]"}
        perm <= Mask[null, Node_state(Heap[this, List_sentinel])];
    }
    Mask := Mask[null, Node_state(Heap[this, List_sentinel]):=Mask[null, Node_state(Heap[this, List_sentinel])] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(List_state(this), Heap[null, List_state(this)], Node_state(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])]);
    perm := FullPerm;
    Mask := Mask[null, List_state(this):=Mask[null, List_state(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List_state#trigger(Heap, List_state(this));
    assume Heap[null, List_state(this)] == CombineFrames(FrameFragment(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])]);
    if (!HasDirectPerm(Mask, null, List_state(this))) {
      Heap := Heap[null, List_state#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List_state(this):=freshVersion];
    }
    Heap := Heap[null, List_state#sm(this):=Heap[null, List_state#sm(this)][this, List_sentinel:=true]];
    havoc newPMask;
    assume (forall <A, B> o_81: Ref, f_57: (Field A B) ::
      { newPMask[o_81, f_57] }
      Heap[null, List_state#sm(this)][o_81, f_57] || Heap[null, Node_state#sm(Heap[this, List_sentinel])][o_81, f_57] ==> newPMask[o_81, f_57]
    );
    Heap := Heap[null, List_state#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List_new might not hold. There might be insufficient permission to access List_state(this) (ListIterator.vpr@257.9--257.25) [136805]"}
        perm <= Mask[null, List_state(this)];
    }
    Mask := Mask[null, List_state(this):=Mask[null, List_state(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method List_put
// ==================================================

procedure List_put(this: Ref, v_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var sentNode_next: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_n: Ref;
  var ExhaleHeap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, List_state(this):=Mask[null, List_state(this)] + perm];
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
    PostMask := PostMask[null, List_state(this):=PostMask[null, List_state(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[sentNode_next, $allocated];
  
  // -- Translating statement: unfold acc(List_state(this), write) -- ListIterator.vpr@269.3--269.26
    assume List_state#trigger(Heap, List_state(this));
    assume Heap[null, List_state(this)] == CombineFrames(FrameFragment(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List_state(this) might fail. There might be insufficient permission to access List_state(this) (ListIterator.vpr@269.3--269.26) [136808]"}
        perm <= Mask[null, List_state(this)];
    }
    Mask := Mask[null, List_state(this):=Mask[null, List_state(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List_state(this))) {
        havoc newVersion;
        Heap := Heap[null, List_state(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, List_sentinel:=Mask[this, List_sentinel] + perm];
    assume state(Heap, Mask);
    assume Heap[this, List_sentinel] != null;
    perm := FullPerm;
    Mask := Mask[null, Node_state(Heap[this, List_sentinel]):=Mask[null, Node_state(Heap[this, List_sentinel])] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(List_state(this), Heap[null, List_state(this)], Node_state(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Node_state(this.List_sentinel), write) -- ListIterator.vpr@270.3--270.40
    
    // -- Check definedness of acc(Node_state(this.List_sentinel), write)
      assert {:msg "  Unfolding Node_state(this.List_sentinel) might fail. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@270.3--270.40) [136811]"}
        HasDirectPerm(Mask, this, List_sentinel);
    assume Node_state#trigger(Heap, Node_state(Heap[this, List_sentinel]));
    assume Heap[null, Node_state(Heap[this, List_sentinel])] == CombineFrames(FrameFragment(Heap[Heap[this, List_sentinel], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, List_sentinel], Node_prev]), CombineFrames(FrameFragment(Heap[Heap[this, List_sentinel], Node_next]), FrameFragment((if Heap[Heap[this, List_sentinel], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, List_sentinel], Node_next])] else EmptyFrame)))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Node_state(this.List_sentinel) might fail. There might be insufficient permission to access Node_state(this.List_sentinel) (ListIterator.vpr@270.3--270.40) [136814]"}
        perm <= Mask[null, Node_state(Heap[this, List_sentinel])];
    }
    Mask := Mask[null, Node_state(Heap[this, List_sentinel]):=Mask[null, Node_state(Heap[this, List_sentinel])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Node_state(Heap[this, List_sentinel]))) {
        havoc newVersion;
        Heap := Heap[null, Node_state(Heap[this, List_sentinel]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, List_sentinel] != null;
    Mask := Mask[Heap[this, List_sentinel], Node_val:=Mask[Heap[this, List_sentinel], Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, List_sentinel] != null;
    Mask := Mask[Heap[this, List_sentinel], Node_prev:=Mask[Heap[this, List_sentinel], Node_prev] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, List_sentinel] != null;
    Mask := Mask[Heap[this, List_sentinel], Node_next:=Mask[Heap[this, List_sentinel], Node_next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, List_sentinel], Node_next] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(Heap[Heap[this, List_sentinel], Node_next]):=Mask[null, Node_state(Heap[Heap[this, List_sentinel], Node_next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Node_state(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])], Node_state(Heap[Heap[this, List_sentinel], Node_next]), Heap[null, Node_state(Heap[Heap[this, List_sentinel], Node_next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sentNode_next := Node_new(v, this.List_sentinel.Node_next) -- ListIterator.vpr@272.3--272.60
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of this.List_sentinel.Node_next
      assert {:msg "  Method call might fail. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@272.3--272.60) [136819]"}
        HasDirectPerm(Mask, this, List_sentinel);
      assert {:msg "  Method call might fail. There might be insufficient permission to access this.List_sentinel.Node_next (ListIterator.vpr@272.3--272.60) [136820]"}
        HasDirectPerm(Mask, Heap[this, List_sentinel], Node_next);
    arg_n := Heap[Heap[this, List_sentinel], Node_next];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      if (arg_n != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Node_new might not hold. There might be insufficient permission to access Node_state(this.List_sentinel.Node_next) (ListIterator.vpr@272.3--272.60) [136821]"}
            perm <= Mask[null, Node_state(arg_n)];
        }
        Mask := Mask[null, Node_state(arg_n):=Mask[null, Node_state(arg_n)] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc sentNode_next;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Node_state(sentNode_next):=Mask[null, Node_state(sentNode_next)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Node_get_next(Heap, sentNode_next) == arg_n;
      assume sentNode_next != null;
      assume state(Heap, Mask);
    assume Heap[sentNode_next, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.List_sentinel.Node_next := sentNode_next -- ListIterator.vpr@273.3--273.48
    
    // -- Check definedness of this.List_sentinel
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@273.3--273.48) [136822]"}
        HasDirectPerm(Mask, this, List_sentinel);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.List_sentinel.Node_next (ListIterator.vpr@273.3--273.48) [136823]"}
      FullPerm == Mask[Heap[this, List_sentinel], Node_next];
    Heap := Heap[Heap[this, List_sentinel], Node_next:=sentNode_next];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Node_state(this.List_sentinel), write) -- ListIterator.vpr@274.3--274.38
    
    // -- Check definedness of acc(Node_state(this.List_sentinel), write)
      assert {:msg "  Folding Node_state(this.List_sentinel) might fail. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@274.3--274.38) [136824]"}
        HasDirectPerm(Mask, this, List_sentinel);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Node_state(this.List_sentinel) might fail. There might be insufficient permission to access this.List_sentinel.Node_val (ListIterator.vpr@274.3--274.38) [136827]"}
        perm <= Mask[Heap[this, List_sentinel], Node_val];
    }
    Mask := Mask[Heap[this, List_sentinel], Node_val:=Mask[Heap[this, List_sentinel], Node_val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Node_state(this.List_sentinel) might fail. There might be insufficient permission to access this.List_sentinel.Node_prev (ListIterator.vpr@274.3--274.38) [136829]"}
        perm <= Mask[Heap[this, List_sentinel], Node_prev];
    }
    Mask := Mask[Heap[this, List_sentinel], Node_prev:=Mask[Heap[this, List_sentinel], Node_prev] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Node_state(this.List_sentinel) might fail. There might be insufficient permission to access this.List_sentinel.Node_next (ListIterator.vpr@274.3--274.38) [136831]"}
        perm <= Mask[Heap[this, List_sentinel], Node_next];
    }
    Mask := Mask[Heap[this, List_sentinel], Node_next:=Mask[Heap[this, List_sentinel], Node_next] - perm];
    if (Heap[Heap[this, List_sentinel], Node_next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Node_state(this.List_sentinel) might fail. There might be insufficient permission to access Node_state(this.List_sentinel.Node_next) (ListIterator.vpr@274.3--274.38) [136833]"}
          perm <= Mask[null, Node_state(Heap[Heap[this, List_sentinel], Node_next])];
      }
      Mask := Mask[null, Node_state(Heap[Heap[this, List_sentinel], Node_next]):=Mask[null, Node_state(Heap[Heap[this, List_sentinel], Node_next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Node_state(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])], Node_state(Heap[Heap[this, List_sentinel], Node_next]), Heap[null, Node_state(Heap[Heap[this, List_sentinel], Node_next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Node_state(Heap[this, List_sentinel]):=Mask[null, Node_state(Heap[this, List_sentinel])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Node_state#trigger(Heap, Node_state(Heap[this, List_sentinel]));
    assume Heap[null, Node_state(Heap[this, List_sentinel])] == CombineFrames(FrameFragment(Heap[Heap[this, List_sentinel], Node_val]), CombineFrames(FrameFragment(Heap[Heap[this, List_sentinel], Node_prev]), CombineFrames(FrameFragment(Heap[Heap[this, List_sentinel], Node_next]), FrameFragment((if Heap[Heap[this, List_sentinel], Node_next] != null then Heap[null, Node_state(Heap[Heap[this, List_sentinel], Node_next])] else EmptyFrame)))));
    if (!HasDirectPerm(Mask, null, Node_state(Heap[this, List_sentinel]))) {
      Heap := Heap[null, Node_state#sm(Heap[this, List_sentinel]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Node_state(Heap[this, List_sentinel]):=freshVersion];
    }
    Heap := Heap[null, Node_state#sm(Heap[this, List_sentinel]):=Heap[null, Node_state#sm(Heap[this, List_sentinel])][Heap[this, List_sentinel], Node_val:=true]];
    Heap := Heap[null, Node_state#sm(Heap[this, List_sentinel]):=Heap[null, Node_state#sm(Heap[this, List_sentinel])][Heap[this, List_sentinel], Node_prev:=true]];
    Heap := Heap[null, Node_state#sm(Heap[this, List_sentinel]):=Heap[null, Node_state#sm(Heap[this, List_sentinel])][Heap[this, List_sentinel], Node_next:=true]];
    if (Heap[Heap[this, List_sentinel], Node_next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_82: Ref, f_70: (Field A B) ::
        { newPMask[o_82, f_70] }
        Heap[null, Node_state#sm(Heap[this, List_sentinel])][o_82, f_70] || Heap[null, Node_state#sm(Heap[Heap[this, List_sentinel], Node_next])][o_82, f_70] ==> newPMask[o_82, f_70]
      );
      Heap := Heap[null, Node_state#sm(Heap[this, List_sentinel]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List_state(this), write) -- ListIterator.vpr@275.3--275.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List_state(this) might fail. There might be insufficient permission to access this.List_sentinel (ListIterator.vpr@275.3--275.24) [136837]"}
        perm <= Mask[this, List_sentinel];
    }
    Mask := Mask[this, List_sentinel:=Mask[this, List_sentinel] - perm];
    assert {:msg "  Folding List_state(this) might fail. Assertion this.List_sentinel != null might not hold. (ListIterator.vpr@275.3--275.24) [136838]"}
      Heap[this, List_sentinel] != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List_state(this) might fail. There might be insufficient permission to access Node_state(this.List_sentinel) (ListIterator.vpr@275.3--275.24) [136840]"}
        perm <= Mask[null, Node_state(Heap[this, List_sentinel])];
    }
    Mask := Mask[null, Node_state(Heap[this, List_sentinel]):=Mask[null, Node_state(Heap[this, List_sentinel])] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(List_state(this), Heap[null, List_state(this)], Node_state(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])]);
    perm := FullPerm;
    Mask := Mask[null, List_state(this):=Mask[null, List_state(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List_state#trigger(Heap, List_state(this));
    assume Heap[null, List_state(this)] == CombineFrames(FrameFragment(Heap[this, List_sentinel]), Heap[null, Node_state(Heap[this, List_sentinel])]);
    if (!HasDirectPerm(Mask, null, List_state(this))) {
      Heap := Heap[null, List_state#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List_state(this):=freshVersion];
    }
    Heap := Heap[null, List_state#sm(this):=Heap[null, List_state#sm(this)][this, List_sentinel:=true]];
    havoc newPMask;
    assume (forall <A, B> o_83: Ref, f_89: (Field A B) ::
      { newPMask[o_83, f_89] }
      Heap[null, List_state#sm(this)][o_83, f_89] || Heap[null, Node_state#sm(Heap[this, List_sentinel])][o_83, f_89] ==> newPMask[o_83, f_89]
    );
    Heap := Heap[null, List_state#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of List_put might not hold. There might be insufficient permission to access List_state(this) (ListIterator.vpr@268.9--268.25) [136842]"}
        perm <= Mask[null, List_state(this)];
    }
    Mask := Mask[null, List_state(this):=Mask[null, List_state(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Node_new
// ==================================================

procedure Node_new(v_2: int, n: Ref) returns (this: Ref)
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
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[n, $allocated];
  
  // -- Checked inhaling of precondition
    if (n != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(n):=Mask[null, Node_state(n)] + perm];
      assume state(Heap, Mask);
    }
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
    PostMask := PostMask[null, Node_state(this):=PostMask[null, Node_state(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Node_get_next(this) == n
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Node_get_next might not hold. There might be insufficient permission to access Node_state(this) (ListIterator.vpr@322.29--322.48) [136843]"}
          NoPerm < perm ==> NoPerm < PostMask[null, Node_state(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Node_get_next(PostHeap, this) == n;
    assume state(PostHeap, PostMask);
    assume this != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this := new(Node_val, Node_prev, Node_next) -- ListIterator.vpr@324.3--324.46
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    this := freshObj;
    Mask := Mask[this, Node_val:=Mask[this, Node_val] + FullPerm];
    Mask := Mask[this, Node_prev:=Mask[this, Node_prev] + FullPerm];
    Mask := Mask[this, Node_next:=Mask[this, Node_next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Node_val := v -- ListIterator.vpr@325.3--325.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Node_val (ListIterator.vpr@325.3--325.21) [136844]"}
      FullPerm == Mask[this, Node_val];
    Heap := Heap[this, Node_val:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.Node_next := n -- ListIterator.vpr@326.3--326.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Node_next (ListIterator.vpr@326.3--326.22) [136845]"}
      FullPerm == Mask[this, Node_next];
    Heap := Heap[this, Node_next:=n];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Node_state(this), write) -- ListIterator.vpr@327.3--327.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_val (ListIterator.vpr@327.3--327.24) [136848]"}
        perm <= Mask[this, Node_val];
    }
    Mask := Mask[this, Node_val:=Mask[this, Node_val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@327.3--327.24) [136850]"}
        perm <= Mask[this, Node_prev];
    }
    Mask := Mask[this, Node_prev:=Mask[this, Node_prev] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_next (ListIterator.vpr@327.3--327.24) [136852]"}
        perm <= Mask[this, Node_next];
    }
    Mask := Mask[this, Node_next:=Mask[this, Node_next] - perm];
    if (Heap[this, Node_next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access Node_state(this.Node_next) (ListIterator.vpr@327.3--327.24) [136854]"}
          perm <= Mask[null, Node_state(Heap[this, Node_next])];
      }
      Mask := Mask[null, Node_state(Heap[this, Node_next]):=Mask[null, Node_state(Heap[this, Node_next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Node_state(this), Heap[null, Node_state(this)], Node_state(Heap[this, Node_next]), Heap[null, Node_state(Heap[this, Node_next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, Node_state(this):=Mask[null, Node_state(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Node_state#trigger(Heap, Node_state(this));
    assume Heap[null, Node_state(this)] == CombineFrames(FrameFragment(Heap[this, Node_val]), CombineFrames(FrameFragment(Heap[this, Node_prev]), CombineFrames(FrameFragment(Heap[this, Node_next]), FrameFragment((if Heap[this, Node_next] != null then Heap[null, Node_state(Heap[this, Node_next])] else EmptyFrame)))));
    if (!HasDirectPerm(Mask, null, Node_state(this))) {
      Heap := Heap[null, Node_state#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Node_state(this):=freshVersion];
    }
    Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_val:=true]];
    Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_prev:=true]];
    Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_next:=true]];
    if (Heap[this, Node_next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_68: Ref, f_58: (Field A B) ::
        { newPMask[o_68, f_58] }
        Heap[null, Node_state#sm(this)][o_68, f_58] || Heap[null, Node_state#sm(Heap[this, Node_next])][o_68, f_58] ==> newPMask[o_68, f_58]
      );
      Heap := Heap[null, Node_state#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Node_new might not hold. There might be insufficient permission to access Node_state(this) (ListIterator.vpr@322.9--322.53) [136856]"}
        perm <= Mask[null, Node_state(this)];
    }
    Mask := Mask[null, Node_state(this):=Mask[null, Node_state(this)] - perm];
    assert {:msg "  Postcondition of Node_new might not hold. Assertion Node_get_next(this) == n might not hold. (ListIterator.vpr@322.9--322.53) [136857]"}
      Node_get_next(Heap, this) == n;
    assert {:msg "  Postcondition of Node_new might not hold. Assertion this != null might not hold. (ListIterator.vpr@323.9--323.21) [136858]"}
      this != null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Node_swap
// ==================================================

procedure Node_swap(this: Ref, fst: Ref, nxt: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var tmp: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[fst, $allocated];
    assume Heap[nxt, $allocated];
  
  // -- Checked inhaling of precondition
    assume fst != null;
    perm := FullPerm;
    Mask := Mask[null, Node_reverse(this):=Mask[null, Node_reverse(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of Node_rev_next(this) == nxt
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Node_rev_next might not hold. There might be insufficient permission to access Node_reverse(this) (ListIterator.vpr@332.47--332.66) [136859]"}
          NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Node_rev_next(Heap, this) == nxt;
    if (nxt != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_state(nxt):=Mask[null, Node_state(nxt)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of Node_first(this) == fst
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function Node_first might not hold. There might be insufficient permission to access Node_reverse(this) (ListIterator.vpr@332.114--332.130) [136860]"}
          NoPerm < perm ==> NoPerm < Mask[null, Node_reverse(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Node_first(Heap, this) == fst;
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
    assume fst != null;
    perm := FullPerm;
    PostMask := PostMask[null, Node_state(fst):=PostMask[null, Node_state(fst)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Node_reverse(this), write) -- ListIterator.vpr@334.3--334.28
    assume Node_reverse#trigger(Heap, Node_reverse(this));
    assume Heap[null, Node_reverse(this)] == CombineFrames(FrameFragment(Heap[this, Node_val]), CombineFrames(FrameFragment(Heap[this, Node_prev]), CombineFrames(FrameFragment(Heap[this, Node_next]), FrameFragment((if Heap[this, Node_prev] != null then Heap[null, Node_reverse(Heap[this, Node_prev])] else EmptyFrame)))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Node_reverse(this) might fail. There might be insufficient permission to access Node_reverse(this) (ListIterator.vpr@334.3--334.28) [136863]"}
        perm <= Mask[null, Node_reverse(this)];
    }
    Mask := Mask[null, Node_reverse(this):=Mask[null, Node_reverse(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Node_reverse(this))) {
        havoc newVersion;
        Heap := Heap[null, Node_reverse(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_val:=Mask[this, Node_val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_prev:=Mask[this, Node_prev] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, Node_next:=Mask[this, Node_next] + perm];
    assume state(Heap, Mask);
    if (Heap[this, Node_prev] != null) {
      perm := FullPerm;
      Mask := Mask[null, Node_reverse(Heap[this, Node_prev]):=Mask[null, Node_reverse(Heap[this, Node_prev])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(Node_reverse(this), Heap[null, Node_reverse(this)], Node_reverse(Heap[this, Node_prev]), Heap[null, Node_reverse(Heap[this, Node_prev])]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume Node_rev_next(Heap, Heap[this, Node_prev]) == this;
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.Node_prev == null) -- ListIterator.vpr@335.3--346.4
    
    // -- Check definedness of this.Node_prev == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@335.7--335.29) [136868]"}
        HasDirectPerm(Mask, this, Node_prev);
    if (Heap[this, Node_prev] == null) {
      
      // -- Translating statement: fold acc(Node_state(this), write) -- ListIterator.vpr@338.5--338.26
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_val (ListIterator.vpr@338.5--338.26) [136871]"}
            perm <= Mask[this, Node_val];
        }
        Mask := Mask[this, Node_val:=Mask[this, Node_val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@338.5--338.26) [136873]"}
            perm <= Mask[this, Node_prev];
        }
        Mask := Mask[this, Node_prev:=Mask[this, Node_prev] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_next (ListIterator.vpr@338.5--338.26) [136875]"}
            perm <= Mask[this, Node_next];
        }
        Mask := Mask[this, Node_next:=Mask[this, Node_next] - perm];
        if (Heap[this, Node_next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access Node_state(this.Node_next) (ListIterator.vpr@338.5--338.26) [136877]"}
              perm <= Mask[null, Node_state(Heap[this, Node_next])];
          }
          Mask := Mask[null, Node_state(Heap[this, Node_next]):=Mask[null, Node_state(Heap[this, Node_next])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Node_state(this), Heap[null, Node_state(this)], Node_state(Heap[this, Node_next]), Heap[null, Node_state(Heap[this, Node_next])]);
        }
        perm := FullPerm;
        Mask := Mask[null, Node_state(this):=Mask[null, Node_state(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Node_state#trigger(Heap, Node_state(this));
        assume Heap[null, Node_state(this)] == CombineFrames(FrameFragment(Heap[this, Node_val]), CombineFrames(FrameFragment(Heap[this, Node_prev]), CombineFrames(FrameFragment(Heap[this, Node_next]), FrameFragment((if Heap[this, Node_next] != null then Heap[null, Node_state(Heap[this, Node_next])] else EmptyFrame)))));
        if (!HasDirectPerm(Mask, null, Node_state(this))) {
          Heap := Heap[null, Node_state#sm(this):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, Node_state(this):=freshVersion];
        }
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_val:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_prev:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_84: Ref, f_71: (Field A B) ::
            { newPMask[o_84, f_71] }
            Heap[null, Node_state#sm(this)][o_84, f_71] || Heap[null, Node_state#sm(Heap[this, Node_next])][o_84, f_71] ==> newPMask[o_84, f_71]
          );
          Heap := Heap[null, Node_state#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Assumptions about local variables
        assume Heap[tmp, $allocated];
      
      // -- Translating statement: tmp := this.Node_prev -- ListIterator.vpr@343.5--343.35
        
        // -- Check definedness of this.Node_prev
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@343.5--343.35) [136879]"}
            HasDirectPerm(Mask, this, Node_prev);
        tmp := Heap[this, Node_prev];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(Node_state(this), write) -- ListIterator.vpr@344.5--344.26
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_val (ListIterator.vpr@344.5--344.26) [136882]"}
            perm <= Mask[this, Node_val];
        }
        Mask := Mask[this, Node_val:=Mask[this, Node_val] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_prev (ListIterator.vpr@344.5--344.26) [136884]"}
            perm <= Mask[this, Node_prev];
        }
        Mask := Mask[this, Node_prev:=Mask[this, Node_prev] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access this.Node_next (ListIterator.vpr@344.5--344.26) [136886]"}
            perm <= Mask[this, Node_next];
        }
        Mask := Mask[this, Node_next:=Mask[this, Node_next] - perm];
        if (Heap[this, Node_next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Node_state(this) might fail. There might be insufficient permission to access Node_state(this.Node_next) (ListIterator.vpr@344.5--344.26) [136888]"}
              perm <= Mask[null, Node_state(Heap[this, Node_next])];
          }
          Mask := Mask[null, Node_state(Heap[this, Node_next]):=Mask[null, Node_state(Heap[this, Node_next])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Node_state(this), Heap[null, Node_state(this)], Node_state(Heap[this, Node_next]), Heap[null, Node_state(Heap[this, Node_next])]);
        }
        perm := FullPerm;
        Mask := Mask[null, Node_state(this):=Mask[null, Node_state(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume Node_state#trigger(Heap, Node_state(this));
        assume Heap[null, Node_state(this)] == CombineFrames(FrameFragment(Heap[this, Node_val]), CombineFrames(FrameFragment(Heap[this, Node_prev]), CombineFrames(FrameFragment(Heap[this, Node_next]), FrameFragment((if Heap[this, Node_next] != null then Heap[null, Node_state(Heap[this, Node_next])] else EmptyFrame)))));
        if (!HasDirectPerm(Mask, null, Node_state(this))) {
          Heap := Heap[null, Node_state#sm(this):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, Node_state(this):=freshVersion];
        }
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_val:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_prev:=true]];
        Heap := Heap[null, Node_state#sm(this):=Heap[null, Node_state#sm(this)][this, Node_next:=true]];
        if (Heap[this, Node_next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_85: Ref, f_60: (Field A B) ::
            { newPMask[o_85, f_60] }
            Heap[null, Node_state#sm(this)][o_85, f_60] || Heap[null, Node_state#sm(Heap[this, Node_next])][o_85, f_60] ==> newPMask[o_85, f_60]
          );
          Heap := Heap[null, Node_state#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: Node_swap(tmp, fst, this) -- ListIterator.vpr@345.5--345.29
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Node_swap might not hold. Assertion fst != null might not hold. (ListIterator.vpr@345.5--345.29) [136890]"}
            fst != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Node_swap might not hold. There might be insufficient permission to access Node_reverse(tmp) (ListIterator.vpr@345.5--345.29) [136891]"}
              perm <= Mask[null, Node_reverse(tmp)];
          }
          Mask := Mask[null, Node_reverse(tmp):=Mask[null, Node_reverse(tmp)] - perm];
          assert {:msg "  The precondition of method Node_swap might not hold. Assertion Node_rev_next(tmp) == this might not hold. (ListIterator.vpr@345.5--345.29) [136892]"}
            Node_rev_next(Heap, tmp) == this;
          if (this != null) {
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  The precondition of method Node_swap might not hold. There might be insufficient permission to access Node_state(this) (ListIterator.vpr@345.5--345.29) [136893]"}
                perm <= Mask[null, Node_state(this)];
            }
            Mask := Mask[null, Node_state(this):=Mask[null, Node_state(this)] - perm];
          }
          assert {:msg "  The precondition of method Node_swap might not hold. Assertion Node_first(tmp) == fst might not hold. (ListIterator.vpr@345.5--345.29) [136894]"}
            Node_first(Heap, tmp) == fst;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          assume fst != null;
          perm := FullPerm;
          Mask := Mask[null, Node_state(fst):=Mask[null, Node_state(fst)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Node_swap might not hold. Assertion fst != null might not hold. (ListIterator.vpr@333.10--333.40) [136895]"}
      fst != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Node_swap might not hold. There might be insufficient permission to access Node_state(fst) (ListIterator.vpr@333.10--333.40) [136896]"}
        perm <= Mask[null, Node_state(fst)];
    }
    Mask := Mask[null, Node_state(fst):=Mask[null, Node_state(fst)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}