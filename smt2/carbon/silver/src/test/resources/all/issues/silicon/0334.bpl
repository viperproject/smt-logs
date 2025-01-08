// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:03:28
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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

const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);
const unique left: Field NormalField Ref;
axiom !IsPredicateField(left);
axiom !IsWandField(left);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);

// ==================================================
// Translation of function tree_size
// ==================================================

// Uninterpreted function definitions
function  tree_size(Heap: HeapType, tree_1: Ref): int;
function  tree_size'(Heap: HeapType, tree_1: Ref): int;
axiom (forall Heap: HeapType, tree_1: Ref ::
  { tree_size(Heap, tree_1) }
  tree_size(Heap, tree_1) == tree_size'(Heap, tree_1) && dummyFunction(tree_size#triggerStateless(tree_1))
);
axiom (forall Heap: HeapType, tree_1: Ref ::
  { tree_size'(Heap, tree_1) }
  dummyFunction(tree_size#triggerStateless(tree_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, tree_1: Ref ::
  { state(Heap, Mask), tree_size(Heap, tree_1) } { state(Heap, Mask), tree_size#triggerStateless(tree_1), BTree#trigger(Heap, BTree(tree_1)), BTree#trigger(Heap, BTree(tree_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> tree_size(Heap, tree_1) == (if tree_1 == null then 0 else 1 + tree_size'(Heap, Heap[tree_1, left]) + tree_size'(Heap, Heap[tree_1, right_1]))
);

// Framing axioms
function  tree_size#frame(frame: FrameType, tree_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, tree_1: Ref ::
  { state(Heap, Mask), tree_size'(Heap, tree_1) } { state(Heap, Mask), tree_size#triggerStateless(tree_1), BTree#trigger(Heap, BTree(tree_1)), BTree#trigger(Heap, BTree(tree_1)) }
  state(Heap, Mask) ==> tree_size'(Heap, tree_1) == tree_size#frame(FrameFragment((if tree_1 != null then Heap[null, BTree(tree_1)] else EmptyFrame)), tree_1)
);

// Trigger function (controlling recursive postconditions)
function  tree_size#trigger(frame: FrameType, tree_1: Ref): bool;

// State-independent trigger function
function  tree_size#triggerStateless(tree_1: Ref): int;

// Check contract well-formedness and postcondition
procedure tree_size#definedness(tree_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[tree_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    if (tree_1 != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(tree_1):=Mask[null, BTree(tree_1)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (tree == null ? 0 : (unfolding acc(BTree(tree), write) in 1 + tree_size(tree.left) + tree_size(tree.right)))
      if (tree_1 == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume BTree#trigger(UnfoldingHeap, BTree(tree_1));
        assume UnfoldingHeap[null, BTree(tree_1)] == CombineFrames(FrameFragment(UnfoldingHeap[tree_1, left]), CombineFrames(FrameFragment((if UnfoldingHeap[tree_1, left] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, left])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[tree_1, right_1]), CombineFrames(FrameFragment((if UnfoldingHeap[tree_1, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, right_1])] else EmptyFrame)), FrameFragment(UnfoldingHeap[tree_1, value])))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access BTree(tree) (0334.vpr@14.1--20.2) [199286]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(tree_1)];
        perm := FullPerm;
        assume tree_1 != null;
        UnfoldingMask := UnfoldingMask[tree_1, left:=UnfoldingMask[tree_1, left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree_1, left] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, left]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree_1), UnfoldingHeap[null, BTree(tree_1)], BTree(UnfoldingHeap[tree_1, left]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, left])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree_1 != null;
        UnfoldingMask := UnfoldingMask[tree_1, right_1:=UnfoldingMask[tree_1, right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree_1, right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, right_1]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree_1), UnfoldingHeap[null, BTree(tree_1)], BTree(UnfoldingHeap[tree_1, right_1]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree_1 != null;
        UnfoldingMask := UnfoldingMask[tree_1, value:=UnfoldingMask[tree_1, value] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.left (0334.vpr@14.1--20.2) [199287]"}
          HasDirectPerm(UnfoldingMask, tree_1, left);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          if (UnfoldingHeap[tree_1, left] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@18.34--18.54) [199288]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, left])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size#trigger(FrameFragment((if UnfoldingHeap[tree_1, left] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, left])] else EmptyFrame)), UnfoldingHeap[tree_1, left]);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.right (0334.vpr@14.1--20.2) [199289]"}
          HasDirectPerm(UnfoldingMask, tree_1, right_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          if (UnfoldingHeap[tree_1, right_1] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.right) (0334.vpr@18.57--18.78) [199290]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, right_1])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size#trigger(FrameFragment((if UnfoldingHeap[tree_1, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, right_1])] else EmptyFrame)), UnfoldingHeap[tree_1, right_1]);
        }
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, BTree#sm(tree_1):=Heap[null, BTree#sm(tree_1)][tree_1, left:=true]];
          if (Heap[tree_1, left] != null) {
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, BTree#sm(tree_1)][o_15, f_20] || Heap[null, BTree#sm(Heap[tree_1, left])][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, BTree#sm(tree_1):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree_1):=Heap[null, BTree#sm(tree_1)][tree_1, right_1:=true]];
          if (Heap[tree_1, right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, BTree#sm(tree_1)][o_16, f_21] || Heap[null, BTree#sm(Heap[tree_1, right_1])][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, BTree#sm(tree_1):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree_1):=Heap[null, BTree#sm(tree_1)][tree_1, value:=true]];
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if tree_1 == null then 0 else 1 + tree_size(Heap, Heap[tree_1, left]) + tree_size(Heap, Heap[tree_1, right_1]));
}

// ==================================================
// Translation of function tree_size_fix
// ==================================================

// Uninterpreted function definitions
function  tree_size_fix(Heap: HeapType, tree_1: Ref, i: int, b_24: int): int;
function  tree_size_fix'(Heap: HeapType, tree_1: Ref, i: int, b_24: int): int;
axiom (forall Heap: HeapType, tree_1: Ref, i: int, b_24: int ::
  { tree_size_fix(Heap, tree_1, i, b_24) }
  tree_size_fix(Heap, tree_1, i, b_24) == tree_size_fix'(Heap, tree_1, i, b_24) && dummyFunction(tree_size_fix#triggerStateless(tree_1, i, b_24))
);
axiom (forall Heap: HeapType, tree_1: Ref, i: int, b_24: int ::
  { tree_size_fix'(Heap, tree_1, i, b_24) }
  dummyFunction(tree_size_fix#triggerStateless(tree_1, i, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, tree_1: Ref, i: int, b_24: int ::
  { state(Heap, Mask), tree_size_fix(Heap, tree_1, i, b_24) } { state(Heap, Mask), tree_size_fix#triggerStateless(tree_1, i, b_24), BTree#trigger(Heap, BTree(tree_1)), BTree#trigger(Heap, BTree(tree_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> tree_size_fix(Heap, tree_1, i, b_24) == (if tree_1 == null then 0 else 1 + tree_size_fix'(Heap, Heap[tree_1, left], i, b_24) + tree_size_fix'(Heap, Heap[tree_1, right_1], i, b_24))
);

// Framing axioms
function  tree_size_fix#frame(frame: FrameType, tree_1: Ref, i: int, b_24: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, tree_1: Ref, i: int, b_24: int ::
  { state(Heap, Mask), tree_size_fix'(Heap, tree_1, i, b_24) } { state(Heap, Mask), tree_size_fix#triggerStateless(tree_1, i, b_24), BTree#trigger(Heap, BTree(tree_1)), BTree#trigger(Heap, BTree(tree_1)) }
  state(Heap, Mask) ==> tree_size_fix'(Heap, tree_1, i, b_24) == tree_size_fix#frame(FrameFragment((if tree_1 != null then Heap[null, BTree(tree_1)] else EmptyFrame)), tree_1, i, b_24)
);

// Trigger function (controlling recursive postconditions)
function  tree_size_fix#trigger(frame: FrameType, tree_1: Ref, i: int, b_24: int): bool;

// State-independent trigger function
function  tree_size_fix#triggerStateless(tree_1: Ref, i: int, b_24: int): int;

// Check contract well-formedness and postcondition
procedure tree_size_fix#definedness(tree_1: Ref, i: int, b_24: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[tree_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    if (tree_1 != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(tree_1):=Mask[null, BTree(tree_1)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (tree == null ? 0 : (unfolding acc(BTree(tree), write) in 1 + tree_size_fix(tree.left, i, b) + tree_size_fix(tree.right, i, b)))
      if (tree_1 == null) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume BTree#trigger(UnfoldingHeap, BTree(tree_1));
        assume UnfoldingHeap[null, BTree(tree_1)] == CombineFrames(FrameFragment(UnfoldingHeap[tree_1, left]), CombineFrames(FrameFragment((if UnfoldingHeap[tree_1, left] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, left])] else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[tree_1, right_1]), CombineFrames(FrameFragment((if UnfoldingHeap[tree_1, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, right_1])] else EmptyFrame)), FrameFragment(UnfoldingHeap[tree_1, value])))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access BTree(tree) (0334.vpr@33.1--39.2) [199291]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(tree_1)];
        perm := FullPerm;
        assume tree_1 != null;
        UnfoldingMask := UnfoldingMask[tree_1, left:=UnfoldingMask[tree_1, left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree_1, left] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, left]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree_1), UnfoldingHeap[null, BTree(tree_1)], BTree(UnfoldingHeap[tree_1, left]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, left])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree_1 != null;
        UnfoldingMask := UnfoldingMask[tree_1, right_1:=UnfoldingMask[tree_1, right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[tree_1, right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, right_1]):=UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(BTree(tree_1), UnfoldingHeap[null, BTree(tree_1)], BTree(UnfoldingHeap[tree_1, right_1]), UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        perm := FullPerm;
        assume tree_1 != null;
        UnfoldingMask := UnfoldingMask[tree_1, value:=UnfoldingMask[tree_1, value] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.left (0334.vpr@33.1--39.2) [199292]"}
          HasDirectPerm(UnfoldingMask, tree_1, left);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          if (UnfoldingHeap[tree_1, left] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@37.34--37.64) [199293]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, left])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size_fix#trigger(FrameFragment((if UnfoldingHeap[tree_1, left] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, left])] else EmptyFrame)), UnfoldingHeap[tree_1, left], i, b_24);
        }
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access tree.right (0334.vpr@33.1--39.2) [199294]"}
          HasDirectPerm(UnfoldingMask, tree_1, right_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          if (UnfoldingHeap[tree_1, right_1] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.right) (0334.vpr@37.67--37.98) [199295]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, BTree(UnfoldingHeap[tree_1, right_1])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume tree_size_fix#trigger(FrameFragment((if UnfoldingHeap[tree_1, right_1] != null then UnfoldingHeap[null, BTree(UnfoldingHeap[tree_1, right_1])] else EmptyFrame)), UnfoldingHeap[tree_1, right_1], i, b_24);
        }
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, BTree#sm(tree_1):=Heap[null, BTree#sm(tree_1)][tree_1, left:=true]];
          if (Heap[tree_1, left] != null) {
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, BTree#sm(tree_1)][o_52, f_55] || Heap[null, BTree#sm(Heap[tree_1, left])][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, BTree#sm(tree_1):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree_1):=Heap[null, BTree#sm(tree_1)][tree_1, right_1:=true]];
          if (Heap[tree_1, right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, BTree#sm(tree_1)][o_53, f_56] || Heap[null, BTree#sm(Heap[tree_1, right_1])][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, BTree#sm(tree_1):=newPMask];
          }
          Heap := Heap[null, BTree#sm(tree_1):=Heap[null, BTree#sm(tree_1)][tree_1, value:=true]];
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if tree_1 == null then 0 else 1 + tree_size_fix(Heap, Heap[tree_1, left], i, b_24) + tree_size_fix(Heap, Heap[tree_1, right_1], i, b_24));
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
    Mask := Mask[self, left:=Mask[self, left] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of self.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.left (0334.vpr@8.1--12.2) [199296]"}
        HasDirectPerm(Mask, self, left);
    if (Heap[self, left] != null) {
      
      // -- Check definedness of acc(BTree(self.left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.left (0334.vpr@8.1--12.2) [199297]"}
          HasDirectPerm(Mask, self, left);
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[self, left]):=Mask[null, BTree(Heap[self, left])] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, right_1:=Mask[self, right_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of self.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.right (0334.vpr@8.1--12.2) [199298]"}
        HasDirectPerm(Mask, self, right_1);
    if (Heap[self, right_1] != null) {
      
      // -- Check definedness of acc(BTree(self.right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.right (0334.vpr@8.1--12.2) [199299]"}
          HasDirectPerm(Mask, self, right_1);
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[self, right_1]):=Mask[null, BTree(Heap[self, right_1])] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, value:=Mask[self, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method toArray
// ==================================================

procedure toArray(tree_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_11: int;
  var b_103: int;
  var i_1: int;
  var b_1_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[tree_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume tree_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, BTree(tree_1):=Mask[null, BTree(tree_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(BTree(tree), write) -- 0334.vpr@26.3--26.21
    assume BTree#trigger(Heap, BTree(tree_1));
    assume Heap[null, BTree(tree_1)] == CombineFrames(FrameFragment(Heap[tree_1, left]), CombineFrames(FrameFragment((if Heap[tree_1, left] != null then Heap[null, BTree(Heap[tree_1, left])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[tree_1, right_1]), CombineFrames(FrameFragment((if Heap[tree_1, right_1] != null then Heap[null, BTree(Heap[tree_1, right_1])] else EmptyFrame)), FrameFragment(Heap[tree_1, value])))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding BTree(tree) might fail. There might be insufficient permission to access BTree(tree) (0334.vpr@26.3--26.21) [199302]"}
        perm <= Mask[null, BTree(tree_1)];
    }
    Mask := Mask[null, BTree(tree_1):=Mask[null, BTree(tree_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, BTree(tree_1))) {
        havoc newVersion;
        Heap := Heap[null, BTree(tree_1):=newVersion];
      }
    perm := FullPerm;
    assume tree_1 != null;
    Mask := Mask[tree_1, left:=Mask[tree_1, left] + perm];
    assume state(Heap, Mask);
    if (Heap[tree_1, left] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree_1, left]):=Mask[null, BTree(Heap[tree_1, left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree_1), Heap[null, BTree(tree_1)], BTree(Heap[tree_1, left]), Heap[null, BTree(Heap[tree_1, left])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree_1 != null;
    Mask := Mask[tree_1, right_1:=Mask[tree_1, right_1] + perm];
    assume state(Heap, Mask);
    if (Heap[tree_1, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree_1, right_1]):=Mask[null, BTree(Heap[tree_1, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree_1), Heap[null, BTree(tree_1)], BTree(Heap[tree_1, right_1]), Heap[null, BTree(Heap[tree_1, right_1])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree_1 != null;
    Mask := Mask[tree_1, value:=Mask[tree_1, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int, b: Int ::tree_size(tree.left) < i && i < b ==>
  //     tree_size(tree.left) + 1 < b) -- 0334.vpr@28.3--30.77
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int, b: Int ::tree_size(tree.left) < i && i < b ==> tree_size(tree.left) + 1 < b)
      if (*) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@29.5--30.77) [199308]"}
          HasDirectPerm(ExhaleWellDef0Mask, tree_1, left);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          if (ExhaleWellDef0Heap[tree_1, left] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@30.8--30.28) [199309]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree_1, left])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (tree_size(Heap, Heap[tree_1, left]) < i_11 && i_11 < b_103) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@29.5--30.77) [199310]"}
            HasDirectPerm(ExhaleWellDef0Mask, tree_1, left);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (ExhaleWellDef0Heap[tree_1, left] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function tree_size might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@30.48--30.68) [199311]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree_1, left])];
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
      if (tree_size(Heap, Heap[tree_1, left]) < i_1 && i_1 < b_1_2) {
        assert {:msg "  Assert might fail. Assertion tree_size(tree.left) + 1 < b might not hold. (0334.vpr@29.5--30.77) [199312]"}
          tree_size(Heap, Heap[tree_1, left]) + 1 < b_1_2;
      }
      assume false;
    }
    assume (forall i_2_1_1: int, b_2_1_1: int ::
      
      tree_size(Heap, Heap[tree_1, left]) < i_2_1_1 && i_2_1_1 < b_2_1_1 ==> tree_size(Heap, Heap[tree_1, left]) + 1 < b_2_1_1
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method toArray_fix
// ==================================================

procedure toArray_fix(tree_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_12: int;
  var b_104: int;
  var i_1: int;
  var b_1_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[tree_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume tree_1 != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, BTree(tree_1):=Mask[null, BTree(tree_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(BTree(tree), write) -- 0334.vpr@45.3--45.21
    assume BTree#trigger(Heap, BTree(tree_1));
    assume Heap[null, BTree(tree_1)] == CombineFrames(FrameFragment(Heap[tree_1, left]), CombineFrames(FrameFragment((if Heap[tree_1, left] != null then Heap[null, BTree(Heap[tree_1, left])] else EmptyFrame)), CombineFrames(FrameFragment(Heap[tree_1, right_1]), CombineFrames(FrameFragment((if Heap[tree_1, right_1] != null then Heap[null, BTree(Heap[tree_1, right_1])] else EmptyFrame)), FrameFragment(Heap[tree_1, value])))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding BTree(tree) might fail. There might be insufficient permission to access BTree(tree) (0334.vpr@45.3--45.21) [199315]"}
        perm <= Mask[null, BTree(tree_1)];
    }
    Mask := Mask[null, BTree(tree_1):=Mask[null, BTree(tree_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, BTree(tree_1))) {
        havoc newVersion;
        Heap := Heap[null, BTree(tree_1):=newVersion];
      }
    perm := FullPerm;
    assume tree_1 != null;
    Mask := Mask[tree_1, left:=Mask[tree_1, left] + perm];
    assume state(Heap, Mask);
    if (Heap[tree_1, left] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree_1, left]):=Mask[null, BTree(Heap[tree_1, left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree_1), Heap[null, BTree(tree_1)], BTree(Heap[tree_1, left]), Heap[null, BTree(Heap[tree_1, left])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree_1 != null;
    Mask := Mask[tree_1, right_1:=Mask[tree_1, right_1] + perm];
    assume state(Heap, Mask);
    if (Heap[tree_1, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, BTree(Heap[tree_1, right_1]):=Mask[null, BTree(Heap[tree_1, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(BTree(tree_1), Heap[null, BTree(tree_1)], BTree(Heap[tree_1, right_1]), Heap[null, BTree(Heap[tree_1, right_1])]);
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    assume tree_1 != null;
    Mask := Mask[tree_1, value:=Mask[tree_1, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall i: Int, b: Int ::
  //     { tree_size_fix(tree.left, i, b) }
  //     tree_size_fix(tree.left, i, b) < i && i < b ==>
  //     tree_size_fix(tree.left, i, b) + 1 < b) -- 0334.vpr@46.3--48.97
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int, b: Int :: { tree_size_fix(tree.left, i, b) } tree_size_fix(tree.left, i, b) < i && i < b ==> tree_size_fix(tree.left, i, b) + 1 < b)
      if (*) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@47.5--48.97) [199321]"}
          HasDirectPerm(ExhaleWellDef0Mask, tree_1, left);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          if (ExhaleWellDef0Heap[tree_1, left] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@48.8--48.38) [199322]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree_1, left])];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (tree_size_fix(Heap, Heap[tree_1, left], i_12, b_104) < i_12 && i_12 < b_104) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access tree.left (0334.vpr@47.5--48.97) [199323]"}
            HasDirectPerm(ExhaleWellDef0Mask, tree_1, left);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (ExhaleWellDef0Heap[tree_1, left] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function tree_size_fix might not hold. There might be insufficient permission to access BTree(tree.left) (0334.vpr@48.58--48.88) [199324]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, BTree(ExhaleWellDef0Heap[tree_1, left])];
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
      if (tree_size_fix(Heap, Heap[tree_1, left], i_1, b_1_2) < i_1 && i_1 < b_1_2) {
        assert {:msg "  Assert might fail. Assertion tree_size_fix(tree.left, i, b) + 1 < b might not hold. (0334.vpr@47.5--48.97) [199325]"}
          tree_size_fix(Heap, Heap[tree_1, left], i_1, b_1_2) + 1 < b_1_2;
      }
      assume false;
    }
    assume (forall i_2_1_1: int, b_2_1_1: int ::
      { tree_size_fix#frame(FrameFragment(Heap[null, BTree(Heap[tree_1, left])]), Heap[tree_1, left], i_2_1_1, b_2_1_1) } { tree_size_fix#frame(FrameFragment(EmptyFrame), Heap[tree_1, left], i_2_1_1, b_2_1_1) }
      tree_size_fix(Heap, Heap[tree_1, left], i_2_1_1, b_2_1_1) < i_2_1_1 && i_2_1_1 < b_2_1_1 ==> tree_size_fix(Heap, Heap[tree_1, left], i_2_1_1, b_2_1_1) + 1 < b_2_1_1
    );
    assume state(Heap, Mask);
}