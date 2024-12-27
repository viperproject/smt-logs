// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:47:11
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/discriminators_1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/adt/discriminators_1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType T;

// Translation of domain function Nil
function  Nil<T>(): ListDomainType T;

// Translation of domain function Cons
function  Cons<T>(value_2: T, tail: (ListDomainType T)): ListDomainType T;

// Translation of domain function get_List_value
function  get_List_value<T>(t_9: (ListDomainType T)): T;

// Translation of domain function get_List_tail
function  get_List_tail<T>(t_9: (ListDomainType T)): ListDomainType T;

// Translation of domain function List_tag
function  List_tag<T>(t_9: (ListDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  value_1 == (get_List_value((Cons(value_1, tail_1): ListDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  tail_1 == (get_List_tail((Cons(value_1, tail_1): ListDomainType T)): ListDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (List_tag((Nil(): ListDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, tail_1: (ListDomainType T) ::
  { (Cons(value_1, tail_1): ListDomainType T) }
  (List_tag((Cons(value_1, tail_1): ListDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (ListDomainType T) ::
  { (List_tag(t_2): int) } { (get_List_value(t_2): T) } { (get_List_tail(t_2): ListDomainType T) }
  t_2 == (Nil(): ListDomainType T) || t_2 == (Cons((get_List_value(t_2): T), (get_List_tail(t_2): ListDomainType T)): ListDomainType T)
);

// ==================================================
// Translation of domain Tree
// ==================================================

// The type for domain Tree
type TreeDomainType T;

// Translation of domain function Leaf
function  Leaf<T>(): TreeDomainType T;

// Translation of domain function Node
function  Node_1<T>(value_2: T, left_2: (TreeDomainType T), right_2: (TreeDomainType T)): TreeDomainType T;

// Translation of domain function get_Tree_value
function  get_Tree_value<T>(t_9: (TreeDomainType T)): T;

// Translation of domain function get_Tree_left
function  get_Tree_left<T>(t_9: (TreeDomainType T)): TreeDomainType T;

// Translation of domain function get_Tree_right
function  get_Tree_right<T>(t_9: (TreeDomainType T)): TreeDomainType T;

// Translation of domain function Tree_tag
function  Tree_tag<T>(t_9: (TreeDomainType T)): int;

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  value_1 == (get_Tree_value((Node_1(value_1, left_1, right): TreeDomainType T)): T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  left_1 == (get_Tree_left((Node_1(value_1, left_1, right): TreeDomainType T)): TreeDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  right == (get_Tree_right((Node_1(value_1, left_1, right): TreeDomainType T)): TreeDomainType T)
);

// Translation of anonymous domain axiom
axiom (forall <T>  ::
  
  (Tree_tag((Leaf(): TreeDomainType T)): int) == 0
);

// Translation of anonymous domain axiom
axiom (forall <T> value_1: T, left_1: (TreeDomainType T), right: (TreeDomainType T) ::
  { (Node_1(value_1, left_1, right): TreeDomainType T) }
  (Tree_tag((Node_1(value_1, left_1, right): TreeDomainType T)): int) == 1
);

// Translation of anonymous domain axiom
axiom (forall <T> t_2: (TreeDomainType T) ::
  { (Tree_tag(t_2): int) } { (get_Tree_value(t_2): T) } { (get_Tree_left(t_2): TreeDomainType T) } { (get_Tree_right(t_2): TreeDomainType T) }
  t_2 == (Leaf(): TreeDomainType T) || t_2 == (Node_1((get_Tree_value(t_2): T), (get_Tree_left(t_2): TreeDomainType T), (get_Tree_right(t_2): TreeDomainType T)): TreeDomainType T)
);

// ==================================================
// Translation of method discriminators_1a
// ==================================================

procedure discriminators_1a() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var list_2: (ListDomainType int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: list := (Cons(1, (Nil(): List[Int])): List[Int]) -- discriminators_1.vpr@16.5--16.27
    list_2 := (Cons(1, (Nil(): ListDomainType int)): ListDomainType int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (List_tag(list): Int) == 0 -- discriminators_1.vpr@18.5--18.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (List_tag(list): Int) == 0 might not hold. (discriminators_1.vpr@18.12--18.23) [222576]"}
      (List_tag(list_2): int) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (List_tag((get_List_tail(list): List[Int])): Int) == 1 -- discriminators_1.vpr@19.5--19.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (List_tag((get_List_tail(list): List[Int])): Int) == 1 might not hold. (discriminators_1.vpr@19.12--19.27) [222577]"}
      (List_tag((get_List_tail(list_2): ListDomainType int)): int) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((List_tag((get_List_tail(list): List[Int])): Int) == 0) -- discriminators_1.vpr@20.5--20.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((List_tag((get_List_tail(list): List[Int])): Int) == 0) might not hold. (discriminators_1.vpr@20.12--20.29) [222578]"}
      !((List_tag((get_List_tail(list_2): ListDomainType int)): int) == 0);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method discriminators_1b
// ==================================================

procedure discriminators_1b() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tree_1: (TreeDomainType int);
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tree := (Node(42, (Node(42, (Leaf(): Tree[Int]), (Leaf(): Tree[Int])): Tree[Int]),
  //   (Node(42, (Leaf(): Tree[Int]), (Leaf(): Tree[Int])): Tree[Int])): Tree[Int]) -- discriminators_1.vpr@27.5--27.73
    tree_1 := (Node_1(42, (Node_1(42, (Leaf(): TreeDomainType int), (Leaf(): TreeDomainType int)): TreeDomainType int), (Node_1(42, (Leaf(): TreeDomainType int), (Leaf(): TreeDomainType int)): TreeDomainType int)): TreeDomainType int);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((Tree_tag(tree): Int) == 0) -- discriminators_1.vpr@29.5--29.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((Tree_tag(tree): Int) == 0) might not hold. (discriminators_1.vpr@29.12--29.24) [222579]"}
      !((Tree_tag(tree_1): int) == 0);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Tree_tag((get_Tree_left((get_Tree_left(tree): Tree[Int])): Tree[Int])): Int) ==
  //   0 -- discriminators_1.vpr@30.5--30.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Tree_tag((get_Tree_left((get_Tree_left(tree): Tree[Int])): Tree[Int])): Int) == 0 might not hold. (discriminators_1.vpr@30.12--30.33) [222580]"}
      (Tree_tag((get_Tree_left((get_Tree_left(tree_1): TreeDomainType int)): TreeDomainType int)): int) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Tree_tag((get_Tree_right((get_Tree_left(tree): Tree[Int])): Tree[Int])): Int) ==
  //   0 -- discriminators_1.vpr@31.5--31.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Tree_tag((get_Tree_right((get_Tree_left(tree): Tree[Int])): Tree[Int])): Int) == 0 might not hold. (discriminators_1.vpr@31.12--31.34) [222581]"}
      (Tree_tag((get_Tree_right((get_Tree_left(tree_1): TreeDomainType int)): TreeDomainType int)): int) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (Tree_tag((get_Tree_left(tree): Tree[Int])): Int) == 1 -- discriminators_1.vpr@32.5--32.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion (Tree_tag((get_Tree_left(tree): Tree[Int])): Int) == 1 might not hold. (discriminators_1.vpr@32.12--32.28) [222582]"}
      (Tree_tag((get_Tree_left(tree_1): TreeDomainType int)): int) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !((Tree_tag((get_Tree_right(tree): Tree[Int])): Int) == 0) -- discriminators_1.vpr@33.5--33.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion !((Tree_tag((get_Tree_right(tree): Tree[Int])): Int) == 0) might not hold. (discriminators_1.vpr@33.12--33.30) [222583]"}
      !((Tree_tag((get_Tree_right(tree_1): TreeDomainType int)): int) == 0);
    assume state(Heap, Mask);
}