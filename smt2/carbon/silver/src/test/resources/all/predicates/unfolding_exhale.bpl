// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/unfolding_exhale.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/unfolding_exhale-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique x_42: Field NormalField int;
axiom !IsPredicateField(x_42);
axiom !IsWandField(x_42);

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
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fail10
// ==================================================

procedure fail10(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in this.x == old(this.x)) -- unfolding_exhale.vpr@16.3--16.75
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@16.10--16.75) [47018]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@16.10--16.75) [47019]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@16.10--16.75) [47020]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@16.10--16.75) [47021]"}
        HasDirectPerm(oldMask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old(this.x) might not hold. (unfolding_exhale.vpr@16.10--16.75) [47022]"}
      Heap[this, x_42] == oldHeap[this, x_42];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method success10
// ==================================================

procedure success10(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in
  //     this.x == old((unfolding acc(P(this), write) in this.x))) -- unfolding_exhale.vpr@22.3--22.96
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@22.10--22.96) [47024]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old((unfolding acc(P(this), write) in this.x)))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@22.10--22.96) [47025]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@22.10--22.96) [47026]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      Unfolding1Heap := oldHeap;
      Unfolding1Mask := oldMask;
      assume P#trigger(Unfolding1Heap, P(this));
      assume Unfolding1Heap[null, P(this)] == FrameFragment(Unfolding1Heap[this, x_42]);
      ExhaleWellDef1Heap := Unfolding1Heap;
      ExhaleWellDef1Mask := Unfolding1Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@22.10--22.96) [47027]"}
          perm <= Unfolding1Mask[null, P(this)];
      }
      Unfolding1Mask := Unfolding1Mask[null, P(this):=Unfolding1Mask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      Unfolding1Mask := Unfolding1Mask[this, x_42:=Unfolding1Mask[this, x_42] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@22.10--22.96) [47028]"}
        HasDirectPerm(Unfolding1Mask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old((unfolding acc(P(this), write) in this.x)) might not hold. (unfolding_exhale.vpr@22.10--22.96) [47029]"}
      Heap[this, x_42] == oldHeap[this, x_42];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method success2
// ==================================================

procedure success2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding_exhale.vpr@28.3--28.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@28.3--28.15) [47032]"}
        perm <= Mask[this, x_42];
    }
    Mask := Mask[this, x_42:=Mask[this, x_42] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in this.x == old(this.x)) -- unfolding_exhale.vpr@29.3--29.75
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@29.10--29.75) [47035]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@29.10--29.75) [47036]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@29.10--29.75) [47037]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@29.10--29.75) [47038]"}
        HasDirectPerm(oldMask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old(this.x) might not hold. (unfolding_exhale.vpr@29.10--29.75) [47039]"}
      Heap[this, x_42] == oldHeap[this, x_42];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fail5
// ==================================================

procedure fail5(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(P(this), write) -- unfolding_exhale.vpr@35.3--35.17
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(this) might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@35.3--35.17) [47042]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(this))) {
        havoc newVersion;
        Heap := Heap[null, P(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.x := this.x + 1 -- unfolding_exhale.vpr@36.3--36.23
    
    // -- Check definedness of this.x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@36.3--36.23) [47044]"}
        HasDirectPerm(Mask, this, x_42);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@36.3--36.23) [47045]"}
      FullPerm == Mask[this, x_42];
    Heap := Heap[this, x_42:=Heap[this, x_42] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding_exhale.vpr@37.3--37.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@37.3--37.15) [47048]"}
        perm <= Mask[this, x_42];
    }
    Mask := Mask[this, x_42:=Mask[this, x_42] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in this.x == old(this.x) + 1) -- unfolding_exhale.vpr@39.3--39.79
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@39.10--39.79) [47051]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x) + 1)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@39.10--39.79) [47052]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@39.10--39.79) [47053]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@39.10--39.79) [47054]"}
        HasDirectPerm(oldMask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old(this.x) + 1 might not hold. (unfolding_exhale.vpr@39.10--39.79) [47055]"}
      Heap[this, x_42] == oldHeap[this, x_42] + 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method success5
// ==================================================

procedure success5(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(P(this), write) -- unfolding_exhale.vpr@46.3--46.29
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(this) might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@46.3--46.29) [47058]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(this))) {
        havoc newVersion;
        Heap := Heap[null, P(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.x := this.x + 1 -- unfolding_exhale.vpr@47.3--47.23
    
    // -- Check definedness of this.x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@47.3--47.23) [47060]"}
        HasDirectPerm(Mask, this, x_42);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@47.3--47.23) [47061]"}
      FullPerm == Mask[this, x_42];
    Heap := Heap[this, x_42:=Heap[this, x_42] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding_exhale.vpr@48.3--48.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@48.3--48.27) [47064]"}
        perm <= Mask[this, x_42];
    }
    Mask := Mask[this, x_42:=Mask[this, x_42] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in
  //     this.x == old((unfolding acc(P(this), write) in this.x)) + 1) -- unfolding_exhale.vpr@49.3--49.128
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@49.10--49.128) [47067]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old((unfolding acc(P(this), write) in this.x)) + 1)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@49.10--49.128) [47068]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@49.10--49.128) [47069]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      Unfolding1Heap := oldHeap;
      Unfolding1Mask := oldMask;
      assume P#trigger(Unfolding1Heap, P(this));
      assume Unfolding1Heap[null, P(this)] == FrameFragment(Unfolding1Heap[this, x_42]);
      ExhaleWellDef1Heap := Unfolding1Heap;
      ExhaleWellDef1Mask := Unfolding1Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@49.10--49.128) [47070]"}
          perm <= Unfolding1Mask[null, P(this)];
      }
      Unfolding1Mask := Unfolding1Mask[null, P(this):=Unfolding1Mask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      Unfolding1Mask := Unfolding1Mask[this, x_42:=Unfolding1Mask[this, x_42] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@49.10--49.128) [47071]"}
        HasDirectPerm(Unfolding1Mask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old((unfolding acc(P(this), write) in this.x)) + 1 might not hold. (unfolding_exhale.vpr@49.10--49.128) [47072]"}
      Heap[this, x_42] == oldHeap[this, x_42] + 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method success4
// ==================================================

procedure success4(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: this.x := this.x + 1 -- unfolding_exhale.vpr@56.3--56.23
    
    // -- Check definedness of this.x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@56.3--56.23) [47073]"}
        HasDirectPerm(Mask, this, x_42);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@56.3--56.23) [47074]"}
      FullPerm == Mask[this, x_42];
    Heap := Heap[this, x_42:=Heap[this, x_42] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding_exhale.vpr@57.3--57.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@57.3--57.27) [47077]"}
        perm <= Mask[this, x_42];
    }
    Mask := Mask[this, x_42:=Mask[this, x_42] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in this.x == old(this.x) + 1) -- unfolding_exhale.vpr@58.3--58.93
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@58.10--58.93) [47080]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x) + 1)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@58.10--58.93) [47081]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@58.10--58.93) [47082]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@58.10--58.93) [47083]"}
        HasDirectPerm(oldMask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old(this.x) + 1 might not hold. (unfolding_exhale.vpr@58.10--58.93) [47084]"}
      Heap[this, x_42] == oldHeap[this, x_42] + 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fail1
// ==================================================

procedure fail1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding_exhale.vpr@65.3--65.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@65.3--65.27) [47087]"}
        perm <= Mask[this, x_42];
    }
    Mask := Mask[this, x_42:=Mask[this, x_42] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in
  //     this.x == old((unfolding acc(P(this), write) in this.x))) -- unfolding_exhale.vpr@67.3--67.125
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@67.11--67.125) [47090]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old((unfolding acc(P(this), write) in this.x)))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@67.11--67.125) [47091]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@67.11--67.125) [47092]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      Unfolding1Heap := oldHeap;
      Unfolding1Mask := oldMask;
      assume P#trigger(Unfolding1Heap, P(this));
      assume Unfolding1Heap[null, P(this)] == FrameFragment(Unfolding1Heap[this, x_42]);
      ExhaleWellDef1Heap := Unfolding1Heap;
      ExhaleWellDef1Mask := Unfolding1Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@67.11--67.125) [47093]"}
          perm <= Unfolding1Mask[null, P(this)];
      }
      Unfolding1Mask := Unfolding1Mask[null, P(this):=Unfolding1Mask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      Unfolding1Mask := Unfolding1Mask[this, x_42:=Unfolding1Mask[this, x_42] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@67.11--67.125) [47094]"}
        HasDirectPerm(Unfolding1Mask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old((unfolding acc(P(this), write) in this.x)) might not hold. (unfolding_exhale.vpr@67.11--67.125) [47095]"}
      Heap[this, x_42] == oldHeap[this, x_42];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method fail2
// ==================================================

procedure fail2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: this.x := 0 -- unfolding_exhale.vpr@74.3--74.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@74.3--74.14) [47096]"}
      FullPerm == Mask[this, x_42];
    Heap := Heap[this, x_42:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding_exhale.vpr@75.3--75.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@75.3--75.27) [47099]"}
        perm <= Mask[this, x_42];
    }
    Mask := Mask[this, x_42:=Mask[this, x_42] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_42]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (unfolding acc(P(this), write) in this.x == old(this.x)) -- unfolding_exhale.vpr@77.3--77.89
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@77.10--77.89) [47102]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_42]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (unfolding_exhale.vpr@77.10--77.89) [47103]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_42:=UnfoldingMask[this, x_42] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@77.10--77.89) [47104]"}
        HasDirectPerm(UnfoldingMask, this, x_42);
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (unfolding_exhale.vpr@77.10--77.89) [47105]"}
        HasDirectPerm(oldMask, this, x_42);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Exhale might fail. Assertion this.x == old(this.x) might not hold. (unfolding_exhale.vpr@77.10--77.89) [47106]"}
      Heap[this, x_42] == oldHeap[this, x_42];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_42:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}