// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:49:48
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
axiom (forall o_103: Ref, f_207: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_103, f_207] }
  Heap[o_103, $allocated] ==> Heap[Heap[o_103, f_207], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_106: Ref, f_202: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_106, f_202] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_106, f_202) ==> Heap[o_106, f_202] == ExhaleHeap[o_106, f_202]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_59), ExhaleHeap[null, PredicateMaskField(pm_f_59)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsPredicateField(pm_f_59) ==> Heap[null, PredicateMaskField(pm_f_59)] == ExhaleHeap[null, PredicateMaskField(pm_f_59)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_59) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsPredicateField(pm_f_59) ==> (forall <A, B> o2_59: Ref, f_202: (Field A B) ::
    { ExhaleHeap[o2_59, f_202] }
    Heap[null, PredicateMaskField(pm_f_59)][o2_59, f_202] ==> Heap[o2_59, f_202] == ExhaleHeap[o2_59, f_202]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_59), ExhaleHeap[null, WandMaskField(pm_f_59)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsWandField(pm_f_59) ==> Heap[null, WandMaskField(pm_f_59)] == ExhaleHeap[null, WandMaskField(pm_f_59)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_59: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_59) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_59) && IsWandField(pm_f_59) ==> (forall <A, B> o2_59: Ref, f_202: (Field A B) ::
    { ExhaleHeap[o2_59, f_202] }
    Heap[null, WandMaskField(pm_f_59)][o2_59, f_202] ==> Heap[o2_59, f_202] == ExhaleHeap[o2_59, f_202]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_106: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_106, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_106, $allocated] ==> ExhaleHeap[o_106, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_103: Ref, f_105: (Field A B), v: B ::
  { Heap[o_103, f_105:=v] }
  succHeap(Heap, Heap[o_103, f_105:=v])
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
function  tree(this: Ref): Field PredicateType_tree FrameType;
function  tree#sm(this: Ref): Field PredicateType_tree PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(tree(this)) }
  PredicateMaskField(tree(this)) == tree#sm(this)
);
axiom (forall this: Ref ::
  { tree(this) }
  IsPredicateField(tree(this))
);
axiom (forall this: Ref ::
  { tree(this) }
  getPredWandId(tree(this)) == 0
);
function  tree#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  tree#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { tree(this), tree(this2) }
  tree(this) == tree(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { tree#sm(this), tree#sm(this2) }
  tree#sm(this) == tree#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { tree#trigger(Heap, tree(this)) }
  tree#everUsed(tree(this))
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [206034]"}
        HasDirectPerm(Mask, this, next_child);
    if (Heap[this, next_child] != null) {
      
      // -- Check definedness of acc(tree(this.next_child), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [206035]"}
          HasDirectPerm(Mask, this, next_child);
      perm := FullPerm;
      Mask := Mask[null, tree(Heap[this, next_child]):=Mask[null, tree(Heap[this, next_child])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.next_sibling != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [206036]"}
        HasDirectPerm(Mask, this, next_sibling);
    if (Heap[this, next_sibling] != null) {
      
      // -- Check definedness of acc(tree(this.next_sibling), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [206037]"}
          HasDirectPerm(Mask, this, next_sibling);
      perm := FullPerm;
      Mask := Mask[null, tree(Heap[this, next_sibling]):=Mask[null, tree(Heap[this, next_sibling])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.next_child == null && this.next_sibling == null || this.next_child != null && this.next_sibling != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [206038]"}
        HasDirectPerm(Mask, this, next_child);
      if (Heap[this, next_child] == null) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [206039]"}
          HasDirectPerm(Mask, this, next_sibling);
      }
      if (!(Heap[this, next_child] == null && Heap[this, next_sibling] == null)) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@8.1--13.2) [206040]"}
          HasDirectPerm(Mask, this, next_child);
        if (Heap[this, next_child] != null) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@8.1--13.2) [206041]"}
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
  var t1_6: Ref;
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
    assume Heap[t1_6, $allocated];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t.next_child (0554.vpr@19.3--19.23) [206042]"}
      FullPerm == Mask[t_2, next_child];
    Heap := Heap[t_2, next_child:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: t.next_sibling := null -- 0554.vpr@20.3--20.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t.next_sibling (0554.vpr@20.3--20.25) [206043]"}
      FullPerm == Mask[t_2, next_sibling];
    Heap := Heap[t_2, next_sibling:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t), write) -- 0554.vpr@21.3--21.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access t.data (0554.vpr@21.3--21.15) [206046]"}
        perm <= Mask[t_2, data];
    }
    Mask := Mask[t_2, data:=Mask[t_2, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access t.next_child (0554.vpr@21.3--21.15) [206048]"}
        perm <= Mask[t_2, next_child];
    }
    Mask := Mask[t_2, next_child:=Mask[t_2, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access t.next_sibling (0554.vpr@21.3--21.15) [206050]"}
        perm <= Mask[t_2, next_sibling];
    }
    Mask := Mask[t_2, next_sibling:=Mask[t_2, next_sibling] - perm];
    if (Heap[t_2, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access tree(t.next_child) (0554.vpr@21.3--21.15) [206052]"}
          perm <= Mask[null, tree(Heap[t_2, next_child])];
      }
      Mask := Mask[null, tree(Heap[t_2, next_child]):=Mask[null, tree(Heap[t_2, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t_2), Heap[null, tree(t_2)], tree(Heap[t_2, next_child]), Heap[null, tree(Heap[t_2, next_child])]);
    }
    if (Heap[t_2, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t) might fail. There might be insufficient permission to access tree(t.next_sibling) (0554.vpr@21.3--21.15) [206054]"}
          perm <= Mask[null, tree(Heap[t_2, next_sibling])];
      }
      Mask := Mask[null, tree(Heap[t_2, next_sibling]):=Mask[null, tree(Heap[t_2, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t_2), Heap[null, tree(t_2)], tree(Heap[t_2, next_sibling]), Heap[null, tree(Heap[t_2, next_sibling])]);
    }
    assert {:msg "  Folding tree(t) might fail. Assertion t.next_child == null && t.next_sibling == null || t.next_child != null && t.next_sibling != null might not hold. (0554.vpr@21.3--21.15) [206055]"}
      (Heap[t_2, next_child] == null && Heap[t_2, next_sibling] == null) || (Heap[t_2, next_child] != null && Heap[t_2, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree(t_2):=Mask[null, tree(t_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree(t_2));
    assume Heap[null, tree(t_2)] == CombineFrames(FrameFragment(Heap[t_2, data]), CombineFrames(FrameFragment(Heap[t_2, next_child]), CombineFrames(FrameFragment(Heap[t_2, next_sibling]), CombineFrames(FrameFragment((if Heap[t_2, next_child] != null then Heap[null, tree(Heap[t_2, next_child])] else EmptyFrame)), FrameFragment((if Heap[t_2, next_sibling] != null then Heap[null, tree(Heap[t_2, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree(t_2))) {
      Heap := Heap[null, tree#sm(t_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree(t_2):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t_2):=Heap[null, tree#sm(t_2)][t_2, data:=true]];
    Heap := Heap[null, tree#sm(t_2):=Heap[null, tree#sm(t_2)][t_2, next_child:=true]];
    Heap := Heap[null, tree#sm(t_2):=Heap[null, tree#sm(t_2)][t_2, next_sibling:=true]];
    if (Heap[t_2, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
        { newPMask[o_15, f_20] }
        Heap[null, tree#sm(t_2)][o_15, f_20] || Heap[null, tree#sm(Heap[t_2, next_child])][o_15, f_20] ==> newPMask[o_15, f_20]
      );
      Heap := Heap[null, tree#sm(t_2):=newPMask];
    }
    if (Heap[t_2, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, tree#sm(t_2)][o_16, f_21] || Heap[null, tree#sm(Heap[t_2, next_sibling])][o_16, f_21] ==> newPMask[o_16, f_21]
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t0.next_child (0554.vpr@25.3--25.24) [206057]"}
      FullPerm == Mask[t0_1, next_child];
    Heap := Heap[t0_1, next_child:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: t0.next_sibling := null -- 0554.vpr@26.3--26.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t0.next_sibling (0554.vpr@26.3--26.26) [206058]"}
      FullPerm == Mask[t0_1, next_sibling];
    Heap := Heap[t0_1, next_sibling:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t0), write) -- 0554.vpr@27.3--27.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access t0.data (0554.vpr@27.3--27.16) [206061]"}
        perm <= Mask[t0_1, data];
    }
    Mask := Mask[t0_1, data:=Mask[t0_1, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access t0.next_child (0554.vpr@27.3--27.16) [206063]"}
        perm <= Mask[t0_1, next_child];
    }
    Mask := Mask[t0_1, next_child:=Mask[t0_1, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access t0.next_sibling (0554.vpr@27.3--27.16) [206065]"}
        perm <= Mask[t0_1, next_sibling];
    }
    Mask := Mask[t0_1, next_sibling:=Mask[t0_1, next_sibling] - perm];
    if (Heap[t0_1, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access tree(t0.next_child) (0554.vpr@27.3--27.16) [206067]"}
          perm <= Mask[null, tree(Heap[t0_1, next_child])];
      }
      Mask := Mask[null, tree(Heap[t0_1, next_child]):=Mask[null, tree(Heap[t0_1, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t0_1), Heap[null, tree(t0_1)], tree(Heap[t0_1, next_child]), Heap[null, tree(Heap[t0_1, next_child])]);
    }
    if (Heap[t0_1, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t0) might fail. There might be insufficient permission to access tree(t0.next_sibling) (0554.vpr@27.3--27.16) [206069]"}
          perm <= Mask[null, tree(Heap[t0_1, next_sibling])];
      }
      Mask := Mask[null, tree(Heap[t0_1, next_sibling]):=Mask[null, tree(Heap[t0_1, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t0_1), Heap[null, tree(t0_1)], tree(Heap[t0_1, next_sibling]), Heap[null, tree(Heap[t0_1, next_sibling])]);
    }
    assert {:msg "  Folding tree(t0) might fail. Assertion t0.next_child == null && t0.next_sibling == null || t0.next_child != null && t0.next_sibling != null might not hold. (0554.vpr@27.3--27.16) [206070]"}
      (Heap[t0_1, next_child] == null && Heap[t0_1, next_sibling] == null) || (Heap[t0_1, next_child] != null && Heap[t0_1, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree(t0_1):=Mask[null, tree(t0_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree(t0_1));
    assume Heap[null, tree(t0_1)] == CombineFrames(FrameFragment(Heap[t0_1, data]), CombineFrames(FrameFragment(Heap[t0_1, next_child]), CombineFrames(FrameFragment(Heap[t0_1, next_sibling]), CombineFrames(FrameFragment((if Heap[t0_1, next_child] != null then Heap[null, tree(Heap[t0_1, next_child])] else EmptyFrame)), FrameFragment((if Heap[t0_1, next_sibling] != null then Heap[null, tree(Heap[t0_1, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree(t0_1))) {
      Heap := Heap[null, tree#sm(t0_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree(t0_1):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t0_1):=Heap[null, tree#sm(t0_1)][t0_1, data:=true]];
    Heap := Heap[null, tree#sm(t0_1):=Heap[null, tree#sm(t0_1)][t0_1, next_child:=true]];
    Heap := Heap[null, tree#sm(t0_1):=Heap[null, tree#sm(t0_1)][t0_1, next_sibling:=true]];
    if (Heap[t0_1, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, tree#sm(t0_1)][o_52, f_55] || Heap[null, tree#sm(Heap[t0_1, next_child])][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, tree#sm(t0_1):=newPMask];
    }
    if (Heap[t0_1, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
        { newPMask[o_53, f_56] }
        Heap[null, tree#sm(t0_1)][o_53, f_56] || Heap[null, tree#sm(Heap[t0_1, next_sibling])][o_53, f_56] ==> newPMask[o_53, f_56]
      );
      Heap := Heap[null, tree#sm(t0_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: t1 := new(data, next_child, next_sibling) -- 0554.vpr@30.3--30.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    t1_6 := freshObj;
    Mask := Mask[t1_6, data:=Mask[t1_6, data] + FullPerm];
    Mask := Mask[t1_6, next_child:=Mask[t1_6, next_child] + FullPerm];
    Mask := Mask[t1_6, next_sibling:=Mask[t1_6, next_sibling] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: t1.next_child := t -- 0554.vpr@31.3--31.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t1.next_child (0554.vpr@31.3--31.21) [206072]"}
      FullPerm == Mask[t1_6, next_child];
    Heap := Heap[t1_6, next_child:=t_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: t1.next_sibling := t0 -- 0554.vpr@32.3--32.24
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t1.next_sibling (0554.vpr@32.3--32.24) [206073]"}
      FullPerm == Mask[t1_6, next_sibling];
    Heap := Heap[t1_6, next_sibling:=t0_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t1), write) -- 0554.vpr@33.3--33.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access t1.data (0554.vpr@33.3--33.16) [206076]"}
        perm <= Mask[t1_6, data];
    }
    Mask := Mask[t1_6, data:=Mask[t1_6, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access t1.next_child (0554.vpr@33.3--33.16) [206078]"}
        perm <= Mask[t1_6, next_child];
    }
    Mask := Mask[t1_6, next_child:=Mask[t1_6, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access t1.next_sibling (0554.vpr@33.3--33.16) [206080]"}
        perm <= Mask[t1_6, next_sibling];
    }
    Mask := Mask[t1_6, next_sibling:=Mask[t1_6, next_sibling] - perm];
    if (Heap[t1_6, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access tree(t1.next_child) (0554.vpr@33.3--33.16) [206082]"}
          perm <= Mask[null, tree(Heap[t1_6, next_child])];
      }
      Mask := Mask[null, tree(Heap[t1_6, next_child]):=Mask[null, tree(Heap[t1_6, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t1_6), Heap[null, tree(t1_6)], tree(Heap[t1_6, next_child]), Heap[null, tree(Heap[t1_6, next_child])]);
    }
    if (Heap[t1_6, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t1) might fail. There might be insufficient permission to access tree(t1.next_sibling) (0554.vpr@33.3--33.16) [206084]"}
          perm <= Mask[null, tree(Heap[t1_6, next_sibling])];
      }
      Mask := Mask[null, tree(Heap[t1_6, next_sibling]):=Mask[null, tree(Heap[t1_6, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t1_6), Heap[null, tree(t1_6)], tree(Heap[t1_6, next_sibling]), Heap[null, tree(Heap[t1_6, next_sibling])]);
    }
    assert {:msg "  Folding tree(t1) might fail. Assertion t1.next_child == null && t1.next_sibling == null || t1.next_child != null && t1.next_sibling != null might not hold. (0554.vpr@33.3--33.16) [206085]"}
      (Heap[t1_6, next_child] == null && Heap[t1_6, next_sibling] == null) || (Heap[t1_6, next_child] != null && Heap[t1_6, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree(t1_6):=Mask[null, tree(t1_6)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree(t1_6));
    assume Heap[null, tree(t1_6)] == CombineFrames(FrameFragment(Heap[t1_6, data]), CombineFrames(FrameFragment(Heap[t1_6, next_child]), CombineFrames(FrameFragment(Heap[t1_6, next_sibling]), CombineFrames(FrameFragment((if Heap[t1_6, next_child] != null then Heap[null, tree(Heap[t1_6, next_child])] else EmptyFrame)), FrameFragment((if Heap[t1_6, next_sibling] != null then Heap[null, tree(Heap[t1_6, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree(t1_6))) {
      Heap := Heap[null, tree#sm(t1_6):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree(t1_6):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t1_6):=Heap[null, tree#sm(t1_6)][t1_6, data:=true]];
    Heap := Heap[null, tree#sm(t1_6):=Heap[null, tree#sm(t1_6)][t1_6, next_child:=true]];
    Heap := Heap[null, tree#sm(t1_6):=Heap[null, tree#sm(t1_6)][t1_6, next_sibling:=true]];
    if (Heap[t1_6, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
        { newPMask[o_26, f_29] }
        Heap[null, tree#sm(t1_6)][o_26, f_29] || Heap[null, tree#sm(Heap[t1_6, next_child])][o_26, f_29] ==> newPMask[o_26, f_29]
      );
      Heap := Heap[null, tree#sm(t1_6):=newPMask];
    }
    if (Heap[t1_6, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_85: (Field A B) ::
        { newPMask[o, f_85] }
        Heap[null, tree#sm(t1_6)][o, f_85] || Heap[null, tree#sm(Heap[t1_6, next_sibling])][o, f_85] ==> newPMask[o, f_85]
      );
      Heap := Heap[null, tree#sm(t1_6):=newPMask];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t2.next_child (0554.vpr@37.3--37.24) [206087]"}
      FullPerm == Mask[t2_1, next_child];
    Heap := Heap[t2_1, next_child:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: t2.next_sibling := null -- 0554.vpr@38.3--38.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t2.next_sibling (0554.vpr@38.3--38.26) [206088]"}
      FullPerm == Mask[t2_1, next_sibling];
    Heap := Heap[t2_1, next_sibling:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(t2), write) -- 0554.vpr@39.3--39.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access t2.data (0554.vpr@39.3--39.16) [206091]"}
        perm <= Mask[t2_1, data];
    }
    Mask := Mask[t2_1, data:=Mask[t2_1, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access t2.next_child (0554.vpr@39.3--39.16) [206093]"}
        perm <= Mask[t2_1, next_child];
    }
    Mask := Mask[t2_1, next_child:=Mask[t2_1, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access t2.next_sibling (0554.vpr@39.3--39.16) [206095]"}
        perm <= Mask[t2_1, next_sibling];
    }
    Mask := Mask[t2_1, next_sibling:=Mask[t2_1, next_sibling] - perm];
    if (Heap[t2_1, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access tree(t2.next_child) (0554.vpr@39.3--39.16) [206097]"}
          perm <= Mask[null, tree(Heap[t2_1, next_child])];
      }
      Mask := Mask[null, tree(Heap[t2_1, next_child]):=Mask[null, tree(Heap[t2_1, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t2_1), Heap[null, tree(t2_1)], tree(Heap[t2_1, next_child]), Heap[null, tree(Heap[t2_1, next_child])]);
    }
    if (Heap[t2_1, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(t2) might fail. There might be insufficient permission to access tree(t2.next_sibling) (0554.vpr@39.3--39.16) [206099]"}
          perm <= Mask[null, tree(Heap[t2_1, next_sibling])];
      }
      Mask := Mask[null, tree(Heap[t2_1, next_sibling]):=Mask[null, tree(Heap[t2_1, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(t2_1), Heap[null, tree(t2_1)], tree(Heap[t2_1, next_sibling]), Heap[null, tree(Heap[t2_1, next_sibling])]);
    }
    assert {:msg "  Folding tree(t2) might fail. Assertion t2.next_child == null && t2.next_sibling == null || t2.next_child != null && t2.next_sibling != null might not hold. (0554.vpr@39.3--39.16) [206100]"}
      (Heap[t2_1, next_child] == null && Heap[t2_1, next_sibling] == null) || (Heap[t2_1, next_child] != null && Heap[t2_1, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree(t2_1):=Mask[null, tree(t2_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree(t2_1));
    assume Heap[null, tree(t2_1)] == CombineFrames(FrameFragment(Heap[t2_1, data]), CombineFrames(FrameFragment(Heap[t2_1, next_child]), CombineFrames(FrameFragment(Heap[t2_1, next_sibling]), CombineFrames(FrameFragment((if Heap[t2_1, next_child] != null then Heap[null, tree(Heap[t2_1, next_child])] else EmptyFrame)), FrameFragment((if Heap[t2_1, next_sibling] != null then Heap[null, tree(Heap[t2_1, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree(t2_1))) {
      Heap := Heap[null, tree#sm(t2_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree(t2_1):=freshVersion];
    }
    Heap := Heap[null, tree#sm(t2_1):=Heap[null, tree#sm(t2_1)][t2_1, data:=true]];
    Heap := Heap[null, tree#sm(t2_1):=Heap[null, tree#sm(t2_1)][t2_1, next_child:=true]];
    Heap := Heap[null, tree#sm(t2_1):=Heap[null, tree#sm(t2_1)][t2_1, next_sibling:=true]];
    if (Heap[t2_1, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
        { newPMask[o_11, f_3] }
        Heap[null, tree#sm(t2_1)][o_11, f_3] || Heap[null, tree#sm(Heap[t2_1, next_child])][o_11, f_3] ==> newPMask[o_11, f_3]
      );
      Heap := Heap[null, tree#sm(t2_1):=newPMask];
    }
    if (Heap[t2_1, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
        { newPMask[o_35, f_17] }
        Heap[null, tree#sm(t2_1)][o_35, f_17] || Heap[null, tree#sm(Heap[t2_1, next_sibling])][o_35, f_17] ==> newPMask[o_35, f_17]
      );
      Heap := Heap[null, tree#sm(t2_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(tree(t5), write) -- 0554.vpr@42.3--42.18
    perm := FullPerm;
    Mask := Mask[null, tree(t5_2):=Mask[null, tree(t5_2)] + perm];
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
      assert {:msg "  The precondition of method cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@46.3--46.23) [206103]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method cloneTree might not hold. There might be insufficient permission to access tree(t5) (0554.vpr@46.3--46.23) [206104]"}
          perm <= Mask[null, tree(t5_2)];
      }
      Mask := Mask[null, tree(t5_2):=Mask[null, tree(t5_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc ctr;
    
    // -- Inhaling postcondition
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0554.vpr@46.3--46.23) [206105]"}
        perm >= NoPerm;
      Mask := Mask[null, tree(t5_2):=Mask[null, tree(t5_2)] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, tree(ctr):=Mask[null, tree(ctr)] + perm];
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume tree#trigger(UnfoldingHeap, tree(t5_2));
        assume UnfoldingHeap[null, tree(t5_2)] == CombineFrames(FrameFragment(UnfoldingHeap[t5_2, data]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[t5_2, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[t5_2, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_sibling])] else EmptyFrame))))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := 1 / 2;
        UnfoldingMask := UnfoldingMask[null, tree(t5_2):=UnfoldingMask[null, tree(t5_2)] - perm];
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
          UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_child])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree(t5_2), UnfoldingHeap[null, tree(t5_2)], tree(UnfoldingHeap[t5_2, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_child])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[t5_2, next_sibling] != null) {
          perm := 1 / 2;
          UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_sibling])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree(t5_2), UnfoldingHeap[null, tree(t5_2)], tree(UnfoldingHeap[t5_2, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_sibling])]);
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
          assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
            { newPMask[o_1, f_11] }
            Heap[null, tree#sm(t5_2)][o_1, f_11] || Heap[null, tree#sm(Heap[t5_2, next_child])][o_1, f_11] ==> newPMask[o_1, f_11]
          );
          Heap := Heap[null, tree#sm(t5_2):=newPMask];
        }
        if (Heap[t5_2, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
            { newPMask[o_12, f_9] }
            Heap[null, tree#sm(t5_2)][o_12, f_9] || Heap[null, tree#sm(Heap[t5_2, next_sibling])][o_12, f_9] ==> newPMask[o_12, f_9]
          );
          Heap := Heap[null, tree#sm(t5_2):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, data:=true]];
        Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_child:=true]];
        Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_sibling:=true]];
        if (Heap[ctr, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
            { newPMask[o_22, f_24] }
            Heap[null, tree#sm(ctr)][o_22, f_24] || Heap[null, tree#sm(Heap[ctr, next_child])][o_22, f_24] ==> newPMask[o_22, f_24]
          );
          Heap := Heap[null, tree#sm(ctr):=newPMask];
        }
        if (Heap[ctr, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
            { newPMask[o_3, f_12] }
            Heap[null, tree#sm(ctr)][o_3, f_12] || Heap[null, tree#sm(Heap[ctr, next_sibling])][o_3, f_12] ==> newPMask[o_3, f_12]
          );
          Heap := Heap[null, tree#sm(ctr):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of (unfolding acc(tree(t5), 1 / 2) in (unfolding acc(tree(ctr), write) in t5.next_child == ctr.next_child && t5.next_sibling == ctr.next_sibling)) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume tree#trigger(UnfoldingHeap, tree(t5_2));
        assume UnfoldingHeap[null, tree(t5_2)] == CombineFrames(FrameFragment(UnfoldingHeap[t5_2, data]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[t5_2, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[t5_2, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[t5_2, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_sibling])] else EmptyFrame))))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206106]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(t5) (0554.vpr@55.12--57.91) [206107]"}
            perm <= UnfoldingMask[null, tree(t5_2)];
        }
        UnfoldingMask := UnfoldingMask[null, tree(t5_2):=UnfoldingMask[null, tree(t5_2)] - perm];
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206108]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, data:=UnfoldingMask[t5_2, data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206109]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, next_child:=UnfoldingMask[t5_2, next_child] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206110]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> t5_2 != null;
        UnfoldingMask := UnfoldingMask[t5_2, next_sibling:=UnfoldingMask[t5_2, next_sibling] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[t5_2, next_child] != null) {
          perm := 1 / 2;
          assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206111]"}
            perm >= NoPerm;
          UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_child])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree(t5_2), UnfoldingHeap[null, tree(t5_2)], tree(UnfoldingHeap[t5_2, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_child])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[t5_2, next_sibling] != null) {
          perm := 1 / 2;
          assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206112]"}
            perm >= NoPerm;
          UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[t5_2, next_sibling])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree(t5_2), UnfoldingHeap[null, tree(t5_2)], tree(UnfoldingHeap[t5_2, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[t5_2, next_sibling])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume (UnfoldingHeap[t5_2, next_child] == null && UnfoldingHeap[t5_2, next_sibling] == null) || (UnfoldingHeap[t5_2, next_child] != null && UnfoldingHeap[t5_2, next_sibling] != null);
        assume state(UnfoldingHeap, UnfoldingMask);
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume tree#trigger(Unfolding1Heap, tree(ctr));
        assume Unfolding1Heap[null, tree(ctr)] == CombineFrames(FrameFragment(Unfolding1Heap[ctr, data]), CombineFrames(FrameFragment(Unfolding1Heap[ctr, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[ctr, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[ctr, next_child] != null then Unfolding1Heap[null, tree(Unfolding1Heap[ctr, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[ctr, next_sibling] != null then Unfolding1Heap[null, tree(Unfolding1Heap[ctr, next_sibling])] else EmptyFrame))))));
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(ctr) (0554.vpr@55.12--57.91) [206113]"}
            perm <= Unfolding1Mask[null, tree(ctr)];
        }
        Unfolding1Mask := Unfolding1Mask[null, tree(ctr):=Unfolding1Mask[null, tree(ctr)] - perm];
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
          Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[ctr, next_child]):=Unfolding1Mask[null, tree(Unfolding1Heap[ctr, next_child])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree(ctr), Unfolding1Heap[null, tree(ctr)], tree(Unfolding1Heap[ctr, next_child]), Unfolding1Heap[null, tree(Unfolding1Heap[ctr, next_child])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        if (Unfolding1Heap[ctr, next_sibling] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[ctr, next_sibling]):=Unfolding1Mask[null, tree(Unfolding1Heap[ctr, next_sibling])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(tree(ctr), Unfolding1Heap[null, tree(ctr)], tree(Unfolding1Heap[ctr, next_sibling]), Unfolding1Heap[null, tree(Unfolding1Heap[ctr, next_sibling])]);
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
            assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
              { newPMask[o_46, f_35] }
              UnfoldingHeap[null, tree#sm(ctr)][o_46, f_35] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[ctr, next_child])][o_46, f_35] ==> newPMask[o_46, f_35]
            );
            UnfoldingHeap := UnfoldingHeap[null, tree#sm(ctr):=newPMask];
          }
          if (UnfoldingHeap[ctr, next_sibling] != null) {
            havoc newPMask;
            assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
              { newPMask[o_41, f_25] }
              UnfoldingHeap[null, tree#sm(ctr)][o_41, f_25] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[ctr, next_sibling])][o_41, f_25] ==> newPMask[o_41, f_25]
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
            assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
              { newPMask[o_34, f_44] }
              Heap[null, tree#sm(t5_2)][o_34, f_44] || Heap[null, tree#sm(Heap[t5_2, next_child])][o_34, f_44] ==> newPMask[o_34, f_44]
            );
            Heap := Heap[null, tree#sm(t5_2):=newPMask];
          }
          if (Heap[t5_2, next_sibling] != null) {
            havoc newPMask;
            assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
              { newPMask[o_55, f_36] }
              Heap[null, tree#sm(t5_2)][o_55, f_36] || Heap[null, tree#sm(Heap[t5_2, next_sibling])][o_55, f_36] ==> newPMask[o_55, f_36]
            );
            Heap := Heap[null, tree#sm(t5_2):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, data:=true]];
          Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_child:=true]];
          Heap := Heap[null, tree#sm(ctr):=Heap[null, tree#sm(ctr)][ctr, next_sibling:=true]];
          if (Heap[ctr, next_child] != null) {
            havoc newPMask;
            assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
              { newPMask[o_42, f_26] }
              Heap[null, tree#sm(ctr)][o_42, f_26] || Heap[null, tree#sm(Heap[ctr, next_child])][o_42, f_26] ==> newPMask[o_42, f_26]
            );
            Heap := Heap[null, tree#sm(ctr):=newPMask];
          }
          if (Heap[ctr, next_sibling] != null) {
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
              { newPMask[o_13, f_45] }
              Heap[null, tree#sm(ctr)][o_13, f_45] || Heap[null, tree#sm(Heap[ctr, next_sibling])][o_13, f_45] ==> newPMask[o_13, f_45]
            );
            Heap := Heap[null, tree#sm(ctr):=newPMask];
          }
          assume state(Heap, Mask);
    assume Heap[ctr, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0554.vpr@48.3--48.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0554.vpr@48.10--48.15) [206114]"}
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@52.12--52.32) [206115]"}
      perm >= NoPerm;
    Mask := Mask[null, tree(this):=Mask[null, tree(this)] + perm];
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@53.11--53.44) [206116]"}
      perm >= NoPerm;
    PostMask := PostMask[null, tree(this):=PostMask[null, tree(this)] + perm];
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, tree(res):=PostMask[null, tree(res)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(tree(this), 1 / 2) in (unfolding acc(tree(res), write) in this.next_child == res.next_child && this.next_sibling == res.next_sibling))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tree#trigger(UnfoldingHeap, tree(this));
      assume UnfoldingHeap[null, tree(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[this, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[this, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206117]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tree(this) (0554.vpr@55.12--57.91) [206118]"}
          perm <= UnfoldingMask[null, tree(this)];
      }
      UnfoldingMask := UnfoldingMask[null, tree(this):=UnfoldingMask[null, tree(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206119]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206120]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_child:=UnfoldingMask[this, next_child] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206121]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_sibling:=UnfoldingMask[this, next_sibling] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next_child] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206122]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[this, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[this, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(this), UnfoldingHeap[null, tree(this)], tree(UnfoldingHeap[this, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[this, next_child])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, next_sibling] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206123]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[this, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[this, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(this), UnfoldingHeap[null, tree(this)], tree(UnfoldingHeap[this, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[this, next_sibling])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume (UnfoldingHeap[this, next_child] == null && UnfoldingHeap[this, next_sibling] == null) || (UnfoldingHeap[this, next_child] != null && UnfoldingHeap[this, next_sibling] != null);
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume tree#trigger(Unfolding1Heap, tree(res));
      assume Unfolding1Heap[null, tree(res)] == CombineFrames(FrameFragment(Unfolding1Heap[res, data]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[res, next_child] != null then Unfolding1Heap[null, tree(Unfolding1Heap[res, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[res, next_sibling] != null then Unfolding1Heap[null, tree(Unfolding1Heap[res, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tree(res) (0554.vpr@55.12--57.91) [206124]"}
          perm <= Unfolding1Mask[null, tree(res)];
      }
      Unfolding1Mask := Unfolding1Mask[null, tree(res):=Unfolding1Mask[null, tree(res)] - perm];
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
        Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[res, next_child]):=Unfolding1Mask[null, tree(Unfolding1Heap[res, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(res), Unfolding1Heap[null, tree(res)], tree(Unfolding1Heap[res, next_child]), Unfolding1Heap[null, tree(Unfolding1Heap[res, next_child])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      if (Unfolding1Heap[res, next_sibling] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[res, next_sibling]):=Unfolding1Mask[null, tree(Unfolding1Heap[res, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(res), Unfolding1Heap[null, tree(res)], tree(Unfolding1Heap[res, next_sibling]), Unfolding1Heap[null, tree(Unfolding1Heap[res, next_sibling])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume (Unfolding1Heap[res, next_child] == null && Unfolding1Heap[res, next_sibling] == null) || (Unfolding1Heap[res, next_child] != null && Unfolding1Heap[res, next_sibling] != null);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next_child (0554.vpr@55.12--57.91) [206125]"}
        HasDirectPerm(Unfolding1Mask, this, next_child);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res.next_child (0554.vpr@55.12--57.91) [206126]"}
        HasDirectPerm(Unfolding1Mask, res, next_child);
      if (Unfolding1Heap[this, next_child] == Unfolding1Heap[res, next_child]) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next_sibling (0554.vpr@55.12--57.91) [206127]"}
          HasDirectPerm(Unfolding1Mask, this, next_sibling);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access res.next_sibling (0554.vpr@55.12--57.91) [206128]"}
          HasDirectPerm(Unfolding1Mask, res, next_sibling);
      }
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=UnfoldingHeap[null, tree#sm(res)][res, data:=true]];
        UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=UnfoldingHeap[null, tree#sm(res)][res, next_child:=true]];
        UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=UnfoldingHeap[null, tree#sm(res)][res, next_sibling:=true]];
        if (UnfoldingHeap[res, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
            { newPMask[o_43, f_13] }
            UnfoldingHeap[null, tree#sm(res)][o_43, f_13] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[res, next_child])][o_43, f_13] ==> newPMask[o_43, f_13]
          );
          UnfoldingHeap := UnfoldingHeap[null, tree#sm(res):=newPMask];
        }
        if (UnfoldingHeap[res, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
            { newPMask[o_47, f_41] }
            UnfoldingHeap[null, tree#sm(res)][o_47, f_41] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[res, next_sibling])][o_47, f_41] ==> newPMask[o_47, f_41]
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
          assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
            { newPMask[o_14, f_51] }
            PostHeap[null, tree#sm(this)][o_14, f_51] || PostHeap[null, tree#sm(PostHeap[this, next_child])][o_14, f_51] ==> newPMask[o_14, f_51]
          );
          PostHeap := PostHeap[null, tree#sm(this):=newPMask];
        }
        if (PostHeap[this, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
            { newPMask[o_44, f_14] }
            PostHeap[null, tree#sm(this)][o_44, f_14] || PostHeap[null, tree#sm(PostHeap[this, next_sibling])][o_44, f_14] ==> newPMask[o_44, f_14]
          );
          PostHeap := PostHeap[null, tree#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
        PostHeap := PostHeap[null, tree#sm(res):=PostHeap[null, tree#sm(res)][res, data:=true]];
        PostHeap := PostHeap[null, tree#sm(res):=PostHeap[null, tree#sm(res)][res, next_child:=true]];
        PostHeap := PostHeap[null, tree#sm(res):=PostHeap[null, tree#sm(res)][res, next_sibling:=true]];
        if (PostHeap[res, next_child] != null) {
          havoc newPMask;
          assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
            { newPMask[o_28, f_42] }
            PostHeap[null, tree#sm(res)][o_28, f_42] || PostHeap[null, tree#sm(PostHeap[res, next_child])][o_28, f_42] ==> newPMask[o_28, f_42]
          );
          PostHeap := PostHeap[null, tree#sm(res):=newPMask];
        }
        if (PostHeap[res, next_sibling] != null) {
          havoc newPMask;
          assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
            { newPMask[o_76, f_34] }
            PostHeap[null, tree#sm(res)][o_76, f_34] || PostHeap[null, tree#sm(PostHeap[res, next_sibling])][o_76, f_34] ==> newPMask[o_76, f_34]
          );
          PostHeap := PostHeap[null, tree#sm(res):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tree#trigger(UnfoldingHeap, tree(this));
      assume UnfoldingHeap[null, tree(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[this, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[this, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 2;
      UnfoldingMask := UnfoldingMask[null, tree(this):=UnfoldingMask[null, tree(this)] - perm];
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
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[this, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[this, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(this), UnfoldingHeap[null, tree(this)], tree(UnfoldingHeap[this, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[this, next_child])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, next_sibling] != null) {
        perm := 1 / 2;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[this, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[this, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(this), UnfoldingHeap[null, tree(this)], tree(UnfoldingHeap[this, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[this, next_sibling])]);
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
    assume tree#trigger(Heap, tree(this));
    assume Heap[null, tree(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, next_child]), CombineFrames(FrameFragment(Heap[this, next_sibling]), CombineFrames(FrameFragment((if Heap[this, next_child] != null then Heap[null, tree(Heap[this, next_child])] else EmptyFrame)), FrameFragment((if Heap[this, next_sibling] != null then Heap[null, tree(Heap[this, next_sibling])] else EmptyFrame))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [206130]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding tree(this) might fail. There might be insufficient permission to access tree(this) (0554.vpr@61.3--61.30) [206131]"}
        perm <= Mask[null, tree(this)];
    }
    Mask := Mask[null, tree(this):=Mask[null, tree(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, tree(this))) {
        havoc newVersion;
        Heap := Heap[null, tree(this):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [206132]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, data:=Mask[this, data] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [206133]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, next_child:=Mask[this, next_child] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [206134]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, next_sibling:=Mask[this, next_sibling] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next_child] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [206135]"}
        perm >= NoPerm;
      Mask := Mask[null, tree(Heap[this, next_child]):=Mask[null, tree(Heap[this, next_child])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tree(this), Heap[null, tree(this)], tree(Heap[this, next_child]), Heap[null, tree(Heap[this, next_child])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, next_sibling] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@61.3--61.30) [206136]"}
        perm >= NoPerm;
      Mask := Mask[null, tree(Heap[this, next_sibling]):=Mask[null, tree(Heap[this, next_sibling])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tree(this), Heap[null, tree(this)], tree(Heap[this, next_sibling]), Heap[null, tree(Heap[this, next_sibling])]);
      assume state(Heap, Mask);
    }
    assume (Heap[this, next_child] == null && Heap[this, next_sibling] == null) || (Heap[this, next_child] != null && Heap[this, next_sibling] != null);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next_child == null && this.next_sibling == null) -- 0554.vpr@63.3--78.4
    
    // -- Check definedness of this.next_child == null && this.next_sibling == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next_child (0554.vpr@63.6--63.58) [206137]"}
        HasDirectPerm(Mask, this, next_child);
      if (Heap[this, next_child] == null) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next_sibling (0554.vpr@63.6--63.58) [206138]"}
          HasDirectPerm(Mask, this, next_sibling);
      }
    if (Heap[this, next_child] == null && Heap[this, next_sibling] == null) {
      
      // -- Translating statement: res.next_child := null -- 0554.vpr@64.7--64.29
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_child (0554.vpr@64.7--64.29) [206139]"}
          FullPerm == Mask[res, next_child];
        Heap := Heap[res, next_child:=null];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.next_sibling := null -- 0554.vpr@65.7--65.31
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_sibling (0554.vpr@65.7--65.31) [206140]"}
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
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next_child (0554.vpr@71.7--71.46) [206141]"}
            HasDirectPerm(Mask, this, next_child);
        arg_this := Heap[this, next_child];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := 1 / 2;
          assert {:msg "  The precondition of method cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@71.7--71.46) [206142]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method cloneTree might not hold. There might be insufficient permission to access tree(this.next_child) (0554.vpr@71.7--71.46) [206143]"}
              perm <= Mask[null, tree(arg_this)];
          }
          Mask := Mask[null, tree(arg_this):=Mask[null, tree(arg_this)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc tmp_child;
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0554.vpr@71.7--71.46) [206144]"}
            perm >= NoPerm;
          Mask := Mask[null, tree(arg_this):=Mask[null, tree(arg_this)] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, tree(tmp_child):=Mask[null, tree(tmp_child)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree(arg_this));
            assume UnfoldingHeap[null, tree(arg_this)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            UnfoldingMask := UnfoldingMask[null, tree(arg_this):=UnfoldingMask[null, tree(arg_this)] - perm];
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
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this), UnfoldingHeap[null, tree(arg_this)], tree(UnfoldingHeap[arg_this, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this, next_sibling] != null) {
              perm := 1 / 2;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this), UnfoldingHeap[null, tree(arg_this)], tree(UnfoldingHeap[arg_this, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_sibling])]);
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
              assume (forall <A, B> o_63: Ref, f_86: (Field A B) ::
                { newPMask[o_63, f_86] }
                Heap[null, tree#sm(arg_this)][o_63, f_86] || Heap[null, tree#sm(Heap[arg_this, next_child])][o_63, f_86] ==> newPMask[o_63, f_86]
              );
              Heap := Heap[null, tree#sm(arg_this):=newPMask];
            }
            if (Heap[arg_this, next_sibling] != null) {
              havoc newPMask;
              assume (forall <A, B> o_79: Ref, f_87: (Field A B) ::
                { newPMask[o_79, f_87] }
                Heap[null, tree#sm(arg_this)][o_79, f_87] || Heap[null, tree#sm(Heap[arg_this, next_sibling])][o_79, f_87] ==> newPMask[o_79, f_87]
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
              assume (forall <A, B> o_81: Ref, f_57: (Field A B) ::
                { newPMask[o_81, f_57] }
                Heap[null, tree#sm(tmp_child)][o_81, f_57] || Heap[null, tree#sm(Heap[tmp_child, next_sibling])][o_81, f_57] ==> newPMask[o_81, f_57]
              );
              Heap := Heap[null, tree#sm(tmp_child):=newPMask];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(tree(arg_this), 1 / 2) in (unfolding acc(tree(tmp_child), write) in arg_this.next_child == tmp_child.next_child && arg_this.next_sibling == tmp_child.next_sibling)) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree(arg_this));
            assume UnfoldingHeap[null, tree(arg_this)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206145]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(this.next_child) (0554.vpr@55.12--57.91) [206146]"}
                perm <= UnfoldingMask[null, tree(arg_this)];
            }
            UnfoldingMask := UnfoldingMask[null, tree(arg_this):=UnfoldingMask[null, tree(arg_this)] - perm];
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206147]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, data:=UnfoldingMask[arg_this, data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206148]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, next_child:=UnfoldingMask[arg_this, next_child] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206149]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this != null;
            UnfoldingMask := UnfoldingMask[arg_this, next_sibling:=UnfoldingMask[arg_this, next_sibling] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_this, next_child] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206150]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this), UnfoldingHeap[null, tree(arg_this)], tree(UnfoldingHeap[arg_this, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this, next_sibling] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206151]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this), UnfoldingHeap[null, tree(arg_this)], tree(UnfoldingHeap[arg_this, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this, next_sibling])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume (UnfoldingHeap[arg_this, next_child] == null && UnfoldingHeap[arg_this, next_sibling] == null) || (UnfoldingHeap[arg_this, next_child] != null && UnfoldingHeap[arg_this, next_sibling] != null);
            assume state(UnfoldingHeap, UnfoldingMask);
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume tree#trigger(Unfolding1Heap, tree(tmp_child));
            assume Unfolding1Heap[null, tree(tmp_child)] == CombineFrames(FrameFragment(Unfolding1Heap[tmp_child, data]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_child, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_child, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[tmp_child, next_child] != null then Unfolding1Heap[null, tree(Unfolding1Heap[tmp_child, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[tmp_child, next_sibling] != null then Unfolding1Heap[null, tree(Unfolding1Heap[tmp_child, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(tmp_child) (0554.vpr@55.12--57.91) [206152]"}
                perm <= Unfolding1Mask[null, tree(tmp_child)];
            }
            Unfolding1Mask := Unfolding1Mask[null, tree(tmp_child):=Unfolding1Mask[null, tree(tmp_child)] - perm];
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
              Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[tmp_child, next_child]):=Unfolding1Mask[null, tree(Unfolding1Heap[tmp_child, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(tmp_child), Unfolding1Heap[null, tree(tmp_child)], tree(Unfolding1Heap[tmp_child, next_child]), Unfolding1Heap[null, tree(Unfolding1Heap[tmp_child, next_child])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            if (Unfolding1Heap[tmp_child, next_sibling] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[tmp_child, next_sibling]):=Unfolding1Mask[null, tree(Unfolding1Heap[tmp_child, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(tmp_child), Unfolding1Heap[null, tree(tmp_child)], tree(Unfolding1Heap[tmp_child, next_sibling]), Unfolding1Heap[null, tree(Unfolding1Heap[tmp_child, next_sibling])]);
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
                assume (forall <A, B> o_82: Ref, f_70: (Field A B) ::
                  { newPMask[o_82, f_70] }
                  UnfoldingHeap[null, tree#sm(tmp_child)][o_82, f_70] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_child, next_child])][o_82, f_70] ==> newPMask[o_82, f_70]
                );
                UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_child):=newPMask];
              }
              if (UnfoldingHeap[tmp_child, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_83: Ref, f_89: (Field A B) ::
                  { newPMask[o_83, f_89] }
                  UnfoldingHeap[null, tree#sm(tmp_child)][o_83, f_89] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_child, next_sibling])][o_83, f_89] ==> newPMask[o_83, f_89]
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
                assume (forall <A, B> o_68: Ref, f_58: (Field A B) ::
                  { newPMask[o_68, f_58] }
                  Heap[null, tree#sm(arg_this)][o_68, f_58] || Heap[null, tree#sm(Heap[arg_this, next_child])][o_68, f_58] ==> newPMask[o_68, f_58]
                );
                Heap := Heap[null, tree#sm(arg_this):=newPMask];
              }
              if (Heap[arg_this, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_84: Ref, f_71: (Field A B) ::
                  { newPMask[o_84, f_71] }
                  Heap[null, tree#sm(arg_this)][o_84, f_71] || Heap[null, tree#sm(Heap[arg_this, next_sibling])][o_84, f_71] ==> newPMask[o_84, f_71]
                );
                Heap := Heap[null, tree#sm(arg_this):=newPMask];
              }
              assume state(Heap, Mask);
              Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, data:=true]];
              Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, next_child:=true]];
              Heap := Heap[null, tree#sm(tmp_child):=Heap[null, tree#sm(tmp_child)][tmp_child, next_sibling:=true]];
              if (Heap[tmp_child, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_85: Ref, f_60: (Field A B) ::
                  { newPMask[o_85, f_60] }
                  Heap[null, tree#sm(tmp_child)][o_85, f_60] || Heap[null, tree#sm(Heap[tmp_child, next_child])][o_85, f_60] ==> newPMask[o_85, f_60]
                );
                Heap := Heap[null, tree#sm(tmp_child):=newPMask];
              }
              if (Heap[tmp_child, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_69: Ref, f_90: (Field A B) ::
                  { newPMask[o_69, f_90] }
                  Heap[null, tree#sm(tmp_child)][o_69, f_90] || Heap[null, tree#sm(Heap[tmp_child, next_sibling])][o_69, f_90] ==> newPMask[o_69, f_90]
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
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next_sibling (0554.vpr@74.7--74.50) [206153]"}
            HasDirectPerm(Mask, this, next_sibling);
        arg_this_1 := Heap[this, next_sibling];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := 1 / 2;
          assert {:msg "  The precondition of method cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@74.7--74.50) [206154]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method cloneTree might not hold. There might be insufficient permission to access tree(this.next_sibling) (0554.vpr@74.7--74.50) [206155]"}
              perm <= Mask[null, tree(arg_this_1)];
          }
          Mask := Mask[null, tree(arg_this_1):=Mask[null, tree(arg_this_1)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc tmp_sibling;
        
        // -- Inhaling postcondition
          perm := 1 / 2;
          assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0554.vpr@74.7--74.50) [206156]"}
            perm >= NoPerm;
          Mask := Mask[null, tree(arg_this_1):=Mask[null, tree(arg_this_1)] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, tree(tmp_sibling):=Mask[null, tree(tmp_sibling)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree(arg_this_1));
            assume UnfoldingHeap[null, tree(arg_this_1)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this_1, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this_1, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            UnfoldingMask := UnfoldingMask[null, tree(arg_this_1):=UnfoldingMask[null, tree(arg_this_1)] - perm];
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
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this_1), UnfoldingHeap[null, tree(arg_this_1)], tree(UnfoldingHeap[arg_this_1, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this_1, next_sibling] != null) {
              perm := 1 / 2;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this_1), UnfoldingHeap[null, tree(arg_this_1)], tree(UnfoldingHeap[arg_this_1, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_sibling])]);
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
              assume (forall <A, B> o_86: Ref, f_91: (Field A B) ::
                { newPMask[o_86, f_91] }
                Heap[null, tree#sm(arg_this_1)][o_86, f_91] || Heap[null, tree#sm(Heap[arg_this_1, next_child])][o_86, f_91] ==> newPMask[o_86, f_91]
              );
              Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
            }
            if (Heap[arg_this_1, next_sibling] != null) {
              havoc newPMask;
              assume (forall <A, B> o_87: Ref, f_61: (Field A B) ::
                { newPMask[o_87, f_61] }
                Heap[null, tree#sm(arg_this_1)][o_87, f_61] || Heap[null, tree#sm(Heap[arg_this_1, next_sibling])][o_87, f_61] ==> newPMask[o_87, f_61]
              );
              Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, data:=true]];
            Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_child:=true]];
            Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_sibling:=true]];
            if (Heap[tmp_sibling, next_child] != null) {
              havoc newPMask;
              assume (forall <A, B> o_88: Ref, f_78: (Field A B) ::
                { newPMask[o_88, f_78] }
                Heap[null, tree#sm(tmp_sibling)][o_88, f_78] || Heap[null, tree#sm(Heap[tmp_sibling, next_child])][o_88, f_78] ==> newPMask[o_88, f_78]
              );
              Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
            }
            if (Heap[tmp_sibling, next_sibling] != null) {
              havoc newPMask;
              assume (forall <A, B> o_89: Ref, f_92: (Field A B) ::
                { newPMask[o_89, f_92] }
                Heap[null, tree#sm(tmp_sibling)][o_89, f_92] || Heap[null, tree#sm(Heap[tmp_sibling, next_sibling])][o_89, f_92] ==> newPMask[o_89, f_92]
              );
              Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(tree(arg_this), 1 / 2) in (unfolding acc(tree(tmp_sibling), write) in arg_this.next_child == tmp_sibling.next_child && arg_this.next_sibling == tmp_sibling.next_sibling)) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree(arg_this_1));
            assume UnfoldingHeap[null, tree(arg_this_1)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, data]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[arg_this_1, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_this_1, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[arg_this_1, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206157]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(this.next_sibling) (0554.vpr@55.12--57.91) [206158]"}
                perm <= UnfoldingMask[null, tree(arg_this_1)];
            }
            UnfoldingMask := UnfoldingMask[null, tree(arg_this_1):=UnfoldingMask[null, tree(arg_this_1)] - perm];
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206159]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, data:=UnfoldingMask[arg_this_1, data] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206160]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, next_child:=UnfoldingMask[arg_this_1, next_child] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := 1 / 2;
            assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206161]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> arg_this_1 != null;
            UnfoldingMask := UnfoldingMask[arg_this_1, next_sibling:=UnfoldingMask[arg_this_1, next_sibling] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_this_1, next_child] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206162]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this_1), UnfoldingHeap[null, tree(arg_this_1)], tree(UnfoldingHeap[arg_this_1, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_child])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            if (UnfoldingHeap[arg_this_1, next_sibling] != null) {
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206163]"}
                perm >= NoPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_this_1, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_this_1), UnfoldingHeap[null, tree(arg_this_1)], tree(UnfoldingHeap[arg_this_1, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_this_1, next_sibling])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume (UnfoldingHeap[arg_this_1, next_child] == null && UnfoldingHeap[arg_this_1, next_sibling] == null) || (UnfoldingHeap[arg_this_1, next_child] != null && UnfoldingHeap[arg_this_1, next_sibling] != null);
            assume state(UnfoldingHeap, UnfoldingMask);
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume tree#trigger(Unfolding1Heap, tree(tmp_sibling));
            assume Unfolding1Heap[null, tree(tmp_sibling)] == CombineFrames(FrameFragment(Unfolding1Heap[tmp_sibling, data]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_sibling, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[tmp_sibling, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[tmp_sibling, next_child] != null then Unfolding1Heap[null, tree(Unfolding1Heap[tmp_sibling, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[tmp_sibling, next_sibling] != null then Unfolding1Heap[null, tree(Unfolding1Heap[tmp_sibling, next_sibling])] else EmptyFrame))))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(tmp_sibling) (0554.vpr@55.12--57.91) [206164]"}
                perm <= Unfolding1Mask[null, tree(tmp_sibling)];
            }
            Unfolding1Mask := Unfolding1Mask[null, tree(tmp_sibling):=Unfolding1Mask[null, tree(tmp_sibling)] - perm];
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
              Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[tmp_sibling, next_child]):=Unfolding1Mask[null, tree(Unfolding1Heap[tmp_sibling, next_child])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(tmp_sibling), Unfolding1Heap[null, tree(tmp_sibling)], tree(Unfolding1Heap[tmp_sibling, next_child]), Unfolding1Heap[null, tree(Unfolding1Heap[tmp_sibling, next_child])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            if (Unfolding1Heap[tmp_sibling, next_sibling] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[tmp_sibling, next_sibling]):=Unfolding1Mask[null, tree(Unfolding1Heap[tmp_sibling, next_sibling])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(tmp_sibling), Unfolding1Heap[null, tree(tmp_sibling)], tree(Unfolding1Heap[tmp_sibling, next_sibling]), Unfolding1Heap[null, tree(Unfolding1Heap[tmp_sibling, next_sibling])]);
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
                assume (forall <A, B> o_90: Ref, f_93: (Field A B) ::
                  { newPMask[o_90, f_93] }
                  UnfoldingHeap[null, tree#sm(tmp_sibling)][o_90, f_93] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_sibling, next_child])][o_90, f_93] ==> newPMask[o_90, f_93]
                );
                UnfoldingHeap := UnfoldingHeap[null, tree#sm(tmp_sibling):=newPMask];
              }
              if (UnfoldingHeap[tmp_sibling, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_91: Ref, f_79: (Field A B) ::
                  { newPMask[o_91, f_79] }
                  UnfoldingHeap[null, tree#sm(tmp_sibling)][o_91, f_79] || UnfoldingHeap[null, tree#sm(UnfoldingHeap[tmp_sibling, next_sibling])][o_91, f_79] ==> newPMask[o_91, f_79]
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
                assume (forall <A, B> o_64: Ref, f_94: (Field A B) ::
                  { newPMask[o_64, f_94] }
                  Heap[null, tree#sm(arg_this_1)][o_64, f_94] || Heap[null, tree#sm(Heap[arg_this_1, next_child])][o_64, f_94] ==> newPMask[o_64, f_94]
                );
                Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
              }
              if (Heap[arg_this_1, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_92: Ref, f_68: (Field A B) ::
                  { newPMask[o_92, f_68] }
                  Heap[null, tree#sm(arg_this_1)][o_92, f_68] || Heap[null, tree#sm(Heap[arg_this_1, next_sibling])][o_92, f_68] ==> newPMask[o_92, f_68]
                );
                Heap := Heap[null, tree#sm(arg_this_1):=newPMask];
              }
              assume state(Heap, Mask);
              Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, data:=true]];
              Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_child:=true]];
              Heap := Heap[null, tree#sm(tmp_sibling):=Heap[null, tree#sm(tmp_sibling)][tmp_sibling, next_sibling:=true]];
              if (Heap[tmp_sibling, next_child] != null) {
                havoc newPMask;
                assume (forall <A, B> o_93: Ref, f_95: (Field A B) ::
                  { newPMask[o_93, f_95] }
                  Heap[null, tree#sm(tmp_sibling)][o_93, f_95] || Heap[null, tree#sm(Heap[tmp_sibling, next_child])][o_93, f_95] ==> newPMask[o_93, f_95]
                );
                Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
              }
              if (Heap[tmp_sibling, next_sibling] != null) {
                havoc newPMask;
                assume (forall <A, B> o_65: Ref, f_96: (Field A B) ::
                  { newPMask[o_65, f_96] }
                  Heap[null, tree#sm(tmp_sibling)][o_65, f_96] || Heap[null, tree#sm(Heap[tmp_sibling, next_sibling])][o_65, f_96] ==> newPMask[o_65, f_96]
                );
                Heap := Heap[null, tree#sm(tmp_sibling):=newPMask];
              }
              assume state(Heap, Mask);
        assume Heap[tmp_sibling, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.data := this.data -- 0554.vpr@75.7--75.28
        
        // -- Check definedness of this.data
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.data (0554.vpr@75.7--75.28) [206165]"}
            HasDirectPerm(Mask, this, data);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.data (0554.vpr@75.7--75.28) [206166]"}
          FullPerm == Mask[res, data];
        Heap := Heap[res, data:=Heap[this, data]];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.next_child := tmp_child -- 0554.vpr@76.7--76.34
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_child (0554.vpr@76.7--76.34) [206167]"}
          FullPerm == Mask[res, next_child];
        Heap := Heap[res, next_child:=tmp_child];
        assume state(Heap, Mask);
      
      // -- Translating statement: res.next_sibling := tmp_sibling -- 0554.vpr@77.7--77.38
        assert {:msg "  Assignment might fail. There might be insufficient permission to access res.next_sibling (0554.vpr@77.7--77.38) [206168]"}
          FullPerm == Mask[res, next_sibling];
        Heap := Heap[res, next_sibling:=tmp_sibling];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(this), 1 / 2) -- 0554.vpr@79.3--79.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [206170]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access this.data (0554.vpr@79.3--79.28) [206171]"}
        perm <= Mask[this, data];
    }
    Mask := Mask[this, data:=Mask[this, data] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [206172]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access this.next_child (0554.vpr@79.3--79.28) [206173]"}
        perm <= Mask[this, next_child];
    }
    Mask := Mask[this, next_child:=Mask[this, next_child] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [206174]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access this.next_sibling (0554.vpr@79.3--79.28) [206175]"}
        perm <= Mask[this, next_sibling];
    }
    Mask := Mask[this, next_sibling:=Mask[this, next_sibling] - perm];
    if (Heap[this, next_child] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [206176]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access tree(this.next_child) (0554.vpr@79.3--79.28) [206177]"}
          perm <= Mask[null, tree(Heap[this, next_child])];
      }
      Mask := Mask[null, tree(Heap[this, next_child]):=Mask[null, tree(Heap[this, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(this), Heap[null, tree(this)], tree(Heap[this, next_child]), Heap[null, tree(Heap[this, next_child])]);
    }
    if (Heap[this, next_sibling] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [206178]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(this) might fail. There might be insufficient permission to access tree(this.next_sibling) (0554.vpr@79.3--79.28) [206179]"}
          perm <= Mask[null, tree(Heap[this, next_sibling])];
      }
      Mask := Mask[null, tree(Heap[this, next_sibling]):=Mask[null, tree(Heap[this, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(this), Heap[null, tree(this)], tree(Heap[this, next_sibling]), Heap[null, tree(Heap[this, next_sibling])]);
    }
    assert {:msg "  Folding tree(this) might fail. Assertion this.next_child == null && this.next_sibling == null || this.next_child != null && this.next_sibling != null might not hold. (0554.vpr@79.3--79.28) [206180]"}
      (Heap[this, next_child] == null && Heap[this, next_sibling] == null) || (Heap[this, next_child] != null && Heap[this, next_sibling] != null);
    perm := 1 / 2;
    assert {:msg "  Folding tree(this) might fail. Fraction 1 / 2 might be negative. (0554.vpr@79.3--79.28) [206181]"}
      perm >= NoPerm;
    Mask := Mask[null, tree(this):=Mask[null, tree(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree(this));
    assume Heap[null, tree(this)] == CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, next_child]), CombineFrames(FrameFragment(Heap[this, next_sibling]), CombineFrames(FrameFragment((if Heap[this, next_child] != null then Heap[null, tree(Heap[this, next_child])] else EmptyFrame)), FrameFragment((if Heap[this, next_sibling] != null then Heap[null, tree(Heap[this, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree(this))) {
      Heap := Heap[null, tree#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree(this):=freshVersion];
    }
    Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, data:=true]];
    Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_child:=true]];
    Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_sibling:=true]];
    if (Heap[this, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_94: Ref, f_97: (Field A B) ::
        { newPMask[o_94, f_97] }
        Heap[null, tree#sm(this)][o_94, f_97] || Heap[null, tree#sm(Heap[this, next_child])][o_94, f_97] ==> newPMask[o_94, f_97]
      );
      Heap := Heap[null, tree#sm(this):=newPMask];
    }
    if (Heap[this, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_95: Ref, f_98: (Field A B) ::
        { newPMask[o_95, f_98] }
        Heap[null, tree#sm(this)][o_95, f_98] || Heap[null, tree#sm(Heap[this, next_sibling])][o_95, f_98] ==> newPMask[o_95, f_98]
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
      assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access res.data (0554.vpr@80.3--80.17) [206184]"}
        perm <= Mask[res, data];
    }
    Mask := Mask[res, data:=Mask[res, data] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access res.next_child (0554.vpr@80.3--80.17) [206186]"}
        perm <= Mask[res, next_child];
    }
    Mask := Mask[res, next_child:=Mask[res, next_child] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access res.next_sibling (0554.vpr@80.3--80.17) [206188]"}
        perm <= Mask[res, next_sibling];
    }
    Mask := Mask[res, next_sibling:=Mask[res, next_sibling] - perm];
    if (Heap[res, next_child] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access tree(res.next_child) (0554.vpr@80.3--80.17) [206190]"}
          perm <= Mask[null, tree(Heap[res, next_child])];
      }
      Mask := Mask[null, tree(Heap[res, next_child]):=Mask[null, tree(Heap[res, next_child])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(res), Heap[null, tree(res)], tree(Heap[res, next_child]), Heap[null, tree(Heap[res, next_child])]);
    }
    if (Heap[res, next_sibling] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(res) might fail. There might be insufficient permission to access tree(res.next_sibling) (0554.vpr@80.3--80.17) [206192]"}
          perm <= Mask[null, tree(Heap[res, next_sibling])];
      }
      Mask := Mask[null, tree(Heap[res, next_sibling]):=Mask[null, tree(Heap[res, next_sibling])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(res), Heap[null, tree(res)], tree(Heap[res, next_sibling]), Heap[null, tree(Heap[res, next_sibling])]);
    }
    assert {:msg "  Folding tree(res) might fail. Assertion res.next_child == null && res.next_sibling == null || res.next_child != null && res.next_sibling != null might not hold. (0554.vpr@80.3--80.17) [206193]"}
      (Heap[res, next_child] == null && Heap[res, next_sibling] == null) || (Heap[res, next_child] != null && Heap[res, next_sibling] != null);
    perm := FullPerm;
    Mask := Mask[null, tree(res):=Mask[null, tree(res)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree(res));
    assume Heap[null, tree(res)] == CombineFrames(FrameFragment(Heap[res, data]), CombineFrames(FrameFragment(Heap[res, next_child]), CombineFrames(FrameFragment(Heap[res, next_sibling]), CombineFrames(FrameFragment((if Heap[res, next_child] != null then Heap[null, tree(Heap[res, next_child])] else EmptyFrame)), FrameFragment((if Heap[res, next_sibling] != null then Heap[null, tree(Heap[res, next_sibling])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree(res))) {
      Heap := Heap[null, tree#sm(res):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree(res):=freshVersion];
    }
    Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, data:=true]];
    Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_child:=true]];
    Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_sibling:=true]];
    if (Heap[res, next_child] != null) {
      havoc newPMask;
      assume (forall <A, B> o_96: Ref, f_99: (Field A B) ::
        { newPMask[o_96, f_99] }
        Heap[null, tree#sm(res)][o_96, f_99] || Heap[null, tree#sm(Heap[res, next_child])][o_96, f_99] ==> newPMask[o_96, f_99]
      );
      Heap := Heap[null, tree#sm(res):=newPMask];
    }
    if (Heap[res, next_sibling] != null) {
      havoc newPMask;
      assume (forall <A, B> o_97: Ref, f_100: (Field A B) ::
        { newPMask[o_97, f_100] }
        Heap[null, tree#sm(res)][o_97, f_100] || Heap[null, tree#sm(Heap[res, next_sibling])][o_97, f_100] ==> newPMask[o_97, f_100]
      );
      Heap := Heap[null, tree#sm(res):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@53.11--53.44) [206195]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(this) (0554.vpr@53.11--53.44) [206196]"}
        perm <= Mask[null, tree(this)];
    }
    Mask := Mask[null, tree(this):=Mask[null, tree(this)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(res) (0554.vpr@53.11--53.44) [206197]"}
        perm <= Mask[null, tree(res)];
    }
    Mask := Mask[null, tree(res):=Mask[null, tree(res)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume tree#trigger(UnfoldingHeap, tree(this));
      assume UnfoldingHeap[null, tree(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_child]), CombineFrames(FrameFragment(UnfoldingHeap[this, next_sibling]), CombineFrames(FrameFragment((if UnfoldingHeap[this, next_child] != null then UnfoldingHeap[null, tree(UnfoldingHeap[this, next_child])] else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, next_sibling] != null then UnfoldingHeap[null, tree(UnfoldingHeap[this, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206198]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(this) (0554.vpr@55.12--57.91) [206199]"}
          perm <= UnfoldingMask[null, tree(this)];
      }
      UnfoldingMask := UnfoldingMask[null, tree(this):=UnfoldingMask[null, tree(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206200]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206201]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_child:=UnfoldingMask[this, next_child] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206202]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, next_sibling:=UnfoldingMask[this, next_sibling] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next_child] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206203]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[this, next_child]):=UnfoldingMask[null, tree(UnfoldingHeap[this, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(this), UnfoldingHeap[null, tree(this)], tree(UnfoldingHeap[this, next_child]), UnfoldingHeap[null, tree(UnfoldingHeap[this, next_child])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, next_sibling] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of cloneTree might not hold. Fraction 1 / 2 might be negative. (0554.vpr@55.12--57.91) [206204]"}
          perm >= NoPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[this, next_sibling]):=UnfoldingMask[null, tree(UnfoldingHeap[this, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(this), UnfoldingHeap[null, tree(this)], tree(UnfoldingHeap[this, next_sibling]), UnfoldingHeap[null, tree(UnfoldingHeap[this, next_sibling])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume (UnfoldingHeap[this, next_child] == null && UnfoldingHeap[this, next_sibling] == null) || (UnfoldingHeap[this, next_child] != null && UnfoldingHeap[this, next_sibling] != null);
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Execute unfolding (for extra information)
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume tree#trigger(Unfolding1Heap, tree(res));
      assume Unfolding1Heap[null, tree(res)] == CombineFrames(FrameFragment(Unfolding1Heap[res, data]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_child]), CombineFrames(FrameFragment(Unfolding1Heap[res, next_sibling]), CombineFrames(FrameFragment((if Unfolding1Heap[res, next_child] != null then Unfolding1Heap[null, tree(Unfolding1Heap[res, next_child])] else EmptyFrame)), FrameFragment((if Unfolding1Heap[res, next_sibling] != null then Unfolding1Heap[null, tree(Unfolding1Heap[res, next_sibling])] else EmptyFrame))))));
      ExhaleWellDef1Mask := Unfolding1Mask;
      ExhaleWellDef1Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of cloneTree might not hold. There might be insufficient permission to access tree(res) (0554.vpr@55.12--57.91) [206205]"}
          perm <= Unfolding1Mask[null, tree(res)];
      }
      Unfolding1Mask := Unfolding1Mask[null, tree(res):=Unfolding1Mask[null, tree(res)] - perm];
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
        Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[res, next_child]):=Unfolding1Mask[null, tree(Unfolding1Heap[res, next_child])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(res), Unfolding1Heap[null, tree(res)], tree(Unfolding1Heap[res, next_child]), Unfolding1Heap[null, tree(Unfolding1Heap[res, next_child])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      if (Unfolding1Heap[res, next_sibling] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[res, next_sibling]):=Unfolding1Mask[null, tree(Unfolding1Heap[res, next_sibling])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(res), Unfolding1Heap[null, tree(res)], tree(Unfolding1Heap[res, next_sibling]), Unfolding1Heap[null, tree(Unfolding1Heap[res, next_sibling])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume (Unfolding1Heap[res, next_child] == null && Unfolding1Heap[res, next_sibling] == null) || (Unfolding1Heap[res, next_child] != null && Unfolding1Heap[res, next_sibling] != null);
      assume state(Unfolding1Heap, Unfolding1Mask);
    assert {:msg "  Postcondition of cloneTree might not hold. Assertion this.next_child == res.next_child might not hold. (0554.vpr@55.12--57.91) [206206]"}
      Heap[this, next_child] == Heap[res, next_child];
    assert {:msg "  Postcondition of cloneTree might not hold. Assertion this.next_sibling == res.next_sibling might not hold. (0554.vpr@55.12--57.91) [206207]"}
      Heap[this, next_sibling] == Heap[res, next_sibling];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, data:=true]];
      Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_child:=true]];
      Heap := Heap[null, tree#sm(this):=Heap[null, tree#sm(this)][this, next_sibling:=true]];
      if (Heap[this, next_child] != null) {
        havoc newPMask;
        assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
          { newPMask[o_51, f_46] }
          Heap[null, tree#sm(this)][o_51, f_46] || Heap[null, tree#sm(Heap[this, next_child])][o_51, f_46] ==> newPMask[o_51, f_46]
        );
        Heap := Heap[null, tree#sm(this):=newPMask];
      }
      if (Heap[this, next_sibling] != null) {
        havoc newPMask;
        assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
          { newPMask[o_29, f_81] }
          Heap[null, tree#sm(this)][o_29, f_81] || Heap[null, tree#sm(Heap[this, next_sibling])][o_29, f_81] ==> newPMask[o_29, f_81]
        );
        Heap := Heap[null, tree#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, data:=true]];
      Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_child:=true]];
      Heap := Heap[null, tree#sm(res):=Heap[null, tree#sm(res)][res, next_sibling:=true]];
      if (Heap[res, next_child] != null) {
        havoc newPMask;
        assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
          { newPMask[o_77, f_52] }
          Heap[null, tree#sm(res)][o_77, f_52] || Heap[null, tree#sm(Heap[res, next_child])][o_77, f_52] ==> newPMask[o_77, f_52]
        );
        Heap := Heap[null, tree#sm(res):=newPMask];
      }
      if (Heap[res, next_sibling] != null) {
        havoc newPMask;
        assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
          { newPMask[o_78, f_49] }
          Heap[null, tree#sm(res)][o_78, f_49] || Heap[null, tree#sm(Heap[res, next_sibling])][o_78, f_49] ==> newPMask[o_78, f_49]
        );
        Heap := Heap[null, tree#sm(res):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}