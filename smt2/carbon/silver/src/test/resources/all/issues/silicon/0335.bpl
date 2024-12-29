// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:49:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0335.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0335-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_39: Ref, f_45: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_39, f_45] }
  Heap[o_39, $allocated] ==> Heap[Heap[o_39, f_45], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref, f_51: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, f_51] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_50, f_51) ==> Heap[o_50, f_51] == ExhaleHeap[o_50, f_51]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_51: (Field A B) ::
    { ExhaleHeap[o2_25, f_51] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_51] ==> Heap[o2_25, f_51] == ExhaleHeap[o2_25, f_51]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_50: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_50, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_50, $allocated] ==> ExhaleHeap[o_50, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_39: Ref, f_18: (Field A B), v: B ::
  { Heap[o_39, f_18:=v] }
  succHeap(Heap, Heap[o_39, f_18:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(i_2_1: int): bool;
function  neverTriggered2(i$0: int): bool;
function  neverTriggered3(i$0_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;

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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: ArrayDomainType): int;

// Translation of domain axiom loc_inject
axiom (forall a_2: ArrayDomainType, i: int, j_9: int ::
  { (loc(a_2, i): Ref), (loc(a_2, j_9): Ref) }
  i >= 0 && (j_9 >= 0 && (i < (len_1(a_2): int) && (j_9 < (len_1(a_2): int) && i != j_9))) ==> (loc(a_2, i): Ref) != (loc(a_2, j_9): Ref)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique left: Field NormalField Ref;
axiom !IsPredicateField(left);
axiom !IsWandField(left);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);

// ==================================================
// Translation of predicate array
// ==================================================

type PredicateType_array;
function  array(a_2: ArrayDomainType): Field PredicateType_array FrameType;
function  array#sm(a_2: ArrayDomainType): Field PredicateType_array PMaskType;
axiom (forall a_2: ArrayDomainType ::
  { PredicateMaskField(array(a_2)) }
  PredicateMaskField(array(a_2)) == array#sm(a_2)
);
axiom (forall a_2: ArrayDomainType ::
  { array(a_2) }
  IsPredicateField(array(a_2))
);
axiom (forall a_2: ArrayDomainType ::
  { array(a_2) }
  getPredWandId(array(a_2)) == 0
);
function  array#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  array#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: ArrayDomainType, a2: ArrayDomainType ::
  { array(a_2), array(a2) }
  array(a_2) == array(a2) ==> a_2 == a2
);
axiom (forall a_2: ArrayDomainType, a2: ArrayDomainType ::
  { array#sm(a_2), array#sm(a2) }
  array#sm(a_2) == array#sm(a2) ==> a_2 == a2
);

axiom (forall Heap: HeapType, a_2: ArrayDomainType ::
  { array#trigger(Heap, array(a_2)) }
  array#everUsed(array(a_2))
);

// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { loc(a, i).val } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write)) in predicate array
// ==================================================

function  array#condqp1(Heap: HeapType, a_1_1_1: ArrayDomainType): int;
function  sk_array#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType ::
  { array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) && sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) && sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) && sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2)) < (len_1(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2))): Ref), val] == Heap1Heap[(loc(a_2, sk_array#condqp1(array#condqp1(Heap2Heap, a_2), array#condqp1(Heap1Heap, a_2))): Ref), val]) ==> array#condqp1(Heap2Heap, a_2) == array#condqp1(Heap1Heap, a_2)
);

procedure array#definedness(a_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of array
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    
    // -- Check definedness of (forall i: Int :: { loc(a, i).val } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource loc(a, i).val might not be injective. (0335.vpr@15.1--17.2) [218613]"}
      (forall i_2_1: int, i_2_2: int ::
      
      (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (len_1(a_2): int))) && (0 <= i_2_2 && i_2_2 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_2_1): Ref) != (loc(a_2, i_2_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_2_1: int ::
        { (loc(a_2, i_2_1): Ref) } { Heap[(loc(a_2, i_2_1): Ref), val] }
        (0 <= i_2_1 && i_2_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, i_2_1): Ref)) && invRecv1((loc(a_2, i_2_1): Ref)) == i_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_2_1: int ::
        { (loc(a_2, i_2_1): Ref) } { Heap[(loc(a_2, i_2_1): Ref), val] }
        0 <= i_2_1 && i_2_1 < (len_1(a_2): int) ==> (loc(a_2, i_2_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate tree
// ==================================================

type PredicateType_tree;
function  tree(root: Ref): Field PredicateType_tree FrameType;
function  tree#sm(root: Ref): Field PredicateType_tree PMaskType;
axiom (forall root: Ref ::
  { PredicateMaskField(tree(root)) }
  PredicateMaskField(tree(root)) == tree#sm(root)
);
axiom (forall root: Ref ::
  { tree(root) }
  IsPredicateField(tree(root))
);
axiom (forall root: Ref ::
  { tree(root) }
  getPredWandId(tree(root)) == 1
);
function  tree#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  tree#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall root: Ref, root2: Ref ::
  { tree(root), tree(root2) }
  tree(root) == tree(root2) ==> root == root2
);
axiom (forall root: Ref, root2: Ref ::
  { tree#sm(root), tree#sm(root2) }
  tree#sm(root) == tree#sm(root2) ==> root == root2
);

axiom (forall Heap: HeapType, root: Ref ::
  { tree#trigger(Heap, tree(root)) }
  tree#everUsed(tree(root))
);

procedure tree#definedness(root: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of tree
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[root, $allocated];
    perm := FullPerm;
    assume root != null;
    Mask := Mask[root, val:=Mask[root, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume root != null;
    Mask := Mask[root, left:=Mask[root, left] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of root.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access root.left (0335.vpr@22.1--26.2) [218614]"}
        HasDirectPerm(Mask, root, left);
    if (Heap[root, left] != null) {
      
      // -- Check definedness of acc(tree(root.left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access root.left (0335.vpr@22.1--26.2) [218615]"}
          HasDirectPerm(Mask, root, left);
      perm := FullPerm;
      Mask := Mask[null, tree(Heap[root, left]):=Mask[null, tree(Heap[root, left])] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume root != null;
    Mask := Mask[root, right_1:=Mask[root, right_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of root.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access root.right (0335.vpr@22.1--26.2) [218616]"}
        HasDirectPerm(Mask, root, right_1);
    if (Heap[root, right_1] != null) {
      
      // -- Check definedness of acc(tree(root.right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access root.right (0335.vpr@22.1--26.2) [218617]"}
          HasDirectPerm(Mask, root, right_1);
      perm := FullPerm;
      Mask := Mask[null, tree(Heap[root, right_1]):=Mask[null, tree(Heap[root, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method _treeToArray
// ==================================================

procedure _treeToArray(root: Ref, a_2: ArrayDomainType, i: int) returns ()
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
  var newVersion: FrameType;
  var QPMask: MaskType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_root: Ref;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[root, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, tree(root):=Mask[null, tree(root)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] + perm];
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
    PostMask := PostMask[null, tree(root):=PostMask[null, tree(root)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(tree(root), write) in root.val == old((unfolding acc(tree(root), write) in root.val)))
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tree#trigger(UnfoldingHeap, tree(root));
      assume UnfoldingHeap[null, tree(root)] == CombineFrames(FrameFragment(UnfoldingHeap[root, val]), CombineFrames(FrameFragment(UnfoldingHeap[root, left]), CombineFrames(FrameFragment((if UnfoldingHeap[root, left] != null then UnfoldingHeap[null, tree(UnfoldingHeap[root, left])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[root, right_1]), FrameFragment((if UnfoldingHeap[root, right_1] != null then UnfoldingHeap[null, tree(UnfoldingHeap[root, right_1])] else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tree(root) (0335.vpr@32.13--32.86) [218618]"}
          perm <= UnfoldingMask[null, tree(root)];
      }
      UnfoldingMask := UnfoldingMask[null, tree(root):=UnfoldingMask[null, tree(root)] - perm];
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, val:=UnfoldingMask[root, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, left:=UnfoldingMask[root, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[root, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[root, left]):=UnfoldingMask[null, tree(UnfoldingHeap[root, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), UnfoldingHeap[null, tree(root)], tree(UnfoldingHeap[root, left]), UnfoldingHeap[null, tree(UnfoldingHeap[root, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, right_1:=UnfoldingMask[root, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[root, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[root, right_1]):=UnfoldingMask[null, tree(UnfoldingHeap[root, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), UnfoldingHeap[null, tree(root)], tree(UnfoldingHeap[root, right_1]), UnfoldingHeap[null, tree(UnfoldingHeap[root, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access root.val (0335.vpr@32.13--32.86) [218619]"}
        HasDirectPerm(UnfoldingMask, root, val);
      Unfolding1Heap := oldHeap;
      Unfolding1Mask := oldMask;
      assume tree#trigger(Unfolding1Heap, tree(root));
      assume Unfolding1Heap[null, tree(root)] == CombineFrames(FrameFragment(Unfolding1Heap[root, val]), CombineFrames(FrameFragment(Unfolding1Heap[root, left]), CombineFrames(FrameFragment((if Unfolding1Heap[root, left] != null then Unfolding1Heap[null, tree(Unfolding1Heap[root, left])] else EmptyFrame)), CombineFrames(FrameFragment(Unfolding1Heap[root, right_1]), FrameFragment((if Unfolding1Heap[root, right_1] != null then Unfolding1Heap[null, tree(Unfolding1Heap[root, right_1])] else EmptyFrame))))));
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access tree(root) (0335.vpr@32.13--32.86) [218620]"}
          perm <= Unfolding1Mask[null, tree(root)];
      }
      Unfolding1Mask := Unfolding1Mask[null, tree(root):=Unfolding1Mask[null, tree(root)] - perm];
      perm := FullPerm;
      assume root != null;
      Unfolding1Mask := Unfolding1Mask[root, val:=Unfolding1Mask[root, val] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := FullPerm;
      assume root != null;
      Unfolding1Mask := Unfolding1Mask[root, left:=Unfolding1Mask[root, left] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[root, left] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[root, left]):=Unfolding1Mask[null, tree(Unfolding1Heap[root, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), Unfolding1Heap[null, tree(root)], tree(Unfolding1Heap[root, left]), Unfolding1Heap[null, tree(Unfolding1Heap[root, left])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      perm := FullPerm;
      assume root != null;
      Unfolding1Mask := Unfolding1Mask[root, right_1:=Unfolding1Mask[root, right_1] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[root, right_1] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[root, right_1]):=Unfolding1Mask[null, tree(Unfolding1Heap[root, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), Unfolding1Heap[null, tree(root)], tree(Unfolding1Heap[root, right_1]), Unfolding1Heap[null, tree(Unfolding1Heap[root, right_1])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access root.val (0335.vpr@32.13--32.86) [218621]"}
        HasDirectPerm(Unfolding1Mask, root, val);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, tree#sm(root):=PostHeap[null, tree#sm(root)][root, val:=true]];
        PostHeap := PostHeap[null, tree#sm(root):=PostHeap[null, tree#sm(root)][root, left:=true]];
        if (PostHeap[root, left] != null) {
          havoc newPMask;
          assume (forall <A, B> o_25: Ref, f_28: (Field A B) ::
            { newPMask[o_25, f_28] }
            PostHeap[null, tree#sm(root)][o_25, f_28] || PostHeap[null, tree#sm(PostHeap[root, left])][o_25, f_28] ==> newPMask[o_25, f_28]
          );
          PostHeap := PostHeap[null, tree#sm(root):=newPMask];
        }
        PostHeap := PostHeap[null, tree#sm(root):=PostHeap[null, tree#sm(root)][root, right_1:=true]];
        if (PostHeap[root, right_1] != null) {
          havoc newPMask;
          assume (forall <A, B> o_32: Ref, f_38: (Field A B) ::
            { newPMask[o_32, f_38] }
            PostHeap[null, tree#sm(root)][o_32, f_38] || PostHeap[null, tree#sm(PostHeap[root, right_1])][o_32, f_38] ==> newPMask[o_32, f_38]
          );
          PostHeap := PostHeap[null, tree#sm(root):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume tree#trigger(UnfoldingHeap, tree(root));
      assume UnfoldingHeap[null, tree(root)] == CombineFrames(FrameFragment(UnfoldingHeap[root, val]), CombineFrames(FrameFragment(UnfoldingHeap[root, left]), CombineFrames(FrameFragment((if UnfoldingHeap[root, left] != null then UnfoldingHeap[null, tree(UnfoldingHeap[root, left])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[root, right_1]), FrameFragment((if UnfoldingHeap[root, right_1] != null then UnfoldingHeap[null, tree(UnfoldingHeap[root, right_1])] else EmptyFrame))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, tree(root):=UnfoldingMask[null, tree(root)] - perm];
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, val:=UnfoldingMask[root, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, left:=UnfoldingMask[root, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[root, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[root, left]):=UnfoldingMask[null, tree(UnfoldingHeap[root, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), UnfoldingHeap[null, tree(root)], tree(UnfoldingHeap[root, left]), UnfoldingHeap[null, tree(UnfoldingHeap[root, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, right_1:=UnfoldingMask[root, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[root, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[root, right_1]):=UnfoldingMask[null, tree(UnfoldingHeap[root, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), UnfoldingHeap[null, tree(root)], tree(UnfoldingHeap[root, right_1]), UnfoldingHeap[null, tree(UnfoldingHeap[root, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[root, val] == oldHeap[root, val];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(tree(root), write) -- 0335.vpr@34.5--34.22
    assume tree#trigger(Heap, tree(root));
    assume Heap[null, tree(root)] == CombineFrames(FrameFragment(Heap[root, val]), CombineFrames(FrameFragment(Heap[root, left]), CombineFrames(FrameFragment((if Heap[root, left] != null then Heap[null, tree(Heap[root, left])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[root, right_1]), FrameFragment((if Heap[root, right_1] != null then Heap[null, tree(Heap[root, right_1])] else EmptyFrame))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding tree(root) might fail. There might be insufficient permission to access tree(root) (0335.vpr@34.5--34.22) [218624]"}
        perm <= Mask[null, tree(root)];
    }
    Mask := Mask[null, tree(root):=Mask[null, tree(root)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, tree(root))) {
        havoc newVersion;
        Heap := Heap[null, tree(root):=newVersion];
      }
    perm := FullPerm;
    assume root != null;
    Mask := Mask[root, val:=Mask[root, val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume root != null;
    Mask := Mask[root, left:=Mask[root, left] + perm];
    assume state(Heap, Mask);
    if (Heap[root, left] != null) {
      perm := FullPerm;
      Mask := Mask[null, tree(Heap[root, left]):=Mask[null, tree(Heap[root, left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tree(root), Heap[null, tree(root)], tree(Heap[root, left]), Heap[null, tree(Heap[root, left])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume root != null;
    Mask := Mask[root, right_1:=Mask[root, right_1] + perm];
    assume state(Heap, Mask);
    if (Heap[root, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, tree(Heap[root, right_1]):=Mask[null, tree(Heap[root, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(tree(root), Heap[null, tree(root)], tree(Heap[root, right_1]), Heap[null, tree(Heap[root, right_1])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(array(a), write) -- 0335.vpr@36.5--36.20
    assume array#trigger(Heap, array(a_2));
    assume Heap[null, array(a_2)] == FrameFragment(array#condqp1(Heap, a_2));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding array(a) might fail. There might be insufficient permission to access array(a) (0335.vpr@36.5--36.20) [218632]"}
        perm <= Mask[null, array(a_2)];
    }
    Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, array(a_2))) {
        havoc newVersion;
        Heap := Heap[null, array(a_2):=newVersion];
      }
    havoc QPMask;
    assert {:msg "  Unfolding array(a) might fail. Quantified resource loc(a, i$0).val might not be injective. (0335.vpr@36.5--36.20) [218633]"}
      (forall i$0: int, i$0_3: int ::
      
      (((i$0 != i$0_3 && (0 <= i$0 && i$0 < (len_1(a_2): int))) && (0 <= i$0_3 && i$0_3 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0): Ref) != (loc(a_2, i$0_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i$0: int ::
        { (loc(a_2, i$0): Ref) } { Heap[(loc(a_2, i$0): Ref), val] }
        (0 <= i$0 && i$0 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i$0): Ref)) && invRecv2((loc(a_2, i$0): Ref)) == i$0
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i$0: int ::
        { (loc(a_2, i$0): Ref) } { Heap[(loc(a_2, i$0): Ref), val] }
        0 <= i$0 && i$0 < (len_1(a_2): int) ==> (loc(a_2, i$0): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < (len_1(a_2): int)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(array(a), write) -- 0335.vpr@37.5--37.18
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i$0) is injective
      assert {:msg "  Folding array(a) might fail. Quantified resource loc(a, i$0).val might not be injective. (0335.vpr@37.5--37.18) [218636]"}
        (forall i$0_1: int, i$0_1_1: int ::
        { neverTriggered3(i$0_1), neverTriggered3(i$0_1_1) }
        (((i$0_1 != i$0_1_1 && (0 <= i$0_1 && i$0_1 < (len_1(a_2): int))) && (0 <= i$0_1_1 && i$0_1_1 < (len_1(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i$0_1): Ref) != (loc(a_2, i$0_1_1): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding array(a) might fail. There might be insufficient permission to access loc(a, i$0).val (0335.vpr@37.5--37.18) [218637]"}
        (forall i$0_1: int ::
        { (loc(a_2, i$0_1): Ref) } { Heap[(loc(a_2, i$0_1): Ref), val] }
        0 <= i$0_1 && i$0_1 < (len_1(a_2): int) ==> Mask[(loc(a_2, i$0_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i$0)
      assume (forall i$0_1: int ::
        { (loc(a_2, i$0_1): Ref) } { Heap[(loc(a_2, i$0_1): Ref), val] }
        (0 <= i$0_1 && i$0_1 < (len_1(a_2): int)) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i$0_1): Ref)) && invRecv3((loc(a_2, i$0_1): Ref)) == i$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
      );
    
    // -- assume permission updates for field val
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4)) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4 && QPMask[o_4, val] == Mask[o_4, val] - FullPerm) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < (len_1(a_2): int)) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume array#trigger(Heap, array(a_2));
    assume Heap[null, array(a_2)] == FrameFragment(array#condqp1(Heap, a_2));
    if (!HasDirectPerm(Mask, null, array(a_2))) {
      Heap := Heap[null, array#sm(a_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, array(a_2):=freshVersion];
    }
    // register all known folded permissions guarded by predicate array
    havoc newPMask;
    assume (forall <A, B> o_19: Ref, f_23: (Field A B) ::
      { newPMask[o_19, f_23] }
      Heap[null, array#sm(a_2)][o_19, f_23] ==> newPMask[o_19, f_23]
    );
    assume (forall i$0_2: int ::
      
      0 <= i$0_2 && i$0_2 < (len_1(a_2): int) ==> newPMask[(loc(a_2, i$0_2): Ref), val]
    );
    Heap := Heap[null, array#sm(a_2):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (root.right != null) -- 0335.vpr@39.5--41.6
    
    // -- Check definedness of root.right != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access root.right (0335.vpr@39.9--39.27) [218639]"}
        HasDirectPerm(Mask, root, right_1);
    if (Heap[root, right_1] != null) {
      
      // -- Translating statement: _treeToArray(root.right, a, 0) -- 0335.vpr@40.9--40.39
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of root.right
          assert {:msg "  Method call might fail. There might be insufficient permission to access root.right (0335.vpr@40.9--40.39) [218640]"}
            HasDirectPerm(Mask, root, right_1);
        arg_root := Heap[root, right_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method _treeToArray might not hold. There might be insufficient permission to access tree(root.right) (0335.vpr@40.9--40.39) [218641]"}
              perm <= Mask[null, tree(arg_root)];
          }
          Mask := Mask[null, tree(arg_root):=Mask[null, tree(arg_root)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method _treeToArray might not hold. There might be insufficient permission to access array(a) (0335.vpr@40.9--40.39) [218642]"}
              perm <= Mask[null, array(a_2)];
          }
          Mask := Mask[null, array(a_2):=Mask[null, array(a_2)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, tree(arg_root):=Mask[null, tree(arg_root)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree(arg_root));
            assume UnfoldingHeap[null, tree(arg_root)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_root, val]), CombineFrames(FrameFragment(UnfoldingHeap[arg_root, left]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_root, left] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, left])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[arg_root, right_1]), FrameFragment((if UnfoldingHeap[arg_root, right_1] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, right_1])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, tree(arg_root):=UnfoldingMask[null, tree(arg_root)] - perm];
            perm := FullPerm;
            assume arg_root != null;
            UnfoldingMask := UnfoldingMask[arg_root, val:=UnfoldingMask[arg_root, val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume arg_root != null;
            UnfoldingMask := UnfoldingMask[arg_root, left:=UnfoldingMask[arg_root, left] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_root, left] != null) {
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_root, left]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_root, left])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_root), UnfoldingHeap[null, tree(arg_root)], tree(UnfoldingHeap[arg_root, left]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, left])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            perm := FullPerm;
            assume arg_root != null;
            UnfoldingMask := UnfoldingMask[arg_root, right_1:=UnfoldingMask[arg_root, right_1] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_root, right_1] != null) {
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_root, right_1]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_root, right_1])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_root), UnfoldingHeap[null, tree(arg_root)], tree(UnfoldingHeap[arg_root, right_1]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, right_1])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[arg_root, val] == PreCallHeap[arg_root, val];
          
          // -- Free assumptions (inhale module)
            Heap := Heap[null, tree#sm(arg_root):=Heap[null, tree#sm(arg_root)][arg_root, val:=true]];
            Heap := Heap[null, tree#sm(arg_root):=Heap[null, tree#sm(arg_root)][arg_root, left:=true]];
            if (Heap[arg_root, left] != null) {
              havoc newPMask;
              assume (forall <A, B> o_5: Ref, f: (Field A B) ::
                { newPMask[o_5, f] }
                Heap[null, tree#sm(arg_root)][o_5, f] || Heap[null, tree#sm(Heap[arg_root, left])][o_5, f] ==> newPMask[o_5, f]
              );
              Heap := Heap[null, tree#sm(arg_root):=newPMask];
            }
            Heap := Heap[null, tree#sm(arg_root):=Heap[null, tree#sm(arg_root)][arg_root, right_1:=true]];
            if (Heap[arg_root, right_1] != null) {
              havoc newPMask;
              assume (forall <A, B> o_20: Ref, f_10: (Field A B) ::
                { newPMask[o_20, f_10] }
                Heap[null, tree#sm(arg_root)][o_20, f_10] || Heap[null, tree#sm(Heap[arg_root, right_1])][o_20, f_10] ==> newPMask[o_20, f_10]
              );
              Heap := Heap[null, tree#sm(arg_root):=newPMask];
            }
            assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(tree(arg_root), write) in arg_root.val == old((unfolding acc(tree(arg_root), write) in arg_root.val))) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume tree#trigger(UnfoldingHeap, tree(arg_root));
            assume UnfoldingHeap[null, tree(arg_root)] == CombineFrames(FrameFragment(UnfoldingHeap[arg_root, val]), CombineFrames(FrameFragment(UnfoldingHeap[arg_root, left]), CombineFrames(FrameFragment((if UnfoldingHeap[arg_root, left] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, left])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[arg_root, right_1]), FrameFragment((if UnfoldingHeap[arg_root, right_1] != null then UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, right_1])] else EmptyFrame))))));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(root.right) (0335.vpr@32.13--32.86) [218643]"}
                perm <= UnfoldingMask[null, tree(arg_root)];
            }
            UnfoldingMask := UnfoldingMask[null, tree(arg_root):=UnfoldingMask[null, tree(arg_root)] - perm];
            perm := FullPerm;
            assume arg_root != null;
            UnfoldingMask := UnfoldingMask[arg_root, val:=UnfoldingMask[arg_root, val] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            assume arg_root != null;
            UnfoldingMask := UnfoldingMask[arg_root, left:=UnfoldingMask[arg_root, left] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_root, left] != null) {
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_root, left]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_root, left])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_root), UnfoldingHeap[null, tree(arg_root)], tree(UnfoldingHeap[arg_root, left]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, left])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            perm := FullPerm;
            assume arg_root != null;
            UnfoldingMask := UnfoldingMask[arg_root, right_1:=UnfoldingMask[arg_root, right_1] + perm];
            assume state(UnfoldingHeap, UnfoldingMask);
            if (UnfoldingHeap[arg_root, right_1] != null) {
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[arg_root, right_1]):=UnfoldingMask[null, tree(UnfoldingHeap[arg_root, right_1])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_root), UnfoldingHeap[null, tree(arg_root)], tree(UnfoldingHeap[arg_root, right_1]), UnfoldingHeap[null, tree(UnfoldingHeap[arg_root, right_1])]);
              assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
            Unfolding1Heap := PreCallHeap;
            Unfolding1Mask := PreCallMask;
            assume tree#trigger(Unfolding1Heap, tree(arg_root));
            assume Unfolding1Heap[null, tree(arg_root)] == CombineFrames(FrameFragment(Unfolding1Heap[arg_root, val]), CombineFrames(FrameFragment(Unfolding1Heap[arg_root, left]), CombineFrames(FrameFragment((if Unfolding1Heap[arg_root, left] != null then Unfolding1Heap[null, tree(Unfolding1Heap[arg_root, left])] else EmptyFrame)), CombineFrames(FrameFragment(Unfolding1Heap[arg_root, right_1]), FrameFragment((if Unfolding1Heap[arg_root, right_1] != null then Unfolding1Heap[null, tree(Unfolding1Heap[arg_root, right_1])] else EmptyFrame))))));
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access tree(root.right) (0335.vpr@32.13--32.86) [218644]"}
                perm <= Unfolding1Mask[null, tree(arg_root)];
            }
            Unfolding1Mask := Unfolding1Mask[null, tree(arg_root):=Unfolding1Mask[null, tree(arg_root)] - perm];
            perm := FullPerm;
            assume arg_root != null;
            Unfolding1Mask := Unfolding1Mask[arg_root, val:=Unfolding1Mask[arg_root, val] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume arg_root != null;
            Unfolding1Mask := Unfolding1Mask[arg_root, left:=Unfolding1Mask[arg_root, left] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[arg_root, left] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[arg_root, left]):=Unfolding1Mask[null, tree(Unfolding1Heap[arg_root, left])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_root), Unfolding1Heap[null, tree(arg_root)], tree(Unfolding1Heap[arg_root, left]), Unfolding1Heap[null, tree(Unfolding1Heap[arg_root, left])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            perm := FullPerm;
            assume arg_root != null;
            Unfolding1Mask := Unfolding1Mask[arg_root, right_1:=Unfolding1Mask[arg_root, right_1] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            if (Unfolding1Heap[arg_root, right_1] != null) {
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, tree(Unfolding1Heap[arg_root, right_1]):=Unfolding1Mask[null, tree(Unfolding1Heap[arg_root, right_1])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(tree(arg_root), Unfolding1Heap[null, tree(arg_root)], tree(Unfolding1Heap[arg_root, right_1]), Unfolding1Heap[null, tree(Unfolding1Heap[arg_root, right_1])]);
              assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
            
            // -- Free assumptions (exp module)
              Heap := Heap[null, tree#sm(arg_root):=Heap[null, tree#sm(arg_root)][arg_root, val:=true]];
              Heap := Heap[null, tree#sm(arg_root):=Heap[null, tree#sm(arg_root)][arg_root, left:=true]];
              if (Heap[arg_root, left] != null) {
                havoc newPMask;
                assume (forall <A, B> o_7: Ref, f_31: (Field A B) ::
                  { newPMask[o_7, f_31] }
                  Heap[null, tree#sm(arg_root)][o_7, f_31] || Heap[null, tree#sm(Heap[arg_root, left])][o_7, f_31] ==> newPMask[o_7, f_31]
                );
                Heap := Heap[null, tree#sm(arg_root):=newPMask];
              }
              Heap := Heap[null, tree#sm(arg_root):=Heap[null, tree#sm(arg_root)][arg_root, right_1:=true]];
              if (Heap[arg_root, right_1] != null) {
                havoc newPMask;
                assume (forall <A, B> o_6: Ref, f_2: (Field A B) ::
                  { newPMask[o_6, f_2] }
                  Heap[null, tree#sm(arg_root)][o_6, f_2] || Heap[null, tree#sm(Heap[arg_root, right_1])][o_6, f_2] ==> newPMask[o_6, f_2]
                );
                Heap := Heap[null, tree#sm(arg_root):=newPMask];
              }
              assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tree(root), write) -- 0335.vpr@43.5--43.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(root) might fail. There might be insufficient permission to access root.val (0335.vpr@43.5--43.20) [218647]"}
        perm <= Mask[root, val];
    }
    Mask := Mask[root, val:=Mask[root, val] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(root) might fail. There might be insufficient permission to access root.left (0335.vpr@43.5--43.20) [218649]"}
        perm <= Mask[root, left];
    }
    Mask := Mask[root, left:=Mask[root, left] - perm];
    if (Heap[root, left] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(root) might fail. There might be insufficient permission to access tree(root.left) (0335.vpr@43.5--43.20) [218651]"}
          perm <= Mask[null, tree(Heap[root, left])];
      }
      Mask := Mask[null, tree(Heap[root, left]):=Mask[null, tree(Heap[root, left])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(root), Heap[null, tree(root)], tree(Heap[root, left]), Heap[null, tree(Heap[root, left])]);
    }
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding tree(root) might fail. There might be insufficient permission to access root.right (0335.vpr@43.5--43.20) [218653]"}
        perm <= Mask[root, right_1];
    }
    Mask := Mask[root, right_1:=Mask[root, right_1] - perm];
    if (Heap[root, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding tree(root) might fail. There might be insufficient permission to access tree(root.right) (0335.vpr@43.5--43.20) [218655]"}
          perm <= Mask[null, tree(Heap[root, right_1])];
      }
      Mask := Mask[null, tree(Heap[root, right_1]):=Mask[null, tree(Heap[root, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(tree(root), Heap[null, tree(root)], tree(Heap[root, right_1]), Heap[null, tree(Heap[root, right_1])]);
    }
    perm := FullPerm;
    Mask := Mask[null, tree(root):=Mask[null, tree(root)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tree#trigger(Heap, tree(root));
    assume Heap[null, tree(root)] == CombineFrames(FrameFragment(Heap[root, val]), CombineFrames(FrameFragment(Heap[root, left]), CombineFrames(FrameFragment((if Heap[root, left] != null then Heap[null, tree(Heap[root, left])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[root, right_1]), FrameFragment((if Heap[root, right_1] != null then Heap[null, tree(Heap[root, right_1])] else EmptyFrame))))));
    if (!HasDirectPerm(Mask, null, tree(root))) {
      Heap := Heap[null, tree#sm(root):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tree(root):=freshVersion];
    }
    Heap := Heap[null, tree#sm(root):=Heap[null, tree#sm(root)][root, val:=true]];
    Heap := Heap[null, tree#sm(root):=Heap[null, tree#sm(root)][root, left:=true]];
    if (Heap[root, left] != null) {
      havoc newPMask;
      assume (forall <A, B> o_27: Ref, f_16: (Field A B) ::
        { newPMask[o_27, f_16] }
        Heap[null, tree#sm(root)][o_27, f_16] || Heap[null, tree#sm(Heap[root, left])][o_27, f_16] ==> newPMask[o_27, f_16]
      );
      Heap := Heap[null, tree#sm(root):=newPMask];
    }
    Heap := Heap[null, tree#sm(root):=Heap[null, tree#sm(root)][root, right_1:=true]];
    if (Heap[root, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_8: Ref, f_30: (Field A B) ::
        { newPMask[o_8, f_30] }
        Heap[null, tree#sm(root)][o_8, f_30] || Heap[null, tree#sm(Heap[root, right_1])][o_8, f_30] ==> newPMask[o_8, f_30]
      );
      Heap := Heap[null, tree#sm(root):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of _treeToArray might not hold. There might be insufficient permission to access tree(root) (0335.vpr@31.13--31.23) [218657]"}
        perm <= Mask[null, tree(root)];
    }
    Mask := Mask[null, tree(root):=Mask[null, tree(root)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume tree#trigger(UnfoldingHeap, tree(root));
      assume UnfoldingHeap[null, tree(root)] == CombineFrames(FrameFragment(UnfoldingHeap[root, val]), CombineFrames(FrameFragment(UnfoldingHeap[root, left]), CombineFrames(FrameFragment((if UnfoldingHeap[root, left] != null then UnfoldingHeap[null, tree(UnfoldingHeap[root, left])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[root, right_1]), FrameFragment((if UnfoldingHeap[root, right_1] != null then UnfoldingHeap[null, tree(UnfoldingHeap[root, right_1])] else EmptyFrame))))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of _treeToArray might not hold. There might be insufficient permission to access tree(root) (0335.vpr@32.13--32.86) [218658]"}
          perm <= UnfoldingMask[null, tree(root)];
      }
      UnfoldingMask := UnfoldingMask[null, tree(root):=UnfoldingMask[null, tree(root)] - perm];
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, val:=UnfoldingMask[root, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, left:=UnfoldingMask[root, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[root, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[root, left]):=UnfoldingMask[null, tree(UnfoldingHeap[root, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), UnfoldingHeap[null, tree(root)], tree(UnfoldingHeap[root, left]), UnfoldingHeap[null, tree(UnfoldingHeap[root, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      perm := FullPerm;
      assume root != null;
      UnfoldingMask := UnfoldingMask[root, right_1:=UnfoldingMask[root, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[root, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, tree(UnfoldingHeap[root, right_1]):=UnfoldingMask[null, tree(UnfoldingHeap[root, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(tree(root), UnfoldingHeap[null, tree(root)], tree(UnfoldingHeap[root, right_1]), UnfoldingHeap[null, tree(UnfoldingHeap[root, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of _treeToArray might not hold. Assertion root.val == old((unfolding acc(tree(root), write) in root.val)) might not hold. (0335.vpr@32.13--32.86) [218659]"}
      Heap[root, val] == oldHeap[root, val];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, tree#sm(root):=Heap[null, tree#sm(root)][root, val:=true]];
      Heap := Heap[null, tree#sm(root):=Heap[null, tree#sm(root)][root, left:=true]];
      if (Heap[root, left] != null) {
        havoc newPMask;
        assume (forall <A, B> o_33: Ref, f_39: (Field A B) ::
          { newPMask[o_33, f_39] }
          Heap[null, tree#sm(root)][o_33, f_39] || Heap[null, tree#sm(Heap[root, left])][o_33, f_39] ==> newPMask[o_33, f_39]
        );
        Heap := Heap[null, tree#sm(root):=newPMask];
      }
      Heap := Heap[null, tree#sm(root):=Heap[null, tree#sm(root)][root, right_1:=true]];
      if (Heap[root, right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_18: Ref, f_22: (Field A B) ::
          { newPMask[o_18, f_22] }
          Heap[null, tree#sm(root)][o_18, f_22] || Heap[null, tree#sm(Heap[root, right_1])][o_18, f_22] ==> newPMask[o_18, f_22]
        );
        Heap := Heap[null, tree#sm(root):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}