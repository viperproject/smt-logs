// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0554.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0554-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_77: Ref, f_85: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_77, f_85] }
  Heap[o_77, $allocated] ==> Heap[Heap[o_77, f_85], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_78: Ref, f_86: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_78, f_86] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_78, f_86) ==> Heap[o_78, f_86] == ExhaleHeap[o_78, f_86]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_35), ExhaleHeap[null, PredicateMaskField(pm_f_35)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsPredicateField(pm_f_35) ==> Heap[null, PredicateMaskField(pm_f_35)] == ExhaleHeap[null, PredicateMaskField(pm_f_35)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_35) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsPredicateField(pm_f_35) ==> (forall <A, B> o2_35: Ref, f_86: (Field A B) ::
    { ExhaleHeap[o2_35, f_86] }
    Heap[null, PredicateMaskField(pm_f_35)][o2_35, f_86] ==> Heap[o2_35, f_86] == ExhaleHeap[o2_35, f_86]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_35), ExhaleHeap[null, WandMaskField(pm_f_35)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsWandField(pm_f_35) ==> Heap[null, WandMaskField(pm_f_35)] == ExhaleHeap[null, WandMaskField(pm_f_35)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_35: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_35) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_35) && IsWandField(pm_f_35) ==> (forall <A, B> o2_35: Ref, f_86: (Field A B) ::
    { ExhaleHeap[o2_35, f_86] }
    Heap[null, WandMaskField(pm_f_35)][o2_35, f_86] ==> Heap[o2_35, f_86] == ExhaleHeap[o2_35, f_86]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_78: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_78, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_78, $allocated] ==> ExhaleHeap[o_78, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_77: Ref, f_87: (Field A B), v: B ::
  { Heap[o_77, f_87:=v] }
  succHeap(Heap, Heap[o_77, f_87:=v])
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

const unique data: Field NormalField int;
axiom !IsPredicateField(data);
axiom !IsWandField(data);
const unique next_child: Field NormalField Ref;
axiom !IsPredicateField(next_child);
axiom !IsWandField(next_child);
const unique next_sibling: Field NormalField Ref;
axiom !IsPredicateField(next_sibling);
axiom !IsWandField(next_sibling);

// ==================================================
// Translation of predicate tree
// ==================================================

type PredicateType_tree;
function  tree_1(this: Ref): Field PredicateType_tree FrameType;
function  tree#sm(this: Ref): Field PredicateType_tree PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(tree_1(this)) }
  PredicateMaskField(tree_1(this)) == tree#sm(this)
);
axiom (forall this: Ref ::
  { tree_1(this) }
  IsPredicateField(tree_1(this))
);
axiom (forall this: Ref ::
  { tree_1(this) }
  getPredWandId(tree_1(this)) == 0
);
function  tree#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  tree#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { tree_1(this), tree_1(this2) }
  tree_1(this) == tree_1(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { tree#sm(this), tree#sm(this2) }
  tree#sm(this) == tree#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { tree#trigger(Heap, tree_1(this)) }
  tree#everUsed(tree_1(this))
);

procedure tree#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of tree
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next_child:=Mask[this, next_child] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next_sibling:=Mask[this, next_sibling] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next_child != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [62669]"}
        HasDirectPerm(Mask, this, next_child);
    if (Heap[this, next_child] != null) {
      
      // -- Check definedness of acc(tree(this.next_child), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [62670]"}
          HasDirectPerm(Mask, this, next_child);
      perm := FullPerm;
      Mask := Mask[null, tree_1(Heap[this, next_child]):=Mask[null, tree_1(Heap[this, next_child])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.next_sibling != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [62671]"}
        HasDirectPerm(Mask, this, next_sibling);
    if (Heap[this, next_sibling] != null) {
      
      // -- Check definedness of acc(tree(this.next_sibling), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [62672]"}
          HasDirectPerm(Mask, this, next_sibling);
      perm := FullPerm;
      Mask := Mask[null, tree_1(Heap[this, next_sibling]):=Mask[null, tree_1(Heap[this, next_sibling])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.next_child == null && this.next_sibling == null || this.next_child != null && this.next_sibling != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [62673]"}
        HasDirectPerm(Mask, this, next_child);
      if (Heap[this, next_child] == null) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [62674]"}
          HasDirectPerm(Mask, this, next_sibling);
      }
      if (!(Heap[this, next_child] == null && Heap[this, next_sibling] == null)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [62675]"}
          HasDirectPerm(Mask, this, next_child);
        if (Heap[this, next_child] != null) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [62676]"}
            HasDirectPerm(Mask, this, next_sibling);
        }
      }
    assume (Heap[this, next_child] == null && Heap[this, next_sibling] == null) || (Heap[this, next_child] != null && Heap[this, next_sibling] != null);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method treeTest
// ==================================================

procedure treeTest() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var t_2: Ref;
  var t0_1: Ref;
  var t1_1: Ref;
  var t2_1: Ref;
  var t5_2: Ref;
  var ctr: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[t_2, $allocated];
    assume Heap[t0_1, $allocated];
    assume Heap[t1_1, $allocated];
    assume Heap[t2_1, $allocated];
    assume Heap[t5_2, $allocated];
    assume Heap[ctr, $allocated];
  
  // -- Translating statement: t := new(data, next_child, next_sibling) -- 0554.vpr@18.3--18.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    t_2 := freshObj;
    Mask := Mask[t_2, data:=Mask[t_2, data] + FullPerm];
    Mask := Mask[t_2, next_child:=Mask[t_2, next_child] + FullPerm];
    Mask := Mask[t_2, next_sibling:=Mask[t_2, next_sibling] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: t.next_child := null -- 0554.vpr@19.3--19.23
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t.next_child (0554.vpr@19.3--19.23) [62677]"}
      FullPerm == Mask[t_2, next_child];
    Heap := Heap[t_2, next_child:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: t.next_sibling := null -- 0554.vpr@20.3--20.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t.next_sibling (0554.vpr@20.3--20.25) [62678]"}
      FullPerm == Mask[t_2, next_sibling];
    Heap := Heap[t_2, next_sibling:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t), write) -- 0554.vpr@21.3--21.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access t.data (0554.vpr@21.3--21.15) [62681]"}
        perm <= Mask[t_2, data];
    }
    Mask := Mask[t_2, data:=Mask[t_2, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access t.next_child (0554.vpr@21.3--21.15) [62683]"}
        perm <= Mask[t_2, next_child];
    }
    Mask := Mask[t_2, next_child:=Mask[t_2, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access t.next_sibling (0554.vpr@21.3--21.15) [62685]"}
        perm <= Mask[t_2, next_sibling];
    }
    Mask := Mask[t_2, next_sibling:=Mask[t_2, next_sibling] - perm];
    if (Heap[t_2, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access tree(t.next_child) (0554.vpr@21.3--21.15) [62687]"}
          perm <= Mask[null, tree_1(Heap[t_2, next_child])];
      }
      Mask := Mask[null, tree_1(Heap[t_2, next_child]):=Mask[null, tree_1(Heap[t_2, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t_2), Heap[null, tree_1(t_2)], tree_1(Heap[t_2, next_child]), Heap[null, tree_1(Heap[t_2, next_child])]);
    }
    if (Heap[t_2, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access tree(t.next_sibling) (0554.vpr@21.3--21.15) [62689]"}
          perm <= Mask[null, tree_1(Heap[t_2, next_sibling])];
      }
      Mask := Mask[null, tree_1(Heap[t_2, next_sibling]):=Mask[null, tree_1(Heap[t_2, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t_2), Heap[null, tree_1(t_2)], tree_1(Heap[t_2, next_sibling]), Heap[null, tree_1(Heap[t_2, next_sibling])]);
    }
    assert {:msg "  Folding tree(t) might fail. Assertion t.next_child == null && t.next_sibling == null || t.next_child != null && t.next_sibling != null might not hold. (0554.vpr@21.3--21.15) [62690]"}
      (Heap[t_2, next_child] == null && Heap[t_2, next_sibling] == null) || (Heap[t_2, next_child] != null && Heap[t_2, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree_1(t_2):=Mask[null, tree_1(t_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree_1(t_2));
    assume Heap[null, tree_1(t_2)] == CombineFrames(FrameFragment(Heap[t_2, data]), CombineFrames(FrameFragment(Heap[t_2, next_child]), CombineFrames(FrameFragment(Heap[t_2, next_sibling]), CombineFrames(FrameFragment((if Heap[t_2, next_child] != null then Heap[null, tree_1(Heap[t_2, next_child])] else EmptyFrame)), FrameFragment((if Heap[t_2, next_sibling] != null then Heap[null, tree_1(Heap[t_2, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree_1(t_2))) {
      Heap := Heap[null, tree#sm(t_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree_1(t_2):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t_2):=Heap[null, tree#sm(t_2)][t_2, data:=true]];
    Heap := Heap[null, tree#sm(t_2):=Heap[null, tree#sm(t_2)][t_2, next_child:=true]];
    Heap := Heap[null, tree#sm(t_2):=Heap[null, tree#sm(t_2)][t_2, next_sibling:=true]];
    if (Heap[t_2, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
        { newPMask[o_5, f_11] }
        Heap[null, tree#sm(t_2)][o_5, f_11] || Heap[null, tree#sm(Heap[t_2, next_child])][o_5, f_11] ==> newPMask[o_5, f_11]
      );
      Heap := Heap[null, tree#sm(t_2):=newPMask];
    }
    if (Heap[t_2, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
        { newPMask[o_6, f_12] }
        Heap[null, tree#sm(t_2)][o_6, f_12] || Heap[null, tree#sm(Heap[t_2, next_sibling])][o_6, f_12] ==> newPMask[o_6, f_12]
      );
      Heap := Heap[null, tree#sm(t_2):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: t0 := new(data, next_child, next_sibling) -- 0554.vpr@24.3--24.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    t0_1 := freshObj;
    Mask := Mask[t0_1, data:=Mask[t0_1, data] + FullPerm];
    Mask := Mask[t0_1, next_child:=Mask[t0_1, next_child] + FullPerm];
    Mask := Mask[t0_1, next_sibling:=Mask[t0_1, next_sibling] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: t0.next_child := null -- 0554.vpr@25.3--25.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t0.next_child (0554.vpr@25.3--25.24) [62692]"}
      FullPerm == Mask[t0_1, next_child];
    Heap := Heap[t0_1, next_child:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: t0.next_sibling := null -- 0554.vpr@26.3--26.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t0.next_sibling (0554.vpr@26.3--26.26) [62693]"}
      FullPerm == Mask[t0_1, next_sibling];
    Heap := Heap[t0_1, next_sibling:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t0), write) -- 0554.vpr@27.3--27.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access t0.data (0554.vpr@27.3--27.16) [62696]"}
        perm <= Mask[t0_1, data];
    }
    Mask := Mask[t0_1, data:=Mask[t0_1, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access t0.next_child (0554.vpr@27.3--27.16) [62698]"}
        perm <= Mask[t0_1, next_child];
    }
    Mask := Mask[t0_1, next_child:=Mask[t0_1, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access t0.next_sibling (0554.vpr@27.3--27.16) [62700]"}
        perm <= Mask[t0_1, next_sibling];
    }
    Mask := Mask[t0_1, next_sibling:=Mask[t0_1, next_sibling] - perm];
    if (Heap[t0_1, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access tree(t0.next_child) (0554.vpr@27.3--27.16) [62702]"}
          perm <= Mask[null, tree_1(Heap[t0_1, next_child])];
      }
      Mask := Mask[null, tree_1(Heap[t0_1, next_child]):=Mask[null, tree_1(Heap[t0_1, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t0_1), Heap[null, tree_1(t0_1)], tree_1(Heap[t0_1, next_child]), Heap[null, tree_1(Heap[t0_1, next_child])]);
    }
    if (Heap[t0_1, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access tree(t0.next_sibling) (0554.vpr@27.3--27.16) [62704]"}
          perm <= Mask[null, tree_1(Heap[t0_1, next_sibling])];
      }
      Mask := Mask[null, tree_1(Heap[t0_1, next_sibling]):=Mask[null, tree_1(Heap[t0_1, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t0_1), Heap[null, tree_1(t0_1)], tree_1(Heap[t0_1, next_sibling]), Heap[null, tree_1(Heap[t0_1, next_sibling])]);
    }
    assert {:msg "  Folding tree(t0) might fail. Assertion t0.next_child == null && t0.next_sibling == null || t0.next_child != null && t0.next_sibling != null might not hold. (0554.vpr@27.3--27.16) [62705]"}
      (Heap[t0_1, next_child] == null && Heap[t0_1, next_sibling] == null) || (Heap[t0_1, next_child] != null && Heap[t0_1, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree_1(t0_1):=Mask[null, tree_1(t0_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree_1(t0_1));
    assume Heap[null, tree_1(t0_1)] == CombineFrames(FrameFragment(Heap[t0_1, data]), CombineFrames(FrameFragment(Heap[t0_1, next_child]), CombineFrames(FrameFragment(Heap[t0_1, next_sibling]), CombineFrames(FrameFragment((if Heap[t0_1, next_child] != null then Heap[null, tree_1(Heap[t0_1, next_child])] else EmptyFrame)), FrameFragment((if Heap[t0_1, next_sibling] != null then Heap[null, tree_1(Heap[t0_1, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree_1(t0_1))) {
      Heap := Heap[null, tree#sm(t0_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree_1(t0_1):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t0_1):=Heap[null, tree#sm(t0_1)][t0_1, data:=true]];
    Heap := Heap[null, tree#sm(t0_1):=Heap[null, tree#sm(t0_1)][t0_1, next_child:=true]];
    Heap := Heap[null, tree#sm(t0_1):=Heap[null, tree#sm(t0_1)][t0_1, next_sibling:=true]];
    if (Heap[t0_1, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, tree#sm(t0_1)][o_40, f_52] || Heap[null, tree#sm(Heap[t0_1, next_child])][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, tree#sm(t0_1):=newPMask];
    }
    if (Heap[t0_1, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
        { newPMask[o_42, f_55] }
        Heap[null, tree#sm(t0_1)][o_42, f_55] || Heap[null, tree#sm(Heap[t0_1, next_sibling])][o_42, f_55] ==> newPMask[o_42, f_55]
      );
      Heap := Heap[null, tree#sm(t0_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: t1 := new(data, next_child, next_sibling) -- 0554.vpr@30.3--30.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    t1_1 := freshObj;
    Mask := Mask[t1_1, data:=Mask[t1_1, data] + FullPerm];
    Mask := Mask[t1_1, next_child:=Mask[t1_1, next_child] + FullPerm];
    Mask := Mask[t1_1, next_sibling:=Mask[t1_1, next_sibling] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: t1.next_child := t -- 0554.vpr@31.3--31.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t1.next_child (0554.vpr@31.3--31.21) [62707]"}
      FullPerm == Mask[t1_1, next_child];
    Heap := Heap[t1_1, next_child:=t_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: t1.next_sibling := t0 -- 0554.vpr@32.3--32.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t1.next_sibling (0554.vpr@32.3--32.24) [62708]"}
      FullPerm == Mask[t1_1, next_sibling];
    Heap := Heap[t1_1, next_sibling:=t0_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t1), write) -- 0554.vpr@33.3--33.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access t1.data (0554.vpr@33.3--33.16) [62711]"}
        perm <= Mask[t1_1, data];
    }
    Mask := Mask[t1_1, data:=Mask[t1_1, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access t1.next_child (0554.vpr@33.3--33.16) [62713]"}
        perm <= Mask[t1_1, next_child];
    }
    Mask := Mask[t1_1, next_child:=Mask[t1_1, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access t1.next_sibling (0554.vpr@33.3--33.16) [62715]"}
        perm <= Mask[t1_1, next_sibling];
    }
    Mask := Mask[t1_1, next_sibling:=Mask[t1_1, next_sibling] - perm];
    if (Heap[t1_1, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access tree(t1.next_child) (0554.vpr@33.3--33.16) [62717]"}
          perm <= Mask[null, tree_1(Heap[t1_1, next_child])];
      }
      Mask := Mask[null, tree_1(Heap[t1_1, next_child]):=Mask[null, tree_1(Heap[t1_1, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t1_1), Heap[null, tree_1(t1_1)], tree_1(Heap[t1_1, next_child]), Heap[null, tree_1(Heap[t1_1, next_child])]);
    }
    if (Heap[t1_1, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access tree(t1.next_sibling) (0554.vpr@33.3--33.16) [62719]"}
          perm <= Mask[null, tree_1(Heap[t1_1, next_sibling])];
      }
      Mask := Mask[null, tree_1(Heap[t1_1, next_sibling]):=Mask[null, tree_1(Heap[t1_1, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t1_1), Heap[null, tree_1(t1_1)], tree_1(Heap[t1_1, next_sibling]), Heap[null, tree_1(Heap[t1_1, next_sibling])]);
    }
    assert {:msg "  Folding tree(t1) might fail. Assertion t1.next_child == null && t1.next_sibling == null || t1.next_child != null && t1.next_sibling != null might not hold. (0554.vpr@33.3--33.16) [62720]"}
      (Heap[t1_1, next_child] == null && Heap[t1_1, next_sibling] == null) || (Heap[t1_1, next_child] != null && Heap[t1_1, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree_1(t1_1):=Mask[null, tree_1(t1_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree_1(t1_1));
    assume Heap[null, tree_1(t1_1)] == CombineFrames(FrameFragment(Heap[t1_1, data]), CombineFrames(FrameFragment(Heap[t1_1, next_child]), CombineFrames(FrameFragment(Heap[t1_1, next_sibling]), CombineFrames(FrameFragment((if Heap[t1_1, next_child] != null then Heap[null, tree_1(Heap[t1_1, next_child])] else EmptyFrame)), FrameFragment((if Heap[t1_1, next_sibling] != null then Heap[null, tree_1(Heap[t1_1, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree_1(t1_1))) {
      Heap := Heap[null, tree#sm(t1_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree_1(t1_1):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t1_1):=Heap[null, tree#sm(t1_1)][t1_1, data:=true]];
    Heap := Heap[null, tree#sm(t1_1):=Heap[null, tree#sm(t1_1)][t1_1, next_child:=true]];
    Heap := Heap[null, tree#sm(t1_1):=Heap[null, tree#sm(t1_1)][t1_1, next_sibling:=true]];
    if (Heap[t1_1, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
        { newPMask[o_46, f_60] }
        Heap[null, tree#sm(t1_1)][o_46, f_60] || Heap[null, tree#sm(Heap[t1_1, next_child])][o_46, f_60] ==> newPMask[o_46, f_60]
      );
      Heap := Heap[null, tree#sm(t1_1):=newPMask];
    }
    if (Heap[t1_1, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_61: (Field A B) ::
        { newPMask[o, f_61] }
        Heap[null, tree#sm(t1_1)][o, f_61] || Heap[null, tree#sm(Heap[t1_1, next_sibling])][o, f_61] ==> newPMask[o, f_61]
      );
      Heap := Heap[null, tree#sm(t1_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: t2 := new(data, next_child, next_sibling) -- 0554.vpr@36.3--36.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    t2_1 := freshObj;
    Mask := Mask[t2_1, data:=Mask[t2_1, data] + FullPerm];
    Mask := Mask[t2_1, next_child:=Mask[t2_1, next_child] + FullPerm];
    Mask := Mask[t2_1, next_sibling:=Mask[t2_1, next_sibling] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: t2.next_child := null -- 0554.vpr@37.3--37.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t2.next_child (0554.vpr@37.3--37.24) [62722]"}
      FullPerm == Mask[t2_1, next_child];
    Heap := Heap[t2_1, next_child:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: t2.next_sibling := null -- 0554.vpr@38.3--38.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t2.next_sibling (0554.vpr@38.3--38.26) [62723]"}
      FullPerm == Mask[t2_1, next_sibling];
    Heap := Heap[t2_1, next_sibling:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t2), write) -- 0554.vpr@39.3--39.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access t2.data (0554.vpr@39.3--39.16) [62726]"}
        perm <= Mask[t2_1, data];
    }
    Mask := Mask[t2_1, data:=Mask[t2_1, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access t2.next_child (0554.vpr@39.3--39.16) [62728]"}
        perm <= Mask[t2_1, next_child];
    }
    Mask := Mask[t2_1, next_child:=Mask[t2_1, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access t2.next_sibling (0554.vpr@39.3--39.16) [62730]"}
        perm <= Mask[t2_1, next_sibling];
    }
    Mask := Mask[t2_1, next_sibling:=Mask[t2_1, next_sibling] - perm];
    if (Heap[t2_1, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access tree(t2.next_child) (0554.vpr@39.3--39.16) [62732]"}
          perm <= Mask[null, tree_1(Heap[t2_1, next_child])];
      }
      Mask := Mask[null, tree_1(Heap[t2_1, next_child]):=Mask[null, tree_1(Heap[t2_1, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t2_1), Heap[null, tree_1(t2_1)], tree_1(Heap[t2_1, next_child]), Heap[null, tree_1(Heap[t2_1, next_child])]);
    }
    if (Heap[t2_1, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access tree(t2.next_sibling) (0554.vpr@39.3--39.16) [62734]"}
          perm <= Mask[null, tree_1(Heap[t2_1, next_sibling])];
      }
      Mask := Mask[null, tree_1(Heap[t2_1, next_sibling]):=Mask[null, tree_1(Heap[t2_1, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(t2_1), Heap[null, tree_1(t2_1)], tree_1(Heap[t2_1, next_sibling]), Heap[null, tree_1(Heap[t2_1, next_sibling])]);
    }
    assert {:msg "  Folding tree(t2) might fail. Assertion t2.next_child == null && t2.next_sibling == null || t2.next_child != null && t2.next_sibling != null might not hold. (0554.vpr@39.3--39.16) [62735]"}
      (Heap[t2_1, next_child] == null && Heap[t2_1, next_sibling] == null) || (Heap[t2_1, next_child] != null && Heap[t2_1, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree_1(t2_1):=Mask[null, tree_1(t2_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree_1(t2_1));
    assume Heap[null, tree_1(t2_1)] == CombineFrames(FrameFragment(Heap[t2_1, data]), CombineFrames(FrameFragment(Heap[t2_1, next_child]), CombineFrames(FrameFragment(Heap[t2_1, next_sibling]), CombineFrames(FrameFragment((if Heap[t2_1, next_child] != null then Heap[null, tree_1(Heap[t2_1, next_child])] else EmptyFrame)), FrameFragment((if Heap[t2_1, next_sibling] != null then Heap[null, tree_1(Heap[t2_1, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree_1(t2_1))) {
      Heap := Heap[null, tree#sm(t2_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree_1(t2_1):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t2_1):=Heap[null, tree#sm(t2_1)][t2_1, data:=true]];
    Heap := Heap[null, tree#sm(t2_1):=Heap[null, tree#sm(t2_1)][t2_1, next_child:=true]];
    Heap := Heap[null, tree#sm(t2_1):=Heap[null, tree#sm(t2_1)][t2_1, next_sibling:=true]];
    if (Heap[t2_1, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
        { newPMask[o_14, f_3] }
        Heap[null, tree#sm(t2_1)][o_14, f_3] || Heap[null, tree#sm(Heap[t2_1, next_child])][o_14, f_3] ==> newPMask[o_14, f_3]
      );
      Heap := Heap[null, tree#sm(t2_1):=newPMask];
    }
    if (Heap[t2_1, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
        { newPMask[o_3, f_24] }
        Heap[null, tree#sm(t2_1)][o_3, f_24] || Heap[null, tree#sm(Heap[t2_1, next_sibling])][o_3, f_24] ==> newPMask[o_3, f_24]
      );
      Heap := Heap[null, tree#sm(t2_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(tree(t5), write) -- 0554.vpr@42.3--42.18
    perm := FullPerm;
    Mask := Mask[null, tree_1(t5_2):=Mask[null, tree_1(t5_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: ctr := cloneTree(t5) -- 0554.vpr@46.3--46.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := 1 / 2;
      assert {:msg "  The precondition of method cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@46.3--46.23) [62738]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method cloneTree might not hold. There might be insufficient permission to access tree(t5) (0554.vpr@46.3--46.23) [62739]"}
          perm <= Mask[null, tree_1(t5_2)];
      }
      Mask := Mask[null, tree_1(t5_2):=Mask[null, tree_1(t5_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc ctr;
    
    // -- Inhaling postcondition
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0554.vpr@46.3--46.23) [62740]"}
        perm >= NoPerm;
      Mask := Mask[null, tree_1(t5_2):=Mask[null, tree_1(t5_2)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, tree_1(ctr):=Mask[null, tree_1(ctr)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume tree#trigger(UnfoldingHeap, tree_1(t5_2));
        assume UnfoldingHeap[null, tree_1(t5_2)] == CombineFrames(FrameFragment(UnfoldingHeap[t5_2, data]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[t5_2, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[t5_2, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_sibling])] else EmptyFrame))))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := 1 / 2;
        UnfoldingMask := UnfoldingMask[null, tree_1(t5_2):=UnfoldingMask[null, tree_1(t5_2)] - perm];
        perm := 1 / 2;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, data:=UnfoldingMask[t5_2, data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, next_child:=UnfoldingMask[t5_2, next_child] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, next_sibling:=UnfoldingMask[t5_2, next_sibling] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[t5_2, next_child] != null) {
          perm := 1 / 2;
          UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_child])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree_1(t5_2), UnfoldingHeap[null, tree_1(t5_2)], tree_1(UnfoldingHeap[t5_2, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_child])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[t5_2, next_sibling] != null) {
          perm := 1 / 2;
          UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_sibling])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree_1(t5_2), UnfoldingHeap[null, tree_1(t5_2)], tree_1(UnfoldingHeap[t5_2, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_sibling])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume (UnfoldingHeap[t5_2, next_child] == null && UnfoldingHeap[t5_2, next_sibling] == null) || (UnfoldingHeap[t5_2, next_child] != null && UnfoldingHeap[t5_2, next_sibling] != null);
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[t5_2, next_child] == Heap[ctr, next_child] && Heap[t5_2, next_sibling] == Heap[ctr, next_sibling];
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, tree#sm(t5_2):=Heap[null, tree#sm(t5_2)][t5_2, data:=true]];
        Heap := Heap[null, tree#sm(t5_2):=Heap[null, tree#sm(t5_2)][t5_2, next_child:=true]];
        Heap := Heap[null, tree#sm(t5_2):=Heap[null, tree#sm(t5_2)][t5_2, next_sibling:=true]];
        if (Heap[t5_2, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
            { newPMask[o_1, f_10] }
            Heap[null, tree#sm(t5_2)][o_1, f_10] || Heap[null, tree#sm(Heap[t5_2, next_child])][o_1, f_10] ==> newPMask[o_1, f_10]
          );
          Heap := Heap[null, tree#sm(t5_2):=newPMask];
        }
        if (Heap[t5_2, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
            { newPMask[o_15, f_51] }
            Heap[null, tree#sm(t5_2)][o_15, f_51] || Heap[null, tree#sm(Heap[t5_2, next_sibling])][o_15, f_51] ==> newPMask[o_15, f_51]
          );
          Heap := Heap[null, tree#sm(t5_2):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, data:=true]];
        Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_child:=true]];
        Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_sibling:=true]];
        if (Heap[ctr, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
            { newPMask[o_4, f_54] }
            Heap[null, tree#sm(ctr)][o_4, f_54] || Heap[null, tree#sm(Heap[ctr, next_child])][o_4, f_54] ==> newPMask[o_4, f_54]
          );
          Heap := Heap[null, tree#sm(ctr):=newPMask];
        }
        if (Heap[ctr, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
            { newPMask[o_12, f_25] }
            Heap[null, tree#sm(ctr)][o_12, f_25] || Heap[null, tree#sm(Heap[ctr, next_sibling])][o_12, f_25] ==> newPMask[o_12, f_25]
          );
          Heap := Heap[null, tree#sm(ctr):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of (unfolding acc(tree(t5), 1 / 2) in (unfolding acc(tree(ctr), write) in t5.next_child == ctr.next_child && t5.next_sibling == ctr.next_sibling)) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume tree#trigger(UnfoldingHeap, tree_1(t5_2));
        assume UnfoldingHeap[null, tree_1(t5_2)] == CombineFrames(FrameFragment(UnfoldingHeap[t5_2, data]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[t5_2, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[t5_2, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_sibling])] else EmptyFrame))))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62741]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(t5) (0554.vpr@55.12--57.91) [62742]"}
            perm <= UnfoldingMask[null, tree_1(t5_2)];
        }
        UnfoldingMask := UnfoldingMask[null, tree_1(t5_2):=UnfoldingMask[null, tree_1(t5_2)] - perm];
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62743]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, data:=UnfoldingMask[t5_2, data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62744]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, next_child:=UnfoldingMask[t5_2, next_child] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62745]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, next_sibling:=UnfoldingMask[t5_2, next_sibling] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[t5_2, next_child] != null) {
          perm := 1 / 2;
          assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62746]"}
            perm >= NoPerm;
          UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_child])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree_1(t5_2), UnfoldingHeap[null, tree_1(t5_2)], tree_1(UnfoldingHeap[t5_2, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_child])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[t5_2, next_sibling] != null) {
          perm := 1 / 2;
          assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62747]"}
            perm >= NoPerm;
          UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[t5_2, next_sibling])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree_1(t5_2), UnfoldingHeap[null, tree_1(t5_2)], tree_1(UnfoldingHeap[t5_2, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[t5_2, next_sibling])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume (UnfoldingHeap[t5_2, next_child] == null && UnfoldingHeap[t5_2, next_sibling] == null) || (UnfoldingHeap[t5_2, next_child] != null && UnfoldingHeap[t5_2, next_sibling] != null);
        assume state(UnfoldingHeap, UnfoldingMask);
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume tree#trigger(Unfolding1Heap, tree_1(ctr));
        assume Unfolding1Heap[null, tree_1(ctr)] == CombineFrames(FrameFragment(Unfolding1Heap[ctr, data]), CombineFrames(FrameFragment(Unfolding1Heap[ctr, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[ctr, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[ctr, next_child] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[ctr, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[ctr, next_sibling] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[ctr, next_sibling])] else EmptyFrame))))));
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(ctr) (0554.vpr@55.12--57.91) [62748]"}
            perm <= Unfolding1Mask[null, tree_1(ctr)];
        }
        Unfolding1Mask := Unfolding1Mask[null, tree_1(ctr):=Unfolding1Mask[null, tree_1(ctr)] - perm];
        perm := FullPerm;
        assume ctr != null;
        Unfolding1Mask := Unfolding1Mask[ctr, data:=Unfolding1Mask[ctr, data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume ctr != null;
        Unfolding1Mask := Unfolding1Mask[ctr, next_child:=Unfolding1Mask[ctr, next_child] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume ctr != null;
        Unfolding1Mask := Unfolding1Mask[ctr, next_sibling:=Unfolding1Mask[ctr, next_sibling] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[ctr, next_child] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[ctr, next_child]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[ctr, next_child])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree_1(ctr), Unfolding1Heap[null, tree_1(ctr)], tree_1(Unfolding1Heap[ctr, next_child]), Unfolding1Heap[null, tree_1(Unfolding1Heap[ctr, next_child])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        if (Unfolding1Heap[ctr, next_sibling] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[ctr, next_sibling]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[ctr, next_sibling])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree_1(ctr), Unfolding1Heap[null, tree_1(ctr)], tree_1(Unfolding1Heap[ctr, next_sibling]), Unfolding1Heap[null, tree_1(Unfolding1Heap[ctr, next_sibling])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume (Unfolding1Heap[ctr, next_child] == null && Unfolding1Heap[ctr, next_sibling] == null) || (Unfolding1Heap[ctr, next_child] != null && Unfolding1Heap[ctr, next_sibling] != null);
        assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, tree#sm(ctr):=UnfoldingHeap[null, tree#sm(ctr)][ctr, data:=true]];
          UnfoldingHeap := UnfoldingHeap[null, tree#sm(ctr):=UnfoldingHeap[null, tree#sm(ctr)][ctr, next_child:=true]];
          UnfoldingHeap := UnfoldingHeap[null, tree#sm(ctr):=UnfoldingHeap[null, tree#sm(ctr)][ctr, next_sibling:=true]];
          if (UnfoldingHeap[ctr, next_child] != null) {
            havoc newPMask;
            assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
              { newPMask[o_41, f_21] }
              UnfoldingHeap[null, tree#sm(ctr)][o_41, f_21] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[ctr, next_child])][o_41, f_21] ==> newPMask[o_41, f_21]
            );
            UnfoldingHeap := UnfoldingHeap[null, tree#sm(ctr):=newPMask];
          }
          if (UnfoldingHeap[ctr, next_sibling] != null) {
            havoc newPMask;
            assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
              { newPMask[o_23, f_13] }
              UnfoldingHeap[null, tree#sm(ctr)][o_23, f_13] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[ctr, next_sibling])][o_23, f_13] ==> newPMask[o_23, f_13]
            );
            UnfoldingHeap := UnfoldingHeap[null, tree#sm(ctr):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, tree#sm(t5_2):=Heap[null, tree#sm(t5_2)][t5_2, data:=true]];
          Heap := Heap[null, tree#sm(t5_2):=Heap[null, tree#sm(t5_2)][t5_2, next_child:=true]];
          Heap := Heap[null, tree#sm(t5_2):=Heap[null, tree#sm(t5_2)][t5_2, next_sibling:=true]];
          if (Heap[t5_2, next_child] != null) {
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
              { newPMask[o_13, f_65] }
              Heap[null, tree#sm(t5_2)][o_13, f_65] || Heap[null, tree#sm(Heap[t5_2, next_child])][o_13, f_65] ==> newPMask[o_13, f_65]
            );
            Heap := Heap[null, tree#sm(t5_2):=newPMask];
          }
          if (Heap[t5_2, next_sibling] != null) {
            havoc newPMask;
            assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
              { newPMask[o_51, f_66] }
              Heap[null, tree#sm(t5_2)][o_51, f_66] || Heap[null, tree#sm(Heap[t5_2, next_sibling])][o_51, f_66] ==> newPMask[o_51, f_66]
            );
            Heap := Heap[null, tree#sm(t5_2):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, data:=true]];
          Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_child:=true]];
          Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_sibling:=true]];
          if (Heap[ctr, next_child] != null) {
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
              { newPMask[o_52, f_14] }
              Heap[null, tree#sm(ctr)][o_52, f_14] || Heap[null, tree#sm(Heap[ctr, next_child])][o_52, f_14] ==> newPMask[o_52, f_14]
            );
            Heap := Heap[null, tree#sm(ctr):=newPMask];
          }
          if (Heap[ctr, next_sibling] != null) {
            havoc newPMask;
            assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
              { newPMask[o_20, f_50] }
              Heap[null, tree#sm(ctr)][o_20, f_50] || Heap[null, tree#sm(Heap[ctr, next_sibling])][o_20, f_50] ==> newPMask[o_20, f_50]
            );
            Heap := Heap[null, tree#sm(ctr):=newPMask];
          }
          assume state(Heap, Mask);
    assume Heap[ctr, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0554.vpr@48.3--48.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0554.vpr@48.10--48.15) [62749]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method cloneTree
// ==================================================

procedure cloneTree(this: Ref) returns (res: Ref)
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
  var newPMask: PMaskType;
  var freshObj: Ref;
  var newVersion: FrameType;
  var tmp_child: Ref;
  var tmp_sibling: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var ExhaleHeap: HeapType;
  var arg_this_1: Ref;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@52.12--52.32) [62750]"}
      perm >= NoPerm;
    Mask := Mask[null, tree_1(this):=Mask[null, tree_1(this)] + perm];
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
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@53.11--53.44) [62751]"}
      perm >= NoPerm;
    PostMask := PostMask[null, tree_1(this):=PostMask[null, tree_1(this)] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, tree_1(res):=PostMask[null, tree_1(res)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(tree(this), 1 / 2) in (unfolding acc(tree(res), write) in this.next_child == res.next_child && this.next_sibling == res.next_sibling))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tree#trigger(UnfoldingHeap, tree_1(this));
      assume UnfoldingHeap[null, tree_1(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[this, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62752]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tree(this) (0554.vpr@55.12--57.91) [62753]"}
          perm <= UnfoldingMask[null, tree_1(this)];
      }
      UnfoldingMask := UnfoldingMask[null, tree_1(this):=UnfoldingMask[null, tree_1(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62754]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62755]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_child:=UnfoldingMask[this, next_child] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62756]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_sibling:=UnfoldingMask[this, next_sibling] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next_child] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62757]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(this), UnfoldingHeap[null, tree_1(this)], tree_1(UnfoldingHeap[this, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_child])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, next_sibling] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62758]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(this), UnfoldingHeap[null, tree_1(this)], tree_1(UnfoldingHeap[this, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_sibling])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume (UnfoldingHeap[this, next_child] == null && UnfoldingHeap[this, next_sibling] == null) || (UnfoldingHeap[this, next_child] != null && UnfoldingHeap[this, next_sibling] != null);
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume tree#trigger(Unfolding1Heap, tree_1(res));
      assume Unfolding1Heap[null, tree_1(res)] == CombineFrames(FrameFragment(Unfolding1Heap[res, data]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[res, next_child] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[res, next_sibling] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tree(res) (0554.vpr@55.12--57.91) [62759]"}
          perm <= Unfolding1Mask[null, tree_1(res)];
      }
      Unfolding1Mask := Unfolding1Mask[null, tree_1(res):=Unfolding1Mask[null, tree_1(res)] - perm];
      perm := FullPerm;
      assume res != null;
      Unfolding1Mask := Unfolding1Mask[res, data:=Unfolding1Mask[res, data] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume res != null;
      Unfolding1Mask := Unfolding1Mask[res, next_child:=Unfolding1Mask[res, next_child] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume res != null;
      Unfolding1Mask := Unfolding1Mask[res, next_sibling:=Unfolding1Mask[res, next_sibling] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[res, next_child] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_child]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(res), Unfolding1Heap[null, tree_1(res)], tree_1(Unfolding1Heap[res, next_child]), Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_child])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      if (Unfolding1Heap[res, next_sibling] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_sibling]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(res), Unfolding1Heap[null, tree_1(res)], tree_1(Unfolding1Heap[res, next_sibling]), Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_sibling])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume (Unfolding1Heap[res, next_child] == null && Unfolding1Heap[res, next_sibling] == null) || (Unfolding1Heap[res, next_child] != null && Unfolding1Heap[res, next_sibling] != null);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@55.12--57.91) [62760]"}
        HasDirectPerm(Unfolding1Mask, this, next_child);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res.next_child (0554.vpr@55.12--57.91) [62761]"}
        HasDirectPerm(Unfolding1Mask, res, next_child);
      if (Unfolding1Heap[this, next_child] == Unfolding1Heap[res, next_child]) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@55.12--57.91) [62762]"}
          HasDirectPerm(Unfolding1Mask, this, next_sibling);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res.next_sibling (0554.vpr@55.12--57.91) [62763]"}
          HasDirectPerm(Unfolding1Mask, res, next_sibling);
      }
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=UnfoldingHeap[null, tree#sm(res)][res, data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=UnfoldingHeap[null, tree#sm(res)][res, next_child:=true]];
        UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=UnfoldingHeap[null, tree#sm(res)][res, next_sibling:=true]];
        if (UnfoldingHeap[res, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
            { newPMask[o_58, f_30] }
            UnfoldingHeap[null, tree#sm(res)][o_58, f_30] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[res, next_child])][o_58, f_30] ==> newPMask[o_58, f_30]
          );
          UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=newPMask];
        }
        if (UnfoldingHeap[res, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
            { newPMask[o_10, f_67] }
            UnfoldingHeap[null, tree#sm(res)][o_10, f_67] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[res, next_sibling])][o_10, f_67] ==> newPMask[o_10, f_67]
          );
          UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, tree#sm(this):=PostHeap[null, tree#sm(this)][this, data:=true]];
        PostHeap := PostHeap[null, tree#sm(this):=PostHeap[null, tree#sm(this)][this, next_child:=true]];
        PostHeap := PostHeap[null, tree#sm(this):=PostHeap[null, tree#sm(this)][this, next_sibling:=true]];
        if (PostHeap[this, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
            { newPMask[o_18, f_18] }
            PostHeap[null, tree#sm(this)][o_18, f_18] || PostHeap[null, tree#sm(PostHeap[this, next_child])][o_18, f_18] ==> newPMask[o_18, f_18]
          );
          PostHeap := PostHeap[null, tree#sm(this):=newPMask];
        }
        if (PostHeap[this, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
            { newPMask[o_66, f_28] }
            PostHeap[null, tree#sm(this)][o_66, f_28] || PostHeap[null, tree#sm(PostHeap[this, next_sibling])][o_66, f_28] ==> newPMask[o_66, f_28]
          );
          PostHeap := PostHeap[null, tree#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
        PostHeap := PostHeap[null, tree#sm(res):=PostHeap[null, tree#sm(res)][res, data:=true]];
        PostHeap := PostHeap[null, tree#sm(res):=PostHeap[null, tree#sm(res)][res, next_child:=true]];
        PostHeap := PostHeap[null, tree#sm(res):=PostHeap[null, tree#sm(res)][res, next_sibling:=true]];
        if (PostHeap[res, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
            { newPMask[o_11, f_34] }
            PostHeap[null, tree#sm(res)][o_11, f_34] || PostHeap[null, tree#sm(PostHeap[res, next_child])][o_11, f_34] ==> newPMask[o_11, f_34]
          );
          PostHeap := PostHeap[null, tree#sm(res):=newPMask];
        }
        if (PostHeap[res, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
            { newPMask[o_19, f_57] }
            PostHeap[null, tree#sm(res)][o_19, f_57] || PostHeap[null, tree#sm(PostHeap[res, next_sibling])][o_19, f_57] ==> newPMask[o_19, f_57]
          );
          PostHeap := PostHeap[null, tree#sm(res):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tree#trigger(UnfoldingHeap, tree_1(this));
      assume UnfoldingHeap[null, tree_1(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[this, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      UnfoldingMask := UnfoldingMask[null, tree_1(this):=UnfoldingMask[null, tree_1(this)] - perm];
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_child:=UnfoldingMask[this, next_child] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_sibling:=UnfoldingMask[this, next_sibling] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next_child] != null) {
        perm := 1 / 2;
        UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(this), UnfoldingHeap[null, tree_1(this)], tree_1(UnfoldingHeap[this, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_child])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, next_sibling] != null) {
        perm := 1 / 2;
        UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(this), UnfoldingHeap[null, tree_1(this)], tree_1(UnfoldingHeap[this, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_sibling])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume (UnfoldingHeap[this, next_child] == null && UnfoldingHeap[this, next_sibling] == null) || (UnfoldingHeap[this, next_child] != null && UnfoldingHeap[this, next_sibling] != null);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, next_child] == PostHeap[res, next_child] && PostHeap[this, next_sibling] == PostHeap[res, next_sibling];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: res := new(data, next_child, next_sibling) -- 0554.vpr@59.3--59.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    res := freshObj;
    Mask := Mask[res, data:=Mask[res, data] + FullPerm];
    Mask := Mask[res, next_child:=Mask[res, next_child] + FullPerm];
    Mask := Mask[res, next_sibling:=Mask[res, next_sibling] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(tree(this), 1 / 2) -- 0554.vpr@61.3--61.30
    assume tree#trigger(Heap, tree_1(this));
    assume Heap[null, tree_1(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, next_child]), CombineFrames(FrameFragment(Heap[this, next_sibling]), CombineFrames(FrameFragment((if Heap[this, next_child] != null then Heap[null, tree_1(Heap[this, next_child])] else EmptyFrame)), FrameFragment((if Heap[this, next_sibling] != null then Heap[null, tree_1(Heap[this, next_sibling])] else EmptyFrame))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [62765]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding tree(this) might fail. There might be insufficient permission to access tree(this) (0554.vpr@61.3--61.30) [62766]"}
        perm <= Mask[null, tree_1(this)];
    }
    Mask := Mask[null, tree_1(this):=Mask[null, tree_1(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, tree_1(this))) {
        havoc newVersion;
        Heap := Heap[null, tree_1(this):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [62767]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [62768]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, next_child:=Mask[this, next_child] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [62769]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, next_sibling:=Mask[this, next_sibling] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next_child] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [62770]"}
        perm >= NoPerm;
      Mask := Mask[null, tree_1(Heap[this, next_child]):=Mask[null, tree_1(Heap[this, next_child])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tree_1(this), Heap[null, tree_1(this)], tree_1(Heap[this, next_child]), Heap[null, tree_1(Heap[this, next_child])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, next_sibling] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [62771]"}
        perm >= NoPerm;
      Mask := Mask[null, tree_1(Heap[this, next_sibling]):=Mask[null, tree_1(Heap[this, next_sibling])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tree_1(this), Heap[null, tree_1(this)], tree_1(Heap[this, next_sibling]), Heap[null, tree_1(Heap[this, next_sibling])]);
      assume state(Heap, Mask);
    }
    assume (Heap[this, next_child] == null && Heap[this, next_sibling] == null) || (Heap[this, next_child] != null && Heap[this, next_sibling] != null);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next_child == null && this.next_sibling == null) -- 0554.vpr@63.3--78.4
    
    // -- Check definedness of this.next_child == null && this.next_sibling == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next_child (0554.vpr@63.6--63.58) [62772]"}
        HasDirectPerm(Mask, this, next_child);
      if (Heap[this, next_child] == null) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next_sibling (0554.vpr@63.6--63.58) [62773]"}
          HasDirectPerm(Mask, this, next_sibling);
      }
    if (Heap[this, next_child] == null && Heap[this, next_sibling] == null) {
      
      // -- Translating statement: res.next_child := null -- 0554.vpr@64.7--64.29
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_child (0554.vpr@64.7--64.29) [62774]"}
          FullPerm == Mask[res, next_child];
        Heap := Heap[res, next_child:=null];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.next_sibling := null -- 0554.vpr@65.7--65.31
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_sibling (0554.vpr@65.7--65.31) [62775]"}
          FullPerm == Mask[res, next_sibling];
        Heap := Heap[res, next_sibling:=null];
        assume state(Heap, Mask);
    } else {
      
      // -- Assumptions about local variables
        assume Heap[tmp_child, $allocated];
        assume Heap[tmp_sibling, $allocated];
      
      // -- Translating statement: tmp_child := cloneTree(this.next_child) -- 0554.vpr@71.7--71.46
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.next_child
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next_child (0554.vpr@71.7--71.46) [62776]"}
            HasDirectPerm(Mask, this, next_child);
        arg_this := Heap[this, next_child];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := 1 / 2;
          assert {:msg "  The precondition of method cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@71.7--71.46) [62777]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method cloneTree might not hold. There might be insufficient permission to access tree(this.next_child) (0554.vpr@71.7--71.46) [62778]"}
              perm <= Mask[null, tree_1(arg_this)];
          }
          Mask := Mask[null, tree_1(arg_this):=Mask[null, tree_1(arg_this)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc tmp_child;
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0554.vpr@71.7--71.46) [62779]"}
            perm >= NoPerm;
          Mask := Mask[null, tree_1(arg_this):=Mask[null, tree_1(arg_this)] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, tree_1(tmp_child):=Mask[null, tree_1(tmp_child)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree_1(arg_this));
            assume UnfoldingHeap[null, tree_1(arg_this)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            UnfoldingMask := UnfoldingMask[null, tree_1(arg_this):=UnfoldingMask[null, tree_1(arg_this)] - perm];
            perm := 1 / 2;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, data:=UnfoldingMask[arg_this, data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, next_child:=UnfoldingMask[arg_this, next_child] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, next_sibling:=UnfoldingMask[arg_this, next_sibling] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_this, next_child] != null) {
              perm := 1 / 2;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this), UnfoldingHeap[null, tree_1(arg_this)], tree_1(UnfoldingHeap[arg_this, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this, next_sibling] != null) {
              perm := 1 / 2;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this), UnfoldingHeap[null, tree_1(arg_this)], tree_1(UnfoldingHeap[arg_this, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_sibling])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume (UnfoldingHeap[arg_this, next_child] == null && UnfoldingHeap[arg_this, next_sibling] == null) || (UnfoldingHeap[arg_this, next_child] != null && UnfoldingHeap[arg_this, next_sibling] != null);
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[arg_this, next_child] == Heap[tmp_child, next_child] && Heap[arg_this, next_sibling] == Heap[tmp_child, next_sibling];
          
          // -- Free assumptions (inhale module)
            Heap := Heap[null, tree#sm(arg_this):=Heap[null, tree#sm(arg_this)][arg_this, data:=true]];
            Heap := Heap[null, tree#sm(arg_this):=Heap[null, tree#sm(arg_this)][arg_this, next_child:=true]];
            Heap := Heap[null, tree#sm(arg_this):=Heap[null, tree#sm(arg_this)][arg_this, next_sibling:=true]];
            if (Heap[arg_this, next_child] != null) {
              havoc newPMask;
              assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
                { newPMask[o_67, f_69] }
                Heap[null, tree#sm(arg_this)][o_67, f_69] || Heap[null, tree#sm(Heap[arg_this, next_child])][o_67, f_69] ==> newPMask[o_67, f_69]
              );
              Heap := Heap[null, tree#sm(arg_this):=newPMask];
            }
            if (Heap[arg_this, next_sibling] != null) {
              havoc newPMask;
              assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
                { newPMask[o_68, f_76] }
                Heap[null, tree#sm(arg_this)][o_68, f_76] || Heap[null, tree#sm(Heap[arg_this, next_sibling])][o_68, f_76] ==> newPMask[o_68, f_76]
              );
              Heap := Heap[null, tree#sm(arg_this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, data:=true]];
            Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, next_child:=true]];
            Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, next_sibling:=true]];
            if (Heap[tmp_child, next_child] != null) {
              havoc newPMask;
              assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
                { newPMask[o_69, f_77] }
                Heap[null, tree#sm(tmp_child)][o_69, f_77] || Heap[null, tree#sm(Heap[tmp_child, next_child])][o_69, f_77] ==> newPMask[o_69, f_77]
              );
              Heap := Heap[null, tree#sm(tmp_child):=newPMask];
            }
            if (Heap[tmp_child, next_sibling] != null) {
              havoc newPMask;
              assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
                { newPMask[o_70, f_78] }
                Heap[null, tree#sm(tmp_child)][o_70, f_78] || Heap[null, tree#sm(Heap[tmp_child, next_sibling])][o_70, f_78] ==> newPMask[o_70, f_78]
              );
              Heap := Heap[null, tree#sm(tmp_child):=newPMask];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(tree(arg_this), 1 / 2) in (unfolding acc(tree(tmp_child), write) in arg_this.next_child == tmp_child.next_child && arg_this.next_sibling == tmp_child.next_sibling)) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree_1(arg_this));
            assume UnfoldingHeap[null, tree_1(arg_this)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62780]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(this.next_child) (0554.vpr@55.12--57.91) [62781]"}
                perm <= UnfoldingMask[null, tree_1(arg_this)];
            }
            UnfoldingMask := UnfoldingMask[null, tree_1(arg_this):=UnfoldingMask[null, tree_1(arg_this)] - perm];
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62782]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, data:=UnfoldingMask[arg_this, data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62783]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, next_child:=UnfoldingMask[arg_this, next_child] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62784]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, next_sibling:=UnfoldingMask[arg_this, next_sibling] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_this, next_child] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62785]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this), UnfoldingHeap[null, tree_1(arg_this)], tree_1(UnfoldingHeap[arg_this, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this, next_sibling] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62786]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this), UnfoldingHeap[null, tree_1(arg_this)], tree_1(UnfoldingHeap[arg_this, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this, next_sibling])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume (UnfoldingHeap[arg_this, next_child] == null && UnfoldingHeap[arg_this, next_sibling] == null) || (UnfoldingHeap[arg_this, next_child] != null && UnfoldingHeap[arg_this, next_sibling] != null);
            assume state(UnfoldingHeap, UnfoldingMask);
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume tree#trigger(Unfolding1Heap, tree_1(tmp_child));
            assume Unfolding1Heap[null, tree_1(tmp_child)] == CombineFrames(FrameFragment(Unfolding1Heap[tmp_child, data]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_child, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_child, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[tmp_child, next_child] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_child, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[tmp_child, next_sibling] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_child, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(tmp_child) (0554.vpr@55.12--57.91) [62787]"}
                perm <= Unfolding1Mask[null, tree_1(tmp_child)];
            }
            Unfolding1Mask := Unfolding1Mask[null, tree_1(tmp_child):=Unfolding1Mask[null, tree_1(tmp_child)] - perm];
            perm := FullPerm;
            assume tmp_child != null;
            Unfolding1Mask := Unfolding1Mask[tmp_child, data:=Unfolding1Mask[tmp_child, data] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume tmp_child != null;
            Unfolding1Mask := Unfolding1Mask[tmp_child, next_child:=Unfolding1Mask[tmp_child, next_child] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume tmp_child != null;
            Unfolding1Mask := Unfolding1Mask[tmp_child, next_sibling:=Unfolding1Mask[tmp_child, next_sibling] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[tmp_child, next_child] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_child, next_child]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_child, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(tmp_child), Unfolding1Heap[null, tree_1(tmp_child)], tree_1(Unfolding1Heap[tmp_child, next_child]), Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_child, next_child])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            if (Unfolding1Heap[tmp_child, next_sibling] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_child, next_sibling]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_child, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(tmp_child), Unfolding1Heap[null, tree_1(tmp_child)], tree_1(Unfolding1Heap[tmp_child, next_sibling]), Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_child, next_sibling])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume (Unfolding1Heap[tmp_child, next_child] == null && Unfolding1Heap[tmp_child, next_sibling] == null) || (Unfolding1Heap[tmp_child, next_child] != null && Unfolding1Heap[tmp_child, next_sibling] != null);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (exp module)
              UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_child):=UnfoldingHeap[null, tree#sm(tmp_child)][tmp_child, data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_child):=UnfoldingHeap[null, tree#sm(tmp_child)][tmp_child, next_child:=true]];
              UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_child):=UnfoldingHeap[null, tree#sm(tmp_child)][tmp_child, next_sibling:=true]];
              if (UnfoldingHeap[tmp_child, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
                  { newPMask[o_71, f_35] }
                  UnfoldingHeap[null, tree#sm(tmp_child)][o_71, f_35] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_child, next_child])][o_71, f_35] ==> newPMask[o_71, f_35]
                );
                UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_child):=newPMask];
              }
              if (UnfoldingHeap[tmp_child, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
                  { newPMask[o_72, f_79] }
                  UnfoldingHeap[null, tree#sm(tmp_child)][o_72, f_79] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_child, next_sibling])][o_72, f_79] ==> newPMask[o_72, f_79]
                );
                UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_child):=newPMask];
              }
              assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              Heap := Heap[null, tree#sm(arg_this):=Heap[null, tree#sm(arg_this)][arg_this, data:=true]];
              Heap := Heap[null, tree#sm(arg_this):=Heap[null, tree#sm(arg_this)][arg_this, next_child:=true]];
              Heap := Heap[null, tree#sm(arg_this):=Heap[null, tree#sm(arg_this)][arg_this, next_sibling:=true]];
              if (Heap[arg_this, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
                  { newPMask[o_30, f_80] }
                  Heap[null, tree#sm(arg_this)][o_30, f_80] || Heap[null, tree#sm(Heap[arg_this, next_child])][o_30, f_80] ==> newPMask[o_30, f_80]
                );
                Heap := Heap[null, tree#sm(arg_this):=newPMask];
              }
              if (Heap[arg_this, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
                  { newPMask[o_79, f_36] }
                  Heap[null, tree#sm(arg_this)][o_79, f_36] || Heap[null, tree#sm(Heap[arg_this, next_sibling])][o_79, f_36] ==> newPMask[o_79, f_36]
                );
                Heap := Heap[null, tree#sm(arg_this):=newPMask];
              }
              assume state(Heap, Mask);
              Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, data:=true]];
              Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, next_child:=true]];
              Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, next_sibling:=true]];
              if (Heap[tmp_child, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
                  { newPMask[o_80, f_88] }
                  Heap[null, tree#sm(tmp_child)][o_80, f_88] || Heap[null, tree#sm(Heap[tmp_child, next_child])][o_80, f_88] ==> newPMask[o_80, f_88]
                );
                Heap := Heap[null, tree#sm(tmp_child):=newPMask];
              }
              if (Heap[tmp_child, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
                  { newPMask[o_31, f_89] }
                  Heap[null, tree#sm(tmp_child)][o_31, f_89] || Heap[null, tree#sm(Heap[tmp_child, next_sibling])][o_31, f_89] ==> newPMask[o_31, f_89]
                );
                Heap := Heap[null, tree#sm(tmp_child):=newPMask];
              }
              assume state(Heap, Mask);
        assume Heap[tmp_child, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp_sibling := cloneTree(this.next_sibling) -- 0554.vpr@74.7--74.50
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.next_sibling
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next_sibling (0554.vpr@74.7--74.50) [62788]"}
            HasDirectPerm(Mask, this, next_sibling);
        arg_this_1 := Heap[this, next_sibling];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := 1 / 2;
          assert {:msg "  The precondition of method cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@74.7--74.50) [62789]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method cloneTree might not hold. There might be insufficient permission to access tree(this.next_sibling) (0554.vpr@74.7--74.50) [62790]"}
              perm <= Mask[null, tree_1(arg_this_1)];
          }
          Mask := Mask[null, tree_1(arg_this_1):=Mask[null, tree_1(arg_this_1)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc tmp_sibling;
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0554.vpr@74.7--74.50) [62791]"}
            perm >= NoPerm;
          Mask := Mask[null, tree_1(arg_this_1):=Mask[null, tree_1(arg_this_1)] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, tree_1(tmp_sibling):=Mask[null, tree_1(tmp_sibling)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree_1(arg_this_1));
            assume UnfoldingHeap[null, tree_1(arg_this_1)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this_1, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this_1, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            UnfoldingMask := UnfoldingMask[null, tree_1(arg_this_1):=UnfoldingMask[null, tree_1(arg_this_1)] - perm];
            perm := 1 / 2;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, data:=UnfoldingMask[arg_this_1, data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, next_child:=UnfoldingMask[arg_this_1, next_child] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, next_sibling:=UnfoldingMask[arg_this_1, next_sibling] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_this_1, next_child] != null) {
              perm := 1 / 2;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this_1), UnfoldingHeap[null, tree_1(arg_this_1)], tree_1(UnfoldingHeap[arg_this_1, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this_1, next_sibling] != null) {
              perm := 1 / 2;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this_1), UnfoldingHeap[null, tree_1(arg_this_1)], tree_1(UnfoldingHeap[arg_this_1, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume (UnfoldingHeap[arg_this_1, next_child] == null && UnfoldingHeap[arg_this_1, next_sibling] == null) || (UnfoldingHeap[arg_this_1, next_child] != null && UnfoldingHeap[arg_this_1, next_sibling] != null);
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[arg_this_1, next_child] == Heap[tmp_sibling, next_child] && Heap[arg_this_1, next_sibling] == Heap[tmp_sibling, next_sibling];
          
          // -- Free assumptions (inhale module)
            Heap := Heap[null, tree#sm(arg_this_1):=Heap[null, tree#sm(arg_this_1)][arg_this_1, data:=true]];
            Heap := Heap[null, tree#sm(arg_this_1):=Heap[null, tree#sm(arg_this_1)][arg_this_1, next_child:=true]];
            Heap := Heap[null, tree#sm(arg_this_1):=Heap[null, tree#sm(arg_this_1)][arg_this_1, next_sibling:=true]];
            if (Heap[arg_this_1, next_child] != null) {
              havoc newPMask;
              assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
                { newPMask[o_81, f_90] }
                Heap[null, tree#sm(arg_this_1)][o_81, f_90] || Heap[null, tree#sm(Heap[arg_this_1, next_child])][o_81, f_90] ==> newPMask[o_81, f_90]
              );
              Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
            }
            if (Heap[arg_this_1, next_sibling] != null) {
              havoc newPMask;
              assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
                { newPMask[o_82, f_91] }
                Heap[null, tree#sm(arg_this_1)][o_82, f_91] || Heap[null, tree#sm(Heap[arg_this_1, next_sibling])][o_82, f_91] ==> newPMask[o_82, f_91]
              );
              Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, data:=true]];
            Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_child:=true]];
            Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_sibling:=true]];
            if (Heap[tmp_sibling, next_child] != null) {
              havoc newPMask;
              assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
                { newPMask[o_62, f_47] }
                Heap[null, tree#sm(tmp_sibling)][o_62, f_47] || Heap[null, tree#sm(Heap[tmp_sibling, next_child])][o_62, f_47] ==> newPMask[o_62, f_47]
              );
              Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
            }
            if (Heap[tmp_sibling, next_sibling] != null) {
              havoc newPMask;
              assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
                { newPMask[o_83, f_72] }
                Heap[null, tree#sm(tmp_sibling)][o_83, f_72] || Heap[null, tree#sm(Heap[tmp_sibling, next_sibling])][o_83, f_72] ==> newPMask[o_83, f_72]
              );
              Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(tree(arg_this), 1 / 2) in (unfolding acc(tree(tmp_sibling), write) in arg_this.next_child == tmp_sibling.next_child && arg_this.next_sibling == tmp_sibling.next_sibling)) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree_1(arg_this_1));
            assume UnfoldingHeap[null, tree_1(arg_this_1)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this_1, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this_1, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62792]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(this.next_sibling) (0554.vpr@55.12--57.91) [62793]"}
                perm <= UnfoldingMask[null, tree_1(arg_this_1)];
            }
            UnfoldingMask := UnfoldingMask[null, tree_1(arg_this_1):=UnfoldingMask[null, tree_1(arg_this_1)] - perm];
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62794]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, data:=UnfoldingMask[arg_this_1, data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62795]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, next_child:=UnfoldingMask[arg_this_1, next_child] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62796]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, next_sibling:=UnfoldingMask[arg_this_1, next_sibling] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_this_1, next_child] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62797]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this_1), UnfoldingHeap[null, tree_1(arg_this_1)], tree_1(UnfoldingHeap[arg_this_1, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this_1, next_sibling] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62798]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(arg_this_1), UnfoldingHeap[null, tree_1(arg_this_1)], tree_1(UnfoldingHeap[arg_this_1, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[arg_this_1, next_sibling])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume (UnfoldingHeap[arg_this_1, next_child] == null && UnfoldingHeap[arg_this_1, next_sibling] == null) || (UnfoldingHeap[arg_this_1, next_child] != null && UnfoldingHeap[arg_this_1, next_sibling] != null);
            assume state(UnfoldingHeap, UnfoldingMask);
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume tree#trigger(Unfolding1Heap, tree_1(tmp_sibling));
            assume Unfolding1Heap[null, tree_1(tmp_sibling)] == CombineFrames(FrameFragment(Unfolding1Heap[tmp_sibling, data]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_sibling, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_sibling, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[tmp_sibling, next_child] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_sibling, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[tmp_sibling, next_sibling] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_sibling, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(tmp_sibling) (0554.vpr@55.12--57.91) [62799]"}
                perm <= Unfolding1Mask[null, tree_1(tmp_sibling)];
            }
            Unfolding1Mask := Unfolding1Mask[null, tree_1(tmp_sibling):=Unfolding1Mask[null, tree_1(tmp_sibling)] - perm];
            perm := FullPerm;
            assume tmp_sibling != null;
            Unfolding1Mask := Unfolding1Mask[tmp_sibling, data:=Unfolding1Mask[tmp_sibling, data] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume tmp_sibling != null;
            Unfolding1Mask := Unfolding1Mask[tmp_sibling, next_child:=Unfolding1Mask[tmp_sibling, next_child] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume tmp_sibling != null;
            Unfolding1Mask := Unfolding1Mask[tmp_sibling, next_sibling:=Unfolding1Mask[tmp_sibling, next_sibling] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[tmp_sibling, next_child] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_sibling, next_child]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_sibling, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(tmp_sibling), Unfolding1Heap[null, tree_1(tmp_sibling)], tree_1(Unfolding1Heap[tmp_sibling, next_child]), Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_sibling, next_child])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            if (Unfolding1Heap[tmp_sibling, next_sibling] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_sibling, next_sibling]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[tmp_sibling, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree_1(tmp_sibling), Unfolding1Heap[null, tree_1(tmp_sibling)], tree_1(Unfolding1Heap[tmp_sibling, next_sibling]), Unfolding1Heap[null, tree_1(Unfolding1Heap[tmp_sibling, next_sibling])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume (Unfolding1Heap[tmp_sibling, next_child] == null && Unfolding1Heap[tmp_sibling, next_sibling] == null) || (Unfolding1Heap[tmp_sibling, next_child] != null && Unfolding1Heap[tmp_sibling, next_sibling] != null);
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (exp module)
              UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_sibling):=UnfoldingHeap[null, tree#sm(tmp_sibling)][tmp_sibling, data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_sibling):=UnfoldingHeap[null, tree#sm(tmp_sibling)][tmp_sibling, next_child:=true]];
              UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_sibling):=UnfoldingHeap[null, tree#sm(tmp_sibling)][tmp_sibling, next_sibling:=true]];
              if (UnfoldingHeap[tmp_sibling, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
                  { newPMask[o_84, f_92] }
                  UnfoldingHeap[null, tree#sm(tmp_sibling)][o_84, f_92] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_sibling, next_child])][o_84, f_92] ==> newPMask[o_84, f_92]
                );
                UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_sibling):=newPMask];
              }
              if (UnfoldingHeap[tmp_sibling, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
                  { newPMask[o_63, f_48] }
                  UnfoldingHeap[null, tree#sm(tmp_sibling)][o_63, f_48] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_sibling, next_sibling])][o_63, f_48] ==> newPMask[o_63, f_48]
                );
                UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_sibling):=newPMask];
              }
              assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              Heap := Heap[null, tree#sm(arg_this_1):=Heap[null, tree#sm(arg_this_1)][arg_this_1, data:=true]];
              Heap := Heap[null, tree#sm(arg_this_1):=Heap[null, tree#sm(arg_this_1)][arg_this_1, next_child:=true]];
              Heap := Heap[null, tree#sm(arg_this_1):=Heap[null, tree#sm(arg_this_1)][arg_this_1, next_sibling:=true]];
              if (Heap[arg_this_1, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
                  { newPMask[o_28, f_93] }
                  Heap[null, tree#sm(arg_this_1)][o_28, f_93] || Heap[null, tree#sm(Heap[arg_this_1, next_child])][o_28, f_93] ==> newPMask[o_28, f_93]
                );
                Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
              }
              if (Heap[arg_this_1, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
                  { newPMask[o_85, f_41] }
                  Heap[null, tree#sm(arg_this_1)][o_85, f_41] || Heap[null, tree#sm(Heap[arg_this_1, next_sibling])][o_85, f_41] ==> newPMask[o_85, f_41]
                );
                Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
              }
              assume state(Heap, Mask);
              Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, data:=true]];
              Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_child:=true]];
              Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_sibling:=true]];
              if (Heap[tmp_sibling, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
                  { newPMask[o_86, f_94] }
                  Heap[null, tree#sm(tmp_sibling)][o_86, f_94] || Heap[null, tree#sm(Heap[tmp_sibling, next_child])][o_86, f_94] ==> newPMask[o_86, f_94]
                );
                Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
              }
              if (Heap[tmp_sibling, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
                  { newPMask[o_29, f_95] }
                  Heap[null, tree#sm(tmp_sibling)][o_29, f_95] || Heap[null, tree#sm(Heap[tmp_sibling, next_sibling])][o_29, f_95] ==> newPMask[o_29, f_95]
                );
                Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
              }
              assume state(Heap, Mask);
        assume Heap[tmp_sibling, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.data := this.data -- 0554.vpr@75.7--75.28
        
        // -- Check definedness of this.data
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (0554.vpr@75.7--75.28) [62800]"}
            HasDirectPerm(Mask, this, data);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.data (0554.vpr@75.7--75.28) [62801]"}
          FullPerm == Mask[res, data];
        Heap := Heap[res, data:=Heap[this, data]];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.next_child := tmp_child -- 0554.vpr@76.7--76.34
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_child (0554.vpr@76.7--76.34) [62802]"}
          FullPerm == Mask[res, next_child];
        Heap := Heap[res, next_child:=tmp_child];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.next_sibling := tmp_sibling -- 0554.vpr@77.7--77.38
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_sibling (0554.vpr@77.7--77.38) [62803]"}
          FullPerm == Mask[res, next_sibling];
        Heap := Heap[res, next_sibling:=tmp_sibling];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(this), 1 / 2) -- 0554.vpr@79.3--79.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [62805]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access this.data (0554.vpr@79.3--79.28) [62806]"}
        perm <= Mask[this, data];
    }
    Mask := Mask[this, data:=Mask[this, data] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [62807]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access this.next_child (0554.vpr@79.3--79.28) [62808]"}
        perm <= Mask[this, next_child];
    }
    Mask := Mask[this, next_child:=Mask[this, next_child] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [62809]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access this.next_sibling (0554.vpr@79.3--79.28) [62810]"}
        perm <= Mask[this, next_sibling];
    }
    Mask := Mask[this, next_sibling:=Mask[this, next_sibling] - perm];
    if (Heap[this, next_child] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [62811]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access tree(this.next_child) (0554.vpr@79.3--79.28) [62812]"}
          perm <= Mask[null, tree_1(Heap[this, next_child])];
      }
      Mask := Mask[null, tree_1(Heap[this, next_child]):=Mask[null, tree_1(Heap[this, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(this), Heap[null, tree_1(this)], tree_1(Heap[this, next_child]), Heap[null, tree_1(Heap[this, next_child])]);
    }
    if (Heap[this, next_sibling] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [62813]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access tree(this.next_sibling) (0554.vpr@79.3--79.28) [62814]"}
          perm <= Mask[null, tree_1(Heap[this, next_sibling])];
      }
      Mask := Mask[null, tree_1(Heap[this, next_sibling]):=Mask[null, tree_1(Heap[this, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(this), Heap[null, tree_1(this)], tree_1(Heap[this, next_sibling]), Heap[null, tree_1(Heap[this, next_sibling])]);
    }
    assert {:msg "  Folding tree(this) might fail. Assertion this.next_child == null && this.next_sibling == null || this.next_child != null && this.next_sibling != null might not hold. (0554.vpr@79.3--79.28) [62815]"}
      (Heap[this, next_child] == null && Heap[this, next_sibling] == null) || (Heap[this, next_child] != null && Heap[this, next_sibling] != null);
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [62816]"}
      perm >= NoPerm;
    Mask := Mask[null, tree_1(this):=Mask[null, tree_1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree_1(this));
    assume Heap[null, tree_1(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, next_child]), CombineFrames(FrameFragment(Heap[this, next_sibling]), CombineFrames(FrameFragment((if Heap[this, next_child] != null then Heap[null, tree_1(Heap[this, next_child])] else EmptyFrame)), FrameFragment((if Heap[this, next_sibling] != null then Heap[null, tree_1(Heap[this, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree_1(this))) {
      Heap := Heap[null, tree#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree_1(this):=freshVersion];
    }
    Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, data:=true]];
    Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_child:=true]];
    Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_sibling:=true]];
    if (Heap[this, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
        { newPMask[o_87, f_96] }
        Heap[null, tree#sm(this)][o_87, f_96] || Heap[null, tree#sm(Heap[this, next_child])][o_87, f_96] ==> newPMask[o_87, f_96]
      );
      Heap := Heap[null, tree#sm(this):=newPMask];
    }
    if (Heap[this, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
        { newPMask[o_88, f_97] }
        Heap[null, tree#sm(this)][o_88, f_97] || Heap[null, tree#sm(Heap[this, next_sibling])][o_88, f_97] ==> newPMask[o_88, f_97]
      );
      Heap := Heap[null, tree#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(res), write) -- 0554.vpr@80.3--80.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access res.data (0554.vpr@80.3--80.17) [62819]"}
        perm <= Mask[res, data];
    }
    Mask := Mask[res, data:=Mask[res, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access res.next_child (0554.vpr@80.3--80.17) [62821]"}
        perm <= Mask[res, next_child];
    }
    Mask := Mask[res, next_child:=Mask[res, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access res.next_sibling (0554.vpr@80.3--80.17) [62823]"}
        perm <= Mask[res, next_sibling];
    }
    Mask := Mask[res, next_sibling:=Mask[res, next_sibling] - perm];
    if (Heap[res, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access tree(res.next_child) (0554.vpr@80.3--80.17) [62825]"}
          perm <= Mask[null, tree_1(Heap[res, next_child])];
      }
      Mask := Mask[null, tree_1(Heap[res, next_child]):=Mask[null, tree_1(Heap[res, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(res), Heap[null, tree_1(res)], tree_1(Heap[res, next_child]), Heap[null, tree_1(Heap[res, next_child])]);
    }
    if (Heap[res, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access tree(res.next_sibling) (0554.vpr@80.3--80.17) [62827]"}
          perm <= Mask[null, tree_1(Heap[res, next_sibling])];
      }
      Mask := Mask[null, tree_1(Heap[res, next_sibling]):=Mask[null, tree_1(Heap[res, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree_1(res), Heap[null, tree_1(res)], tree_1(Heap[res, next_sibling]), Heap[null, tree_1(Heap[res, next_sibling])]);
    }
    assert {:msg "  Folding tree(res) might fail. Assertion res.next_child == null && res.next_sibling == null || res.next_child != null && res.next_sibling != null might not hold. (0554.vpr@80.3--80.17) [62828]"}
      (Heap[res, next_child] == null && Heap[res, next_sibling] == null) || (Heap[res, next_child] != null && Heap[res, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree_1(res):=Mask[null, tree_1(res)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree_1(res));
    assume Heap[null, tree_1(res)] == CombineFrames(FrameFragment(Heap[res, data]), CombineFrames(FrameFragment(Heap[res, next_child]), CombineFrames(FrameFragment(Heap[res, next_sibling]), CombineFrames(FrameFragment((if Heap[res, next_child] != null then Heap[null, tree_1(Heap[res, next_child])] else EmptyFrame)), FrameFragment((if Heap[res, next_sibling] != null then Heap[null, tree_1(Heap[res, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree_1(res))) {
      Heap := Heap[null, tree#sm(res):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree_1(res):=freshVersion];
    }
    Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, data:=true]];
    Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_child:=true]];
    Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_sibling:=true]];
    if (Heap[res, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
        { newPMask[o_89, f_98] }
        Heap[null, tree#sm(res)][o_89, f_98] || Heap[null, tree#sm(Heap[res, next_child])][o_89, f_98] ==> newPMask[o_89, f_98]
      );
      Heap := Heap[null, tree#sm(res):=newPMask];
    }
    if (Heap[res, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
        { newPMask[o_90, f_99] }
        Heap[null, tree#sm(res)][o_90, f_99] || Heap[null, tree#sm(Heap[res, next_sibling])][o_90, f_99] ==> newPMask[o_90, f_99]
      );
      Heap := Heap[null, tree#sm(res):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@53.11--53.44) [62830]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(this) (0554.vpr@53.11--53.44) [62831]"}
        perm <= Mask[null, tree_1(this)];
    }
    Mask := Mask[null, tree_1(this):=Mask[null, tree_1(this)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(res) (0554.vpr@53.11--53.44) [62832]"}
        perm <= Mask[null, tree_1(res)];
    }
    Mask := Mask[null, tree_1(res):=Mask[null, tree_1(res)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume tree#trigger(UnfoldingHeap, tree_1(this));
      assume UnfoldingHeap[null, tree_1(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[this, next_child] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, next_sibling] != null then UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62833]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(this) (0554.vpr@55.12--57.91) [62834]"}
          perm <= UnfoldingMask[null, tree_1(this)];
      }
      UnfoldingMask := UnfoldingMask[null, tree_1(this):=UnfoldingMask[null, tree_1(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62835]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62836]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_child:=UnfoldingMask[this, next_child] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62837]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_sibling:=UnfoldingMask[this, next_sibling] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next_child] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62838]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_child]):=UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(this), UnfoldingHeap[null, tree_1(this)], tree_1(UnfoldingHeap[this, next_child]), UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_child])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, next_sibling] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [62839]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_sibling]):=UnfoldingMask[null, tree_1(UnfoldingHeap[this, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(this), UnfoldingHeap[null, tree_1(this)], tree_1(UnfoldingHeap[this, next_sibling]), UnfoldingHeap[null, tree_1(UnfoldingHeap[this, next_sibling])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume (UnfoldingHeap[this, next_child] == null && UnfoldingHeap[this, next_sibling] == null) || (UnfoldingHeap[this, next_child] != null && UnfoldingHeap[this, next_sibling] != null);
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Execute unfolding (for extra information)
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume tree#trigger(Unfolding1Heap, tree_1(res));
      assume Unfolding1Heap[null, tree_1(res)] == CombineFrames(FrameFragment(Unfolding1Heap[res, data]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[res, next_child] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[res, next_sibling] != null then Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef1Mask := Unfolding1Mask;
      ExhaleWellDef1Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(res) (0554.vpr@55.12--57.91) [62840]"}
          perm <= Unfolding1Mask[null, tree_1(res)];
      }
      Unfolding1Mask := Unfolding1Mask[null, tree_1(res):=Unfolding1Mask[null, tree_1(res)] - perm];
      perm := FullPerm;
      assume res != null;
      Unfolding1Mask := Unfolding1Mask[res, data:=Unfolding1Mask[res, data] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume res != null;
      Unfolding1Mask := Unfolding1Mask[res, next_child:=Unfolding1Mask[res, next_child] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume res != null;
      Unfolding1Mask := Unfolding1Mask[res, next_sibling:=Unfolding1Mask[res, next_sibling] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[res, next_child] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_child]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(res), Unfolding1Heap[null, tree_1(res)], tree_1(Unfolding1Heap[res, next_child]), Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_child])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      if (Unfolding1Heap[res, next_sibling] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_sibling]):=Unfolding1Mask[null, tree_1(Unfolding1Heap[res, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree_1(res), Unfolding1Heap[null, tree_1(res)], tree_1(Unfolding1Heap[res, next_sibling]), Unfolding1Heap[null, tree_1(Unfolding1Heap[res, next_sibling])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume (Unfolding1Heap[res, next_child] == null && Unfolding1Heap[res, next_sibling] == null) || (Unfolding1Heap[res, next_child] != null && Unfolding1Heap[res, next_sibling] != null);
      assume state(Unfolding1Heap, Unfolding1Mask);
    assert {:msg "  Postcondition of cloneTree might not hold. Assertion this.next_child == res.next_child might not hold. (0554.vpr@55.12--57.91) [62841]"}
      Heap[this, next_child] == Heap[res, next_child];
    assert {:msg "  Postcondition of cloneTree might not hold. Assertion this.next_sibling == res.next_sibling might not hold. (0554.vpr@55.12--57.91) [62842]"}
      Heap[this, next_sibling] == Heap[res, next_sibling];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, data:=true]];
      Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_child:=true]];
      Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_sibling:=true]];
      if (Heap[this, next_child] != null) {
        havoc newPMask;
        assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
          { newPMask[o_21, f_58] }
          Heap[null, tree#sm(this)][o_21, f_58] || Heap[null, tree#sm(Heap[this, next_child])][o_21, f_58] ==> newPMask[o_21, f_58]
        );
        Heap := Heap[null, tree#sm(this):=newPMask];
      }
      if (Heap[this, next_sibling] != null) {
        havoc newPMask;
        assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
          { newPMask[o_43, f_33] }
          Heap[null, tree#sm(this)][o_43, f_33] || Heap[null, tree#sm(Heap[this, next_sibling])][o_43, f_33] ==> newPMask[o_43, f_33]
        );
        Heap := Heap[null, tree#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, data:=true]];
      Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_child:=true]];
      Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_sibling:=true]];
      if (Heap[res, next_child] != null) {
        havoc newPMask;
        assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
          { newPMask[o_50, f_75] }
          Heap[null, tree#sm(res)][o_50, f_75] || Heap[null, tree#sm(Heap[res, next_child])][o_50, f_75] ==> newPMask[o_50, f_75]
        );
        Heap := Heap[null, tree#sm(res):=newPMask];
      }
      if (Heap[res, next_sibling] != null) {
        havoc newPMask;
        assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
          { newPMask[o_22, f_59] }
          Heap[null, tree#sm(res)][o_22, f_59] || Heap[null, tree#sm(Heap[res, next_sibling])][o_22, f_59] ==> newPMask[o_22, f_59]
        );
        Heap := Heap[null, tree#sm(res):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}