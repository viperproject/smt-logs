// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:35:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0207.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0207-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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
// Translation of domain Foo
// ==================================================

// The type for domain Foo
type FooDomainType;

// Translation of domain function foo
function  foo(): FooDomainType;

// Translation of domain function bar
function  bar_3(f_198: FooDomainType): FooDomainType;

// ==================================================
// Translation of domain BST
// ==================================================

// The type for domain BST
type BSTDomainType;

// Translation of domain function value
function  value_2(t_9: BSTDomainType): int;

// Translation of domain function left
function  left_2(t_9: BSTDomainType): BSTDomainType;

// Translation of domain function right
function  right_2(t_9: BSTDomainType): BSTDomainType;

// Translation of domain function nullNode
function  nullNode(): BSTDomainType;

// Translation of domain function isParent
function  isParent(p_16: BSTDomainType, c_11: BSTDomainType): bool;

// Translation of domain axiom left_smaller
axiom (forall t_2: BSTDomainType ::
  { (value_2(t_2): int), (value_2((left_2(t_2): BSTDomainType)): int) }
  !((left_2(t_2): BSTDomainType) == (nullNode(): BSTDomainType)) ==> (value_2(t_2): int) > (value_2((left_2(t_2): BSTDomainType)): int)
);

// Translation of domain axiom left_sub_tree_smaller
axiom (forall t_2: BSTDomainType, c: BSTDomainType ::
  { (value_2(t_2): int), (value_2(c): int) } { (isParent((left_2(t_2): BSTDomainType), c): bool) }
  !(t_2 == (nullNode(): BSTDomainType)) && (!(c == (nullNode(): BSTDomainType)) && (isParent((left_2(t_2): BSTDomainType), c): bool)) ==> (value_2(c): int) < (value_2(t_2): int)
);

// Translation of domain axiom right_sub_tree_larger
axiom (forall t_2: BSTDomainType, c: BSTDomainType ::
  { (value_2(t_2): int), (value_2(c): int) }
  !(t_2 == (nullNode(): BSTDomainType)) && (!(c == (nullNode(): BSTDomainType)) && (isParent((right_2(t_2): BSTDomainType), c): bool)) ==> (value_2(c): int) > (value_2(t_2): int)
);

// Translation of domain axiom isParent_reflexive
axiom (forall t_2: BSTDomainType ::
  { (isParent(t_2, t_2): bool) }
  (isParent(t_2, t_2): bool)
);

// Translation of domain axiom isParent_base
axiom (forall t_2: BSTDomainType ::
  { (isParent(t_2, (left_2(t_2): BSTDomainType)): bool) } { (isParent(t_2, (right_2(t_2): BSTDomainType)): bool) }
  (isParent(t_2, (left_2(t_2): BSTDomainType)): bool) && (isParent(t_2, (right_2(t_2): BSTDomainType)): bool)
);

// Translation of domain axiom isParent_recursive
axiom (forall p_1: BSTDomainType, c: BSTDomainType ::
  { (isParent(p_1, (left_2(c): BSTDomainType)): bool) } { (isParent(p_1, (right_2(c): BSTDomainType)): bool) }
  (isParent(p_1, c): bool) ==> (isParent(p_1, (left_2(c): BSTDomainType)): bool) && (isParent(p_1, (right_2(c): BSTDomainType)): bool)
);

// Translation of domain axiom isParent_left
axiom (forall p_1: BSTDomainType, c: BSTDomainType ::
  { (isParent((left_2(p_1): BSTDomainType), c): bool) }
  !(p_1 == (nullNode(): BSTDomainType)) && ((isParent(p_1, c): bool) && (value_2(p_1): int) > (value_2(c): int)) ==> !((left_2(p_1): BSTDomainType) == (nullNode(): BSTDomainType)) && (isParent((left_2(p_1): BSTDomainType), c): bool)
);

// ==================================================
// Translation of method test
// ==================================================

procedure test(f_69: FooDomainType) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume (bar_3(f_69): FooDomainType) == (foo(): FooDomainType);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method getMin
// ==================================================

procedure getMin(t_2: BSTDomainType) returns (vmin: int)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var currentNode: BSTDomainType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var pc: BSTDomainType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var pc_5: BSTDomainType;
  var t1_4_1: BSTDomainType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume !(t_2 == (nullNode(): BSTDomainType));
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall t1: BST :: { isParent(t1, t) } t1 == t || !isParent(t1, t))
      if (*) {
        assume false;
      }
    assume (forall t1_1_1: BSTDomainType ::
      { (isParent(t1_1_1, t_2): bool) }
      t1_1_1 == t_2 || !(isParent(t1_1_1, t_2): bool)
    );
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
    
    // -- Check definedness of (forall t1: BST :: { value(t1) } !(t1 == nullNode()) && isParent(t, t1) ==> value(t1) >= min)
      if (*) {
        assume false;
      }
    assume (forall t1_3_1: BSTDomainType ::
      { (value_2(t1_3_1): int) }
      !(t1_3_1 == (nullNode(): BSTDomainType)) && (isParent(t_2, t1_3_1): bool) ==> (value_2(t1_3_1): int) >= vmin
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- 0207.vpr@67.10--67.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: currentNode := t -- 0207.vpr@69.3--69.28
    currentNode := t_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (!(left(currentNode) == nullNode())) -- 0207.vpr@70.3--79.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant isParent(t, currentNode) might not hold on entry. Assertion isParent(t, currentNode) might not hold. (0207.vpr@71.15--71.39) [220956]"}
          (isParent(t_2, currentNode): bool);
        assert {:msg "  Loop invariant !(currentNode == nullNode()) might not hold on entry. Assertion !(currentNode == nullNode()) might not hold. (0207.vpr@72.15--72.35) [220957]"}
          !(currentNode == (nullNode(): BSTDomainType));
        assert {:msg "  Loop invariant t == currentNode || value(currentNode) < value(t) might not hold on entry. Assertion t == currentNode || value(currentNode) < value(t) might not hold. (0207.vpr@73.15--73.64) [220958]"}
          t_2 == currentNode || (value_2(currentNode): int) < (value_2(t_2): int);
        if (t_2 != currentNode && !((left_2(t_2): BSTDomainType) == (nullNode(): BSTDomainType))) {
          assert {:msg "  Loop invariant t != currentNode && !(left(t) == nullNode()) ==> isParent(left(t), currentNode) might not hold on entry. Assertion isParent(left(t), currentNode) might not hold. (0207.vpr@74.15--74.86) [220959]"}
            (isParent((left_2(t_2): BSTDomainType), currentNode): bool);
        }
        if (*) {
          if (!(pc == (nullNode(): BSTDomainType)) && (isParent(pc, currentNode): bool)) {
            assert {:msg "  Loop invariant (forall pc: BST :: { value(pc) } !(pc == nullNode()) && isParent(pc, currentNode) ==> value(pc) >= value(currentNode)) might not hold on entry. Assertion value(pc) >= value(currentNode) might not hold. (0207.vpr@75.15--76.83) [220960]"}
              (value_2(pc): int) >= (value_2(currentNode): int);
          }
          assume false;
        }
        assume (forall pc_1_1: BSTDomainType ::
          { (value_2(pc_1_1): int) }
          !(pc_1_1 == (nullNode(): BSTDomainType)) && (isParent(pc_1_1, currentNode): bool) ==> (value_2(pc_1_1): int) >= (value_2(currentNode): int)
        );
    
    // -- Havoc loop written variables (except locals)
      havoc currentNode;
    
    // -- Check definedness of invariant
      if (*) {
        assume (isParent(t_2, currentNode): bool);
        assume state(Heap, Mask);
        assume !(currentNode == (nullNode(): BSTDomainType));
        assume state(Heap, Mask);
        assume t_2 == currentNode || (value_2(currentNode): int) < (value_2(t_2): int);
        assume state(Heap, Mask);
        if (t_2 != currentNode && !((left_2(t_2): BSTDomainType) == (nullNode(): BSTDomainType))) {
          assume (isParent((left_2(t_2): BSTDomainType), currentNode): bool);
        }
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall pc: BST :: { value(pc) } !(pc == nullNode()) && isParent(pc, currentNode) ==> value(pc) >= value(currentNode))
          if (*) {
            assume false;
          }
        assume (forall pc_3: BSTDomainType ::
          { (value_2(pc_3): int) }
          !(pc_3 == (nullNode(): BSTDomainType)) && (isParent(pc_3, currentNode): bool) ==> (value_2(pc_3): int) >= (value_2(currentNode): int)
        );
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume (isParent(t_2, currentNode): bool);
        assume !(currentNode == (nullNode(): BSTDomainType));
        assume t_2 == currentNode || (value_2(currentNode): int) < (value_2(t_2): int);
        if (t_2 != currentNode && !((left_2(t_2): BSTDomainType) == (nullNode(): BSTDomainType))) {
          assume (isParent((left_2(t_2): BSTDomainType), currentNode): bool);
        }
        assume (forall pc_4: BSTDomainType ::
          { (value_2(pc_4): int) }
          !(pc_4 == (nullNode(): BSTDomainType)) && (isParent(pc_4, currentNode): bool) ==> (value_2(pc_4): int) >= (value_2(currentNode): int)
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume !((left_2(currentNode): BSTDomainType) == (nullNode(): BSTDomainType));
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: currentNode := left(currentNode) -- 0207.vpr@78.5--78.37
            currentNode := (left_2(currentNode): BSTDomainType);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant isParent(t, currentNode) might not be preserved. Assertion isParent(t, currentNode) might not hold. (0207.vpr@71.15--71.39) [220961]"}
          (isParent(t_2, currentNode): bool);
        assert {:msg "  Loop invariant !(currentNode == nullNode()) might not be preserved. Assertion !(currentNode == nullNode()) might not hold. (0207.vpr@72.15--72.35) [220962]"}
          !(currentNode == (nullNode(): BSTDomainType));
        assert {:msg "  Loop invariant t == currentNode || value(currentNode) < value(t) might not be preserved. Assertion t == currentNode || value(currentNode) < value(t) might not hold. (0207.vpr@73.15--73.64) [220963]"}
          t_2 == currentNode || (value_2(currentNode): int) < (value_2(t_2): int);
        if (t_2 != currentNode && !((left_2(t_2): BSTDomainType) == (nullNode(): BSTDomainType))) {
          assert {:msg "  Loop invariant t != currentNode && !(left(t) == nullNode()) ==> isParent(left(t), currentNode) might not be preserved. Assertion isParent(left(t), currentNode) might not hold. (0207.vpr@74.15--74.86) [220964]"}
            (isParent((left_2(t_2): BSTDomainType), currentNode): bool);
        }
        if (*) {
          if (!(pc_5 == (nullNode(): BSTDomainType)) && (isParent(pc_5, currentNode): bool)) {
            assert {:msg "  Loop invariant (forall pc: BST :: { value(pc) } !(pc == nullNode()) && isParent(pc, currentNode) ==> value(pc) >= value(currentNode)) might not be preserved. Assertion value(pc) >= value(currentNode) might not hold. (0207.vpr@75.15--76.83) [220965]"}
              (value_2(pc_5): int) >= (value_2(currentNode): int);
          }
          assume false;
        }
        assume (forall pc_6_1: BSTDomainType ::
          { (value_2(pc_6_1): int) }
          !(pc_6_1 == (nullNode(): BSTDomainType)) && (isParent(pc_6_1, currentNode): bool) ==> (value_2(pc_6_1): int) >= (value_2(currentNode): int)
        );
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume (left_2(currentNode): BSTDomainType) == (nullNode(): BSTDomainType);
      assume state(Heap, Mask);
      assume (isParent(t_2, currentNode): bool);
      assume !(currentNode == (nullNode(): BSTDomainType));
      assume t_2 == currentNode || (value_2(currentNode): int) < (value_2(t_2): int);
      if (t_2 != currentNode && !((left_2(t_2): BSTDomainType) == (nullNode(): BSTDomainType))) {
        assume (isParent((left_2(t_2): BSTDomainType), currentNode): bool);
      }
      assume (forall pc_7: BSTDomainType ::
        { (value_2(pc_7): int) }
        !(pc_7 == (nullNode(): BSTDomainType)) && (isParent(pc_7, currentNode): bool) ==> (value_2(pc_7): int) >= (value_2(currentNode): int)
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: min := value(currentNode) -- 0207.vpr@80.3--80.28
    vmin := (value_2(currentNode): int);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (*) {
      if (!(t1_4_1 == (nullNode(): BSTDomainType)) && (isParent(t_2, t1_4_1): bool)) {
        assert {:msg "  Postcondition of getMin might not hold. Assertion value(t1) >= min might not hold. (0207.vpr@64.11--65.56) [220966]"}
          (value_2(t1_4_1): int) >= vmin;
      }
      assume false;
    }
    assume (forall t1_5_1: BSTDomainType ::
      { (value_2(t1_5_1): int) }
      !(t1_5_1 == (nullNode(): BSTDomainType)) && (isParent(t_2, t1_5_1): bool) ==> (value_2(t1_5_1): int) >= vmin
    );
}