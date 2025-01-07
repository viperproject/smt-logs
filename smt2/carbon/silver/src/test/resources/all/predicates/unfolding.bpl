// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:19:58
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@16.11--16.53) [150823]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@16.11--16.53) [150824]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@16.11--16.53) [150825]"}
        HasDirectPerm(oldMask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fail10 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@14.11--14.30) [150826]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of fail10 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@16.11--16.53) [150827]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of fail10 might not hold. Assertion this.x == old(this.x) might not hold. (unfolding.vpr@16.11--16.53) [150828]"}
      Heap[this, x_36] == oldHeap[this, x_36];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method success10
// ==================================================

procedure success10(this: Ref) returns ()
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
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old((unfolding acc(P(this), write) in this.x)))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@23.11--23.74) [150829]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@23.11--23.74) [150830]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      Unfolding1Heap := oldHeap;
      Unfolding1Mask := oldMask;
      assume P#trigger(Unfolding1Heap, P(this));
      assume Unfolding1Heap[null, P(this)] == FrameFragment(Unfolding1Heap[this, x_36]);
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@23.11--23.74) [150831]"}
          perm <= Unfolding1Mask[null, P(this)];
      }
      Unfolding1Mask := Unfolding1Mask[null, P(this):=Unfolding1Mask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      Unfolding1Mask := Unfolding1Mask[this, x_36:=Unfolding1Mask[this, x_36] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@23.11--23.74) [150832]"}
        HasDirectPerm(Unfolding1Mask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of success10 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@22.11--22.30) [150833]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of success10 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@23.11--23.74) [150834]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of success10 might not hold. Assertion this.x == old((unfolding acc(P(this), write) in this.x)) might not hold. (unfolding.vpr@23.11--23.74) [150835]"}
      Heap[this, x_36] == oldHeap[this, x_36];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method success2
// ==================================================

procedure success2(this: Ref) returns ()
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
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
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
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@30.11--30.53) [150836]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@30.11--30.53) [150837]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@30.11--30.53) [150838]"}
        HasDirectPerm(oldMask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding.vpr@32.3--32.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding.vpr@32.3--32.15) [150841]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of success2 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@29.11--29.30) [150843]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of success2 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@30.11--30.53) [150844]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of success2 might not hold. Assertion this.x == old(this.x) might not hold. (unfolding.vpr@30.11--30.53) [150845]"}
      Heap[this, x_36] == oldHeap[this, x_36];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method fail5
// ==================================================

procedure fail5(this: Ref) returns ()
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
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x) + 1)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@39.11--39.57) [150846]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@39.11--39.57) [150847]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@39.11--39.57) [150848]"}
        HasDirectPerm(oldMask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(P(this), write) -- unfolding.vpr@41.3--41.17
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(this) might fail. There might be insufficient permission to access P(this) (unfolding.vpr@41.3--41.17) [150851]"}
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
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.x := this.x + 1 -- unfolding.vpr@42.3--42.23
    
    // -- Check definedness of this.x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding.vpr@42.3--42.23) [150853]"}
        HasDirectPerm(Mask, this, x_36);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding.vpr@42.3--42.23) [150854]"}
      FullPerm == Mask[this, x_36];
    Heap := Heap[this, x_36:=Heap[this, x_36] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding.vpr@43.3--43.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding.vpr@43.3--43.15) [150857]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fail5 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@37.11--37.30) [150859]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of fail5 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@39.11--39.57) [150860]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of fail5 might not hold. Assertion this.x == old(this.x) + 1 might not hold. (unfolding.vpr@39.11--39.57) [150861]"}
      Heap[this, x_36] == oldHeap[this, x_36] + 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method success5
// ==================================================

procedure success5(this: Ref) returns ()
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
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old((unfolding acc(P(this), write) in this.x)) + 1)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@50.12--50.105) [150862]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@50.12--50.105) [150863]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      Unfolding1Heap := oldHeap;
      Unfolding1Mask := oldMask;
      assume P#trigger(Unfolding1Heap, P(this));
      assume Unfolding1Heap[null, P(this)] == FrameFragment(Unfolding1Heap[this, x_36]);
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@50.12--50.105) [150864]"}
          perm <= Unfolding1Mask[null, P(this)];
      }
      Unfolding1Mask := Unfolding1Mask[null, P(this):=Unfolding1Mask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      Unfolding1Mask := Unfolding1Mask[this, x_36:=Unfolding1Mask[this, x_36] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@50.12--50.105) [150865]"}
        HasDirectPerm(Unfolding1Mask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(P(this), write) -- unfolding.vpr@52.3--52.29
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(this) might fail. There might be insufficient permission to access P(this) (unfolding.vpr@52.3--52.29) [150868]"}
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
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.x := this.x + 1 -- unfolding.vpr@53.3--53.23
    
    // -- Check definedness of this.x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding.vpr@53.3--53.23) [150870]"}
        HasDirectPerm(Mask, this, x_36);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding.vpr@53.3--53.23) [150871]"}
      FullPerm == Mask[this, x_36];
    Heap := Heap[this, x_36:=Heap[this, x_36] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding.vpr@54.3--54.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding.vpr@54.3--54.27) [150874]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of success5 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@49.11--49.30) [150876]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of success5 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@50.12--50.105) [150877]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of success5 might not hold. Assertion this.x == old((unfolding acc(P(this), write) in this.x)) + 1 might not hold. (unfolding.vpr@50.12--50.105) [150878]"}
      Heap[this, x_36] == oldHeap[this, x_36] + 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method success4
// ==================================================

procedure success4(this: Ref) returns ()
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
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
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
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x) + 1)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@61.12--61.70) [150879]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@61.12--61.70) [150880]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@61.12--61.70) [150881]"}
        HasDirectPerm(oldMask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.x := this.x + 1 -- unfolding.vpr@63.3--63.23
    
    // -- Check definedness of this.x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding.vpr@63.3--63.23) [150882]"}
        HasDirectPerm(Mask, this, x_36);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding.vpr@63.3--63.23) [150883]"}
      FullPerm == Mask[this, x_36];
    Heap := Heap[this, x_36:=Heap[this, x_36] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding.vpr@64.3--64.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding.vpr@64.3--64.27) [150886]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of success4 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@60.11--60.30) [150888]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of success4 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@61.12--61.70) [150889]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of success4 might not hold. Assertion this.x == old(this.x) + 1 might not hold. (unfolding.vpr@61.12--61.70) [150890]"}
      Heap[this, x_36] == oldHeap[this, x_36] + 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method fail1
// ==================================================

procedure fail1(this: Ref) returns ()
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
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
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
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old((unfolding acc(P(this), write) in this.x)))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@72.12--72.101) [150891]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@72.12--72.101) [150892]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      Unfolding1Heap := oldHeap;
      Unfolding1Mask := oldMask;
      assume P#trigger(Unfolding1Heap, P(this));
      assume Unfolding1Heap[null, P(this)] == FrameFragment(Unfolding1Heap[this, x_36]);
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@72.12--72.101) [150893]"}
          perm <= Unfolding1Mask[null, P(this)];
      }
      Unfolding1Mask := Unfolding1Mask[null, P(this):=Unfolding1Mask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      Unfolding1Mask := Unfolding1Mask[this, x_36:=Unfolding1Mask[this, x_36] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@72.12--72.101) [150894]"}
        HasDirectPerm(Unfolding1Mask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding.vpr@74.3--74.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding.vpr@74.3--74.27) [150897]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fail1 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@70.11--70.30) [150899]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of fail1 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@72.12--72.101) [150900]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of fail1 might not hold. Assertion this.x == old((unfolding acc(P(this), write) in this.x)) might not hold. (unfolding.vpr@72.12--72.101) [150901]"}
      Heap[this, x_36] == oldHeap[this, x_36];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method fail2
// ==================================================

procedure fail2(this: Ref) returns ()
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
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
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
    PostMask := PostMask[null, P(this):=PostMask[null, P(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(P(this), write) in this.x == old(this.x))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(this) (unfolding.vpr@82.12--82.66) [150902]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@82.12--82.66) [150903]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (unfolding.vpr@82.12--82.66) [150904]"}
        HasDirectPerm(oldMask, this, x_36);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, P#sm(this):=PostHeap[null, P#sm(this)][this, x_36:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, x_36] == oldHeap[this, x_36];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.x := 0 -- unfolding.vpr@84.3--84.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (unfolding.vpr@84.3--84.14) [150905]"}
      FullPerm == Mask[this, x_36];
    Heap := Heap[this, x_36:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(this), write) -- unfolding.vpr@85.3--85.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(this) might fail. There might be insufficient permission to access this.x (unfolding.vpr@85.3--85.27) [150908]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(this));
    assume Heap[null, P(this)] == FrameFragment(Heap[this, x_36]);
    if (!HasDirectPerm(Mask, null, P(this))) {
      Heap := Heap[null, P#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(this):=freshVersion];
    }
    Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of fail2 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@80.11--80.30) [150910]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume P#trigger(UnfoldingHeap, P(this));
      assume UnfoldingHeap[null, P(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of fail2 might not hold. There might be insufficient permission to access P(this) (unfolding.vpr@82.12--82.66) [150911]"}
          perm <= UnfoldingMask[null, P(this)];
      }
      UnfoldingMask := UnfoldingMask[null, P(this):=UnfoldingMask[null, P(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of fail2 might not hold. Assertion this.x == old(this.x) might not hold. (unfolding.vpr@82.12--82.66) [150912]"}
      Heap[this, x_36] == oldHeap[this, x_36];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, P#sm(this):=Heap[null, P#sm(this)][this, x_36:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}