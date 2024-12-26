// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:17:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0063-1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0063-1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique x_36: Field NormalField int;
axiom !IsPredicateField(x_36);
axiom !IsWandField(x_36);
const unique y_15: Field NormalField int;
axiom !IsPredicateField(y_15);
axiom !IsWandField(y_15);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(this: Ref): Field PredicateType_P FrameType;
function  P#sm(this: Ref): Field PredicateType_P PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(P(this)) }
  PredicateMaskField(P(this)) == P#sm(this)
);
axiom (forall this: Ref ::
  { P(this) }
  IsPredicateField(P(this))
);
axiom (forall this: Ref ::
  { P(this) }
  getPredWandId(P(this)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { P(this), P(this2) }
  P(this) == P(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { P#sm(this), P#sm(this2) }
  P#sm(this) == P#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { P#trigger(Heap, P(this)) }
  P#everUsed(P(this))
);

procedure P#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate V
// ==================================================

type PredicateType_V;
function  V_12(this: Ref): Field PredicateType_V FrameType;
function  V#sm(this: Ref): Field PredicateType_V PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(V_12(this)) }
  PredicateMaskField(V_12(this)) == V#sm(this)
);
axiom (forall this: Ref ::
  { V_12(this) }
  IsPredicateField(V_12(this))
);
axiom (forall this: Ref ::
  { V_12(this) }
  getPredWandId(V_12(this)) == 1
);
function  V#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  V#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { V_12(this), V_12(this2) }
  V_12(this) == V_12(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { V#sm(this), V#sm(this2) }
  V#sm(this) == V#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { V#trigger(Heap, V_12(this)) }
  V#everUsed(V_12(this))
);

procedure V#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of V
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, y_15:=Mask[this, y_15] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.y == 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.y (0063-1.vpr@68.1--70.2) [194479]"}
        HasDirectPerm(Mask, this, y_15);
    assume Heap[this, y_15] == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
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
    
    // -- Check definedness of (unfolding acc(P(this), write) in true)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (0063-1.vpr@35.11--35.65) [194480]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == EmptyFrame;
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (0063-1.vpr@35.11--35.65) [194481]"}
        HasDirectPerm(PostMask, this, x_36);
    assume PostHeap[this, x_36] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == EmptyFrame;
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access P(this) (0063-1.vpr@35.11--35.65) [194482]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of test0 might not hold. Assertion this.x == 0 might not hold. (0063-1.vpr@35.11--35.65) [194483]"}
      Heap[this, x_36] == 0;
    
    // -- Free assumptions (exhale module)
      assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(this), write) && this != null -- 0063-1.vpr@41.3--41.45
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume this != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (unfolding acc(P(this), write) in true) && this.x == 0 -- 0063-1.vpr@43.3--43.64
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(P(this), write) in true)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == EmptyFrame;
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0063-1.vpr@43.10--43.64) [194485]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0063-1.vpr@43.10--43.64) [194487]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Exhale might fail. Assertion this.x == 0 might not hold. (0063-1.vpr@43.10--43.64) [194488]"}
      Heap[this, x_36] == 0;
    
    // -- Free assumptions (exhale module)
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1Reference
// ==================================================

procedure test1Reference(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale this != null -- 0063-1.vpr@48.3--48.22
    assume this != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale true && this.x == 0 -- 0063-1.vpr@50.3--50.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0063-1.vpr@50.10--50.29) [194490]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Exhale might fail. Assertion this.x == 0 might not hold. (0063-1.vpr@50.10--50.29) [194491]"}
      Heap[this, x_36] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(this), write) -- 0063-1.vpr@55.3--55.29
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (unfolding acc(P(this), write) in false) && this.x == 0 -- 0063-1.vpr@57.3--57.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(P(this), write) in false)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == EmptyFrame;
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0063-1.vpr@57.10--57.65) [194493]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion false might not hold. (0063-1.vpr@57.10--57.65) [194494]"}
      false;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0063-1.vpr@57.10--57.65) [194495]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Exhale might fail. Assertion this.x == 0 might not hold. (0063-1.vpr@57.10--57.65) [194496]"}
      Heap[this, x_36] == 0;
    
    // -- Free assumptions (exhale module)
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2Reference
// ==================================================

procedure test2Reference(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale this != null -- 0063-1.vpr@62.3--62.22
    assume this != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale false && this.x == 0 -- 0063-1.vpr@64.3--64.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Exhale might fail. Assertion false might not hold. (0063-1.vpr@64.10--64.30) [194497]"}
      false;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0063-1.vpr@64.10--64.30) [194498]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Exhale might fail. Assertion this.x == 0 might not hold. (0063-1.vpr@64.10--64.30) [194499]"}
      Heap[this, x_36] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(V(this), write) -- 0063-1.vpr@74.3--74.29
    perm := FullPerm;
    Mask := Mask[null, V_12(this):=Mask[null, V_12(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (unfolding acc(V(this), write) in this.y == 2) && this.x == 0 -- 0063-1.vpr@76.3--76.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(V(this), write) in this.y == 2)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume V#trigger(UnfoldingHeap, V_12(this));
      assume UnfoldingHeap[null, V_12(this)] == FrameFragment(UnfoldingHeap[this, y_15]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access V(this) (0063-1.vpr@76.10--76.71) [194501]"}
          perm <= UnfoldingMask[null, V_12(this)];
      }
      UnfoldingMask := UnfoldingMask[null, V_12(this):=UnfoldingMask[null, V_12(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, y_15:=UnfoldingMask[this, y_15] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this, y_15] == 1;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.y (0063-1.vpr@76.10--76.71) [194502]"}
        HasDirectPerm(UnfoldingMask, this, y_15);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, V#sm(this):=Heap[null, V#sm(this)][this, y_15:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.y == 2 might not hold. (0063-1.vpr@76.10--76.71) [194503]"}
      Heap[this, y_15] == 2;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0063-1.vpr@76.10--76.71) [194504]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Exhale might fail. Assertion this.x == 0 might not hold. (0063-1.vpr@76.10--76.71) [194505]"}
      Heap[this, x_36] == 0;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, V#sm(this):=Heap[null, V#sm(this)][this, y_15:=true]];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(V(this), write) -- 0063-1.vpr@81.3--81.29
    perm := FullPerm;
    Mask := Mask[null, V_12(this):=Mask[null, V_12(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (unfolding acc(V(this), write) in this.y) == 2 && this.x == 0 -- 0063-1.vpr@83.3--83.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(V(this), write) in this.y) == 2
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume V#trigger(UnfoldingHeap, V_12(this));
      assume UnfoldingHeap[null, V_12(this)] == FrameFragment(UnfoldingHeap[this, y_15]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access V(this) (0063-1.vpr@83.10--83.71) [194507]"}
          perm <= UnfoldingMask[null, V_12(this)];
      }
      UnfoldingMask := UnfoldingMask[null, V_12(this):=UnfoldingMask[null, V_12(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, y_15:=UnfoldingMask[this, y_15] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume UnfoldingHeap[this, y_15] == 1;
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.y (0063-1.vpr@83.10--83.71) [194508]"}
        HasDirectPerm(UnfoldingMask, this, y_15);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, V#sm(this):=Heap[null, V#sm(this)][this, y_15:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, V#sm(this):=Heap[null, V#sm(this)][this, y_15:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion (unfolding acc(V(this), write) in this.y) == 2 might not hold. (0063-1.vpr@83.10--83.71) [194509]"}
      Heap[this, y_15] == 2;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0063-1.vpr@83.10--83.71) [194510]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Exhale might fail. Assertion this.x == 0 might not hold. (0063-1.vpr@83.10--83.71) [194511]"}
      Heap[this, x_36] == 0;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, V#sm(this):=Heap[null, V#sm(this)][this, y_15:=true]];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}