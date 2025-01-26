// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:43:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test8.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test8-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_19: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_19] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_19], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_20: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_20] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_20) ==> Heap[o_13, f_20] == ExhaleHeap[o_13, f_20]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_20: (Field A B) ::
    { ExhaleHeap[o2_4, f_20] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_20] ==> Heap[o2_4, f_20] == ExhaleHeap[o2_4, f_20]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_21: (Field A B), v: B ::
  { Heap[o_12, f_21:=v] }
  succHeap(Heap, Heap[o_12, f_21:=v])
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
  { state(Heap, Mask), get(Heap, this) } { state(Heap, Mask), get#triggerStateless(this), tinv#trigger(Heap, tinv(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, this) == Heap[this, value_1]
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), get'(Heap, this) }
  state(Heap, Mask) ==> get'(Heap, this) == get#frame(Heap[null, tinv(this)], this)
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, tinv(this):=Mask[null, tinv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(tinv(this), write) in this.value)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume tinv#trigger(UnfoldingHeap, tinv(this));
      assume UnfoldingHeap[null, tinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tinv(this) (test8.vpr@8.3--10.55) [90292]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, tinv(this)];
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
        UnfoldingMask := UnfoldingMask[null, tinv(UnfoldingHeap[this, next]):=UnfoldingMask[null, tinv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tinv(this), UnfoldingHeap[null, tinv(this)], tinv(UnfoldingHeap[this, next]), UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (test8.vpr@8.3--10.55) [90293]"}
        HasDirectPerm(UnfoldingMask, this, value_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, value_1:=true]];
        Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, tinv#sm(this)][o_5, f_11] || Heap[null, tinv#sm(Heap[this, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, tinv#sm(this):=newPMask];
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
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate tinv
// ==================================================

type PredicateType_tinv;
function  tinv(this: Ref): Field PredicateType_tinv FrameType;
function  tinv#sm(this: Ref): Field PredicateType_tinv PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(tinv(this)) }
  PredicateMaskField(tinv(this)) == tinv#sm(this)
);
axiom (forall this: Ref ::
  { tinv(this) }
  IsPredicateField(tinv(this))
);
axiom (forall this: Ref ::
  { tinv(this) }
  getPredWandId(tinv(this)) == 1
);
function  tinv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  tinv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { tinv(this), tinv(this2) }
  tinv(this) == tinv(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { tinv#sm(this), tinv#sm(this2) }
  tinv#sm(this) == tinv#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { tinv#trigger(Heap, tinv(this)) }
  tinv#everUsed(tinv(this))
);

procedure tinv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of tinv
    
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (test8.vpr@7.3--7.141) [90294]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(tinv(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (test8.vpr@7.3--7.141) [90295]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, tinv(Heap[this, next]):=Mask[null, tinv(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fufu
// ==================================================

procedure fufu(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newVersion: FrameType;
  
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
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(inv(this), write) -- test8.vpr@14.5--14.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test8.vpr@14.5--14.31) [90298]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- test8.vpr@15.5--15.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test8.vpr@15.5--15.33) [90302]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(this))) {
        havoc newVersion;
        Heap := Heap[null, inv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- test8.vpr@16.5--16.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test8.vpr@16.5--16.31) [90306]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- test8.vpr@17.5--17.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test8.vpr@17.5--17.33) [90310]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(this))) {
        havoc newVersion;
        Heap := Heap[null, inv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fuf
// ==================================================

procedure fuf(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newVersion: FrameType;
  
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
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(inv(this), write) -- test8.vpr@22.5--22.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test8.vpr@22.5--22.31) [90314]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- test8.vpr@23.5--23.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test8.vpr@23.5--23.33) [90318]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(this))) {
        havoc newVersion;
        Heap := Heap[null, inv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- test8.vpr@24.5--24.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test8.vpr@24.5--24.31) [90322]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method uf
// ==================================================

procedure uf(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
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
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(inv(this), write) -- test8.vpr@29.5--29.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test8.vpr@29.5--29.33) [90326]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(this))) {
        havoc newVersion;
        Heap := Heap[null, inv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- test8.vpr@30.5--30.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test8.vpr@30.5--30.31) [90330]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fu
// ==================================================

procedure fu(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newVersion: FrameType;
  
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
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(inv(this), write) -- test8.vpr@35.5--35.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test8.vpr@35.5--35.31) [90334]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- test8.vpr@36.5--36.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test8.vpr@36.5--36.33) [90338]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(this))) {
        havoc newVersion;
        Heap := Heap[null, inv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t
// ==================================================

procedure t_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
    Mask := Mask[null, tinv(this):=Mask[null, tinv(this)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(tinv(this), write) in this.next != null)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume tinv#trigger(UnfoldingHeap, tinv(this));
      assume UnfoldingHeap[null, tinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tinv(this) (test8.vpr@39.14--39.101) [90340]"}
          perm <= UnfoldingMask[null, tinv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, tinv(this):=UnfoldingMask[null, tinv(this)] - perm];
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
        UnfoldingMask := UnfoldingMask[null, tinv(UnfoldingHeap[this, next]):=UnfoldingMask[null, tinv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tinv(this), UnfoldingHeap[null, tinv(this)], tinv(UnfoldingHeap[this, next]), UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (test8.vpr@39.14--39.101) [90341]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, value_1:=true]];
        Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, tinv#sm(this)][o_6, f_12] || Heap[null, tinv#sm(Heap[this, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, tinv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume tinv#trigger(UnfoldingHeap, tinv(this));
      assume UnfoldingHeap[null, tinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, tinv(this):=UnfoldingMask[null, tinv(this)] - perm];
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
        UnfoldingMask := UnfoldingMask[null, tinv(UnfoldingHeap[this, next]):=UnfoldingMask[null, tinv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tinv(this), UnfoldingHeap[null, tinv(this)], tinv(UnfoldingHeap[this, next]), UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, next] != null;
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
    PostMask := PostMask[null, tinv(this):=PostMask[null, tinv(this)] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(tinv(this), write) in this.next != null)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tinv#trigger(UnfoldingHeap, tinv(this));
      assume UnfoldingHeap[null, tinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tinv(this) (test8.vpr@40.13--40.100) [90342]"}
          perm <= UnfoldingMask[null, tinv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, tinv(this):=UnfoldingMask[null, tinv(this)] - perm];
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
        UnfoldingMask := UnfoldingMask[null, tinv(UnfoldingHeap[this, next]):=UnfoldingMask[null, tinv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tinv(this), UnfoldingHeap[null, tinv(this)], tinv(UnfoldingHeap[this, next]), UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (test8.vpr@40.13--40.100) [90343]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, tinv#sm(this):=PostHeap[null, tinv#sm(this)][this, value_1:=true]];
        PostHeap := PostHeap[null, tinv#sm(this):=PostHeap[null, tinv#sm(this)][this, next:=true]];
        if (PostHeap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            PostHeap[null, tinv#sm(this)][o_40, f_52] || PostHeap[null, tinv#sm(PostHeap[this, next])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          PostHeap := PostHeap[null, tinv#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tinv#trigger(UnfoldingHeap, tinv(this));
      assume UnfoldingHeap[null, tinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, tinv(this):=UnfoldingMask[null, tinv(this)] - perm];
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
        UnfoldingMask := UnfoldingMask[null, tinv(UnfoldingHeap[this, next]):=UnfoldingMask[null, tinv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tinv(this), UnfoldingHeap[null, tinv(this)], tinv(UnfoldingHeap[this, next]), UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, next] != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(tinv(this), write) -- test8.vpr@42.5--42.34
    assume tinv#trigger(Heap, tinv(this));
    assume Heap[null, tinv(this)] == CombineFrames(FrameFragment(Heap[this, value_1]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, tinv(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding tinv(this) might fail. There might be insufficient permission to access tinv(this) (test8.vpr@42.5--42.34) [90346]"}
        perm <= Mask[null, tinv(this)];
    }
    Mask := Mask[null, tinv(this):=Mask[null, tinv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, tinv(this))) {
        havoc newVersion;
        Heap := Heap[null, tinv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, tinv(Heap[this, next]):=Mask[null, tinv(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tinv(this), Heap[null, tinv(this)], tinv(Heap[this, next]), Heap[null, tinv(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(tinv(this.next), write) -- test8.vpr@43.5--43.39
    
    // -- Check definedness of acc(tinv(this.next), write)
      assert {:msg "  Unfolding tinv(this.next) might fail. There might be insufficient permission to access this.next (test8.vpr@43.5--43.39) [90350]"}
        HasDirectPerm(Mask, this, next);
    assume tinv#trigger(Heap, tinv(Heap[this, next]));
    assume Heap[null, tinv(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], value_1]), CombineFrames(FrameFragment(Heap[Heap[this, next], next]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, tinv(Heap[Heap[this, next], next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding tinv(this.next) might fail. There might be insufficient permission to access tinv(this.next) (test8.vpr@43.5--43.39) [90353]"}
        perm <= Mask[null, tinv(Heap[this, next])];
    }
    Mask := Mask[null, tinv(Heap[this, next]):=Mask[null, tinv(Heap[this, next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, tinv(Heap[this, next]))) {
        havoc newVersion;
        Heap := Heap[null, tinv(Heap[this, next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, tinv(Heap[Heap[this, next], next]):=Mask[null, tinv(Heap[Heap[this, next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tinv(Heap[this, next]), Heap[null, tinv(Heap[this, next])], tinv(Heap[Heap[this, next], next]), Heap[null, tinv(Heap[Heap[this, next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tinv(this.next), write) -- test8.vpr@44.5--44.37
    
    // -- Check definedness of acc(tinv(this.next), write)
      assert {:msg "  Folding tinv(this.next) might fail. There might be insufficient permission to access this.next (test8.vpr@44.5--44.37) [90357]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tinv(this.next) might fail. There might be insufficient permission to access this.next.value (test8.vpr@44.5--44.37) [90360]"}
        perm <= Mask[Heap[this, next], value_1];
    }
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tinv(this.next) might fail. There might be insufficient permission to access this.next.next (test8.vpr@44.5--44.37) [90362]"}
        perm <= Mask[Heap[this, next], next];
    }
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - perm];
    if (Heap[Heap[this, next], next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tinv(this.next) might fail. There might be insufficient permission to access tinv(this.next.next) (test8.vpr@44.5--44.37) [90364]"}
          perm <= Mask[null, tinv(Heap[Heap[this, next], next])];
      }
      Mask := Mask[null, tinv(Heap[Heap[this, next], next]):=Mask[null, tinv(Heap[Heap[this, next], next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tinv(Heap[this, next]), Heap[null, tinv(Heap[this, next])], tinv(Heap[Heap[this, next], next]), Heap[null, tinv(Heap[Heap[this, next], next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, tinv(Heap[this, next]):=Mask[null, tinv(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tinv#trigger(Heap, tinv(Heap[this, next]));
    assume Heap[null, tinv(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], value_1]), CombineFrames(FrameFragment(Heap[Heap[this, next], next]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, tinv(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, tinv(Heap[this, next]))) {
      Heap := Heap[null, tinv#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tinv(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, tinv#sm(Heap[this, next]):=Heap[null, tinv#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
    Heap := Heap[null, tinv#sm(Heap[this, next]):=Heap[null, tinv#sm(Heap[this, next])][Heap[this, next], next:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
        { newPMask[o_46, f_60] }
        Heap[null, tinv#sm(Heap[this, next])][o_46, f_60] || Heap[null, tinv#sm(Heap[Heap[this, next], next])][o_46, f_60] ==> newPMask[o_46, f_60]
      );
      Heap := Heap[null, tinv#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tinv(this), write) -- test8.vpr@45.5--45.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tinv(this) might fail. There might be insufficient permission to access this.value (test8.vpr@45.5--45.32) [90368]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tinv(this) might fail. There might be insufficient permission to access this.next (test8.vpr@45.5--45.32) [90370]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tinv(this) might fail. There might be insufficient permission to access tinv(this.next) (test8.vpr@45.5--45.32) [90372]"}
          perm <= Mask[null, tinv(Heap[this, next])];
      }
      Mask := Mask[null, tinv(Heap[this, next]):=Mask[null, tinv(Heap[this, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tinv(this), Heap[null, tinv(this)], tinv(Heap[this, next]), Heap[null, tinv(Heap[this, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, tinv(this):=Mask[null, tinv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tinv#trigger(Heap, tinv(this));
    assume Heap[null, tinv(this)] == CombineFrames(FrameFragment(Heap[this, value_1]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, tinv(Heap[this, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, tinv(this))) {
      Heap := Heap[null, tinv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tinv(this):=freshVersion];
    }
    Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, value_1:=true]];
    Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, next:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_61: (Field A B) ::
        { newPMask[o, f_61] }
        Heap[null, tinv#sm(this)][o, f_61] || Heap[null, tinv#sm(Heap[this, next])][o, f_61] ==> newPMask[o, f_61]
      );
      Heap := Heap[null, tinv#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t might not hold. There might be insufficient permission to access tinv(this) (test8.vpr@40.13--40.100) [90374]"}
        perm <= Mask[null, tinv(this)];
    }
    Mask := Mask[null, tinv(this):=Mask[null, tinv(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume tinv#trigger(UnfoldingHeap, tinv(this));
      assume UnfoldingHeap[null, tinv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of t might not hold. There might be insufficient permission to access tinv(this) (test8.vpr@40.13--40.100) [90375]"}
          perm <= UnfoldingMask[null, tinv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, tinv(this):=UnfoldingMask[null, tinv(this)] - perm];
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
        UnfoldingMask := UnfoldingMask[null, tinv(UnfoldingHeap[this, next]):=UnfoldingMask[null, tinv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tinv(this), UnfoldingHeap[null, tinv(this)], tinv(UnfoldingHeap[this, next]), UnfoldingHeap[null, tinv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of t might not hold. Assertion this.next != null might not hold. (test8.vpr@40.13--40.100) [90376]"}
      Heap[this, next] != null;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, value_1:=true]];
      Heap := Heap[null, tinv#sm(this):=Heap[null, tinv#sm(this)][this, next:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
          { newPMask[o_42, f_55] }
          Heap[null, tinv#sm(this)][o_42, f_55] || Heap[null, tinv#sm(Heap[this, next])][o_42, f_55] ==> newPMask[o_42, f_55]
        );
        Heap := Heap[null, tinv#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}