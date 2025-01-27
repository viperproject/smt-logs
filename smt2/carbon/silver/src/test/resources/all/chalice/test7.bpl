// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:25:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test7.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test7-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
      assume UnfoldingHeap[null, inv(this)] == FrameFragment(UnfoldingHeap[this, value_1]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access inv(this) (test7.vpr@6.3--8.54) [89517]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (test7.vpr@6.3--8.54) [89518]"}
        HasDirectPerm(UnfoldingMask, this, value_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
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
// Translation of method set
// ==================================================

procedure set_3(this: Ref, newval: int) returns ()
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this) == newval
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@11.40--11.49) [89519]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this) == newval;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(inv(this), write) -- test7.vpr@13.5--13.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test7.vpr@13.5--13.33) [89522]"}
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
  
  // -- Translating statement: this.value := newval -- test7.vpr@14.5--14.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (test7.vpr@14.5--14.25) [89524]"}
      FullPerm == Mask[this, value_1];
    Heap := Heap[this, value_1:=newval];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- test7.vpr@15.5--15.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test7.vpr@15.5--15.31) [89527]"}
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
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of set might not hold. There might be insufficient permission to access inv(this) (test7.vpr@11.13--11.63) [89529]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    assert {:msg "  Postcondition of set might not hold. Assertion get(this) == newval might not hold. (test7.vpr@11.13--11.63) [89530]"}
      get(Heap, this) == newval;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method callmethod0
// ==================================================

procedure callmethod0(this: Ref) returns ()
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
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@19.40--19.49) [89531]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this) == 3;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: set(this, 3) -- test7.vpr@21.5--21.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access inv(this) (test7.vpr@21.5--21.17) [89532]"}
          perm <= Mask[null, inv(this)];
      }
      Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, this) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of callmethod0 might not hold. There might be insufficient permission to access inv(this) (test7.vpr@19.13--19.58) [89533]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    assert {:msg "  Postcondition of callmethod0 might not hold. Assertion get(this) == 3 might not hold. (test7.vpr@19.13--19.58) [89534]"}
      get(Heap, this) == 3;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method callmethod1
// ==================================================

procedure callmethod1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: set(this, 3) -- test7.vpr@27.5--27.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access inv(this) (test7.vpr@27.5--27.17) [89535]"}
          perm <= Mask[null, inv(this)];
      }
      Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, this) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method ifc
// ==================================================

procedure ifc(this: Ref) returns ()
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
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_newval: int;
  
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this) > old(get(this))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@31.38--31.47) [89536]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@31.54--31.63) [89537]"}
          NoPerm < perm ==> NoPerm < oldMask[null, inv(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this) > get(oldHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (get(this) > 0) -- test7.vpr@33.5--37.6
    
    // -- Check definedness of get(this) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@33.9--33.18) [89538]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    if (get(Heap, this) > 0) {
      
      // -- Translating statement: set(this, get(this) + get(this)) -- test7.vpr@34.7--34.39
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of get(this) + get(this)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@34.17--34.26) [89539]"}
              NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@34.29--34.38) [89540]"}
              NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        arg_newval := get(Heap, this) + get(Heap, this);
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access inv(this) (test7.vpr@34.7--34.39) [89541]"}
              perm <= Mask[null, inv(this)];
          }
          Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume get(Heap, this) == arg_newval;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: set(this, 2) -- test7.vpr@36.7--36.19
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access inv(this) (test7.vpr@36.7--36.19) [89542]"}
              perm <= Mask[null, inv(this)];
          }
          Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume get(Heap, this) == 2;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of ifc might not hold. There might be insufficient permission to access inv(this) (test7.vpr@31.13--31.64) [89543]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    assert {:msg "  Postcondition of ifc might not hold. Assertion get(this) > old(get(this)) might not hold. (test7.vpr@31.13--31.64) [89544]"}
      get(Heap, this) > get(oldHeap, this);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method loop0
// ==================================================

procedure loop0(this: Ref) returns (r_1: int)
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
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  
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
    
    // -- Check definedness of get(this) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@40.39--40.48) [89545]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(Heap, this) > 0;
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r == get(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@41.47--41.56) [89546]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume r_1 == get(PostHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r := 0 -- test7.vpr@43.5--43.11
    r_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (r < (unfolding acc(inv(this), write) in this.value)) -- test7.vpr@44.5--48.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(inv(this), write) && r <= get(this) might not hold on entry. There might be insufficient permission to access inv(this) (test7.vpr@45.17--45.56) [89547]"}
            perm <= Mask[null, inv(this)];
        }
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
        assert {:msg "  Loop invariant acc(inv(this), write) && r <= get(this) might not hold on entry. Assertion r <= get(this) might not hold. (test7.vpr@45.17--45.56) [89548]"}
          r_1 <= get(Heap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc r_1;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of r <= get(this)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@45.47--45.56) [89549]"}
              NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume r_1 <= get(Heap, this);
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
        perm := FullPerm;
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume r_1 <= get(Heap, this);
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of r < (unfolding acc(inv(this), write) in this.value)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume inv#trigger(UnfoldingHeap, inv(this));
          assume UnfoldingHeap[null, inv(this)] == FrameFragment(UnfoldingHeap[this, value_1]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  While statement might fail. There might be insufficient permission to access inv(this) (test7.vpr@44.12--44.63) [89550]"}
              perm <= UnfoldingMask[null, inv(this)];
          }
          UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  While statement might fail. There might be insufficient permission to access this.value (test7.vpr@44.12--44.63) [89551]"}
            HasDirectPerm(UnfoldingMask, this, value_1);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
        assume r_1 < Heap[this, value_1];
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: r := r + 1 -- test7.vpr@47.7--47.17
            r_1 := r_1 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(inv(this), write) && r <= get(this) might not be preserved. There might be insufficient permission to access inv(this) (test7.vpr@45.17--45.56) [89552]"}
            perm <= Mask[null, inv(this)];
        }
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
        assert {:msg "  Loop invariant acc(inv(this), write) && r <= get(this) might not be preserved. Assertion r <= get(this) might not hold. (test7.vpr@45.17--45.56) [89553]"}
          r_1 <= get(Heap, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(r_1 < Heap[this, value_1]);
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume r_1 <= get(Heap, this);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop0 might not hold. There might be insufficient permission to access inv(this) (test7.vpr@41.13--41.58) [89554]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    assert {:msg "  Postcondition of loop0 might not hold. Assertion r == get(this) might not hold. (test7.vpr@41.13--41.58) [89555]"}
      r_1 == get(Heap, this);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method loop1
// ==================================================

procedure loop1_1(this: Ref) returns (r_1: int)
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
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
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
    
    // -- Check definedness of get(this) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@51.39--51.48) [89556]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(Heap, this) > 0;
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r == get(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@52.47--52.56) [89557]"}
          NoPerm < perm ==> NoPerm < PostMask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume r_1 == get(PostHeap, this);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: r := 0 -- test7.vpr@54.5--54.11
    r_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (r < get(this)) -- test7.vpr@55.5--59.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        
        // -- Execute definedness check of acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume inv#trigger(UnfoldingHeap, inv(this));
          assume UnfoldingHeap[null, inv(this)] == FrameFragment(UnfoldingHeap[this, value_1]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) might not hold on entry. There might be insufficient permission to access inv(this) (test7.vpr@56.17--56.94) [89558]"}
              perm <= UnfoldingMask[null, inv(this)];
          }
          UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) might not hold on entry. There might be insufficient permission to access inv(this) (test7.vpr@56.17--56.94) [89559]"}
            perm <= Mask[null, inv(this)];
        }
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
        assert {:msg "  Loop invariant acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) might not hold on entry. Assertion r <= (unfolding acc(inv(this), write) in this.value) might not hold. (test7.vpr@56.17--56.94) [89560]"}
          r_1 <= Heap[this, value_1];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc r_1;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of r <= (unfolding acc(inv(this), write) in this.value)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume inv#trigger(UnfoldingHeap, inv(this));
          assume UnfoldingHeap[null, inv(this)] == FrameFragment(UnfoldingHeap[this, value_1]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inv(this) (test7.vpr@56.17--56.94) [89561]"}
              perm <= UnfoldingMask[null, inv(this)];
          }
          UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.value (test7.vpr@56.17--56.94) [89562]"}
            HasDirectPerm(UnfoldingMask, this, value_1);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
        assume r_1 <= Heap[this, value_1];
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
        perm := FullPerm;
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
        assume state(Heap, Mask);
        assume r_1 <= Heap[this, value_1];
        
        // -- Free assumptions (inhale module)
          Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
          assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Execute definedness check of acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume inv#trigger(UnfoldingHeap, inv(this));
          assume UnfoldingHeap[null, inv(this)] == FrameFragment(UnfoldingHeap[this, value_1]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  An internal error occurred. There might be insufficient permission to access inv(this) (test7.vpr@56.17--56.94) [89563]"}
              perm <= UnfoldingMask[null, inv(this)];
          }
          UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of r < get(this)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@55.16--55.25) [89564]"}
              NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume r_1 < get(Heap, this);
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: r := r + 1 -- test7.vpr@58.7--58.17
            r_1 := r_1 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        
        // -- Execute definedness check of acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) without enforcing the checks (e.g., to gain more information)
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume inv#trigger(UnfoldingHeap, inv(this));
          assume UnfoldingHeap[null, inv(this)] == FrameFragment(UnfoldingHeap[this, value_1]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) might not be preserved. There might be insufficient permission to access inv(this) (test7.vpr@56.17--56.94) [89565]"}
              perm <= UnfoldingMask[null, inv(this)];
          }
          UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
            assume state(Heap, Mask);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) might not be preserved. There might be insufficient permission to access inv(this) (test7.vpr@56.17--56.94) [89566]"}
            perm <= Mask[null, inv(this)];
        }
        Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
        assert {:msg "  Loop invariant acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) might not be preserved. Assertion r <= (unfolding acc(inv(this), write) in this.value) might not hold. (test7.vpr@56.17--56.94) [89567]"}
          r_1 <= Heap[this, value_1];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
          assume state(Heap, Mask);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(r_1 < get(Heap, this));
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
      assume state(Heap, Mask);
      assume r_1 <= Heap[this, value_1];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of acc(inv(this), write) && r <= (unfolding acc(inv(this), write) in this.value) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume inv#trigger(UnfoldingHeap, inv(this));
        assume UnfoldingHeap[null, inv(this)] == FrameFragment(UnfoldingHeap[this, value_1]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access inv(this) (test7.vpr@56.17--56.94) [89568]"}
            perm <= UnfoldingMask[null, inv(this)];
        }
        UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
        perm := FullPerm;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
          assume state(Heap, Mask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value_1:=true]];
          assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of loop1 might not hold. There might be insufficient permission to access inv(this) (test7.vpr@52.13--52.58) [89569]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    assert {:msg "  Postcondition of loop1 might not hold. Assertion r == get(this) might not hold. (test7.vpr@52.13--52.58) [89570]"}
      r_1 == get(Heap, this);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method uf0
// ==================================================

procedure uf0(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert acc(this.value, write) -- test7.vpr@64.5--64.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.value (test7.vpr@64.12--64.34) [89572]"}
        perm <= AssertMask[this, value_1];
    }
    AssertMask := AssertMask[this, value_1:=AssertMask[this, value_1] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- test7.vpr@65.5--65.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test7.vpr@65.5--65.31) [89575]"}
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
  
  // -- Translating statement: assert acc(this.value, write) -- test7.vpr@67.5--67.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.value (test7.vpr@67.12--67.34) [89578]"}
        perm <= AssertMask[this, value_1];
    }
    AssertMask := AssertMask[this, value_1:=AssertMask[this, value_1] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method uf1
// ==================================================

procedure uf1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert acc(this.value, write) -- test7.vpr@72.5--72.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.value (test7.vpr@72.12--72.34) [89580]"}
        perm <= AssertMask[this, value_1];
    }
    AssertMask := AssertMask[this, value_1:=AssertMask[this, value_1] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- test7.vpr@73.5--73.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test7.vpr@73.5--73.31) [89583]"}
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
  
  // -- Translating statement: assert acc(inv(this), write) -- test7.vpr@74.5--74.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this) (test7.vpr@74.12--74.33) [89586]"}
        perm <= AssertMask[null, inv(this)];
    }
    AssertMask := AssertMask[null, inv(this):=AssertMask[null, inv(this)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method uf2
// ==================================================

procedure uf2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert acc(inv(this), write) -- test7.vpr@79.5--79.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this) (test7.vpr@79.12--79.33) [89588]"}
        perm <= AssertMask[null, inv(this)];
    }
    AssertMask := AssertMask[null, inv(this):=AssertMask[null, inv(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- test7.vpr@80.5--80.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test7.vpr@80.5--80.33) [89591]"}
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
  
  // -- Translating statement: assert acc(this.value, write) -- test7.vpr@81.5--81.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.value (test7.vpr@81.12--81.34) [89594]"}
        perm <= AssertMask[this, value_1];
    }
    AssertMask := AssertMask[this, value_1:=AssertMask[this, value_1] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method uf3
// ==================================================

procedure uf3(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert acc(inv(this), write) -- test7.vpr@86.5--86.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this) (test7.vpr@86.12--86.33) [89596]"}
        perm <= AssertMask[null, inv(this)];
    }
    AssertMask := AssertMask[null, inv(this):=AssertMask[null, inv(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this), write) -- test7.vpr@87.5--87.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == FrameFragment(Heap[this, value_1]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test7.vpr@87.5--87.33) [89599]"}
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
  
  // -- Translating statement: assert acc(inv(this), write) -- test7.vpr@89.5--89.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this) (test7.vpr@89.12--89.33) [89602]"}
        perm <= AssertMask[null, inv(this)];
    }
    AssertMask := AssertMask[null, inv(this):=AssertMask[null, inv(this)] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method badframing0
// ==================================================

procedure badframing0(this: Ref) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of get(this) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@94.16--94.25) [89603]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(Heap, this) == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method badframing1
// ==================================================

procedure badframing1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.value == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.value (test7.vpr@100.15--100.34) [89604]"}
        HasDirectPerm(Mask, this, value_1);
    assume Heap[this, value_1] == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method badframing2
// ==================================================

procedure badframing2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of get(this) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test7.vpr@106.42--106.51) [89605]"}
          NoPerm < perm ==> NoPerm < Mask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(Heap, this) == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method badframing3
// ==================================================

procedure badframing3(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.value == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.value (test7.vpr@112.14--112.60) [89606]"}
        HasDirectPerm(Mask, this, value_1);
    assume Heap[this, value_1] == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}