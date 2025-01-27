// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0334.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0334-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_4: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_4, f_9] }
  Heap[o_4, $allocated] ==> Heap[Heap[o_4, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref, f_15: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, f_15] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_23, f_15) ==> Heap[o_23, f_15] == ExhaleHeap[o_23, f_15]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10), ExhaleHeap[null, PredicateMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> Heap[null, PredicateMaskField(pm_f_10)] == ExhaleHeap[null, PredicateMaskField(pm_f_10)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsPredicateField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, PredicateMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10), ExhaleHeap[null, WandMaskField(pm_f_10)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> Heap[null, WandMaskField(pm_f_10)] == ExhaleHeap[null, WandMaskField(pm_f_10)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_10: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_10) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_10) && IsWandField(pm_f_10) ==> (forall <A, B> o2_10: Ref, f_15: (Field A B) ::
    { ExhaleHeap[o2_10, f_15] }
    Heap[null, WandMaskField(pm_f_10)][o2_10, f_15] ==> Heap[o2_10, f_15] == ExhaleHeap[o2_10, f_15]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_23: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_23, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_23, $allocated] ==> ExhaleHeap[o_23, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_4: Ref, f_25: (Field A B), v: B ::
  { Heap[o_4, f_25:=v] }
  succHeap(Heap, Heap[o_4, f_25:=v])
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
// - height 1: tree_size_fix
// - height 0: tree_size
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
const unique left_2: Field NormalField Ref;
axiom !IsPredicateField(left_2);
axiom !IsWandField(left_2);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);

// ==================================================
// Translation of function tree_size
// ==================================================

// Uninterpreted function definitions
function  tree_size(Heap: HeapType, tree: Ref): int;
function  tree_size'(Heap: HeapType, tree: Ref): int;
axiom (forall Heap: HeapType, tree: Ref ::
  { tree_size(Heap, tree) }
  tree_size(Heap, tree) == tree_size'(Heap, tree) && dummyFunction(tree_size#triggerStateless(tree))
);
axiom (forall Heap: HeapType, tree: Ref ::
  { tree_size'(Heap, tree) }
  dummyFunction(tree_size#triggerStateless(tree))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, tree: Ref ::
  { state(Heap, Mask), tree_size(Heap, tree) } { state(Heap, Mask), tree_size#triggerStateless(tree), BTree#trigger(Heap, BTree(tree)), BTree#trigger(Heap, BTree(tree)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> tree_size(Heap, tree) == (if tree == null then 0 else 1 + tree_size'(Heap, Heap[tree, left_2]) + tree_size'(Heap, Heap[tree, right_1]))
);

// Framing axioms
function  tree_size#frame(frame: FrameType, tree: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, tree: Ref ::
  { state(Heap, Mask), tree_size'(Heap, tree) } { state(Heap, Mask), tree_size#triggerStateless(tree), BTree#trigger(Heap, BTree(tree)), BTree#trigger(Heap, BTree(tree)) }
  state(Heap, Mask) ==> tree_size'(Heap, tree) == tree_size#frame(FrameFragment((if tree != null then Heap[null, BTree(tree)] else EmptyFrame)), tree)
);

// Trigger function (controlling recursive postconditions)
function  tree_size#trigger(frame: FrameType, tree: Ref): bool;

// State-independent trigger function
function  tree_size#triggerStateless(tree: Ref): int;

// Check contract well-formedness and postcondition
procedure tree_size#definedness(tree: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[tree, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    if (tree != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(tree):=Mask[null, BTree(tree)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (tree == null ? 0 : (unfolding acc(BTree(tree), write) in 1 + tree_size(tree.left) + tree_size(tree.right)))
      if (tree == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume BTree#trigger(UnfoldingHeap, BTree(tree));
        assume UnfoldingHeap[null, BTree(tree)] == CombineFrames(FrameFragment(UnfoldingHeap[tree, left_2]), CombineFrames(FrameFragment((if UnfoldingHeap[tree, left_2] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, left_2])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[tree, right_1]), CombineFrames(FrameFragment((if UnfoldingHeap[tree, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, right_1])] else EmptyFrame)), FrameFragment(UnfoldingHeap[tree, value_1])))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access BTree(tree) (0334.vpr@14.1--20.2) [61497]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(tree)];
        perm := FullPerm;
        assume tree != null;
        UnfoldingMask := UnfoldingMask[tree, left_2:=UnfoldingMask[tree, left_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree, left_2] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree, left_2]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree, left_2])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree), UnfoldingHeap[null, BTree(tree)], BTree(UnfoldingHeap[tree, left_2]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree, left_2])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree != null;
        UnfoldingMask := UnfoldingMask[tree, right_1:=UnfoldingMask[tree, right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree, right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree, right_1]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree, right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree), UnfoldingHeap[null, BTree(tree)], BTree(UnfoldingHeap[tree, right_1]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree, right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree != null;
        UnfoldingMask := UnfoldingMask[tree, value_1:=UnfoldingMask[tree, value_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.left (0334.vpr@14.1--20.2) [61498]"}
          HasDirectPerm(UnfoldingMask, tree, left_2);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[tree, left_2] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@18.34--18.54) [61499]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree, left_2])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size#trigger(FrameFragment((if UnfoldingHeap[tree, left_2] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, left_2])] else EmptyFrame)), UnfoldingHeap[tree, left_2]);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.right (0334.vpr@14.1--20.2) [61500]"}
          HasDirectPerm(UnfoldingMask, tree, right_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[tree, right_1] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.right) (0334.vpr@18.57--18.78) [61501]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree, right_1])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size#trigger(FrameFragment((if UnfoldingHeap[tree, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, right_1])] else EmptyFrame)), UnfoldingHeap[tree, right_1]);
        }
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, BTree#sm(tree):=Heap[null, BTree#sm(tree)][tree, left_2:=true]];
          if (Heap[tree, left_2] != null) {
            havoc newPMask;
            assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
              { newPMask[o_5, f_11] }
              Heap[null, BTree#sm(tree)][o_5, f_11] || Heap[null, BTree#sm(Heap[tree, left_2])][o_5, f_11] ==> newPMask[o_5, f_11]
            );
            Heap := Heap[null, BTree#sm(tree):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree):=Heap[null, BTree#sm(tree)][tree, right_1:=true]];
          if (Heap[tree, right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
              { newPMask[o_6, f_12] }
              Heap[null, BTree#sm(tree)][o_6, f_12] || Heap[null, BTree#sm(Heap[tree, right_1])][o_6, f_12] ==> newPMask[o_6, f_12]
            );
            Heap := Heap[null, BTree#sm(tree):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree):=Heap[null, BTree#sm(tree)][tree, value_1:=true]];
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if tree == null then 0 else 1 + tree_size(Heap, Heap[tree, left_2]) + tree_size(Heap, Heap[tree, right_1]));
}

// ==================================================
// Translation of function tree_size_fix
// ==================================================

// Uninterpreted function definitions
function  tree_size_fix(Heap: HeapType, tree: Ref, i: int, b_24: int): int;
function  tree_size_fix'(Heap: HeapType, tree: Ref, i: int, b_24: int): int;
axiom (forall Heap: HeapType, tree: Ref, i: int, b_24: int ::
  { tree_size_fix(Heap, tree, i, b_24) }
  tree_size_fix(Heap, tree, i, b_24) == tree_size_fix'(Heap, tree, i, b_24) && dummyFunction(tree_size_fix#triggerStateless(tree, i, b_24))
);
axiom (forall Heap: HeapType, tree: Ref, i: int, b_24: int ::
  { tree_size_fix'(Heap, tree, i, b_24) }
  dummyFunction(tree_size_fix#triggerStateless(tree, i, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, tree: Ref, i: int, b_24: int ::
  { state(Heap, Mask), tree_size_fix(Heap, tree, i, b_24) } { state(Heap, Mask), tree_size_fix#triggerStateless(tree, i, b_24), BTree#trigger(Heap, BTree(tree)), BTree#trigger(Heap, BTree(tree)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> tree_size_fix(Heap, tree, i, b_24) == (if tree == null then 0 else 1 + tree_size_fix'(Heap, Heap[tree, left_2], i, b_24) + tree_size_fix'(Heap, Heap[tree, right_1], i, b_24))
);

// Framing axioms
function  tree_size_fix#frame(frame: FrameType, tree: Ref, i: int, b_24: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, tree: Ref, i: int, b_24: int ::
  { state(Heap, Mask), tree_size_fix'(Heap, tree, i, b_24) } { state(Heap, Mask), tree_size_fix#triggerStateless(tree, i, b_24), BTree#trigger(Heap, BTree(tree)), BTree#trigger(Heap, BTree(tree)) }
  state(Heap, Mask) ==> tree_size_fix'(Heap, tree, i, b_24) == tree_size_fix#frame(FrameFragment((if tree != null then Heap[null, BTree(tree)] else EmptyFrame)), tree, i, b_24)
);

// Trigger function (controlling recursive postconditions)
function  tree_size_fix#trigger(frame: FrameType, tree: Ref, i: int, b_24: int): bool;

// State-independent trigger function
function  tree_size_fix#triggerStateless(tree: Ref, i: int, b_24: int): int;

// Check contract well-formedness and postcondition
procedure tree_size_fix#definedness(tree: Ref, i: int, b_24: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[tree, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    if (tree != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(tree):=Mask[null, BTree(tree)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (tree == null ? 0 : (unfolding acc(BTree(tree), write) in 1 + tree_size_fix(tree.left, i, b) + tree_size_fix(tree.right, i, b)))
      if (tree == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume BTree#trigger(UnfoldingHeap, BTree(tree));
        assume UnfoldingHeap[null, BTree(tree)] == CombineFrames(FrameFragment(UnfoldingHeap[tree, left_2]), CombineFrames(FrameFragment((if UnfoldingHeap[tree, left_2] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, left_2])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[tree, right_1]), CombineFrames(FrameFragment((if UnfoldingHeap[tree, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, right_1])] else EmptyFrame)), FrameFragment(UnfoldingHeap[tree, value_1])))));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access BTree(tree) (0334.vpr@33.1--39.2) [61502]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(tree)];
        perm := FullPerm;
        assume tree != null;
        UnfoldingMask := UnfoldingMask[tree, left_2:=UnfoldingMask[tree, left_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree, left_2] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree, left_2]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree, left_2])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree), UnfoldingHeap[null, BTree(tree)], BTree(UnfoldingHeap[tree, left_2]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree, left_2])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree != null;
        UnfoldingMask := UnfoldingMask[tree, right_1:=UnfoldingMask[tree, right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree, right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree, right_1]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree, right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree), UnfoldingHeap[null, BTree(tree)], BTree(UnfoldingHeap[tree, right_1]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree, right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree != null;
        UnfoldingMask := UnfoldingMask[tree, value_1:=UnfoldingMask[tree, value_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.left (0334.vpr@33.1--39.2) [61503]"}
          HasDirectPerm(UnfoldingMask, tree, left_2);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[tree, left_2] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@37.34--37.64) [61504]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree, left_2])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size_fix#trigger(FrameFragment((if UnfoldingHeap[tree, left_2] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, left_2])] else EmptyFrame)), UnfoldingHeap[tree, left_2], i, b_24);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.right (0334.vpr@33.1--39.2) [61505]"}
          HasDirectPerm(UnfoldingMask, tree, right_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          if (UnfoldingHeap[tree, right_1] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.right) (0334.vpr@37.67--37.98) [61506]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree, right_1])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size_fix#trigger(FrameFragment((if UnfoldingHeap[tree, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree, right_1])] else EmptyFrame)), UnfoldingHeap[tree, right_1], i, b_24);
        }
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, BTree#sm(tree):=Heap[null, BTree#sm(tree)][tree, left_2:=true]];
          if (Heap[tree, left_2] != null) {
            havoc newPMask;
            assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
              { newPMask[o_40, f_52] }
              Heap[null, BTree#sm(tree)][o_40, f_52] || Heap[null, BTree#sm(Heap[tree, left_2])][o_40, f_52] ==> newPMask[o_40, f_52]
            );
            Heap := Heap[null, BTree#sm(tree):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree):=Heap[null, BTree#sm(tree)][tree, right_1:=true]];
          if (Heap[tree, right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
              { newPMask[o_42, f_55] }
              Heap[null, BTree#sm(tree)][o_42, f_55] || Heap[null, BTree#sm(Heap[tree, right_1])][o_42, f_55] ==> newPMask[o_42, f_55]
            );
            Heap := Heap[null, BTree#sm(tree):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree):=Heap[null, BTree#sm(tree)][tree, value_1:=true]];
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if tree == null then 0 else 1 + tree_size_fix(Heap, Heap[tree, left_2], i, b_24) + tree_size_fix(Heap, Heap[tree, right_1], i, b_24));
}

// ==================================================
// Translation of predicate BTree
// ==================================================

type PredicateType_BTree;
function  BTree(self: Ref): Field PredicateType_BTree FrameType;
function  BTree#sm(self: Ref): Field PredicateType_BTree PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(BTree(self)) }
  PredicateMaskField(BTree(self)) == BTree#sm(self)
);
axiom (forall self: Ref ::
  { BTree(self) }
  IsPredicateField(BTree(self))
);
axiom (forall self: Ref ::
  { BTree(self) }
  getPredWandId(BTree(self)) == 0
);
function  BTree#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  BTree#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { BTree(self), BTree(self2) }
  BTree(self) == BTree(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { BTree#sm(self), BTree#sm(self2) }
  BTree#sm(self) == BTree#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { BTree#trigger(Heap, BTree(self)) }
  BTree#everUsed(BTree(self))
);

procedure BTree#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of BTree
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, left_2:=Mask[self, left_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of self.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.left (0334.vpr@8.1--12.2) [61507]"}
        HasDirectPerm(Mask, self, left_2);
    if (Heap[self, left_2] != null) {
      
      // -- Check definedness of acc(BTree(self.left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.left (0334.vpr@8.1--12.2) [61508]"}
          HasDirectPerm(Mask, self, left_2);
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[self, left_2]):=Mask[null, BTree(Heap[self, left_2])] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, right_1:=Mask[self, right_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of self.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.right (0334.vpr@8.1--12.2) [61509]"}
        HasDirectPerm(Mask, self, right_1);
    if (Heap[self, right_1] != null) {
      
      // -- Check definedness of acc(BTree(self.right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.right (0334.vpr@8.1--12.2) [61510]"}
          HasDirectPerm(Mask, self, right_1);
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[self, right_1]):=Mask[null, BTree(Heap[self, right_1])] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, value_1:=Mask[self, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method toArray
// ==================================================

procedure toArray(tree: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i_8: int;
  var b_35: int;
  var i_1: int;
  var b_1_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[tree, $allocated];
  
  // -- Checked inhaling of precondition
    assume tree != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, BTree(tree):=Mask[null, BTree(tree)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(BTree(tree), write) -- 0334.vpr@26.3--26.21
    assume BTree#trigger(Heap, BTree(tree));
    assume Heap[null, BTree(tree)] == CombineFrames(FrameFragment(Heap[tree, left_2]), CombineFrames(FrameFragment((if Heap[tree, left_2] != null then Heap[null, BTree(Heap[tree, left_2])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[tree, right_1]), CombineFrames(FrameFragment((if Heap[tree, right_1] != null then Heap[null, BTree(Heap[tree, right_1])] else EmptyFrame)), FrameFragment(Heap[tree, value_1])))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding BTree(tree) might fail. There might be insufficient permission to access BTree(tree) (0334.vpr@26.3--26.21) [61513]"}
        perm <= Mask[null, BTree(tree)];
    }
    Mask := Mask[null, BTree(tree):=Mask[null, BTree(tree)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, BTree(tree))) {
        havoc newVersion;
        Heap := Heap[null, BTree(tree):=newVersion];
      }
    perm := FullPerm;
    assume tree != null;
    Mask := Mask[tree, left_2:=Mask[tree, left_2] + perm];
    assume state(Heap, Mask);
    if (Heap[tree, left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree, left_2]):=Mask[null, BTree(Heap[tree, left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree), Heap[null, BTree(tree)], BTree(Heap[tree, left_2]), Heap[null, BTree(Heap[tree, left_2])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree != null;
    Mask := Mask[tree, right_1:=Mask[tree, right_1] + perm];
    assume state(Heap, Mask);
    if (Heap[tree, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree, right_1]):=Mask[null, BTree(Heap[tree, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree), Heap[null, BTree(tree)], BTree(Heap[tree, right_1]), Heap[null, BTree(Heap[tree, right_1])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree != null;
    Mask := Mask[tree, value_1:=Mask[tree, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int, b: Int ::tree_size(tree.left) < i && i < b ==>
  //     tree_size(tree.left) + 1 < b) -- 0334.vpr@28.3--30.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int, b: Int ::tree_size(tree.left) < i && i < b ==> tree_size(tree.left) + 1 < b)
      if (*) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@29.5--30.77) [61519]"}
          HasDirectPerm(ExhaleWellDef0Mask, tree, left_2);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          if (ExhaleWellDef0Heap[tree, left_2] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@30.8--30.28) [61520]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree, left_2])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (tree_size(Heap, Heap[tree, left_2]) < i_8 && i_8 < b_35) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@29.5--30.77) [61521]"}
            HasDirectPerm(ExhaleWellDef0Mask, tree, left_2);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[tree, left_2] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@30.48--30.68) [61522]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree, left_2])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (tree_size(Heap, Heap[tree, left_2]) < i_1 && i_1 < b_1_2) {
        assert {:msg "  Assert might fail. Assertion tree_size(tree.left) + 1 < b might not hold. (0334.vpr@29.5--30.77) [61523]"}
          tree_size(Heap, Heap[tree, left_2]) + 1 < b_1_2;
      }
      assume false;
    }
    assume (forall i_2_1: int, b_2_1_1: int ::
      
      tree_size(Heap, Heap[tree, left_2]) < i_2_1 && i_2_1 < b_2_1_1 ==> tree_size(Heap, Heap[tree, left_2]) + 1 < b_2_1_1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method toArray_fix
// ==================================================

procedure toArray_fix(tree: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var i_19: int;
  var b_36: int;
  var i_1: int;
  var b_1_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[tree, $allocated];
  
  // -- Checked inhaling of precondition
    assume tree != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, BTree(tree):=Mask[null, BTree(tree)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(BTree(tree), write) -- 0334.vpr@45.3--45.21
    assume BTree#trigger(Heap, BTree(tree));
    assume Heap[null, BTree(tree)] == CombineFrames(FrameFragment(Heap[tree, left_2]), CombineFrames(FrameFragment((if Heap[tree, left_2] != null then Heap[null, BTree(Heap[tree, left_2])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[tree, right_1]), CombineFrames(FrameFragment((if Heap[tree, right_1] != null then Heap[null, BTree(Heap[tree, right_1])] else EmptyFrame)), FrameFragment(Heap[tree, value_1])))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding BTree(tree) might fail. There might be insufficient permission to access BTree(tree) (0334.vpr@45.3--45.21) [61526]"}
        perm <= Mask[null, BTree(tree)];
    }
    Mask := Mask[null, BTree(tree):=Mask[null, BTree(tree)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, BTree(tree))) {
        havoc newVersion;
        Heap := Heap[null, BTree(tree):=newVersion];
      }
    perm := FullPerm;
    assume tree != null;
    Mask := Mask[tree, left_2:=Mask[tree, left_2] + perm];
    assume state(Heap, Mask);
    if (Heap[tree, left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree, left_2]):=Mask[null, BTree(Heap[tree, left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree), Heap[null, BTree(tree)], BTree(Heap[tree, left_2]), Heap[null, BTree(Heap[tree, left_2])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree != null;
    Mask := Mask[tree, right_1:=Mask[tree, right_1] + perm];
    assume state(Heap, Mask);
    if (Heap[tree, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree, right_1]):=Mask[null, BTree(Heap[tree, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree), Heap[null, BTree(tree)], BTree(Heap[tree, right_1]), Heap[null, BTree(Heap[tree, right_1])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree != null;
    Mask := Mask[tree, value_1:=Mask[tree, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int, b: Int ::
  //     { tree_size_fix(tree.left, i, b) }
  //     tree_size_fix(tree.left, i, b) < i && i < b ==>
  //     tree_size_fix(tree.left, i, b) + 1 < b) -- 0334.vpr@46.3--48.97
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int, b: Int :: { tree_size_fix(tree.left, i, b) } tree_size_fix(tree.left, i, b) < i && i < b ==> tree_size_fix(tree.left, i, b) + 1 < b)
      if (*) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@47.5--48.97) [61532]"}
          HasDirectPerm(ExhaleWellDef0Mask, tree, left_2);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          if (ExhaleWellDef0Heap[tree, left_2] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@48.8--48.38) [61533]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree, left_2])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (tree_size_fix(Heap, Heap[tree, left_2], i_19, b_36) < i_19 && i_19 < b_36) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@47.5--48.97) [61534]"}
            HasDirectPerm(ExhaleWellDef0Mask, tree, left_2);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if (ExhaleWellDef0Heap[tree, left_2] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@48.58--48.88) [61535]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree, left_2])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    if (*) {
      if (tree_size_fix(Heap, Heap[tree, left_2], i_1, b_1_2) < i_1 && i_1 < b_1_2) {
        assert {:msg "  Assert might fail. Assertion tree_size_fix(tree.left, i, b) + 1 < b might not hold. (0334.vpr@47.5--48.97) [61536]"}
          tree_size_fix(Heap, Heap[tree, left_2], i_1, b_1_2) + 1 < b_1_2;
      }
      assume false;
    }
    assume (forall i_2_1: int, b_2_1_1: int ::
      { tree_size_fix#frame(FrameFragment(Heap[null, BTree(Heap[tree, left_2])]), Heap[tree, left_2], i_2_1, b_2_1_1) } { tree_size_fix#frame(FrameFragment(EmptyFrame), Heap[tree, left_2], i_2_1, b_2_1_1) }
      tree_size_fix(Heap, Heap[tree, left_2], i_2_1, b_2_1_1) < i_2_1 && i_2_1 < b_2_1_1 ==> tree_size_fix(Heap, Heap[tree, left_2], i_2_1, b_2_1_1) + 1 < b_2_1_1
    );
    assume state(Heap, Mask);
}