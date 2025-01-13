// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:29:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/example_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/example_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
// - height 2: allNodesGreaterThan
// - height 1: allNodesLessThan
// - height 0: isBST
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
// Translation of domain Tree
// ==================================================

// The type for domain Tree
type TreeDomainType;

// Translation of domain function Leaf
function  Leaf(): TreeDomainType;

// Translation of domain function Node
function  Node_1(v_4: int, left_2: TreeDomainType, right_2: TreeDomainType): TreeDomainType;

// Translation of domain function get_Tree_v
function  get_Tree_v(t_9: TreeDomainType): int;

// Translation of domain function get_Tree_left
function  get_Tree_left(t_9: TreeDomainType): TreeDomainType;

// Translation of domain function get_Tree_right
function  get_Tree_right(t_9: TreeDomainType): TreeDomainType;

// Translation of domain function Tree_tag
function  Tree_tag(t_9: TreeDomainType): int;

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  v_2 == (get_Tree_v((Node_1(v_2, left_1, right): TreeDomainType)): int)
);

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  left_1 == (get_Tree_left((Node_1(v_2, left_1, right): TreeDomainType)): TreeDomainType)
);

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  right == (get_Tree_right((Node_1(v_2, left_1, right): TreeDomainType)): TreeDomainType)
);

// Translation of anonymous domain axiom
axiom (Tree_tag((Leaf(): TreeDomainType)): int) == 0;

// Translation of anonymous domain axiom
axiom (forall v_2: int, left_1: TreeDomainType, right: TreeDomainType ::
  { (Node_1(v_2, left_1, right): TreeDomainType) }
  (Tree_tag((Node_1(v_2, left_1, right): TreeDomainType)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall t_2: TreeDomainType ::
  { (Tree_tag(t_2): int) } { (get_Tree_v(t_2): int) } { (get_Tree_left(t_2): TreeDomainType) } { (get_Tree_right(t_2): TreeDomainType) }
  t_2 == (Leaf(): TreeDomainType) || t_2 == (Node_1((get_Tree_v(t_2): int), (get_Tree_left(t_2): TreeDomainType), (get_Tree_right(t_2): TreeDomainType)): TreeDomainType)
);

// ==================================================
// Translation of function isBST
// ==================================================

// Uninterpreted function definitions
function  isBST(Heap: HeapType, t_2: TreeDomainType): bool;
function  isBST'(Heap: HeapType, t_2: TreeDomainType): bool;
axiom (forall Heap: HeapType, t_2: TreeDomainType ::
  { isBST(Heap, t_2) }
  isBST(Heap, t_2) == isBST'(Heap, t_2) && dummyFunction(isBST#triggerStateless(t_2))
);
axiom (forall Heap: HeapType, t_2: TreeDomainType ::
  { isBST'(Heap, t_2) }
  dummyFunction(isBST#triggerStateless(t_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType ::
  { state(Heap, Mask), isBST(Heap, t_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> isBST(Heap, t_2) == ((Tree_tag(t_2): int) == 0 || (allNodesLessThan(Heap, (get_Tree_left(t_2): TreeDomainType), (get_Tree_v(t_2): int)) && (isBST'(Heap, (get_Tree_left(t_2): TreeDomainType)) && (allNodesGreaterThan(Heap, (get_Tree_right(t_2): TreeDomainType), (get_Tree_v(t_2): int)) && isBST'(Heap, (get_Tree_right(t_2): TreeDomainType))))))
);

// Framing axioms
function  isBST#frame(frame: FrameType, t_2: TreeDomainType): bool;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType ::
  { state(Heap, Mask), isBST'(Heap, t_2) }
  state(Heap, Mask) ==> isBST'(Heap, t_2) == isBST#frame(EmptyFrame, t_2)
);

// Trigger function (controlling recursive postconditions)
function  isBST#trigger(frame: FrameType, t_2: TreeDomainType): bool;

// State-independent trigger function
function  isBST#triggerStateless(t_2: TreeDomainType): bool;

// Check contract well-formedness and postcondition
procedure isBST#definedness(t_2: TreeDomainType) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (Tree_tag(t) == 0 ? true : allNodesLessThan(get_Tree_left(t), get_Tree_v(t)) && (isBST(get_Tree_left(t)) && (allNodesGreaterThan(get_Tree_right(t), get_Tree_v(t)) && isBST(get_Tree_right(t)))))
      if ((Tree_tag(t_2): int) == 0) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        }
        if (allNodesLessThan(Heap, (get_Tree_left(t_2): TreeDomainType), (get_Tree_v(t_2): int))) {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume isBST#trigger(EmptyFrame, (get_Tree_left(t_2): TreeDomainType));
          }
          if (isBST(Heap, (get_Tree_left(t_2): TreeDomainType))) {
            if (*) {
              // Stop execution
              assume false;
            }
            if (allNodesGreaterThan(Heap, (get_Tree_right(t_2): TreeDomainType), (get_Tree_v(t_2): int))) {
              if (*) {
                // Stop execution
                assume false;
              } else {
                // Enable postcondition for recursive call
                assume isBST#trigger(EmptyFrame, (get_Tree_right(t_2): TreeDomainType));
              }
            }
          }
        }
      }
  
  // -- Translate function body
    Result := (Tree_tag(t_2): int) == 0 || (allNodesLessThan(Heap, (get_Tree_left(t_2): TreeDomainType), (get_Tree_v(t_2): int)) && (isBST(Heap, (get_Tree_left(t_2): TreeDomainType)) && (allNodesGreaterThan(Heap, (get_Tree_right(t_2): TreeDomainType), (get_Tree_v(t_2): int)) && isBST(Heap, (get_Tree_right(t_2): TreeDomainType)))));
}

// ==================================================
// Translation of function allNodesLessThan
// ==================================================

// Uninterpreted function definitions
function  allNodesLessThan(Heap: HeapType, t_2: TreeDomainType, value_1: int): bool;
function  allNodesLessThan'(Heap: HeapType, t_2: TreeDomainType, value_1: int): bool;
axiom (forall Heap: HeapType, t_2: TreeDomainType, value_1: int ::
  { allNodesLessThan(Heap, t_2, value_1) }
  allNodesLessThan(Heap, t_2, value_1) == allNodesLessThan'(Heap, t_2, value_1) && dummyFunction(allNodesLessThan#triggerStateless(t_2, value_1))
);
axiom (forall Heap: HeapType, t_2: TreeDomainType, value_1: int ::
  { allNodesLessThan'(Heap, t_2, value_1) }
  dummyFunction(allNodesLessThan#triggerStateless(t_2, value_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType, value_1: int ::
  { state(Heap, Mask), allNodesLessThan(Heap, t_2, value_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> allNodesLessThan(Heap, t_2, value_1) == ((Tree_tag(t_2): int) == 0 || ((get_Tree_v(t_2): int) < value_1 && (allNodesLessThan'(Heap, (get_Tree_right(t_2): TreeDomainType), value_1) && allNodesLessThan'(Heap, (get_Tree_left(t_2): TreeDomainType), value_1))))
);

// Framing axioms
function  allNodesLessThan#frame(frame: FrameType, t_2: TreeDomainType, value_1: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType, value_1: int ::
  { state(Heap, Mask), allNodesLessThan'(Heap, t_2, value_1) }
  state(Heap, Mask) ==> allNodesLessThan'(Heap, t_2, value_1) == allNodesLessThan#frame(EmptyFrame, t_2, value_1)
);

// Trigger function (controlling recursive postconditions)
function  allNodesLessThan#trigger(frame: FrameType, t_2: TreeDomainType, value_1: int): bool;

// State-independent trigger function
function  allNodesLessThan#triggerStateless(t_2: TreeDomainType, value_1: int): bool;

// Check contract well-formedness and postcondition
procedure allNodesLessThan#definedness(t_2: TreeDomainType, value_1: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (Tree_tag(t) == 0 ? true : get_Tree_v(t) < value && (allNodesLessThan(get_Tree_right(t), value) && allNodesLessThan(get_Tree_left(t), value)))
      if ((Tree_tag(t_2): int) == 0) {
      } else {
        if ((get_Tree_v(t_2): int) < value_1) {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume allNodesLessThan#trigger(EmptyFrame, (get_Tree_right(t_2): TreeDomainType), value_1);
          }
          if (allNodesLessThan(Heap, (get_Tree_right(t_2): TreeDomainType), value_1)) {
            if (*) {
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume allNodesLessThan#trigger(EmptyFrame, (get_Tree_left(t_2): TreeDomainType), value_1);
            }
          }
        }
      }
  
  // -- Translate function body
    Result := (Tree_tag(t_2): int) == 0 || ((get_Tree_v(t_2): int) < value_1 && (allNodesLessThan(Heap, (get_Tree_right(t_2): TreeDomainType), value_1) && allNodesLessThan(Heap, (get_Tree_left(t_2): TreeDomainType), value_1)));
}

// ==================================================
// Translation of function allNodesGreaterThan
// ==================================================

// Uninterpreted function definitions
function  allNodesGreaterThan(Heap: HeapType, t_2: TreeDomainType, value_1: int): bool;
function  allNodesGreaterThan'(Heap: HeapType, t_2: TreeDomainType, value_1: int): bool;
axiom (forall Heap: HeapType, t_2: TreeDomainType, value_1: int ::
  { allNodesGreaterThan(Heap, t_2, value_1) }
  allNodesGreaterThan(Heap, t_2, value_1) == allNodesGreaterThan'(Heap, t_2, value_1) && dummyFunction(allNodesGreaterThan#triggerStateless(t_2, value_1))
);
axiom (forall Heap: HeapType, t_2: TreeDomainType, value_1: int ::
  { allNodesGreaterThan'(Heap, t_2, value_1) }
  dummyFunction(allNodesGreaterThan#triggerStateless(t_2, value_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType, value_1: int ::
  { state(Heap, Mask), allNodesGreaterThan(Heap, t_2, value_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> allNodesGreaterThan(Heap, t_2, value_1) == ((Tree_tag(t_2): int) == 0 || ((get_Tree_v(t_2): int) > value_1 && (allNodesGreaterThan'(Heap, (get_Tree_left(t_2): TreeDomainType), value_1) && allNodesGreaterThan'(Heap, (get_Tree_right(t_2): TreeDomainType), value_1))))
);

// Framing axioms
function  allNodesGreaterThan#frame(frame: FrameType, t_2: TreeDomainType, value_1: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, t_2: TreeDomainType, value_1: int ::
  { state(Heap, Mask), allNodesGreaterThan'(Heap, t_2, value_1) }
  state(Heap, Mask) ==> allNodesGreaterThan'(Heap, t_2, value_1) == allNodesGreaterThan#frame(EmptyFrame, t_2, value_1)
);

// Trigger function (controlling recursive postconditions)
function  allNodesGreaterThan#trigger(frame: FrameType, t_2: TreeDomainType, value_1: int): bool;

// State-independent trigger function
function  allNodesGreaterThan#triggerStateless(t_2: TreeDomainType, value_1: int): bool;

// Check contract well-formedness and postcondition
procedure allNodesGreaterThan#definedness(t_2: TreeDomainType, value_1: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (Tree_tag(t) == 0 ? true : get_Tree_v(t) > value && (allNodesGreaterThan(get_Tree_left(t), value) && allNodesGreaterThan(get_Tree_right(t), value)))
      if ((Tree_tag(t_2): int) == 0) {
      } else {
        if ((get_Tree_v(t_2): int) > value_1) {
          if (*) {
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume allNodesGreaterThan#trigger(EmptyFrame, (get_Tree_left(t_2): TreeDomainType), value_1);
          }
          if (allNodesGreaterThan(Heap, (get_Tree_left(t_2): TreeDomainType), value_1)) {
            if (*) {
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume allNodesGreaterThan#trigger(EmptyFrame, (get_Tree_right(t_2): TreeDomainType), value_1);
            }
          }
        }
      }
  
  // -- Translate function body
    Result := (Tree_tag(t_2): int) == 0 || ((get_Tree_v(t_2): int) > value_1 && (allNodesGreaterThan(Heap, (get_Tree_left(t_2): TreeDomainType), value_1) && allNodesGreaterThan(Heap, (get_Tree_right(t_2): TreeDomainType), value_1)));
}

// ==================================================
// Translation of method insertValue
// ==================================================

procedure insertValue(v_2: int, t_2: TreeDomainType) returns (res: TreeDomainType)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_14: int;
  var i_2: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_t: TreeDomainType;
  var new_leftsubtree: TreeDomainType;
  var arg_t_1: TreeDomainType;
  var new_rightsubtree: TreeDomainType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var i_4_1: int;
  var i_6_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { allNodesGreaterThan(t, i) } { allNodesGreaterThan(res, i) } allNodesGreaterThan(t, i) && i < v ==> allNodesGreaterThan(res, i))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (allNodesGreaterThan(PostHeap, t_2, i_14) && i_14 < v_2) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { allNodesGreaterThan#frame(EmptyFrame, t_2, i_1) } { allNodesGreaterThan#frame(EmptyFrame, res, i_1) }
      allNodesGreaterThan(PostHeap, t_2, i_1) && i_1 < v_2 ==> allNodesGreaterThan(PostHeap, res, i_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { allNodesLessThan(t, i) } { allNodesLessThan(res, i) } allNodesLessThan(t, i) && v < i ==> allNodesLessThan(res, i))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (allNodesLessThan(PostHeap, t_2, i_2) && v_2 < i_2) {
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_3: int ::
      { allNodesLessThan#frame(EmptyFrame, t_2, i_3) } { allNodesLessThan#frame(EmptyFrame, res, i_3) }
      allNodesLessThan(PostHeap, t_2, i_3) && v_2 < i_3 ==> allNodesLessThan(PostHeap, res, i_3)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of isBST(t)
      if (*) {
        // Stop execution
        assume false;
      }
    if (isBST(PostHeap, t_2)) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of isBST(res)
        if (*) {
          // Stop execution
          assume false;
        }
      assume isBST(PostHeap, res);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (Tree_tag(t) == 0) -- example_1.vpr@37.5--53.6
    if ((Tree_tag(t_2): int) == 0) {
      
      // -- Translating statement: res := Node(v, Leaf(), Leaf()) -- example_1.vpr@38.9--38.38
        res := (Node_1(v_2, (Leaf(): TreeDomainType), (Leaf(): TreeDomainType)): TreeDomainType);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (v == get_Tree_v(t)) -- example_1.vpr@40.9--52.10
        if (v_2 == (get_Tree_v(t_2): int)) {
          
          // -- Translating statement: res := t -- example_1.vpr@43.13--43.20
            res := t_2;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (v < get_Tree_v(t)) -- example_1.vpr@45.9--52.10
            if (v_2 < (get_Tree_v(t_2): int)) {
              
              // -- Translating statement: new_leftsubtree := insertValue(v, get_Tree_left(t)) -- example_1.vpr@47.13--47.54
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_t := (get_Tree_left(t_2): TreeDomainType);
                
                // -- Havocing target variables
                  havoc new_leftsubtree;
                
                // -- Inhaling postcondition
                  assume state(Heap, Mask);
                  assume (forall i_8_2: int ::
                    { allNodesGreaterThan#frame(EmptyFrame, arg_t, i_8_2) } { allNodesGreaterThan#frame(EmptyFrame, new_leftsubtree, i_8_2) }
                    allNodesGreaterThan(Heap, arg_t, i_8_2) && i_8_2 < v_2 ==> allNodesGreaterThan(Heap, new_leftsubtree, i_8_2)
                  );
                  assume state(Heap, Mask);
                  assume (forall i_9_1: int ::
                    { allNodesLessThan#frame(EmptyFrame, arg_t, i_9_1) } { allNodesLessThan#frame(EmptyFrame, new_leftsubtree, i_9_1) }
                    allNodesLessThan(Heap, arg_t, i_9_1) && v_2 < i_9_1 ==> allNodesLessThan(Heap, new_leftsubtree, i_9_1)
                  );
                  if (isBST(Heap, arg_t)) {
                    assume state(Heap, Mask);
                    assume isBST(Heap, new_leftsubtree);
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: res := Node(get_Tree_v(t), new_leftsubtree, get_Tree_right(t)) -- example_1.vpr@48.13--48.55
                res := (Node_1((get_Tree_v(t_2): int), new_leftsubtree, (get_Tree_right(t_2): TreeDomainType)): TreeDomainType);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: new_rightsubtree := insertValue(v, get_Tree_right(t)) -- example_1.vpr@50.13--50.56
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_t_1 := (get_Tree_right(t_2): TreeDomainType);
                
                // -- Havocing target variables
                  havoc new_rightsubtree;
                
                // -- Inhaling postcondition
                  assume state(Heap, Mask);
                  assume (forall i_10_1: int ::
                    { allNodesGreaterThan#frame(EmptyFrame, arg_t_1, i_10_1) } { allNodesGreaterThan#frame(EmptyFrame, new_rightsubtree, i_10_1) }
                    allNodesGreaterThan(Heap, arg_t_1, i_10_1) && i_10_1 < v_2 ==> allNodesGreaterThan(Heap, new_rightsubtree, i_10_1)
                  );
                  assume state(Heap, Mask);
                  assume (forall i_11_1: int ::
                    { allNodesLessThan#frame(EmptyFrame, arg_t_1, i_11_1) } { allNodesLessThan#frame(EmptyFrame, new_rightsubtree, i_11_1) }
                    allNodesLessThan(Heap, arg_t_1, i_11_1) && v_2 < i_11_1 ==> allNodesLessThan(Heap, new_rightsubtree, i_11_1)
                  );
                  if (isBST(Heap, arg_t_1)) {
                    assume state(Heap, Mask);
                    assume isBST(Heap, new_rightsubtree);
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: res := Node(get_Tree_v(t), get_Tree_left(t), new_rightsubtree) -- example_1.vpr@51.13--51.55
                res := (Node_1((get_Tree_v(t_2): int), (get_Tree_left(t_2): TreeDomainType), new_rightsubtree): TreeDomainType);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (*) {
      if (allNodesGreaterThan(Heap, t_2, i_4_1) && i_4_1 < v_2) {
        assert {:msg "  Postcondition of insertValue might not hold. Assertion allNodesGreaterThan(res, i) might not hold. (example_1.vpr@30.13--30.94) [223008]"}
          allNodesGreaterThan(Heap, res, i_4_1);
      }
      assume false;
    }
    assume (forall i_5_1_1: int ::
      { allNodesGreaterThan#frame(EmptyFrame, t_2, i_5_1_1) } { allNodesGreaterThan#frame(EmptyFrame, res, i_5_1_1) }
      allNodesGreaterThan(Heap, t_2, i_5_1_1) && i_5_1_1 < v_2 ==> allNodesGreaterThan(Heap, res, i_5_1_1)
    );
    if (*) {
      if (allNodesLessThan(Heap, t_2, i_6_1) && v_2 < i_6_1) {
        assert {:msg "  Postcondition of insertValue might not hold. Assertion allNodesLessThan(res, i) might not hold. (example_1.vpr@31.13--31.89) [223009]"}
          allNodesLessThan(Heap, res, i_6_1);
      }
      assume false;
    }
    assume (forall i_7_1_1: int ::
      { allNodesLessThan#frame(EmptyFrame, t_2, i_7_1_1) } { allNodesLessThan#frame(EmptyFrame, res, i_7_1_1) }
      allNodesLessThan(Heap, t_2, i_7_1_1) && v_2 < i_7_1_1 ==> allNodesLessThan(Heap, res, i_7_1_1)
    );
    if (isBST(Heap, t_2)) {
      assert {:msg "  Postcondition of insertValue might not hold. Assertion isBST(res) might not hold. (example_1.vpr@32.13--32.36) [223010]"}
        isBST(Heap, res);
    }
}