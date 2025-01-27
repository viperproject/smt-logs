// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:25:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test10.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test10-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_13: Ref, f_20: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_20] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_20], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref, f_29: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, f_29] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_20, f_29) ==> Heap[o_20, f_29] == ExhaleHeap[o_20, f_29]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37), ExhaleHeap[null, PredicateMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> Heap[null, PredicateMaskField(pm_f_37)] == ExhaleHeap[null, PredicateMaskField(pm_f_37)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, PredicateMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37), ExhaleHeap[null, WandMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> Heap[null, WandMaskField(pm_f_37)] == ExhaleHeap[null, WandMaskField(pm_f_37)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, WandMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_20, $allocated] ==> ExhaleHeap[o_20, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_66: (Field A B), v: B ::
  { Heap[o_13, f_66:=v] }
  succHeap(Heap, Heap[o_13, f_66:=v])
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

const unique value_1: Field NormalField int;
axiom !IsPredicateField(value_1);
axiom !IsWandField(value_1);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, this: Ref): int;
function  get'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { get(Heap, this) }
  get(Heap, this) == get'(Heap, this) && dummyFunction(get#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { get'(Heap, this) }
  dummyFunction(get#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), get(Heap, this) } { state(Heap, Mask), get#triggerStateless(this), inv#trigger(Heap, inv(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, this) == Heap[this, value_1]
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), get'(Heap, this) }
  state(Heap, Mask) ==> get'(Heap, this) == get#frame(Heap[null, inv(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(this: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(inv(this), write) in this.value)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access inv(this) (test10.vpr@7.3--9.54) [90107]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (test10.vpr@7.3--9.54) [90108]"}
        HasDirectPerm(UnfoldingMask, this, value_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, inv#sm(this)][o_5, f_11] || Heap[null, inv#sm(Heap[this, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, inv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, value_1];
}

// ==================================================
// Translation of predicate inv
// ==================================================

type PredicateType_inv;
function  inv(this: Ref): Field PredicateType_inv FrameType;
function  inv#sm(this: Ref): Field PredicateType_inv PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(inv(this)) }
  PredicateMaskField(inv(this)) == inv#sm(this)
);
axiom (forall this: Ref ::
  { inv(this) }
  IsPredicateField(inv(this))
);
axiom (forall this: Ref ::
  { inv(this) }
  getPredWandId(inv(this)) == 0
);
function  inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { inv(this), inv(this2) }
  inv(this) == inv(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { inv#sm(this), inv#sm(this2) }
  inv#sm(this) == inv#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { inv#trigger(Heap, inv(this)) }
  inv#everUsed(inv(this))
);

procedure inv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (test10.vpr@6.3--6.139) [90109]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(inv(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (test10.vpr@6.3--6.139) [90110]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, inv(Heap[this, next]):=Mask[null, inv(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_3(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
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
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(inv(this), write) in this.next != null)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inv(this) (test10.vpr@11.14--11.99) [90111]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (test10.vpr@11.14--11.99) [90112]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, inv#sm(this)][o_6, f_12] || Heap[null, inv#sm(Heap[this, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, inv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, next] != null;
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
    PostMask := PostMask[null, inv(this):=PostMask[null, inv(this)] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(inv(this), write) in this.next != null)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inv(this) (test10.vpr@12.13--12.98) [90113]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (test10.vpr@12.13--12.98) [90114]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, inv#sm(this):=PostHeap[null, inv#sm(this)][this, value_1:=true]];
        PostHeap := PostHeap[null, inv#sm(this):=PostHeap[null, inv#sm(this)][this, next:=true]];
        if (PostHeap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            PostHeap[null, inv#sm(this)][o_40, f_52] || PostHeap[null, inv#sm(PostHeap[this, next])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          PostHeap := PostHeap[null, inv#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, next] != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert (unfolding acc(inv(this), write) in
  //     (unfolding acc(inv(this.next), write) in true)) -- test10.vpr@14.5--14.95
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(inv(this), write) in (unfolding acc(inv(this.next), write) in true))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this) (test10.vpr@14.13--14.94) [90115]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume inv#trigger(Unfolding1Heap, inv(Unfolding1Heap[this, next]));
      assume Unfolding1Heap[null, inv(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value_1]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, inv(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
      ExhaleWellDef1Heap := Unfolding1Heap;
      ExhaleWellDef1Mask := Unfolding1Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this.next) (test10.vpr@14.13--14.94) [90116]"}
          perm <= Unfolding1Mask[null, inv(Unfolding1Heap[this, next])];
      }
      Unfolding1Mask := Unfolding1Mask[null, inv(Unfolding1Heap[this, next]):=Unfolding1Mask[null, inv(Unfolding1Heap[this, next])] - perm];
      perm := FullPerm;
      assume Unfolding1Heap[this, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value_1:=Unfolding1Mask[Unfolding1Heap[this, next], value_1] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume Unfolding1Heap[this, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, inv(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, inv(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(Unfolding1Heap[this, next]), Unfolding1Heap[null, inv(Unfolding1Heap[this, next])], inv(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, inv(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (test10.vpr@14.13--14.94) [90117]"}
        HasDirectPerm(Unfolding1Mask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
        Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], next:=true]];
        if (Heap[Heap[this, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Heap[null, inv#sm(Heap[this, next])][o_46, f_60] || Heap[null, inv#sm(Heap[Heap[this, next], next])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Heap := Heap[null, inv#sm(Heap[this, next]):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            Heap[null, inv#sm(this)][o, f_61] || Heap[null, inv#sm(Heap[this, next])][o, f_61] ==> newPMask[o, f_61]
          );
          Heap := Heap[null, inv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
        Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], next:=true]];
        if (Heap[Heap[this, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            Heap[null, inv#sm(Heap[this, next])][o_14, f_3] || Heap[null, inv#sm(Heap[Heap[this, next], next])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          Heap := Heap[null, inv#sm(Heap[this, next]):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
          { newPMask[o_3, f_24] }
          Heap[null, inv#sm(this)][o_3, f_24] || Heap[null, inv#sm(Heap[this, next])][o_3, f_24] ==> newPMask[o_3, f_24]
        );
        Heap := Heap[null, inv#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
      Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], next:=true]];
      if (Heap[Heap[this, next], next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
          { newPMask[o_1, f_10] }
          Heap[null, inv#sm(Heap[this, next])][o_1, f_10] || Heap[null, inv#sm(Heap[Heap[this, next], next])][o_1, f_10] ==> newPMask[o_1, f_10]
        );
        Heap := Heap[null, inv#sm(Heap[this, next]):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access inv(this) (test10.vpr@12.13--12.98) [90119]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access inv(this) (test10.vpr@12.13--12.98) [90120]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of foo might not hold. Assertion this.next != null might not hold. (test10.vpr@12.13--12.98) [90121]"}
      Heap[this, next] != null;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
          { newPMask[o_42, f_55] }
          Heap[null, inv#sm(this)][o_42, f_55] || Heap[null, inv#sm(Heap[this, next])][o_42, f_55] ==> newPMask[o_42, f_55]
        );
        Heap := Heap[null, inv#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}