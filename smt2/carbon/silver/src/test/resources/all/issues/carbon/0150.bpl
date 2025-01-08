// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:02:31
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0150.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0150-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique Tree_height: Field NormalField int;
axiom !IsPredicateField(Tree_height);
axiom !IsWandField(Tree_height);

// ==================================================
// Translation of predicate Tree_valid
// ==================================================

type PredicateType_Tree_valid;
function  Tree_valid(self: Ref): Field PredicateType_Tree_valid FrameType;
function  Tree_valid#sm(self: Ref): Field PredicateType_Tree_valid PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(Tree_valid(self)) }
  PredicateMaskField(Tree_valid(self)) == Tree_valid#sm(self)
);
axiom (forall self: Ref ::
  { Tree_valid(self) }
  IsPredicateField(Tree_valid(self))
);
axiom (forall self: Ref ::
  { Tree_valid(self) }
  getPredWandId(Tree_valid(self)) == 0
);
function  Tree_valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Tree_valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { Tree_valid(self), Tree_valid(self2) }
  Tree_valid(self) == Tree_valid(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { Tree_valid#sm(self), Tree_valid#sm(self2) }
  Tree_valid#sm(self) == Tree_valid#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { Tree_valid#trigger(Heap, Tree_valid(self)) }
  Tree_valid#everUsed(Tree_valid(self))
);

procedure Tree_valid#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Tree_valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := 1 / 10;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 10 might be negative. (0150.vpr@6.1--8.2) [195162]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> self != null;
    Mask := Mask[self, Tree_height:=Mask[self, Tree_height] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method callee
// ==================================================

procedure callee(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Tree_valid(self):=Mask[null, Tree_valid(self)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(Tree_valid(self), write) in self.Tree_height == 0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Tree_valid#trigger(UnfoldingHeap, Tree_valid(self));
      assume UnfoldingHeap[null, Tree_valid(self)] == FrameFragment(UnfoldingHeap[self, Tree_height]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Tree_valid(self) (0150.vpr@12.13--12.76) [195163]"}
          perm <= UnfoldingMask[null, Tree_valid(self)];
      }
      UnfoldingMask := UnfoldingMask[null, Tree_valid(self):=UnfoldingMask[null, Tree_valid(self)] - perm];
      perm := 1 / 10;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 10 might be negative. (0150.vpr@12.13--12.76) [195164]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> self != null;
      UnfoldingMask := UnfoldingMask[self, Tree_height:=UnfoldingMask[self, Tree_height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access self.Tree_height (0150.vpr@12.13--12.76) [195165]"}
        HasDirectPerm(UnfoldingMask, self, Tree_height);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Tree_valid#sm(self):=Heap[null, Tree_valid#sm(self)][self, Tree_height:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Tree_valid#trigger(UnfoldingHeap, Tree_valid(self));
      assume UnfoldingHeap[null, Tree_valid(self)] == FrameFragment(UnfoldingHeap[self, Tree_height]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, Tree_valid(self):=UnfoldingMask[null, Tree_valid(self)] - perm];
      perm := 1 / 10;
      assume perm > NoPerm ==> self != null;
      UnfoldingMask := UnfoldingMask[self, Tree_height:=UnfoldingMask[self, Tree_height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[self, Tree_height] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
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
    assume Heap[self, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Tree_valid(self):=Mask[null, Tree_valid(self)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(Tree_valid(self), write) -- 0150.vpr@19.5--19.40
    assume Tree_valid#trigger(Heap, Tree_valid(self));
    assume Heap[null, Tree_valid(self)] == FrameFragment(Heap[self, Tree_height]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Tree_valid(self) might fail. There might be insufficient permission to access Tree_valid(self) (0150.vpr@19.5--19.40) [195168]"}
        perm <= Mask[null, Tree_valid(self)];
    }
    Mask := Mask[null, Tree_valid(self):=Mask[null, Tree_valid(self)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Tree_valid(self))) {
        havoc newVersion;
        Heap := Heap[null, Tree_valid(self):=newVersion];
      }
    perm := 1 / 10;
    assert {:msg "  Unfolding Tree_valid(self) might fail. Fraction 1 / 10 might be negative. (0150.vpr@19.5--19.40) [195169]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> self != null;
    Mask := Mask[self, Tree_height:=Mask[self, Tree_height] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: callee(self) -- 0150.vpr@21.5--21.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      
      // -- Execute definedness check of (unfolding acc(Tree_valid(self), write) in self.Tree_height == 0) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume Tree_valid#trigger(UnfoldingHeap, Tree_valid(self));
        assume UnfoldingHeap[null, Tree_valid(self)] == FrameFragment(UnfoldingHeap[self, Tree_height]);
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method callee might not hold. There might be insufficient permission to access Tree_valid(self) (0150.vpr@21.5--21.17) [195170]"}
            perm <= UnfoldingMask[null, Tree_valid(self)];
        }
        UnfoldingMask := UnfoldingMask[null, Tree_valid(self):=UnfoldingMask[null, Tree_valid(self)] - perm];
        perm := 1 / 10;
        assert {:msg "  The precondition of method callee might not hold. Fraction 1 / 10 might be negative. (0150.vpr@21.5--21.17) [195171]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> self != null;
        UnfoldingMask := UnfoldingMask[self, Tree_height:=UnfoldingMask[self, Tree_height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, Tree_valid#sm(self):=Heap[null, Tree_valid#sm(self)][self, Tree_height:=true]];
          assume state(Heap, Mask);
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method callee might not hold. There might be insufficient permission to access Tree_valid(self) (0150.vpr@21.5--21.17) [195172]"}
          perm <= Mask[null, Tree_valid(self)];
      }
      Mask := Mask[null, Tree_valid(self):=Mask[null, Tree_valid(self)] - perm];
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume Tree_valid#trigger(UnfoldingHeap, Tree_valid(self));
        assume UnfoldingHeap[null, Tree_valid(self)] == FrameFragment(UnfoldingHeap[self, Tree_height]);
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method callee might not hold. There might be insufficient permission to access Tree_valid(self) (0150.vpr@21.5--21.17) [195173]"}
            perm <= UnfoldingMask[null, Tree_valid(self)];
        }
        UnfoldingMask := UnfoldingMask[null, Tree_valid(self):=UnfoldingMask[null, Tree_valid(self)] - perm];
        perm := 1 / 10;
        assert {:msg "  The precondition of method callee might not hold. Fraction 1 / 10 might be negative. (0150.vpr@21.5--21.17) [195174]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> self != null;
        UnfoldingMask := UnfoldingMask[self, Tree_height:=UnfoldingMask[self, Tree_height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  The precondition of method callee might not hold. Assertion self.Tree_height == 0 might not hold. (0150.vpr@21.5--21.17) [195175]"}
        Heap[self, Tree_height] == 0;
      
      // -- Free assumptions (exhale module)
        Heap := Heap[null, Tree_valid#sm(self):=Heap[null, Tree_valid#sm(self)][self, Tree_height:=true]];
        assume state(Heap, Mask);
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}