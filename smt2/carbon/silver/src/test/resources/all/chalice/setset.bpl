// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:04:50
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/setset.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/setset-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);

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
  { state(Heap, Mask), get(Heap, this) } { state(Heap, Mask), get#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, this) == Heap[this, value]
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), get'(Heap, this) }
  state(Heap, Mask) ==> get'(Heap, this) == get#frame(Heap[null, valid(this)], this)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), write) in this.value)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == FrameFragment(UnfoldingHeap[this, value]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (setset.vpr@12.3--14.56) [147081]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (setset.vpr@12.3--14.56) [147082]"}
        HasDirectPerm(UnfoldingMask, this, value);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, value];
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method init
// ==================================================

procedure init(this: Ref, v_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
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
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.value := v -- setset.vpr@9.5--9.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (setset.vpr@9.5--9.20) [147083]"}
      FullPerm == Mask[this, value];
    Heap := Heap[this, value:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- setset.vpr@10.5--10.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.value (setset.vpr@10.5--10.33) [147086]"}
        perm <= Mask[this, value];
    }
    Mask := Mask[this, value:=Mask[this, value] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == FrameFragment(Heap[this, value]);
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access valid(this) (setset.vpr@7.13--7.36) [147088]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method set
// ==================================================

procedure set(this: Ref, v_2: int) returns ()
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
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
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
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this) == v
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access valid(this) (setset.vpr@17.42--17.51) [147089]"}
          NoPerm < perm ==> NoPerm < PostMask[null, valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this) == v_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this), write) -- setset.vpr@19.5--19.35
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == FrameFragment(Heap[this, value]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (setset.vpr@19.5--19.35) [147092]"}
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.value := v -- setset.vpr@20.5--20.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (setset.vpr@20.5--20.20) [147094]"}
      FullPerm == Mask[this, value];
    Heap := Heap[this, value:=v_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- setset.vpr@21.5--21.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.value (setset.vpr@21.5--21.33) [147097]"}
        perm <= Mask[this, value];
    }
    Mask := Mask[this, value:=Mask[this, value] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == FrameFragment(Heap[this, value]);
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of set might not hold. There might be insufficient permission to access valid(this) (setset.vpr@17.13--17.60) [147099]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    assert {:msg "  Postcondition of set might not hold. Assertion get(this) == v might not hold. (setset.vpr@17.13--17.60) [147100]"}
      get(Heap, this) == v_2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method main
// ==================================================

procedure main(this: Ref, x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: set(x, 3) -- setset.vpr@28.5--28.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(x) (setset.vpr@28.5--28.14) [147101]"}
          perm <= Mask[null, valid(x)];
      }
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(y, 3) -- setset.vpr@29.5--29.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(y) (setset.vpr@29.5--29.14) [147102]"}
          perm <= Mask[null, valid(y)];
      }
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, y) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(x, 3) -- setset.vpr@30.5--30.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(x) (setset.vpr@30.5--30.14) [147103]"}
          perm <= Mask[null, valid(x)];
      }
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(y, 3) -- setset.vpr@31.5--31.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(y) (setset.vpr@31.5--31.14) [147104]"}
          perm <= Mask[null, valid(y)];
      }
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, y) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(x, 3) -- setset.vpr@32.5--32.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(x) (setset.vpr@32.5--32.14) [147105]"}
          perm <= Mask[null, valid(x)];
      }
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(y, 3) -- setset.vpr@33.5--33.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(y) (setset.vpr@33.5--33.14) [147106]"}
          perm <= Mask[null, valid(y)];
      }
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, y) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(x, 3) -- setset.vpr@34.5--34.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(x) (setset.vpr@34.5--34.14) [147107]"}
          perm <= Mask[null, valid(x)];
      }
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(x), write) -- setset.vpr@35.5--35.32
    assume valid#trigger(Heap, valid(x));
    assume Heap[null, valid(x)] == FrameFragment(Heap[x, value]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(x) might fail. There might be insufficient permission to access valid(x) (setset.vpr@35.5--35.32) [147110]"}
        perm <= Mask[null, valid(x)];
    }
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(x))) {
        havoc newVersion;
        Heap := Heap[null, valid(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, value:=Mask[x, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.value := 3 -- setset.vpr@36.5--36.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.value (setset.vpr@36.5--36.17) [147112]"}
      FullPerm == Mask[x, value];
    Heap := Heap[x, value:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(x), write) -- setset.vpr@37.5--37.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x) might fail. There might be insufficient permission to access x.value (setset.vpr@37.5--37.30) [147115]"}
        perm <= Mask[x, value];
    }
    Mask := Mask[x, value:=Mask[x, value] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(x));
    assume Heap[null, valid(x)] == FrameFragment(Heap[x, value]);
    if (!HasDirectPerm(Mask, null, valid(x))) {
      Heap := Heap[null, valid#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(x):=freshVersion];
    }
    Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, value:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(y, 3) -- setset.vpr@38.5--38.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(y) (setset.vpr@38.5--38.14) [147117]"}
          perm <= Mask[null, valid(y)];
      }
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, y) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(x, 3) -- setset.vpr@39.5--39.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(x) (setset.vpr@39.5--39.14) [147118]"}
          perm <= Mask[null, valid(x)];
      }
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(y, 3) -- setset.vpr@40.5--40.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(y) (setset.vpr@40.5--40.14) [147119]"}
          perm <= Mask[null, valid(y)];
      }
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, y) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(x), write) -- setset.vpr@41.5--41.32
    assume valid#trigger(Heap, valid(x));
    assume Heap[null, valid(x)] == FrameFragment(Heap[x, value]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(x) might fail. There might be insufficient permission to access valid(x) (setset.vpr@41.5--41.32) [147122]"}
        perm <= Mask[null, valid(x)];
    }
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(x))) {
        havoc newVersion;
        Heap := Heap[null, valid(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, value:=Mask[x, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.value := 3 -- setset.vpr@42.5--42.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.value (setset.vpr@42.5--42.17) [147124]"}
      FullPerm == Mask[x, value];
    Heap := Heap[x, value:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(x), write) -- setset.vpr@43.5--43.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x) might fail. There might be insufficient permission to access x.value (setset.vpr@43.5--43.30) [147127]"}
        perm <= Mask[x, value];
    }
    Mask := Mask[x, value:=Mask[x, value] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(x));
    assume Heap[null, valid(x)] == FrameFragment(Heap[x, value]);
    if (!HasDirectPerm(Mask, null, valid(x))) {
      Heap := Heap[null, valid#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(x):=freshVersion];
    }
    Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, value:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(x), write) -- setset.vpr@44.5--44.32
    assume valid#trigger(Heap, valid(x));
    assume Heap[null, valid(x)] == FrameFragment(Heap[x, value]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(x) might fail. There might be insufficient permission to access valid(x) (setset.vpr@44.5--44.32) [147131]"}
        perm <= Mask[null, valid(x)];
    }
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(x))) {
        havoc newVersion;
        Heap := Heap[null, valid(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, value:=Mask[x, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.value := 3 -- setset.vpr@45.5--45.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.value (setset.vpr@45.5--45.17) [147133]"}
      FullPerm == Mask[x, value];
    Heap := Heap[x, value:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(x), write) -- setset.vpr@46.5--46.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x) might fail. There might be insufficient permission to access x.value (setset.vpr@46.5--46.30) [147136]"}
        perm <= Mask[x, value];
    }
    Mask := Mask[x, value:=Mask[x, value] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(x));
    assume Heap[null, valid(x)] == FrameFragment(Heap[x, value]);
    if (!HasDirectPerm(Mask, null, valid(x))) {
      Heap := Heap[null, valid#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(x):=freshVersion];
    }
    Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, value:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(x, 3) -- setset.vpr@47.5--47.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(x) (setset.vpr@47.5--47.14) [147138]"}
          perm <= Mask[null, valid(x)];
      }
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(y, 3) -- setset.vpr@48.5--48.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(y) (setset.vpr@48.5--48.14) [147139]"}
          perm <= Mask[null, valid(y)];
      }
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(y):=Mask[null, valid(y)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, y) == 3;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: set(x, 4) -- setset.vpr@49.5--49.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method set might not hold. There might be insufficient permission to access valid(x) (setset.vpr@49.5--49.14) [147140]"}
          perm <= Mask[null, valid(x)];
      }
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume get(Heap, x) == 4;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(y) == 3 -- setset.vpr@50.5--50.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(y) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access valid(y) (setset.vpr@50.14--50.20) [147141]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(y) == 3 might not hold. (setset.vpr@50.13--50.28) [147142]"}
      get(Heap, y) == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(x) == 3 -- setset.vpr@52.5--52.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(x) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access valid(x) (setset.vpr@52.14--52.20) [147143]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(x) == 3 might not hold. (setset.vpr@52.13--52.28) [147144]"}
      get(Heap, x) == 3;
    assume state(Heap, Mask);
}