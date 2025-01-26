// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:43:20
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/AVLTree.iterative.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/AVLTree.iterative-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_120: Ref, f_135: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_120, f_135] }
  Heap[o_120, $allocated] ==> Heap[Heap[o_120, f_135], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_121: Ref, f_136: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_121, f_136] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_121, f_136) ==> Heap[o_121, f_136] == ExhaleHeap[o_121, f_136]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_46), ExhaleHeap[null, PredicateMaskField(pm_f_46)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsPredicateField(pm_f_46) ==> Heap[null, PredicateMaskField(pm_f_46)] == ExhaleHeap[null, PredicateMaskField(pm_f_46)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_46) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsPredicateField(pm_f_46) ==> (forall <A, B> o2_46: Ref, f_136: (Field A B) ::
    { ExhaleHeap[o2_46, f_136] }
    Heap[null, PredicateMaskField(pm_f_46)][o2_46, f_136] ==> Heap[o2_46, f_136] == ExhaleHeap[o2_46, f_136]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_46), ExhaleHeap[null, WandMaskField(pm_f_46)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsWandField(pm_f_46) ==> Heap[null, WandMaskField(pm_f_46)] == ExhaleHeap[null, WandMaskField(pm_f_46)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_46: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_46) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_46) && IsWandField(pm_f_46) ==> (forall <A, B> o2_46: Ref, f_136: (Field A B) ::
    { ExhaleHeap[o2_46, f_136] }
    Heap[null, WandMaskField(pm_f_46)][o2_46, f_136] ==> Heap[o2_46, f_136] == ExhaleHeap[o2_46, f_136]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_121: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_121, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_121, $allocated] ==> ExhaleHeap[o_121, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_120: Ref, f_137: (Field A B), v: B ::
  { Heap[o_120, f_137:=v] }
  succHeap(Heap, Heap[o_120, f_137:=v])
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

const unique root1: Field NormalField Ref;
axiom !IsPredicateField(root1);
axiom !IsWandField(root1);
const unique key_6: Field NormalField int;
axiom !IsPredicateField(key_6);
axiom !IsWandField(key_6);
const unique left_2: Field NormalField Ref;
axiom !IsPredicateField(left_2);
axiom !IsWandField(left_2);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);
const unique parent: Field NormalField Ref;
axiom !IsPredicateField(parent);
axiom !IsWandField(parent);
const unique leftDown: Field NormalField bool;
axiom !IsPredicateField(leftDown);
axiom !IsWandField(leftDown);
const unique root_1: Field NormalField Ref;
axiom !IsPredicateField(root_1);
axiom !IsWandField(root_1);

// ==================================================
// Translation of predicate valid1
// ==================================================

type PredicateType_valid1;
function  valid1(this: Ref): Field PredicateType_valid1 FrameType;
function  valid1#sm(this: Ref): Field PredicateType_valid1 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(valid1(this)) }
  PredicateMaskField(valid1(this)) == valid1#sm(this)
);
axiom (forall this: Ref ::
  { valid1(this) }
  IsPredicateField(valid1(this))
);
axiom (forall this: Ref ::
  { valid1(this) }
  getPredWandId(valid1(this)) == 0
);
function  valid1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { valid1(this), valid1(this2) }
  valid1(this) == valid1(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { valid1#sm(this), valid1#sm(this2) }
  valid1#sm(this) == valid1#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { valid1#trigger(Heap, valid1(this)) }
  valid1#everUsed(valid1(this))
);

procedure valid1#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, root1:=Mask[this, root1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.root1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92422]"}
        HasDirectPerm(Mask, this, root1);
    if (Heap[this, root1] != null) {
      
      // -- Check definedness of acc(valid(this.root1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92423]"}
          HasDirectPerm(Mask, this, root1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, root1]):=Mask[null, valid(Heap[this, root1])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.root1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92424]"}
        HasDirectPerm(Mask, this, root1);
    if (Heap[this, root1] != null) {
      
      // -- Check definedness of acc(this.root1.parent, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92425]"}
          HasDirectPerm(Mask, this, root1);
      perm := FullPerm;
      assume Heap[this, root1] != null;
      Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.root1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92426]"}
        HasDirectPerm(Mask, this, root1);
    if (Heap[this, root1] != null) {
      
      // -- Check definedness of this.root1.parent == null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92427]"}
          HasDirectPerm(Mask, this, root1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@6.2--13.3) [92428]"}
          HasDirectPerm(Mask, Heap[this, root1], parent);
      assume Heap[Heap[this, root1], parent] == null;
    }
    
    // -- Check definedness of this.root1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92429]"}
        HasDirectPerm(Mask, this, root1);
    if (Heap[this, root1] != null) {
      
      // -- Check definedness of acc(this.root1.root, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92430]"}
          HasDirectPerm(Mask, this, root1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@6.2--13.3) [92431]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root1] != null;
      Mask := Mask[Heap[this, root1], root_1:=Mask[Heap[this, root1], root_1] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.root1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92432]"}
        HasDirectPerm(Mask, this, root1);
    if (Heap[this, root1] != null) {
      
      // -- Check definedness of this.root1.root == this.root1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92433]"}
          HasDirectPerm(Mask, this, root1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1.root (AVLTree.iterative.vpr@6.2--13.3) [92434]"}
          HasDirectPerm(Mask, Heap[this, root1], root_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@6.2--13.3) [92435]"}
          HasDirectPerm(Mask, this, root1);
      assume Heap[Heap[this, root1], root_1] == Heap[this, root1];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(this: Ref): Field PredicateType_valid FrameType;
function  valid#sm(this: Ref): Field PredicateType_valid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(valid(this)) }
  PredicateMaskField(valid(this)) == valid#sm(this)
);
axiom (forall this: Ref ::
  { valid(this) }
  IsPredicateField(valid(this))
);
axiom (forall this: Ref ::
  { valid(this) }
  getPredWandId(valid(this)) == 1
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { valid(this), valid(this2) }
  valid(this) == valid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { valid#sm(this), valid#sm(this2) }
  valid#sm(this) == valid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { valid#trigger(Heap, valid(this)) }
  valid#everUsed(valid(this))
);

procedure valid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    Mask := Mask[null, validRest(this):=Mask[null, validRest(this)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, leftValid(this):=Mask[null, leftValid(this)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, rightValid(this):=Mask[null, rightValid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate validRest
// ==================================================

type PredicateType_validRest;
function  validRest(this: Ref): Field PredicateType_validRest FrameType;
function  validRest#sm(this: Ref): Field PredicateType_validRest PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(validRest(this)) }
  PredicateMaskField(validRest(this)) == validRest#sm(this)
);
axiom (forall this: Ref ::
  { validRest(this) }
  IsPredicateField(validRest(this))
);
axiom (forall this: Ref ::
  { validRest(this) }
  getPredWandId(validRest(this)) == 2
);
function  validRest#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  validRest#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { validRest(this), validRest(this2) }
  validRest(this) == validRest(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { validRest#sm(this), validRest#sm(this2) }
  validRest#sm(this) == validRest#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { validRest#trigger(Heap, validRest(this)) }
  validRest#everUsed(validRest(this))
);

procedure validRest#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of validRest
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, key_6:=Mask[this, key_6] + perm];
    assume state(Heap, Mask);
    perm := 3 / 10;
    assert {:msg "  Predicate might not be well-formed. Fraction 3 / 10 might be negative. (AVLTree.iterative.vpr@149.2--156.3) [92436]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    perm := 3 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@149.2--156.3) [92437]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    perm := 3 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@149.2--156.3) [92438]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, leftDown:=Mask[this, leftDown] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != this.left || this.right == null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@149.2--156.3) [92439]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@149.2--156.3) [92440]"}
        HasDirectPerm(Mask, this, left_2);
      if (!(Heap[this, right_1] != Heap[this, left_2])) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@149.2--156.3) [92441]"}
          HasDirectPerm(Mask, this, right_1);
      }
    assume Heap[this, right_1] != Heap[this, left_2] || Heap[this, right_1] == null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate rightValid
// ==================================================

type PredicateType_rightValid;
function  rightValid(this: Ref): Field PredicateType_rightValid FrameType;
function  rightValid#sm(this: Ref): Field PredicateType_rightValid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(rightValid(this)) }
  PredicateMaskField(rightValid(this)) == rightValid#sm(this)
);
axiom (forall this: Ref ::
  { rightValid(this) }
  IsPredicateField(rightValid(this))
);
axiom (forall this: Ref ::
  { rightValid(this) }
  getPredWandId(rightValid(this)) == 3
);
function  rightValid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  rightValid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { rightValid(this), rightValid(this2) }
  rightValid(this) == rightValid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { rightValid#sm(this), rightValid#sm(this2) }
  rightValid#sm(this) == rightValid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { rightValid#trigger(Heap, rightValid(this)) }
  rightValid#everUsed(rightValid(this))
);

procedure rightValid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of rightValid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@158.2--166.3) [92442]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@158.2--166.3) [92443]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92444]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92445]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92446]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.parent, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92447]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      assume Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], parent:=Mask[Heap[this, right_1], parent] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92448]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of this.right.parent == this
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92449]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.parent (AVLTree.iterative.vpr@158.2--166.3) [92450]"}
          HasDirectPerm(Mask, Heap[this, right_1], parent);
      assume Heap[Heap[this, right_1], parent] == this;
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92451]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.root, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92452]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@158.2--166.3) [92453]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], root_1:=Mask[Heap[this, right_1], root_1] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92454]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of this.right.root == this.root
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@158.2--166.3) [92455]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.root (AVLTree.iterative.vpr@158.2--166.3) [92456]"}
          HasDirectPerm(Mask, Heap[this, right_1], root_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (AVLTree.iterative.vpr@158.2--166.3) [92457]"}
          HasDirectPerm(Mask, this, root_1);
      assume Heap[Heap[this, right_1], root_1] == Heap[this, root_1];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate leftValid
// ==================================================

type PredicateType_leftValid;
function  leftValid(this: Ref): Field PredicateType_leftValid FrameType;
function  leftValid#sm(this: Ref): Field PredicateType_leftValid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(leftValid(this)) }
  PredicateMaskField(leftValid(this)) == leftValid#sm(this)
);
axiom (forall this: Ref ::
  { leftValid(this) }
  IsPredicateField(leftValid(this))
);
axiom (forall this: Ref ::
  { leftValid(this) }
  getPredWandId(leftValid(this)) == 4
);
function  leftValid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  leftValid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { leftValid(this), leftValid(this2) }
  leftValid(this) == leftValid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { leftValid#sm(this), leftValid#sm(this2) }
  leftValid#sm(this) == leftValid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { leftValid#trigger(Heap, leftValid(this)) }
  leftValid#everUsed(leftValid(this))
);

procedure leftValid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of leftValid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@167.2--175.3) [92458]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@167.2--175.3) [92459]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92460]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92461]"}
          HasDirectPerm(Mask, this, left_2);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92462]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.parent, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92463]"}
          HasDirectPerm(Mask, this, left_2);
      perm := FullPerm;
      assume Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], parent:=Mask[Heap[this, left_2], parent] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92464]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of this.left.parent == this
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92465]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.parent (AVLTree.iterative.vpr@167.2--175.3) [92466]"}
          HasDirectPerm(Mask, Heap[this, left_2], parent);
      assume Heap[Heap[this, left_2], parent] == this;
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92467]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.root, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92468]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@167.2--175.3) [92469]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], root_1:=Mask[Heap[this, left_2], root_1] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92470]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of this.left.root == this.root
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@167.2--175.3) [92471]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.root (AVLTree.iterative.vpr@167.2--175.3) [92472]"}
          HasDirectPerm(Mask, Heap[this, left_2], root_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (AVLTree.iterative.vpr@167.2--175.3) [92473]"}
          HasDirectPerm(Mask, this, root_1);
      assume Heap[Heap[this, left_2], root_1] == Heap[this, root_1];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate leftOpen
// ==================================================

type PredicateType_leftOpen;
function  leftOpen(this: Ref): Field PredicateType_leftOpen FrameType;
function  leftOpen#sm(this: Ref): Field PredicateType_leftOpen PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(leftOpen(this)) }
  PredicateMaskField(leftOpen(this)) == leftOpen#sm(this)
);
axiom (forall this: Ref ::
  { leftOpen(this) }
  IsPredicateField(leftOpen(this))
);
axiom (forall this: Ref ::
  { leftOpen(this) }
  getPredWandId(leftOpen(this)) == 5
);
function  leftOpen#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  leftOpen#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { leftOpen(this), leftOpen(this2) }
  leftOpen(this) == leftOpen(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { leftOpen#sm(this), leftOpen#sm(this2) }
  leftOpen#sm(this) == leftOpen#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { leftOpen#trigger(Heap, leftOpen(this)) }
  leftOpen#everUsed(leftOpen(this))
);

procedure leftOpen#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of leftOpen
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@177.2--182.3) [92474]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@177.2--182.3) [92475]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@177.2--182.3) [92476]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.parent, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@177.2--182.3) [92477]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@177.2--182.3) [92478]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], parent:=Mask[Heap[this, left_2], parent] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@177.2--182.3) [92479]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of this.left.parent == this
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@177.2--182.3) [92480]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.parent (AVLTree.iterative.vpr@177.2--182.3) [92481]"}
          HasDirectPerm(Mask, Heap[this, left_2], parent);
      assume Heap[Heap[this, left_2], parent] == this;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate rightOpen
// ==================================================

type PredicateType_rightOpen;
function  rightOpen(this: Ref): Field PredicateType_rightOpen FrameType;
function  rightOpen#sm(this: Ref): Field PredicateType_rightOpen PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(rightOpen(this)) }
  PredicateMaskField(rightOpen(this)) == rightOpen#sm(this)
);
axiom (forall this: Ref ::
  { rightOpen(this) }
  IsPredicateField(rightOpen(this))
);
axiom (forall this: Ref ::
  { rightOpen(this) }
  getPredWandId(rightOpen(this)) == 6
);
function  rightOpen#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  rightOpen#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { rightOpen(this), rightOpen(this2) }
  rightOpen(this) == rightOpen(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { rightOpen#sm(this), rightOpen#sm(this2) }
  rightOpen#sm(this) == rightOpen#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { rightOpen#trigger(Heap, rightOpen(this)) }
  rightOpen#everUsed(rightOpen(this))
);

procedure rightOpen#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of rightOpen
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@184.2--189.3) [92482]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@184.2--189.3) [92483]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@184.2--189.3) [92484]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.parent, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@184.2--189.3) [92485]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@184.2--189.3) [92486]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], parent:=Mask[Heap[this, right_1], parent] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@184.2--189.3) [92487]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of this.right.parent == this
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@184.2--189.3) [92488]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.parent (AVLTree.iterative.vpr@184.2--189.3) [92489]"}
          HasDirectPerm(Mask, Heap[this, right_1], parent);
      assume Heap[Heap[this, right_1], parent] == this;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate udParentValid
// ==================================================

type PredicateType_udParentValid;
function  udParentValid(this: Ref): Field PredicateType_udParentValid FrameType;
function  udParentValid#sm(this: Ref): Field PredicateType_udParentValid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(udParentValid(this)) }
  PredicateMaskField(udParentValid(this)) == udParentValid#sm(this)
);
axiom (forall this: Ref ::
  { udParentValid(this) }
  IsPredicateField(udParentValid(this))
);
axiom (forall this: Ref ::
  { udParentValid(this) }
  getPredWandId(udParentValid(this)) == 7
);
function  udParentValid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  udParentValid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { udParentValid(this), udParentValid(this2) }
  udParentValid(this) == udParentValid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { udParentValid#sm(this), udParentValid#sm(this2) }
  udParentValid#sm(this) == udParentValid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { udParentValid#trigger(Heap, udParentValid(this)) }
  udParentValid#everUsed(udParentValid(this))
);

procedure udParentValid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of udParentValid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@191.2--203.3) [92490]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, parent:=Mask[this, parent] + perm];
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@191.2--203.3) [92491]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92492]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of acc(udValid(this.parent), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92493]"}
          HasDirectPerm(Mask, this, parent);
      perm := FullPerm;
      Mask := Mask[null, udValid(Heap[this, parent]):=Mask[null, udValid(Heap[this, parent])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92494]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of acc(this.parent.leftDown, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92495]"}
          HasDirectPerm(Mask, this, parent);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@191.2--203.3) [92496]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, parent] != null;
      Mask := Mask[Heap[this, parent], leftDown:=Mask[Heap[this, parent], leftDown] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92497]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of acc(this.parent.left, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92498]"}
          HasDirectPerm(Mask, this, parent);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@191.2--203.3) [92499]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, parent] != null;
      Mask := Mask[Heap[this, parent], left_2:=Mask[Heap[this, parent], left_2] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92500]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of this.parent.leftDown == (this.parent.left == this)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92501]"}
          HasDirectPerm(Mask, this, parent);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent.leftDown (AVLTree.iterative.vpr@191.2--203.3) [92502]"}
          HasDirectPerm(Mask, Heap[this, parent], leftDown);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92503]"}
          HasDirectPerm(Mask, this, parent);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent.left (AVLTree.iterative.vpr@191.2--203.3) [92504]"}
          HasDirectPerm(Mask, Heap[this, parent], left_2);
      assume Heap[Heap[this, parent], leftDown] == (Heap[Heap[this, parent], left_2] == this);
    }
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92505]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of acc(this.parent.right, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92506]"}
          HasDirectPerm(Mask, this, parent);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@191.2--203.3) [92507]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, parent] != null;
      Mask := Mask[Heap[this, parent], right_1:=Mask[Heap[this, parent], right_1] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92508]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of !this.parent.leftDown == (this.parent.right == this)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92509]"}
          HasDirectPerm(Mask, this, parent);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent.leftDown (AVLTree.iterative.vpr@191.2--203.3) [92510]"}
          HasDirectPerm(Mask, Heap[this, parent], leftDown);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92511]"}
          HasDirectPerm(Mask, this, parent);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent.right (AVLTree.iterative.vpr@191.2--203.3) [92512]"}
          HasDirectPerm(Mask, Heap[this, parent], right_1);
      assume !Heap[Heap[this, parent], leftDown] == (Heap[Heap[this, parent], right_1] == this);
    }
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92513]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of acc(this.parent.root, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92514]"}
          HasDirectPerm(Mask, this, parent);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@191.2--203.3) [92515]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, parent] != null;
      Mask := Mask[Heap[this, parent], root_1:=Mask[Heap[this, parent], root_1] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.parent != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92516]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] != null) {
      
      // -- Check definedness of this.root == this.parent.root
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (AVLTree.iterative.vpr@191.2--203.3) [92517]"}
          HasDirectPerm(Mask, this, root_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92518]"}
          HasDirectPerm(Mask, this, parent);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent.root (AVLTree.iterative.vpr@191.2--203.3) [92519]"}
          HasDirectPerm(Mask, Heap[this, parent], root_1);
      assume Heap[this, root_1] == Heap[Heap[this, parent], root_1];
    }
    
    // -- Check definedness of this.parent == null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.parent (AVLTree.iterative.vpr@191.2--203.3) [92520]"}
        HasDirectPerm(Mask, this, parent);
    if (Heap[this, parent] == null) {
      
      // -- Check definedness of this.root == this
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (AVLTree.iterative.vpr@191.2--203.3) [92521]"}
          HasDirectPerm(Mask, this, root_1);
      assume Heap[this, root_1] == this;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate udValid
// ==================================================

type PredicateType_udValid;
function  udValid(this: Ref): Field PredicateType_udValid FrameType;
function  udValid#sm(this: Ref): Field PredicateType_udValid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(udValid(this)) }
  PredicateMaskField(udValid(this)) == udValid#sm(this)
);
axiom (forall this: Ref ::
  { udValid(this) }
  IsPredicateField(udValid(this))
);
axiom (forall this: Ref ::
  { udValid(this) }
  getPredWandId(udValid(this)) == 8
);
function  udValid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  udValid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { udValid(this), udValid(this2) }
  udValid(this) == udValid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { udValid#sm(this), udValid#sm(this2) }
  udValid#sm(this) == udValid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { udValid#trigger(Heap, udValid(this)) }
  udValid#everUsed(udValid(this))
);

procedure udValid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of udValid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, key_6:=Mask[this, key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@205.2--216.3) [92522]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, leftDown:=Mask[this, leftDown] + perm];
    assume state(Heap, Mask);
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@205.2--216.3) [92523]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    perm := 1 / 4;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@205.2--216.3) [92524]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 5;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 5 might be negative. (AVLTree.iterative.vpr@205.2--216.3) [92525]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.leftDown
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.leftDown (AVLTree.iterative.vpr@205.2--216.3) [92526]"}
        HasDirectPerm(Mask, this, leftDown);
    if (Heap[this, leftDown]) {
      perm := FullPerm;
      Mask := Mask[null, rightValid(this):=Mask[null, rightValid(this)] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.leftDown
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.leftDown (AVLTree.iterative.vpr@205.2--216.3) [92527]"}
        HasDirectPerm(Mask, this, leftDown);
    if (Heap[this, leftDown]) {
      perm := FullPerm;
      Mask := Mask[null, leftOpen(this):=Mask[null, leftOpen(this)] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.leftDown ==> false
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.leftDown (AVLTree.iterative.vpr@205.2--216.3) [92528]"}
        HasDirectPerm(Mask, this, leftDown);
    if (Heap[this, leftDown] ==> false) {
      perm := FullPerm;
      Mask := Mask[null, leftValid(this):=Mask[null, leftValid(this)] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.leftDown ==> false
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.leftDown (AVLTree.iterative.vpr@205.2--216.3) [92529]"}
        HasDirectPerm(Mask, this, leftDown);
    if (Heap[this, leftDown] ==> false) {
      perm := FullPerm;
      Mask := Mask[null, rightOpen(this):=Mask[null, rightOpen(this)] + perm];
      assume state(Heap, Mask);
    }
    perm := FullPerm;
    Mask := Mask[null, udParentValid(this):=Mask[null, udParentValid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method init
// ==================================================

procedure init(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
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
    Mask := Mask[this, root1:=Mask[this, root1] + perm];
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
    PostMask := PostMask[null, valid1(this):=PostMask[null, valid1(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.root1 := null -- AVLTree.iterative.vpr@20.3--20.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@20.3--20.21) [92530]"}
      FullPerm == Mask[this, root1];
    Heap := Heap[this, root1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid1(this), write) -- AVLTree.iterative.vpr@21.3--21.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@21.3--21.31) [92533]"}
        perm <= Mask[this, root1];
    }
    Mask := Mask[this, root1:=Mask[this, root1] - perm];
    if (Heap[this, root1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access valid(this.root1) (AVLTree.iterative.vpr@21.3--21.31) [92535]"}
          perm <= Mask[null, valid(Heap[this, root1])];
      }
      Mask := Mask[null, valid(Heap[this, root1]):=Mask[null, valid(Heap[this, root1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid1(this), Heap[null, valid1(this)], valid(Heap[this, root1]), Heap[null, valid(Heap[this, root1])]);
    }
    if (Heap[this, root1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@21.3--21.31) [92537]"}
          perm <= Mask[Heap[this, root1], parent];
      }
      Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] - perm];
    }
    if (Heap[this, root1] != null) {
      assert {:msg "  Folding valid1(this) might fail. Assertion this.root1.parent == null might not hold. (AVLTree.iterative.vpr@21.3--21.31) [92538]"}
        Heap[Heap[this, root1], parent] == null;
    }
    if (Heap[this, root1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid1(this) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@21.3--21.31) [92539]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1.root (AVLTree.iterative.vpr@21.3--21.31) [92540]"}
          perm <= Mask[Heap[this, root1], root_1];
      }
      Mask := Mask[Heap[this, root1], root_1:=Mask[Heap[this, root1], root_1] - perm];
    }
    if (Heap[this, root1] != null) {
      assert {:msg "  Folding valid1(this) might fail. Assertion this.root1.root == this.root1 might not hold. (AVLTree.iterative.vpr@21.3--21.31) [92541]"}
        Heap[Heap[this, root1], root_1] == Heap[this, root1];
    }
    perm := FullPerm;
    Mask := Mask[null, valid1(this):=Mask[null, valid1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid1#trigger(Heap, valid1(this));
    assume Heap[null, valid1(this)] == CombineFrames(FrameFragment(Heap[this, root1]), CombineFrames(FrameFragment((if Heap[this, root1] != null then Heap[null, valid(Heap[this, root1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], root_1]) else EmptyFrame)), FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)))))));
    if (!HasDirectPerm(Mask, null, valid1(this))) {
      Heap := Heap[null, valid1#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid1(this):=freshVersion];
    }
    Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][this, root1:=true]];
    if (Heap[this, root1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
        { newPMask[o_5, f_11] }
        Heap[null, valid1#sm(this)][o_5, f_11] || Heap[null, valid#sm(Heap[this, root1])][o_5, f_11] ==> newPMask[o_5, f_11]
      );
      Heap := Heap[null, valid1#sm(this):=newPMask];
    }
    if (Heap[this, root1] != null) {
      Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][Heap[this, root1], parent:=true]];
    }
    if (Heap[this, root1] != null) {
      Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][Heap[this, root1], root_1:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access valid1(this) (AVLTree.iterative.vpr@18.11--18.34) [92543]"}
        perm <= Mask[null, valid1(this)];
    }
    Mask := Mask[null, valid1(this):=Mask[null, valid1(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method has
// ==================================================

procedure has(this: Ref, k: int) returns (b_24: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n: Ref;
  var p_1: Ref;
  var q_1: Ref;
  var r_1: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var end_1: bool;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid1(this):=Mask[null, valid1(this)] + perm];
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
    PostMask := PostMask[null, valid1(this):=PostMask[null, valid1(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n, $allocated];
    assume Heap[p_1, $allocated];
    assume Heap[q_1, $allocated];
    assume Heap[r_1, $allocated];
  
  // -- Translating statement: unfold acc(valid1(this), write) -- AVLTree.iterative.vpr@33.3--33.33
    assume valid1#trigger(Heap, valid1(this));
    assume Heap[null, valid1(this)] == CombineFrames(FrameFragment(Heap[this, root1]), CombineFrames(FrameFragment((if Heap[this, root1] != null then Heap[null, valid(Heap[this, root1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], root_1]) else EmptyFrame)), FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid1(this) might fail. There might be insufficient permission to access valid1(this) (AVLTree.iterative.vpr@33.3--33.33) [92546]"}
        perm <= Mask[null, valid1(this)];
    }
    Mask := Mask[null, valid1(this):=Mask[null, valid1(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid1(this))) {
        havoc newVersion;
        Heap := Heap[null, valid1(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, root1:=Mask[this, root1] + perm];
    assume state(Heap, Mask);
    if (Heap[this, root1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, root1]):=Mask[null, valid(Heap[this, root1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid1(this), Heap[null, valid1(this)], valid(Heap[this, root1]), Heap[null, valid(Heap[this, root1])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, root1] != null) {
      perm := FullPerm;
      assume Heap[this, root1] != null;
      Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, root1] != null) {
      assume Heap[Heap[this, root1], parent] == null;
    }
    if (Heap[this, root1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid1(this) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@33.3--33.33) [92550]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root1] != null;
      Mask := Mask[Heap[this, root1], root_1:=Mask[Heap[this, root1], root_1] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, root1] != null) {
      assume Heap[Heap[this, root1], root_1] == Heap[this, root1];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.root1 == null) -- AVLTree.iterative.vpr@34.3--126.4
    
    // -- Check definedness of this.root1 == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@34.7--34.23) [92551]"}
        HasDirectPerm(Mask, this, root1);
    if (Heap[this, root1] == null) {
      
      // -- Translating statement: b := false -- AVLTree.iterative.vpr@35.4--35.14
        b_24 := false;
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(valid1(this), write) -- AVLTree.iterative.vpr@36.4--36.32
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@36.4--36.32) [92554]"}
            perm <= Mask[this, root1];
        }
        Mask := Mask[this, root1:=Mask[this, root1] - perm];
        if (Heap[this, root1] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access valid(this.root1) (AVLTree.iterative.vpr@36.4--36.32) [92556]"}
              perm <= Mask[null, valid(Heap[this, root1])];
          }
          Mask := Mask[null, valid(Heap[this, root1]):=Mask[null, valid(Heap[this, root1])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(valid1(this), Heap[null, valid1(this)], valid(Heap[this, root1]), Heap[null, valid(Heap[this, root1])]);
        }
        if (Heap[this, root1] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@36.4--36.32) [92558]"}
              perm <= Mask[Heap[this, root1], parent];
          }
          Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] - perm];
        }
        if (Heap[this, root1] != null) {
          assert {:msg "  Folding valid1(this) might fail. Assertion this.root1.parent == null might not hold. (AVLTree.iterative.vpr@36.4--36.32) [92559]"}
            Heap[Heap[this, root1], parent] == null;
        }
        if (Heap[this, root1] != null) {
          perm := 1 / 2;
          assert {:msg "  Folding valid1(this) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@36.4--36.32) [92560]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1.root (AVLTree.iterative.vpr@36.4--36.32) [92561]"}
              perm <= Mask[Heap[this, root1], root_1];
          }
          Mask := Mask[Heap[this, root1], root_1:=Mask[Heap[this, root1], root_1] - perm];
        }
        if (Heap[this, root1] != null) {
          assert {:msg "  Folding valid1(this) might fail. Assertion this.root1.root == this.root1 might not hold. (AVLTree.iterative.vpr@36.4--36.32) [92562]"}
            Heap[Heap[this, root1], root_1] == Heap[this, root1];
        }
        perm := FullPerm;
        Mask := Mask[null, valid1(this):=Mask[null, valid1(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume valid1#trigger(Heap, valid1(this));
        assume Heap[null, valid1(this)] == CombineFrames(FrameFragment(Heap[this, root1]), CombineFrames(FrameFragment((if Heap[this, root1] != null then Heap[null, valid(Heap[this, root1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], root_1]) else EmptyFrame)), FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)))))));
        if (!HasDirectPerm(Mask, null, valid1(this))) {
          Heap := Heap[null, valid1#sm(this):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, valid1(this):=freshVersion];
        }
        Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][this, root1:=true]];
        if (Heap[this, root1] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, valid1#sm(this)][o_6, f_12] || Heap[null, valid#sm(Heap[this, root1])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, valid1#sm(this):=newPMask];
        }
        if (Heap[this, root1] != null) {
          Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][Heap[this, root1], parent:=true]];
        }
        if (Heap[this, root1] != null) {
          Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][Heap[this, root1], root_1:=true]];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: n := this.root1 -- AVLTree.iterative.vpr@38.4--38.19
        
        // -- Check definedness of this.root1
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@38.4--38.19) [92564]"}
            HasDirectPerm(Mask, this, root1);
        n := Heap[this, root1];
        assume state(Heap, Mask);
      
      // -- Translating statement: b := false -- AVLTree.iterative.vpr@39.4--39.14
        b_24 := false;
        assume state(Heap, Mask);
      
      // -- Translating statement: end := false -- AVLTree.iterative.vpr@40.4--40.16
        end_1 := false;
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(udParentValid(n), write) -- AVLTree.iterative.vpr@41.4--41.36
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := 1 / 2;
        assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@41.4--41.36) [92566]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent (AVLTree.iterative.vpr@41.4--41.36) [92567]"}
            perm <= Mask[n, parent];
        }
        Mask := Mask[n, parent:=Mask[n, parent] - perm];
        perm := 1 / 10;
        assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@41.4--41.36) [92568]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@41.4--41.36) [92569]"}
            perm <= Mask[n, root_1];
        }
        Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
        if (Heap[n, parent] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access udValid(n.parent) (AVLTree.iterative.vpr@41.4--41.36) [92571]"}
              perm <= Mask[null, udValid(Heap[n, parent])];
          }
          Mask := Mask[null, udValid(Heap[n, parent]):=Mask[null, udValid(Heap[n, parent])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(udParentValid(n), Heap[null, udParentValid(n)], udValid(Heap[n, parent]), Heap[null, udValid(Heap[n, parent])]);
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@41.4--41.36) [92572]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.leftDown (AVLTree.iterative.vpr@41.4--41.36) [92573]"}
              perm <= Mask[Heap[n, parent], leftDown];
          }
          Mask := Mask[Heap[n, parent], leftDown:=Mask[Heap[n, parent], leftDown] - perm];
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@41.4--41.36) [92574]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.left (AVLTree.iterative.vpr@41.4--41.36) [92575]"}
              perm <= Mask[Heap[n, parent], left_2];
          }
          Mask := Mask[Heap[n, parent], left_2:=Mask[Heap[n, parent], left_2] - perm];
        }
        if (Heap[n, parent] != null) {
          assert {:msg "  Folding udParentValid(n) might fail. Assertion n.parent.leftDown == (n.parent.left == n) might not hold. (AVLTree.iterative.vpr@41.4--41.36) [92576]"}
            Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], left_2] == n);
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@41.4--41.36) [92577]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.right (AVLTree.iterative.vpr@41.4--41.36) [92578]"}
              perm <= Mask[Heap[n, parent], right_1];
          }
          Mask := Mask[Heap[n, parent], right_1:=Mask[Heap[n, parent], right_1] - perm];
        }
        if (Heap[n, parent] != null) {
          assert {:msg "  Folding udParentValid(n) might fail. Assertion !n.parent.leftDown == (n.parent.right == n) might not hold. (AVLTree.iterative.vpr@41.4--41.36) [92579]"}
            !Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], right_1] == n);
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@41.4--41.36) [92580]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.root (AVLTree.iterative.vpr@41.4--41.36) [92581]"}
              perm <= Mask[Heap[n, parent], root_1];
          }
          Mask := Mask[Heap[n, parent], root_1:=Mask[Heap[n, parent], root_1] - perm];
        }
        if (Heap[n, parent] != null) {
          assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n.parent.root might not hold. (AVLTree.iterative.vpr@41.4--41.36) [92582]"}
            Heap[n, root_1] == Heap[Heap[n, parent], root_1];
        }
        if (Heap[n, parent] == null) {
          assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n might not hold. (AVLTree.iterative.vpr@41.4--41.36) [92583]"}
            Heap[n, root_1] == n;
        }
        perm := FullPerm;
        Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume udParentValid#trigger(Heap, udParentValid(n));
        assume Heap[null, udParentValid(n)] == CombineFrames(FrameFragment(Heap[n, parent]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment((if Heap[n, parent] != null then Heap[null, udValid(Heap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
        if (!HasDirectPerm(Mask, null, udParentValid(n))) {
          Heap := Heap[null, udParentValid#sm(n):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, udParentValid(n):=freshVersion];
        }
        Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
        Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
        if (Heap[n, parent] != null) {
          havoc newPMask;
          assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
            { newPMask[o_40, f_52] }
            Heap[null, udParentValid#sm(n)][o_40, f_52] || Heap[null, udValid#sm(Heap[n, parent])][o_40, f_52] ==> newPMask[o_40, f_52]
          );
          Heap := Heap[null, udParentValid#sm(n):=newPMask];
        }
        if (Heap[n, parent] != null) {
          Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
        }
        if (Heap[n, parent] != null) {
          Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
        }
        if (Heap[n, parent] != null) {
          Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
        }
        if (Heap[n, parent] != null) {
          Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: while (!end) -- AVLTree.iterative.vpr@42.4--91.5
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            
            // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not hold on entry. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@49.15--49.68) [92585]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                  { newPMask[o_42, f_55] }
                  Heap[null, valid#sm(n)][o_42, f_55] || Heap[null, validRest#sm(n)][o_42, f_55] ==> newPMask[o_42, f_55]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
                  { newPMask[o_46, f_60] }
                  Heap[null, valid#sm(n)][o_46, f_60] || Heap[null, leftValid#sm(n)][o_46, f_60] ==> newPMask[o_46, f_60]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o: Ref, f_61: (Field A B) ::
                  { newPMask[o, f_61] }
                  Heap[null, valid#sm(n)][o, f_61] || Heap[null, rightValid#sm(n)][o, f_61] ==> newPMask[o, f_61]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.root1, write) might not hold on entry. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@43.15--43.36) [92586]"}
                perm <= Mask[this, root1];
            }
            Mask := Mask[this, root1:=Mask[this, root1] - perm];
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not hold on entry. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@44.15--44.63) [92587]"}
              Heap[this, root1] != null;
            perm := 1 / 2;
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@44.15--44.63) [92588]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not hold on entry. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@44.15--44.63) [92589]"}
                perm <= Mask[Heap[this, root1], parent];
            }
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] - perm];
            assert {:msg "  Loop invariant n != null might not hold on entry. Assertion n != null might not hold. (AVLTree.iterative.vpr@45.15--45.22) [92590]"}
              n != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(valid(n), write) might not hold on entry. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@46.15--46.34) [92591]"}
                perm <= Mask[null, valid(n)];
            }
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] - perm];
            perm := 4 / 10;
            assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not hold on entry. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@47.15--47.31) [92592]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not hold on entry. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@47.15--47.31) [92593]"}
                perm <= Mask[n, root_1];
            }
            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(udParentValid(n), write) might not hold on entry. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@48.15--48.42) [92594]"}
                perm <= Mask[null, udParentValid(n)];
            }
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] - perm];
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := ExhaleWellDef0Heap;
              UnfoldingMask := ExhaleWellDef0Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef1Mask := UnfoldingMask;
              ExhaleWellDef1Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not hold on entry. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@49.15--49.68) [92595]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not hold on entry. Assertion n.root == this.root1 might not hold. (AVLTree.iterative.vpr@49.15--49.68) [92596]"}
              Heap[n, root_1] == Heap[this, root1];
            assert {:msg "  Loop invariant this.root1 != null might not hold on entry. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@50.15--50.31) [92597]"}
              Heap[this, root1] != null;
            
            // -- Free assumptions (exhale module)
              havoc newPMask;
              assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
                { newPMask[o_14, f_3] }
                Heap[null, valid#sm(n)][o_14, f_3] || Heap[null, validRest#sm(n)][o_14, f_3] ==> newPMask[o_14, f_3]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
                { newPMask[o_3, f_24] }
                Heap[null, valid#sm(n)][o_3, f_24] || Heap[null, leftValid#sm(n)][o_3, f_24] ==> newPMask[o_3, f_24]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
                { newPMask[o_1, f_10] }
                Heap[null, valid#sm(n)][o_1, f_10] || Heap[null, rightValid#sm(n)][o_1, f_10] ==> newPMask[o_1, f_10]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc n, q_1, end_1, p_1, b_24;
          assume Heap[n, $allocated];
          assume Heap[q_1, $allocated];
          assume Heap[p_1, $allocated];
        
        // -- Check definedness of invariant
          if (*) {
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, root1:=Mask[this, root1] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of this.root1 != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@44.15--44.63) [92598]"}
                HasDirectPerm(Mask, this, root1);
            assume Heap[this, root1] != null;
            
            // -- Check definedness of acc(this.root1.parent, 1 / 2)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@44.15--44.63) [92599]"}
                HasDirectPerm(Mask, this, root1);
            perm := 1 / 2;
            assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@44.15--44.63) [92600]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> Heap[this, root1] != null;
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume n != null;
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := 4 / 10;
            assert {:msg "  Contract might not be well-formed. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@47.15--47.31) [92601]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> n != null;
            Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (unfolding acc(valid(n), write) in n.root == this.root1)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@49.15--49.68) [92602]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@49.15--49.68) [92603]"}
                HasDirectPerm(UnfoldingMask, n, root_1);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@49.15--49.68) [92604]"}
                HasDirectPerm(UnfoldingMask, this, root1);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
                  { newPMask[o_15, f_51] }
                  Heap[null, valid#sm(n)][o_15, f_51] || Heap[null, validRest#sm(n)][o_15, f_51] ==> newPMask[o_15, f_51]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
                  { newPMask[o_4, f_54] }
                  Heap[null, valid#sm(n)][o_4, f_54] || Heap[null, leftValid#sm(n)][o_4, f_54] ==> newPMask[o_4, f_54]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
                  { newPMask[o_12, f_25] }
                  Heap[null, valid#sm(n)][o_12, f_25] || Heap[null, rightValid#sm(n)][o_12, f_25] ==> newPMask[o_12, f_25]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assume Heap[n, root_1] == Heap[this, root1];
            assume state(Heap, Mask);
            
            // -- Check definedness of this.root1 != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@50.15--50.31) [92605]"}
                HasDirectPerm(Mask, this, root1);
            assume Heap[this, root1] != null;
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
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, root1:=Mask[this, root1] + perm];
            assume state(Heap, Mask);
            assume Heap[this, root1] != null;
            perm := 1 / 2;
            assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@44.15--44.63) [92606]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> Heap[this, root1] != null;
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
            assume state(Heap, Mask);
            assume n != null;
            perm := FullPerm;
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
            assume state(Heap, Mask);
            perm := 4 / 10;
            assert {:msg "  While statement might fail. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@47.15--47.31) [92607]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> n != null;
            Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
            assume state(Heap, Mask);
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assume Heap[n, root_1] == Heap[this, root1];
            
            // -- Free assumptions (inhale module)
              havoc newPMask;
              assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
                { newPMask[o_41, f_21] }
                Heap[null, valid#sm(n)][o_41, f_21] || Heap[null, validRest#sm(n)][o_41, f_21] ==> newPMask[o_41, f_21]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
                { newPMask[o_23, f_13] }
                Heap[null, valid#sm(n)][o_23, f_13] || Heap[null, leftValid#sm(n)][o_23, f_13] ==> newPMask[o_23, f_13]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
                { newPMask[o_13, f_65] }
                Heap[null, valid#sm(n)][o_13, f_65] || Heap[null, rightValid#sm(n)][o_13, f_65] ==> newPMask[o_13, f_65]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
            assume Heap[this, root1] != null;
            assume state(Heap, Mask);
            
            // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@49.15--49.68) [92608]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
                  { newPMask[o_51, f_66] }
                  Heap[null, valid#sm(n)][o_51, f_66] || Heap[null, validRest#sm(n)][o_51, f_66] ==> newPMask[o_51, f_66]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
                  { newPMask[o_52, f_14] }
                  Heap[null, valid#sm(n)][o_52, f_14] || Heap[null, leftValid#sm(n)][o_52, f_14] ==> newPMask[o_52, f_14]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
                  { newPMask[o_20, f_50] }
                  Heap[null, valid#sm(n)][o_20, f_50] || Heap[null, rightValid#sm(n)][o_20, f_50] ==> newPMask[o_20, f_50]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            // Check and assume guard
            assume !end_1;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: unfold acc(valid(n), write) -- AVLTree.iterative.vpr@52.5--52.31
                assume valid#trigger(Heap, valid(n));
                assume Heap[null, valid(n)] == CombineFrames(Heap[null, validRest(n)], CombineFrames(Heap[null, leftValid(n)], Heap[null, rightValid(n)]));
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding valid(n) might fail. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@52.5--52.31) [92609]"}
                    perm <= Mask[null, valid(n)];
                }
                Mask := Mask[null, valid(n):=Mask[null, valid(n)] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, valid(n))) {
                    havoc newVersion;
                    Heap := Heap[null, valid(n):=newVersion];
                  }
                perm := FullPerm;
                Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(valid(n), Heap[null, valid(n)], validRest(n), Heap[null, validRest(n)]);
                assume state(Heap, Mask);
                perm := FullPerm;
                Mask := Mask[null, leftValid(n):=Mask[null, leftValid(n)] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(valid(n), Heap[null, valid(n)], leftValid(n), Heap[null, leftValid(n)]);
                assume state(Heap, Mask);
                perm := FullPerm;
                Mask := Mask[null, rightValid(n):=Mask[null, rightValid(n)] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(valid(n), Heap[null, valid(n)], rightValid(n), Heap[null, rightValid(n)]);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: unfold acc(validRest(n), write) -- AVLTree.iterative.vpr@53.5--53.35
                assume validRest#trigger(Heap, validRest(n));
                assume Heap[null, validRest(n)] == CombineFrames(FrameFragment(Heap[n, key_6]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment(Heap[n, left_2]), CombineFrames(FrameFragment(Heap[n, right_1]), FrameFragment(Heap[n, leftDown])))));
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding validRest(n) might fail. There might be insufficient permission to access validRest(n) (AVLTree.iterative.vpr@53.5--53.35) [92610]"}
                    perm <= Mask[null, validRest(n)];
                }
                Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, validRest(n))) {
                    havoc newVersion;
                    Heap := Heap[null, validRest(n):=newVersion];
                  }
                perm := FullPerm;
                assume n != null;
                Mask := Mask[n, key_6:=Mask[n, key_6] + perm];
                assume state(Heap, Mask);
                perm := 3 / 10;
                assert {:msg "  Unfolding validRest(n) might fail. Fraction 3 / 10 might be negative. (AVLTree.iterative.vpr@53.5--53.35) [92611]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
                assume state(Heap, Mask);
                perm := 3 / 4;
                assert {:msg "  Unfolding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@53.5--53.35) [92612]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                Mask := Mask[n, left_2:=Mask[n, left_2] + perm];
                assume state(Heap, Mask);
                perm := 3 / 4;
                assert {:msg "  Unfolding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@53.5--53.35) [92613]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                Mask := Mask[n, right_1:=Mask[n, right_1] + perm];
                assume state(Heap, Mask);
                perm := FullPerm;
                assume n != null;
                Mask := Mask[n, leftDown:=Mask[n, leftDown] + perm];
                assume state(Heap, Mask);
                assume Heap[n, right_1] != Heap[n, left_2] || Heap[n, right_1] == null;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: if (n.key == k) -- AVLTree.iterative.vpr@55.5--90.6
                
                // -- Check definedness of n.key == k
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access n.key (AVLTree.iterative.vpr@55.9--55.17) [92614]"}
                    HasDirectPerm(Mask, n, key_6);
                if (Heap[n, key_6] == k) {
                  
                  // -- Translating statement: b := true -- AVLTree.iterative.vpr@56.6--56.15
                    b_24 := true;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: fold acc(validRest(n), write) -- AVLTree.iterative.vpr@57.6--57.34
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.key (AVLTree.iterative.vpr@57.6--57.34) [92615]"}
                        perm <= Mask[n, key_6];
                    }
                    Mask := Mask[n, key_6:=Mask[n, key_6] - perm];
                    perm := 3 / 10;
                    assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 10 might be negative. (AVLTree.iterative.vpr@57.6--57.34) [92616]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@57.6--57.34) [92617]"}
                        perm <= Mask[n, root_1];
                    }
                    Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
                    perm := 3 / 4;
                    assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@57.6--57.34) [92618]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.left (AVLTree.iterative.vpr@57.6--57.34) [92619]"}
                        perm <= Mask[n, left_2];
                    }
                    Mask := Mask[n, left_2:=Mask[n, left_2] - perm];
                    perm := 3 / 4;
                    assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@57.6--57.34) [92620]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.right (AVLTree.iterative.vpr@57.6--57.34) [92621]"}
                        perm <= Mask[n, right_1];
                    }
                    Mask := Mask[n, right_1:=Mask[n, right_1] - perm];
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.leftDown (AVLTree.iterative.vpr@57.6--57.34) [92622]"}
                        perm <= Mask[n, leftDown];
                    }
                    Mask := Mask[n, leftDown:=Mask[n, leftDown] - perm];
                    assert {:msg "  Folding validRest(n) might fail. Assertion n.right != n.left || n.right == null might not hold. (AVLTree.iterative.vpr@57.6--57.34) [92623]"}
                      Heap[n, right_1] != Heap[n, left_2] || Heap[n, right_1] == null;
                    perm := FullPerm;
                    Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] + perm];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    assume validRest#trigger(Heap, validRest(n));
                    assume Heap[null, validRest(n)] == CombineFrames(FrameFragment(Heap[n, key_6]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment(Heap[n, left_2]), CombineFrames(FrameFragment(Heap[n, right_1]), FrameFragment(Heap[n, leftDown])))));
                    if (!HasDirectPerm(Mask, null, validRest(n))) {
                      Heap := Heap[null, validRest#sm(n):=ZeroPMask];
                      havoc freshVersion;
                      Heap := Heap[null, validRest(n):=freshVersion];
                    }
                    Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, key_6:=true]];
                    Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, root_1:=true]];
                    Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, left_2:=true]];
                    Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, right_1:=true]];
                    Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, leftDown:=true]];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: fold acc(valid(n), write) -- AVLTree.iterative.vpr@58.6--58.30
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access validRest(n) (AVLTree.iterative.vpr@58.6--58.30) [92624]"}
                        perm <= Mask[null, validRest(n)];
                    }
                    Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] - perm];
                    
                    // -- Record predicate instance information
                      assume InsidePredicate(valid(n), Heap[null, valid(n)], validRest(n), Heap[null, validRest(n)]);
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access leftValid(n) (AVLTree.iterative.vpr@58.6--58.30) [92625]"}
                        perm <= Mask[null, leftValid(n)];
                    }
                    Mask := Mask[null, leftValid(n):=Mask[null, leftValid(n)] - perm];
                    
                    // -- Record predicate instance information
                      assume InsidePredicate(valid(n), Heap[null, valid(n)], leftValid(n), Heap[null, leftValid(n)]);
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access rightValid(n) (AVLTree.iterative.vpr@58.6--58.30) [92626]"}
                        perm <= Mask[null, rightValid(n)];
                    }
                    Mask := Mask[null, rightValid(n):=Mask[null, rightValid(n)] - perm];
                    
                    // -- Record predicate instance information
                      assume InsidePredicate(valid(n), Heap[null, valid(n)], rightValid(n), Heap[null, rightValid(n)]);
                    perm := FullPerm;
                    Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    assume valid#trigger(Heap, valid(n));
                    assume Heap[null, valid(n)] == CombineFrames(Heap[null, validRest(n)], CombineFrames(Heap[null, leftValid(n)], Heap[null, rightValid(n)]));
                    if (!HasDirectPerm(Mask, null, valid(n))) {
                      Heap := Heap[null, valid#sm(n):=ZeroPMask];
                      havoc freshVersion;
                      Heap := Heap[null, valid(n):=freshVersion];
                    }
                    havoc newPMask;
                    assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
                      { newPMask[o_58, f_30] }
                      Heap[null, valid#sm(n)][o_58, f_30] || Heap[null, validRest#sm(n)][o_58, f_30] ==> newPMask[o_58, f_30]
                    );
                    Heap := Heap[null, valid#sm(n):=newPMask];
                    havoc newPMask;
                    assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
                      { newPMask[o_10, f_67] }
                      Heap[null, valid#sm(n)][o_10, f_67] || Heap[null, leftValid#sm(n)][o_10, f_67] ==> newPMask[o_10, f_67]
                    );
                    Heap := Heap[null, valid#sm(n):=newPMask];
                    havoc newPMask;
                    assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
                      { newPMask[o_18, f_18] }
                      Heap[null, valid#sm(n)][o_18, f_18] || Heap[null, rightValid#sm(n)][o_18, f_18] ==> newPMask[o_18, f_18]
                    );
                    Heap := Heap[null, valid#sm(n):=newPMask];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: end := true -- AVLTree.iterative.vpr@59.6--59.17
                    end_1 := true;
                    assume state(Heap, Mask);
                } else {
                  
                  // -- Translating statement: if (n.key < k) -- AVLTree.iterative.vpr@61.6--89.7
                    
                    // -- Check definedness of n.key < k
                      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access n.key (AVLTree.iterative.vpr@61.10--61.17) [92627]"}
                        HasDirectPerm(Mask, n, key_6);
                    if (Heap[n, key_6] < k) {
                      
                      // -- Translating statement: if (n.left == null) -- AVLTree.iterative.vpr@62.7--74.8
                        
                        // -- Check definedness of n.left == null
                          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access n.left (AVLTree.iterative.vpr@62.11--62.23) [92628]"}
                            HasDirectPerm(Mask, n, left_2);
                        if (Heap[n, left_2] == null) {
                          
                          // -- Translating statement: end := true -- AVLTree.iterative.vpr@63.8--63.19
                            end_1 := true;
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(validRest(n), write) -- AVLTree.iterative.vpr@64.8--64.36
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.key (AVLTree.iterative.vpr@64.8--64.36) [92629]"}
                                perm <= Mask[n, key_6];
                            }
                            Mask := Mask[n, key_6:=Mask[n, key_6] - perm];
                            perm := 3 / 10;
                            assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 10 might be negative. (AVLTree.iterative.vpr@64.8--64.36) [92630]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@64.8--64.36) [92631]"}
                                perm <= Mask[n, root_1];
                            }
                            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
                            perm := 3 / 4;
                            assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@64.8--64.36) [92632]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.left (AVLTree.iterative.vpr@64.8--64.36) [92633]"}
                                perm <= Mask[n, left_2];
                            }
                            Mask := Mask[n, left_2:=Mask[n, left_2] - perm];
                            perm := 3 / 4;
                            assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@64.8--64.36) [92634]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.right (AVLTree.iterative.vpr@64.8--64.36) [92635]"}
                                perm <= Mask[n, right_1];
                            }
                            Mask := Mask[n, right_1:=Mask[n, right_1] - perm];
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.leftDown (AVLTree.iterative.vpr@64.8--64.36) [92636]"}
                                perm <= Mask[n, leftDown];
                            }
                            Mask := Mask[n, leftDown:=Mask[n, leftDown] - perm];
                            assert {:msg "  Folding validRest(n) might fail. Assertion n.right != n.left || n.right == null might not hold. (AVLTree.iterative.vpr@64.8--64.36) [92637]"}
                              Heap[n, right_1] != Heap[n, left_2] || Heap[n, right_1] == null;
                            perm := FullPerm;
                            Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume validRest#trigger(Heap, validRest(n));
                            assume Heap[null, validRest(n)] == CombineFrames(FrameFragment(Heap[n, key_6]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment(Heap[n, left_2]), CombineFrames(FrameFragment(Heap[n, right_1]), FrameFragment(Heap[n, leftDown])))));
                            if (!HasDirectPerm(Mask, null, validRest(n))) {
                              Heap := Heap[null, validRest#sm(n):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, validRest(n):=freshVersion];
                            }
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, key_6:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, root_1:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, left_2:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, right_1:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, leftDown:=true]];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(valid(n), write) -- AVLTree.iterative.vpr@65.8--65.32
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access validRest(n) (AVLTree.iterative.vpr@65.8--65.32) [92638]"}
                                perm <= Mask[null, validRest(n)];
                            }
                            Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(valid(n), Heap[null, valid(n)], validRest(n), Heap[null, validRest(n)]);
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access leftValid(n) (AVLTree.iterative.vpr@65.8--65.32) [92639]"}
                                perm <= Mask[null, leftValid(n)];
                            }
                            Mask := Mask[null, leftValid(n):=Mask[null, leftValid(n)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(valid(n), Heap[null, valid(n)], leftValid(n), Heap[null, leftValid(n)]);
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access rightValid(n) (AVLTree.iterative.vpr@65.8--65.32) [92640]"}
                                perm <= Mask[null, rightValid(n)];
                            }
                            Mask := Mask[null, rightValid(n):=Mask[null, rightValid(n)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(valid(n), Heap[null, valid(n)], rightValid(n), Heap[null, rightValid(n)]);
                            perm := FullPerm;
                            Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume valid#trigger(Heap, valid(n));
                            assume Heap[null, valid(n)] == CombineFrames(Heap[null, validRest(n)], CombineFrames(Heap[null, leftValid(n)], Heap[null, rightValid(n)]));
                            if (!HasDirectPerm(Mask, null, valid(n))) {
                              Heap := Heap[null, valid#sm(n):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, valid(n):=freshVersion];
                            }
                            havoc newPMask;
                            assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
                              { newPMask[o_66, f_28] }
                              Heap[null, valid#sm(n)][o_66, f_28] || Heap[null, validRest#sm(n)][o_66, f_28] ==> newPMask[o_66, f_28]
                            );
                            Heap := Heap[null, valid#sm(n):=newPMask];
                            havoc newPMask;
                            assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
                              { newPMask[o_11, f_34] }
                              Heap[null, valid#sm(n)][o_11, f_34] || Heap[null, leftValid#sm(n)][o_11, f_34] ==> newPMask[o_11, f_34]
                            );
                            Heap := Heap[null, valid#sm(n):=newPMask];
                            havoc newPMask;
                            assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
                              { newPMask[o_19, f_57] }
                              Heap[null, valid#sm(n)][o_19, f_57] || Heap[null, rightValid#sm(n)][o_19, f_57] ==> newPMask[o_19, f_57]
                            );
                            Heap := Heap[null, valid#sm(n):=newPMask];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                        } else {
                          
                          // -- Translating statement: p := n -- AVLTree.iterative.vpr@67.8--67.14
                            p_1 := n;
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: unfold acc(leftValid(p), write) -- AVLTree.iterative.vpr@68.8--68.38
                            assume leftValid#trigger(Heap, leftValid(p_1));
                            assume Heap[null, leftValid(p_1)] == CombineFrames(FrameFragment(Heap[p_1, left_2]), CombineFrames(FrameFragment(Heap[p_1, root_1]), CombineFrames(FrameFragment((if Heap[p_1, left_2] != null then Heap[null, valid(Heap[p_1, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[p_1, left_2] != null then FrameFragment(Heap[Heap[p_1, left_2], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[p_1, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[p_1, left_2] != null then FrameFragment(Heap[Heap[p_1, left_2], root_1]) else EmptyFrame)), FrameFragment((if Heap[p_1, left_2] != null then EmptyFrame else EmptyFrame))))))));
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Unfolding leftValid(p) might fail. There might be insufficient permission to access leftValid(p) (AVLTree.iterative.vpr@68.8--68.38) [92641]"}
                                perm <= Mask[null, leftValid(p_1)];
                            }
                            Mask := Mask[null, leftValid(p_1):=Mask[null, leftValid(p_1)] - perm];
                            
                            // -- Update version of predicate
                              if (!HasDirectPerm(Mask, null, leftValid(p_1))) {
                                havoc newVersion;
                                Heap := Heap[null, leftValid(p_1):=newVersion];
                              }
                            perm := 1 / 4;
                            assert {:msg "  Unfolding leftValid(p) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@68.8--68.38) [92642]"}
                              perm >= NoPerm;
                            assume perm > NoPerm ==> p_1 != null;
                            Mask := Mask[p_1, left_2:=Mask[p_1, left_2] + perm];
                            assume state(Heap, Mask);
                            perm := 1 / 10;
                            assert {:msg "  Unfolding leftValid(p) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@68.8--68.38) [92643]"}
                              perm >= NoPerm;
                            assume perm > NoPerm ==> p_1 != null;
                            Mask := Mask[p_1, root_1:=Mask[p_1, root_1] + perm];
                            assume state(Heap, Mask);
                            if (Heap[p_1, left_2] != null) {
                              perm := FullPerm;
                              Mask := Mask[null, valid(Heap[p_1, left_2]):=Mask[null, valid(Heap[p_1, left_2])] + perm];
                              
                              // -- Extra unfolding of predicate
                                assume InsidePredicate(leftValid(p_1), Heap[null, leftValid(p_1)], valid(Heap[p_1, left_2]), Heap[null, valid(Heap[p_1, left_2])]);
                              assume state(Heap, Mask);
                            }
                            if (Heap[p_1, left_2] != null) {
                              perm := FullPerm;
                              assume Heap[p_1, left_2] != null;
                              Mask := Mask[Heap[p_1, left_2], parent:=Mask[Heap[p_1, left_2], parent] + perm];
                              assume state(Heap, Mask);
                            }
                            if (Heap[p_1, left_2] != null) {
                              assume Heap[Heap[p_1, left_2], parent] == p_1;
                            }
                            if (Heap[p_1, left_2] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Unfolding leftValid(p) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@68.8--68.38) [92644]"}
                                perm >= NoPerm;
                              assume perm > NoPerm ==> Heap[p_1, left_2] != null;
                              Mask := Mask[Heap[p_1, left_2], root_1:=Mask[Heap[p_1, left_2], root_1] + perm];
                              assume state(Heap, Mask);
                            }
                            if (Heap[p_1, left_2] != null) {
                              assume Heap[Heap[p_1, left_2], root_1] == Heap[p_1, root_1];
                            }
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: n := p.left -- AVLTree.iterative.vpr@69.8--69.19
                            
                            // -- Check definedness of p.left
                              assert {:msg "  Assignment might fail. There might be insufficient permission to access p.left (AVLTree.iterative.vpr@69.8--69.19) [92645]"}
                                HasDirectPerm(Mask, p_1, left_2);
                            n := Heap[p_1, left_2];
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: p.leftDown := true -- AVLTree.iterative.vpr@70.8--70.26
                            assert {:msg "  Assignment might fail. There might be insufficient permission to access p.leftDown (AVLTree.iterative.vpr@70.8--70.26) [92646]"}
                              FullPerm == Mask[p_1, leftDown];
                            Heap := Heap[p_1, leftDown:=true];
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(leftOpen(p), write) -- AVLTree.iterative.vpr@71.8--71.35
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := 1 / 4;
                            assert {:msg "  Folding leftOpen(p) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@71.8--71.35) [92647]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding leftOpen(p) might fail. There might be insufficient permission to access p.left (AVLTree.iterative.vpr@71.8--71.35) [92648]"}
                                perm <= Mask[p_1, left_2];
                            }
                            Mask := Mask[p_1, left_2:=Mask[p_1, left_2] - perm];
                            perm := 1 / 10;
                            assert {:msg "  Folding leftOpen(p) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@71.8--71.35) [92649]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding leftOpen(p) might fail. There might be insufficient permission to access p.root (AVLTree.iterative.vpr@71.8--71.35) [92650]"}
                                perm <= Mask[p_1, root_1];
                            }
                            Mask := Mask[p_1, root_1:=Mask[p_1, root_1] - perm];
                            if (Heap[p_1, left_2] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding leftOpen(p) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@71.8--71.35) [92651]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding leftOpen(p) might fail. There might be insufficient permission to access p.left.parent (AVLTree.iterative.vpr@71.8--71.35) [92652]"}
                                  perm <= Mask[Heap[p_1, left_2], parent];
                              }
                              Mask := Mask[Heap[p_1, left_2], parent:=Mask[Heap[p_1, left_2], parent] - perm];
                            }
                            if (Heap[p_1, left_2] != null) {
                              assert {:msg "  Folding leftOpen(p) might fail. Assertion p.left.parent == p might not hold. (AVLTree.iterative.vpr@71.8--71.35) [92653]"}
                                Heap[Heap[p_1, left_2], parent] == p_1;
                            }
                            perm := FullPerm;
                            Mask := Mask[null, leftOpen(p_1):=Mask[null, leftOpen(p_1)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume leftOpen#trigger(Heap, leftOpen(p_1));
                            assume Heap[null, leftOpen(p_1)] == CombineFrames(FrameFragment(Heap[p_1, left_2]), CombineFrames(FrameFragment(Heap[p_1, root_1]), CombineFrames(FrameFragment((if Heap[p_1, left_2] != null then FrameFragment(Heap[Heap[p_1, left_2], parent]) else EmptyFrame)), FrameFragment((if Heap[p_1, left_2] != null then EmptyFrame else EmptyFrame)))));
                            if (!HasDirectPerm(Mask, null, leftOpen(p_1))) {
                              Heap := Heap[null, leftOpen#sm(p_1):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, leftOpen(p_1):=freshVersion];
                            }
                            Heap := Heap[null, leftOpen#sm(p_1):=Heap[null, leftOpen#sm(p_1)][p_1, left_2:=true]];
                            Heap := Heap[null, leftOpen#sm(p_1):=Heap[null, leftOpen#sm(p_1)][p_1, root_1:=true]];
                            if (Heap[p_1, left_2] != null) {
                              Heap := Heap[null, leftOpen#sm(p_1):=Heap[null, leftOpen#sm(p_1)][Heap[p_1, left_2], parent:=true]];
                            }
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(udValid(p), write) -- AVLTree.iterative.vpr@72.8--72.34
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access p.key (AVLTree.iterative.vpr@72.8--72.34) [92654]"}
                                perm <= Mask[p_1, key_6];
                            }
                            Mask := Mask[p_1, key_6:=Mask[p_1, key_6] - perm];
                            perm := 1 / 2;
                            assert {:msg "  Folding udValid(p) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@72.8--72.34) [92655]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access p.leftDown (AVLTree.iterative.vpr@72.8--72.34) [92656]"}
                                perm <= Mask[p_1, leftDown];
                            }
                            Mask := Mask[p_1, leftDown:=Mask[p_1, leftDown] - perm];
                            perm := 1 / 4;
                            assert {:msg "  Folding udValid(p) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@72.8--72.34) [92657]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access p.left (AVLTree.iterative.vpr@72.8--72.34) [92658]"}
                                perm <= Mask[p_1, left_2];
                            }
                            Mask := Mask[p_1, left_2:=Mask[p_1, left_2] - perm];
                            perm := 1 / 4;
                            assert {:msg "  Folding udValid(p) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@72.8--72.34) [92659]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access p.right (AVLTree.iterative.vpr@72.8--72.34) [92660]"}
                                perm <= Mask[p_1, right_1];
                            }
                            Mask := Mask[p_1, right_1:=Mask[p_1, right_1] - perm];
                            perm := 1 / 5;
                            assert {:msg "  Folding udValid(p) might fail. Fraction 1 / 5 might be negative. (AVLTree.iterative.vpr@72.8--72.34) [92661]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access p.root (AVLTree.iterative.vpr@72.8--72.34) [92662]"}
                                perm <= Mask[p_1, root_1];
                            }
                            Mask := Mask[p_1, root_1:=Mask[p_1, root_1] - perm];
                            if (Heap[p_1, leftDown]) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access rightValid(p) (AVLTree.iterative.vpr@72.8--72.34) [92663]"}
                                  perm <= Mask[null, rightValid(p_1)];
                              }
                              Mask := Mask[null, rightValid(p_1):=Mask[null, rightValid(p_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(p_1), Heap[null, udValid(p_1)], rightValid(p_1), Heap[null, rightValid(p_1)]);
                            }
                            if (Heap[p_1, leftDown]) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access leftOpen(p) (AVLTree.iterative.vpr@72.8--72.34) [92664]"}
                                  perm <= Mask[null, leftOpen(p_1)];
                              }
                              Mask := Mask[null, leftOpen(p_1):=Mask[null, leftOpen(p_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(p_1), Heap[null, udValid(p_1)], leftOpen(p_1), Heap[null, leftOpen(p_1)]);
                            }
                            if (Heap[p_1, leftDown] ==> false) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access leftValid(p) (AVLTree.iterative.vpr@72.8--72.34) [92665]"}
                                  perm <= Mask[null, leftValid(p_1)];
                              }
                              Mask := Mask[null, leftValid(p_1):=Mask[null, leftValid(p_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(p_1), Heap[null, udValid(p_1)], leftValid(p_1), Heap[null, leftValid(p_1)]);
                            }
                            if (Heap[p_1, leftDown] ==> false) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access rightOpen(p) (AVLTree.iterative.vpr@72.8--72.34) [92666]"}
                                  perm <= Mask[null, rightOpen(p_1)];
                              }
                              Mask := Mask[null, rightOpen(p_1):=Mask[null, rightOpen(p_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(p_1), Heap[null, udValid(p_1)], rightOpen(p_1), Heap[null, rightOpen(p_1)]);
                            }
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(p) might fail. There might be insufficient permission to access udParentValid(p) (AVLTree.iterative.vpr@72.8--72.34) [92667]"}
                                perm <= Mask[null, udParentValid(p_1)];
                            }
                            Mask := Mask[null, udParentValid(p_1):=Mask[null, udParentValid(p_1)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(udValid(p_1), Heap[null, udValid(p_1)], udParentValid(p_1), Heap[null, udParentValid(p_1)]);
                            perm := FullPerm;
                            Mask := Mask[null, udValid(p_1):=Mask[null, udValid(p_1)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume udValid#trigger(Heap, udValid(p_1));
                            assume Heap[null, udValid(p_1)] == CombineFrames(FrameFragment(Heap[p_1, key_6]), CombineFrames(FrameFragment(Heap[p_1, leftDown]), CombineFrames(FrameFragment(Heap[p_1, left_2]), CombineFrames(FrameFragment(Heap[p_1, right_1]), CombineFrames(FrameFragment(Heap[p_1, root_1]), CombineFrames(FrameFragment((if Heap[p_1, leftDown] then Heap[null, rightValid(p_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[p_1, leftDown] then Heap[null, leftOpen(p_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[p_1, leftDown] ==> false then Heap[null, leftValid(p_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[p_1, leftDown] ==> false then Heap[null, rightOpen(p_1)] else EmptyFrame)), Heap[null, udParentValid(p_1)])))))))));
                            if (!HasDirectPerm(Mask, null, udValid(p_1))) {
                              Heap := Heap[null, udValid#sm(p_1):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, udValid(p_1):=freshVersion];
                            }
                            Heap := Heap[null, udValid#sm(p_1):=Heap[null, udValid#sm(p_1)][p_1, key_6:=true]];
                            Heap := Heap[null, udValid#sm(p_1):=Heap[null, udValid#sm(p_1)][p_1, leftDown:=true]];
                            Heap := Heap[null, udValid#sm(p_1):=Heap[null, udValid#sm(p_1)][p_1, left_2:=true]];
                            Heap := Heap[null, udValid#sm(p_1):=Heap[null, udValid#sm(p_1)][p_1, right_1:=true]];
                            Heap := Heap[null, udValid#sm(p_1):=Heap[null, udValid#sm(p_1)][p_1, root_1:=true]];
                            if (Heap[p_1, leftDown]) {
                              havoc newPMask;
                              assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
                                { newPMask[o_21, f_58] }
                                Heap[null, udValid#sm(p_1)][o_21, f_58] || Heap[null, rightValid#sm(p_1)][o_21, f_58] ==> newPMask[o_21, f_58]
                              );
                              Heap := Heap[null, udValid#sm(p_1):=newPMask];
                            }
                            if (Heap[p_1, leftDown]) {
                              havoc newPMask;
                              assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
                                { newPMask[o_43, f_33] }
                                Heap[null, udValid#sm(p_1)][o_43, f_33] || Heap[null, leftOpen#sm(p_1)][o_43, f_33] ==> newPMask[o_43, f_33]
                              );
                              Heap := Heap[null, udValid#sm(p_1):=newPMask];
                            }
                            if (Heap[p_1, leftDown] ==> false) {
                              havoc newPMask;
                              assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
                                { newPMask[o_50, f_75] }
                                Heap[null, udValid#sm(p_1)][o_50, f_75] || Heap[null, leftValid#sm(p_1)][o_50, f_75] ==> newPMask[o_50, f_75]
                              );
                              Heap := Heap[null, udValid#sm(p_1):=newPMask];
                            }
                            if (Heap[p_1, leftDown] ==> false) {
                              havoc newPMask;
                              assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
                                { newPMask[o_22, f_59] }
                                Heap[null, udValid#sm(p_1)][o_22, f_59] || Heap[null, rightOpen#sm(p_1)][o_22, f_59] ==> newPMask[o_22, f_59]
                              );
                              Heap := Heap[null, udValid#sm(p_1):=newPMask];
                            }
                            havoc newPMask;
                            assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
                              { newPMask[o_67, f_69] }
                              Heap[null, udValid#sm(p_1)][o_67, f_69] || Heap[null, udParentValid#sm(p_1)][o_67, f_69] ==> newPMask[o_67, f_69]
                            );
                            Heap := Heap[null, udValid#sm(p_1):=newPMask];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(udParentValid(n), write) -- AVLTree.iterative.vpr@73.8--73.40
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := 1 / 2;
                            assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@73.8--73.40) [92668]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent (AVLTree.iterative.vpr@73.8--73.40) [92669]"}
                                perm <= Mask[n, parent];
                            }
                            Mask := Mask[n, parent:=Mask[n, parent] - perm];
                            perm := 1 / 10;
                            assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@73.8--73.40) [92670]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@73.8--73.40) [92671]"}
                                perm <= Mask[n, root_1];
                            }
                            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
                            if (Heap[n, parent] != null) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access udValid(n.parent) (AVLTree.iterative.vpr@73.8--73.40) [92672]"}
                                  perm <= Mask[null, udValid(Heap[n, parent])];
                              }
                              Mask := Mask[null, udValid(Heap[n, parent]):=Mask[null, udValid(Heap[n, parent])] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udParentValid(n), Heap[null, udParentValid(n)], udValid(Heap[n, parent]), Heap[null, udValid(Heap[n, parent])]);
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@73.8--73.40) [92673]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.leftDown (AVLTree.iterative.vpr@73.8--73.40) [92674]"}
                                  perm <= Mask[Heap[n, parent], leftDown];
                              }
                              Mask := Mask[Heap[n, parent], leftDown:=Mask[Heap[n, parent], leftDown] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@73.8--73.40) [92675]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.left (AVLTree.iterative.vpr@73.8--73.40) [92676]"}
                                  perm <= Mask[Heap[n, parent], left_2];
                              }
                              Mask := Mask[Heap[n, parent], left_2:=Mask[Heap[n, parent], left_2] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion n.parent.leftDown == (n.parent.left == n) might not hold. (AVLTree.iterative.vpr@73.8--73.40) [92677]"}
                                Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], left_2] == n);
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@73.8--73.40) [92678]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.right (AVLTree.iterative.vpr@73.8--73.40) [92679]"}
                                  perm <= Mask[Heap[n, parent], right_1];
                              }
                              Mask := Mask[Heap[n, parent], right_1:=Mask[Heap[n, parent], right_1] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion !n.parent.leftDown == (n.parent.right == n) might not hold. (AVLTree.iterative.vpr@73.8--73.40) [92680]"}
                                !Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], right_1] == n);
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@73.8--73.40) [92681]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.root (AVLTree.iterative.vpr@73.8--73.40) [92682]"}
                                  perm <= Mask[Heap[n, parent], root_1];
                              }
                              Mask := Mask[Heap[n, parent], root_1:=Mask[Heap[n, parent], root_1] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n.parent.root might not hold. (AVLTree.iterative.vpr@73.8--73.40) [92683]"}
                                Heap[n, root_1] == Heap[Heap[n, parent], root_1];
                            }
                            if (Heap[n, parent] == null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n might not hold. (AVLTree.iterative.vpr@73.8--73.40) [92684]"}
                                Heap[n, root_1] == n;
                            }
                            perm := FullPerm;
                            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume udParentValid#trigger(Heap, udParentValid(n));
                            assume Heap[null, udParentValid(n)] == CombineFrames(FrameFragment(Heap[n, parent]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment((if Heap[n, parent] != null then Heap[null, udValid(Heap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                            if (!HasDirectPerm(Mask, null, udParentValid(n))) {
                              Heap := Heap[null, udParentValid#sm(n):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, udParentValid(n):=freshVersion];
                            }
                            Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                            Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                            if (Heap[n, parent] != null) {
                              havoc newPMask;
                              assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
                                { newPMask[o_68, f_76] }
                                Heap[null, udParentValid#sm(n)][o_68, f_76] || Heap[null, udValid#sm(Heap[n, parent])][o_68, f_76] ==> newPMask[o_68, f_76]
                              );
                              Heap := Heap[null, udParentValid#sm(n):=newPMask];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                            }
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                        }
                        assume state(Heap, Mask);
                    } else {
                      
                      // -- Translating statement: if (n.right == null) -- AVLTree.iterative.vpr@76.7--88.8
                        
                        // -- Check definedness of n.right == null
                          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access n.right (AVLTree.iterative.vpr@76.11--76.24) [92685]"}
                            HasDirectPerm(Mask, n, right_1);
                        if (Heap[n, right_1] == null) {
                          
                          // -- Translating statement: end := true -- AVLTree.iterative.vpr@77.8--77.19
                            end_1 := true;
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(validRest(n), write) -- AVLTree.iterative.vpr@78.8--78.36
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.key (AVLTree.iterative.vpr@78.8--78.36) [92686]"}
                                perm <= Mask[n, key_6];
                            }
                            Mask := Mask[n, key_6:=Mask[n, key_6] - perm];
                            perm := 3 / 10;
                            assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 10 might be negative. (AVLTree.iterative.vpr@78.8--78.36) [92687]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@78.8--78.36) [92688]"}
                                perm <= Mask[n, root_1];
                            }
                            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
                            perm := 3 / 4;
                            assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@78.8--78.36) [92689]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.left (AVLTree.iterative.vpr@78.8--78.36) [92690]"}
                                perm <= Mask[n, left_2];
                            }
                            Mask := Mask[n, left_2:=Mask[n, left_2] - perm];
                            perm := 3 / 4;
                            assert {:msg "  Folding validRest(n) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@78.8--78.36) [92691]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.right (AVLTree.iterative.vpr@78.8--78.36) [92692]"}
                                perm <= Mask[n, right_1];
                            }
                            Mask := Mask[n, right_1:=Mask[n, right_1] - perm];
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding validRest(n) might fail. There might be insufficient permission to access n.leftDown (AVLTree.iterative.vpr@78.8--78.36) [92693]"}
                                perm <= Mask[n, leftDown];
                            }
                            Mask := Mask[n, leftDown:=Mask[n, leftDown] - perm];
                            assert {:msg "  Folding validRest(n) might fail. Assertion n.right != n.left || n.right == null might not hold. (AVLTree.iterative.vpr@78.8--78.36) [92694]"}
                              Heap[n, right_1] != Heap[n, left_2] || Heap[n, right_1] == null;
                            perm := FullPerm;
                            Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume validRest#trigger(Heap, validRest(n));
                            assume Heap[null, validRest(n)] == CombineFrames(FrameFragment(Heap[n, key_6]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment(Heap[n, left_2]), CombineFrames(FrameFragment(Heap[n, right_1]), FrameFragment(Heap[n, leftDown])))));
                            if (!HasDirectPerm(Mask, null, validRest(n))) {
                              Heap := Heap[null, validRest#sm(n):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, validRest(n):=freshVersion];
                            }
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, key_6:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, root_1:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, left_2:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, right_1:=true]];
                            Heap := Heap[null, validRest#sm(n):=Heap[null, validRest#sm(n)][n, leftDown:=true]];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(valid(n), write) -- AVLTree.iterative.vpr@79.8--79.32
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access validRest(n) (AVLTree.iterative.vpr@79.8--79.32) [92695]"}
                                perm <= Mask[null, validRest(n)];
                            }
                            Mask := Mask[null, validRest(n):=Mask[null, validRest(n)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(valid(n), Heap[null, valid(n)], validRest(n), Heap[null, validRest(n)]);
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access leftValid(n) (AVLTree.iterative.vpr@79.8--79.32) [92696]"}
                                perm <= Mask[null, leftValid(n)];
                            }
                            Mask := Mask[null, leftValid(n):=Mask[null, leftValid(n)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(valid(n), Heap[null, valid(n)], leftValid(n), Heap[null, leftValid(n)]);
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding valid(n) might fail. There might be insufficient permission to access rightValid(n) (AVLTree.iterative.vpr@79.8--79.32) [92697]"}
                                perm <= Mask[null, rightValid(n)];
                            }
                            Mask := Mask[null, rightValid(n):=Mask[null, rightValid(n)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(valid(n), Heap[null, valid(n)], rightValid(n), Heap[null, rightValid(n)]);
                            perm := FullPerm;
                            Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume valid#trigger(Heap, valid(n));
                            assume Heap[null, valid(n)] == CombineFrames(Heap[null, validRest(n)], CombineFrames(Heap[null, leftValid(n)], Heap[null, rightValid(n)]));
                            if (!HasDirectPerm(Mask, null, valid(n))) {
                              Heap := Heap[null, valid#sm(n):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, valid(n):=freshVersion];
                            }
                            havoc newPMask;
                            assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
                              { newPMask[o_69, f_77] }
                              Heap[null, valid#sm(n)][o_69, f_77] || Heap[null, validRest#sm(n)][o_69, f_77] ==> newPMask[o_69, f_77]
                            );
                            Heap := Heap[null, valid#sm(n):=newPMask];
                            havoc newPMask;
                            assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
                              { newPMask[o_70, f_78] }
                              Heap[null, valid#sm(n)][o_70, f_78] || Heap[null, leftValid#sm(n)][o_70, f_78] ==> newPMask[o_70, f_78]
                            );
                            Heap := Heap[null, valid#sm(n):=newPMask];
                            havoc newPMask;
                            assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
                              { newPMask[o_71, f_35] }
                              Heap[null, valid#sm(n)][o_71, f_35] || Heap[null, rightValid#sm(n)][o_71, f_35] ==> newPMask[o_71, f_35]
                            );
                            Heap := Heap[null, valid#sm(n):=newPMask];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                        } else {
                          
                          // -- Translating statement: q := n -- AVLTree.iterative.vpr@81.8--81.14
                            q_1 := n;
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: unfold acc(rightValid(q), write) -- AVLTree.iterative.vpr@82.8--82.39
                            assume rightValid#trigger(Heap, rightValid(q_1));
                            assume Heap[null, rightValid(q_1)] == CombineFrames(FrameFragment(Heap[q_1, right_1]), CombineFrames(FrameFragment(Heap[q_1, root_1]), CombineFrames(FrameFragment((if Heap[q_1, right_1] != null then Heap[null, valid(Heap[q_1, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[q_1, right_1] != null then FrameFragment(Heap[Heap[q_1, right_1], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[q_1, right_1] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[q_1, right_1] != null then FrameFragment(Heap[Heap[q_1, right_1], root_1]) else EmptyFrame)), FrameFragment((if Heap[q_1, right_1] != null then EmptyFrame else EmptyFrame))))))));
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Unfolding rightValid(q) might fail. There might be insufficient permission to access rightValid(q) (AVLTree.iterative.vpr@82.8--82.39) [92698]"}
                                perm <= Mask[null, rightValid(q_1)];
                            }
                            Mask := Mask[null, rightValid(q_1):=Mask[null, rightValid(q_1)] - perm];
                            
                            // -- Update version of predicate
                              if (!HasDirectPerm(Mask, null, rightValid(q_1))) {
                                havoc newVersion;
                                Heap := Heap[null, rightValid(q_1):=newVersion];
                              }
                            perm := 1 / 4;
                            assert {:msg "  Unfolding rightValid(q) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@82.8--82.39) [92699]"}
                              perm >= NoPerm;
                            assume perm > NoPerm ==> q_1 != null;
                            Mask := Mask[q_1, right_1:=Mask[q_1, right_1] + perm];
                            assume state(Heap, Mask);
                            perm := 1 / 10;
                            assert {:msg "  Unfolding rightValid(q) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@82.8--82.39) [92700]"}
                              perm >= NoPerm;
                            assume perm > NoPerm ==> q_1 != null;
                            Mask := Mask[q_1, root_1:=Mask[q_1, root_1] + perm];
                            assume state(Heap, Mask);
                            if (Heap[q_1, right_1] != null) {
                              perm := FullPerm;
                              Mask := Mask[null, valid(Heap[q_1, right_1]):=Mask[null, valid(Heap[q_1, right_1])] + perm];
                              
                              // -- Extra unfolding of predicate
                                assume InsidePredicate(rightValid(q_1), Heap[null, rightValid(q_1)], valid(Heap[q_1, right_1]), Heap[null, valid(Heap[q_1, right_1])]);
                              assume state(Heap, Mask);
                            }
                            if (Heap[q_1, right_1] != null) {
                              perm := FullPerm;
                              assume Heap[q_1, right_1] != null;
                              Mask := Mask[Heap[q_1, right_1], parent:=Mask[Heap[q_1, right_1], parent] + perm];
                              assume state(Heap, Mask);
                            }
                            if (Heap[q_1, right_1] != null) {
                              assume Heap[Heap[q_1, right_1], parent] == q_1;
                            }
                            if (Heap[q_1, right_1] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Unfolding rightValid(q) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@82.8--82.39) [92701]"}
                                perm >= NoPerm;
                              assume perm > NoPerm ==> Heap[q_1, right_1] != null;
                              Mask := Mask[Heap[q_1, right_1], root_1:=Mask[Heap[q_1, right_1], root_1] + perm];
                              assume state(Heap, Mask);
                            }
                            if (Heap[q_1, right_1] != null) {
                              assume Heap[Heap[q_1, right_1], root_1] == Heap[q_1, root_1];
                            }
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: n := q.right -- AVLTree.iterative.vpr@83.8--83.20
                            
                            // -- Check definedness of q.right
                              assert {:msg "  Assignment might fail. There might be insufficient permission to access q.right (AVLTree.iterative.vpr@83.8--83.20) [92702]"}
                                HasDirectPerm(Mask, q_1, right_1);
                            n := Heap[q_1, right_1];
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: q.leftDown := false -- AVLTree.iterative.vpr@84.8--84.27
                            assert {:msg "  Assignment might fail. There might be insufficient permission to access q.leftDown (AVLTree.iterative.vpr@84.8--84.27) [92703]"}
                              FullPerm == Mask[q_1, leftDown];
                            Heap := Heap[q_1, leftDown:=false];
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(rightOpen(q), write) -- AVLTree.iterative.vpr@85.8--85.36
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := 1 / 4;
                            assert {:msg "  Folding rightOpen(q) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@85.8--85.36) [92704]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding rightOpen(q) might fail. There might be insufficient permission to access q.right (AVLTree.iterative.vpr@85.8--85.36) [92705]"}
                                perm <= Mask[q_1, right_1];
                            }
                            Mask := Mask[q_1, right_1:=Mask[q_1, right_1] - perm];
                            perm := 1 / 10;
                            assert {:msg "  Folding rightOpen(q) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@85.8--85.36) [92706]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding rightOpen(q) might fail. There might be insufficient permission to access q.root (AVLTree.iterative.vpr@85.8--85.36) [92707]"}
                                perm <= Mask[q_1, root_1];
                            }
                            Mask := Mask[q_1, root_1:=Mask[q_1, root_1] - perm];
                            if (Heap[q_1, right_1] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding rightOpen(q) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@85.8--85.36) [92708]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding rightOpen(q) might fail. There might be insufficient permission to access q.right.parent (AVLTree.iterative.vpr@85.8--85.36) [92709]"}
                                  perm <= Mask[Heap[q_1, right_1], parent];
                              }
                              Mask := Mask[Heap[q_1, right_1], parent:=Mask[Heap[q_1, right_1], parent] - perm];
                            }
                            if (Heap[q_1, right_1] != null) {
                              assert {:msg "  Folding rightOpen(q) might fail. Assertion q.right.parent == q might not hold. (AVLTree.iterative.vpr@85.8--85.36) [92710]"}
                                Heap[Heap[q_1, right_1], parent] == q_1;
                            }
                            perm := FullPerm;
                            Mask := Mask[null, rightOpen(q_1):=Mask[null, rightOpen(q_1)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume rightOpen#trigger(Heap, rightOpen(q_1));
                            assume Heap[null, rightOpen(q_1)] == CombineFrames(FrameFragment(Heap[q_1, right_1]), CombineFrames(FrameFragment(Heap[q_1, root_1]), CombineFrames(FrameFragment((if Heap[q_1, right_1] != null then FrameFragment(Heap[Heap[q_1, right_1], parent]) else EmptyFrame)), FrameFragment((if Heap[q_1, right_1] != null then EmptyFrame else EmptyFrame)))));
                            if (!HasDirectPerm(Mask, null, rightOpen(q_1))) {
                              Heap := Heap[null, rightOpen#sm(q_1):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, rightOpen(q_1):=freshVersion];
                            }
                            Heap := Heap[null, rightOpen#sm(q_1):=Heap[null, rightOpen#sm(q_1)][q_1, right_1:=true]];
                            Heap := Heap[null, rightOpen#sm(q_1):=Heap[null, rightOpen#sm(q_1)][q_1, root_1:=true]];
                            if (Heap[q_1, right_1] != null) {
                              Heap := Heap[null, rightOpen#sm(q_1):=Heap[null, rightOpen#sm(q_1)][Heap[q_1, right_1], parent:=true]];
                            }
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(udValid(q), write) -- AVLTree.iterative.vpr@86.8--86.34
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access q.key (AVLTree.iterative.vpr@86.8--86.34) [92711]"}
                                perm <= Mask[q_1, key_6];
                            }
                            Mask := Mask[q_1, key_6:=Mask[q_1, key_6] - perm];
                            perm := 1 / 2;
                            assert {:msg "  Folding udValid(q) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@86.8--86.34) [92712]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access q.leftDown (AVLTree.iterative.vpr@86.8--86.34) [92713]"}
                                perm <= Mask[q_1, leftDown];
                            }
                            Mask := Mask[q_1, leftDown:=Mask[q_1, leftDown] - perm];
                            perm := 1 / 4;
                            assert {:msg "  Folding udValid(q) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@86.8--86.34) [92714]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access q.left (AVLTree.iterative.vpr@86.8--86.34) [92715]"}
                                perm <= Mask[q_1, left_2];
                            }
                            Mask := Mask[q_1, left_2:=Mask[q_1, left_2] - perm];
                            perm := 1 / 4;
                            assert {:msg "  Folding udValid(q) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@86.8--86.34) [92716]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access q.right (AVLTree.iterative.vpr@86.8--86.34) [92717]"}
                                perm <= Mask[q_1, right_1];
                            }
                            Mask := Mask[q_1, right_1:=Mask[q_1, right_1] - perm];
                            perm := 1 / 5;
                            assert {:msg "  Folding udValid(q) might fail. Fraction 1 / 5 might be negative. (AVLTree.iterative.vpr@86.8--86.34) [92718]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access q.root (AVLTree.iterative.vpr@86.8--86.34) [92719]"}
                                perm <= Mask[q_1, root_1];
                            }
                            Mask := Mask[q_1, root_1:=Mask[q_1, root_1] - perm];
                            if (Heap[q_1, leftDown]) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access rightValid(q) (AVLTree.iterative.vpr@86.8--86.34) [92720]"}
                                  perm <= Mask[null, rightValid(q_1)];
                              }
                              Mask := Mask[null, rightValid(q_1):=Mask[null, rightValid(q_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(q_1), Heap[null, udValid(q_1)], rightValid(q_1), Heap[null, rightValid(q_1)]);
                            }
                            if (Heap[q_1, leftDown]) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access leftOpen(q) (AVLTree.iterative.vpr@86.8--86.34) [92721]"}
                                  perm <= Mask[null, leftOpen(q_1)];
                              }
                              Mask := Mask[null, leftOpen(q_1):=Mask[null, leftOpen(q_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(q_1), Heap[null, udValid(q_1)], leftOpen(q_1), Heap[null, leftOpen(q_1)]);
                            }
                            if (Heap[q_1, leftDown] ==> false) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access leftValid(q) (AVLTree.iterative.vpr@86.8--86.34) [92722]"}
                                  perm <= Mask[null, leftValid(q_1)];
                              }
                              Mask := Mask[null, leftValid(q_1):=Mask[null, leftValid(q_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(q_1), Heap[null, udValid(q_1)], leftValid(q_1), Heap[null, leftValid(q_1)]);
                            }
                            if (Heap[q_1, leftDown] ==> false) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access rightOpen(q) (AVLTree.iterative.vpr@86.8--86.34) [92723]"}
                                  perm <= Mask[null, rightOpen(q_1)];
                              }
                              Mask := Mask[null, rightOpen(q_1):=Mask[null, rightOpen(q_1)] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udValid(q_1), Heap[null, udValid(q_1)], rightOpen(q_1), Heap[null, rightOpen(q_1)]);
                            }
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udValid(q) might fail. There might be insufficient permission to access udParentValid(q) (AVLTree.iterative.vpr@86.8--86.34) [92724]"}
                                perm <= Mask[null, udParentValid(q_1)];
                            }
                            Mask := Mask[null, udParentValid(q_1):=Mask[null, udParentValid(q_1)] - perm];
                            
                            // -- Record predicate instance information
                              assume InsidePredicate(udValid(q_1), Heap[null, udValid(q_1)], udParentValid(q_1), Heap[null, udParentValid(q_1)]);
                            perm := FullPerm;
                            Mask := Mask[null, udValid(q_1):=Mask[null, udValid(q_1)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume udValid#trigger(Heap, udValid(q_1));
                            assume Heap[null, udValid(q_1)] == CombineFrames(FrameFragment(Heap[q_1, key_6]), CombineFrames(FrameFragment(Heap[q_1, leftDown]), CombineFrames(FrameFragment(Heap[q_1, left_2]), CombineFrames(FrameFragment(Heap[q_1, right_1]), CombineFrames(FrameFragment(Heap[q_1, root_1]), CombineFrames(FrameFragment((if Heap[q_1, leftDown] then Heap[null, rightValid(q_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[q_1, leftDown] then Heap[null, leftOpen(q_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[q_1, leftDown] ==> false then Heap[null, leftValid(q_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[q_1, leftDown] ==> false then Heap[null, rightOpen(q_1)] else EmptyFrame)), Heap[null, udParentValid(q_1)])))))))));
                            if (!HasDirectPerm(Mask, null, udValid(q_1))) {
                              Heap := Heap[null, udValid#sm(q_1):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, udValid(q_1):=freshVersion];
                            }
                            Heap := Heap[null, udValid#sm(q_1):=Heap[null, udValid#sm(q_1)][q_1, key_6:=true]];
                            Heap := Heap[null, udValid#sm(q_1):=Heap[null, udValid#sm(q_1)][q_1, leftDown:=true]];
                            Heap := Heap[null, udValid#sm(q_1):=Heap[null, udValid#sm(q_1)][q_1, left_2:=true]];
                            Heap := Heap[null, udValid#sm(q_1):=Heap[null, udValid#sm(q_1)][q_1, right_1:=true]];
                            Heap := Heap[null, udValid#sm(q_1):=Heap[null, udValid#sm(q_1)][q_1, root_1:=true]];
                            if (Heap[q_1, leftDown]) {
                              havoc newPMask;
                              assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
                                { newPMask[o_72, f_79] }
                                Heap[null, udValid#sm(q_1)][o_72, f_79] || Heap[null, rightValid#sm(q_1)][o_72, f_79] ==> newPMask[o_72, f_79]
                              );
                              Heap := Heap[null, udValid#sm(q_1):=newPMask];
                            }
                            if (Heap[q_1, leftDown]) {
                              havoc newPMask;
                              assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
                                { newPMask[o_30, f_80] }
                                Heap[null, udValid#sm(q_1)][o_30, f_80] || Heap[null, leftOpen#sm(q_1)][o_30, f_80] ==> newPMask[o_30, f_80]
                              );
                              Heap := Heap[null, udValid#sm(q_1):=newPMask];
                            }
                            if (Heap[q_1, leftDown] ==> false) {
                              havoc newPMask;
                              assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
                                { newPMask[o_79, f_36] }
                                Heap[null, udValid#sm(q_1)][o_79, f_36] || Heap[null, leftValid#sm(q_1)][o_79, f_36] ==> newPMask[o_79, f_36]
                              );
                              Heap := Heap[null, udValid#sm(q_1):=newPMask];
                            }
                            if (Heap[q_1, leftDown] ==> false) {
                              havoc newPMask;
                              assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
                                { newPMask[o_80, f_88] }
                                Heap[null, udValid#sm(q_1)][o_80, f_88] || Heap[null, rightOpen#sm(q_1)][o_80, f_88] ==> newPMask[o_80, f_88]
                              );
                              Heap := Heap[null, udValid#sm(q_1):=newPMask];
                            }
                            havoc newPMask;
                            assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
                              { newPMask[o_31, f_89] }
                              Heap[null, udValid#sm(q_1)][o_31, f_89] || Heap[null, udParentValid#sm(q_1)][o_31, f_89] ==> newPMask[o_31, f_89]
                            );
                            Heap := Heap[null, udValid#sm(q_1):=newPMask];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                          
                          // -- Translating statement: fold acc(udParentValid(n), write) -- AVLTree.iterative.vpr@87.8--87.40
                            ExhaleWellDef0Mask := Mask;
                            ExhaleWellDef0Heap := Heap;
                            perm := 1 / 2;
                            assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@87.8--87.40) [92725]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent (AVLTree.iterative.vpr@87.8--87.40) [92726]"}
                                perm <= Mask[n, parent];
                            }
                            Mask := Mask[n, parent:=Mask[n, parent] - perm];
                            perm := 1 / 10;
                            assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@87.8--87.40) [92727]"}
                              perm >= NoPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@87.8--87.40) [92728]"}
                                perm <= Mask[n, root_1];
                            }
                            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
                            if (Heap[n, parent] != null) {
                              perm := FullPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access udValid(n.parent) (AVLTree.iterative.vpr@87.8--87.40) [92729]"}
                                  perm <= Mask[null, udValid(Heap[n, parent])];
                              }
                              Mask := Mask[null, udValid(Heap[n, parent]):=Mask[null, udValid(Heap[n, parent])] - perm];
                              
                              // -- Record predicate instance information
                                assume InsidePredicate(udParentValid(n), Heap[null, udParentValid(n)], udValid(Heap[n, parent]), Heap[null, udValid(Heap[n, parent])]);
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@87.8--87.40) [92730]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.leftDown (AVLTree.iterative.vpr@87.8--87.40) [92731]"}
                                  perm <= Mask[Heap[n, parent], leftDown];
                              }
                              Mask := Mask[Heap[n, parent], leftDown:=Mask[Heap[n, parent], leftDown] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@87.8--87.40) [92732]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.left (AVLTree.iterative.vpr@87.8--87.40) [92733]"}
                                  perm <= Mask[Heap[n, parent], left_2];
                              }
                              Mask := Mask[Heap[n, parent], left_2:=Mask[Heap[n, parent], left_2] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion n.parent.leftDown == (n.parent.left == n) might not hold. (AVLTree.iterative.vpr@87.8--87.40) [92734]"}
                                Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], left_2] == n);
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@87.8--87.40) [92735]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.right (AVLTree.iterative.vpr@87.8--87.40) [92736]"}
                                  perm <= Mask[Heap[n, parent], right_1];
                              }
                              Mask := Mask[Heap[n, parent], right_1:=Mask[Heap[n, parent], right_1] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion !n.parent.leftDown == (n.parent.right == n) might not hold. (AVLTree.iterative.vpr@87.8--87.40) [92737]"}
                                !Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], right_1] == n);
                            }
                            if (Heap[n, parent] != null) {
                              perm := 1 / 2;
                              assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@87.8--87.40) [92738]"}
                                perm >= NoPerm;
                              if (perm != NoPerm) {
                                assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.root (AVLTree.iterative.vpr@87.8--87.40) [92739]"}
                                  perm <= Mask[Heap[n, parent], root_1];
                              }
                              Mask := Mask[Heap[n, parent], root_1:=Mask[Heap[n, parent], root_1] - perm];
                            }
                            if (Heap[n, parent] != null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n.parent.root might not hold. (AVLTree.iterative.vpr@87.8--87.40) [92740]"}
                                Heap[n, root_1] == Heap[Heap[n, parent], root_1];
                            }
                            if (Heap[n, parent] == null) {
                              assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n might not hold. (AVLTree.iterative.vpr@87.8--87.40) [92741]"}
                                Heap[n, root_1] == n;
                            }
                            perm := FullPerm;
                            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                            assume udParentValid#trigger(Heap, udParentValid(n));
                            assume Heap[null, udParentValid(n)] == CombineFrames(FrameFragment(Heap[n, parent]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment((if Heap[n, parent] != null then Heap[null, udValid(Heap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                            if (!HasDirectPerm(Mask, null, udParentValid(n))) {
                              Heap := Heap[null, udParentValid#sm(n):=ZeroPMask];
                              havoc freshVersion;
                              Heap := Heap[null, udParentValid(n):=freshVersion];
                            }
                            Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                            Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                            if (Heap[n, parent] != null) {
                              havoc newPMask;
                              assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
                                { newPMask[o_81, f_90] }
                                Heap[null, udParentValid#sm(n)][o_81, f_90] || Heap[null, udValid#sm(Heap[n, parent])][o_81, f_90] ==> newPMask[o_81, f_90]
                              );
                              Heap := Heap[null, udParentValid#sm(n):=newPMask];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                            }
                            if (Heap[n, parent] != null) {
                              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                            }
                            assume state(Heap, Mask);
                            assume state(Heap, Mask);
                        }
                        assume state(Heap, Mask);
                    }
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
            // Exhale invariant
            
            // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not be preserved. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@49.15--49.68) [92742]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
                  { newPMask[o_82, f_91] }
                  Heap[null, valid#sm(n)][o_82, f_91] || Heap[null, validRest#sm(n)][o_82, f_91] ==> newPMask[o_82, f_91]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
                  { newPMask[o_62, f_47] }
                  Heap[null, valid#sm(n)][o_62, f_47] || Heap[null, leftValid#sm(n)][o_62, f_47] ==> newPMask[o_62, f_47]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
                  { newPMask[o_83, f_72] }
                  Heap[null, valid#sm(n)][o_83, f_72] || Heap[null, rightValid#sm(n)][o_83, f_72] ==> newPMask[o_83, f_72]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.root1, write) might not be preserved. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@43.15--43.36) [92743]"}
                perm <= Mask[this, root1];
            }
            Mask := Mask[this, root1:=Mask[this, root1] - perm];
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not be preserved. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@44.15--44.63) [92744]"}
              Heap[this, root1] != null;
            perm := 1 / 2;
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@44.15--44.63) [92745]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not be preserved. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@44.15--44.63) [92746]"}
                perm <= Mask[Heap[this, root1], parent];
            }
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] - perm];
            assert {:msg "  Loop invariant n != null might not be preserved. Assertion n != null might not hold. (AVLTree.iterative.vpr@45.15--45.22) [92747]"}
              n != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(valid(n), write) might not be preserved. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@46.15--46.34) [92748]"}
                perm <= Mask[null, valid(n)];
            }
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] - perm];
            perm := 4 / 10;
            assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not be preserved. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@47.15--47.31) [92749]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not be preserved. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@47.15--47.31) [92750]"}
                perm <= Mask[n, root_1];
            }
            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(udParentValid(n), write) might not be preserved. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@48.15--48.42) [92751]"}
                perm <= Mask[null, udParentValid(n)];
            }
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] - perm];
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := ExhaleWellDef0Heap;
              UnfoldingMask := ExhaleWellDef0Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef1Mask := UnfoldingMask;
              ExhaleWellDef1Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not be preserved. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@49.15--49.68) [92752]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not be preserved. Assertion n.root == this.root1 might not hold. (AVLTree.iterative.vpr@49.15--49.68) [92753]"}
              Heap[n, root_1] == Heap[this, root1];
            assert {:msg "  Loop invariant this.root1 != null might not be preserved. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@50.15--50.31) [92754]"}
              Heap[this, root1] != null;
            
            // -- Free assumptions (exhale module)
              havoc newPMask;
              assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
                { newPMask[o_84, f_92] }
                Heap[null, valid#sm(n)][o_84, f_92] || Heap[null, validRest#sm(n)][o_84, f_92] ==> newPMask[o_84, f_92]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
                { newPMask[o_63, f_48] }
                Heap[null, valid#sm(n)][o_63, f_48] || Heap[null, leftValid#sm(n)][o_63, f_48] ==> newPMask[o_63, f_48]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
                { newPMask[o_28, f_93] }
                Heap[null, valid#sm(n)][o_28, f_93] || Heap[null, rightValid#sm(n)][o_28, f_93] ==> newPMask[o_28, f_93]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume end_1;
          assume state(Heap, Mask);
          perm := FullPerm;
          assume this != null;
          Mask := Mask[this, root1:=Mask[this, root1] + perm];
          assume state(Heap, Mask);
          assume Heap[this, root1] != null;
          perm := 1 / 2;
          assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@44.15--44.63) [92755]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Heap[this, root1] != null;
          Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
          assume state(Heap, Mask);
          assume n != null;
          perm := FullPerm;
          Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
          assume state(Heap, Mask);
          perm := 4 / 10;
          assert {:msg "  While statement might fail. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@47.15--47.31) [92756]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> n != null;
          Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume valid#trigger(UnfoldingHeap, valid(n));
            assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[n, root_1] == Heap[this, root1];
          
          // -- Free assumptions (inhale module)
            havoc newPMask;
            assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
              { newPMask[o_85, f_41] }
              Heap[null, valid#sm(n)][o_85, f_41] || Heap[null, validRest#sm(n)][o_85, f_41] ==> newPMask[o_85, f_41]
            );
            Heap := Heap[null, valid#sm(n):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
              { newPMask[o_86, f_94] }
              Heap[null, valid#sm(n)][o_86, f_94] || Heap[null, leftValid#sm(n)][o_86, f_94] ==> newPMask[o_86, f_94]
            );
            Heap := Heap[null, valid#sm(n):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
              { newPMask[o_29, f_95] }
              Heap[null, valid#sm(n)][o_29, f_95] || Heap[null, rightValid#sm(n)][o_29, f_95] ==> newPMask[o_29, f_95]
            );
            Heap := Heap[null, valid#sm(n):=newPMask];
            assume state(Heap, Mask);
          assume Heap[this, root1] != null;
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume valid#trigger(UnfoldingHeap, valid(n));
            assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@49.15--49.68) [92757]"}
                perm <= UnfoldingMask[null, valid(n)];
            }
            UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              havoc newPMask;
              assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
                { newPMask[o_87, f_96] }
                Heap[null, valid#sm(n)][o_87, f_96] || Heap[null, validRest#sm(n)][o_87, f_96] ==> newPMask[o_87, f_96]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
                { newPMask[o_88, f_97] }
                Heap[null, valid#sm(n)][o_88, f_97] || Heap[null, leftValid#sm(n)][o_88, f_97] ==> newPMask[o_88, f_97]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
                { newPMask[o_89, f_98] }
                Heap[null, valid#sm(n)][o_89, f_98] || Heap[null, rightValid#sm(n)][o_89, f_98] ==> newPMask[o_89, f_98]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: end := false -- AVLTree.iterative.vpr@92.7--92.19
        end_1 := false;
        assume state(Heap, Mask);
      
      // -- Translating statement: while (!end) -- AVLTree.iterative.vpr@93.7--122.8
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            
            // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not hold on entry. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@100.18--100.71) [92758]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
                  { newPMask[o_90, f_99] }
                  Heap[null, valid#sm(n)][o_90, f_99] || Heap[null, validRest#sm(n)][o_90, f_99] ==> newPMask[o_90, f_99]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_93: Ref, f_105: (Field A B) ::
                  { newPMask[o_93, f_105] }
                  Heap[null, valid#sm(n)][o_93, f_105] || Heap[null, leftValid#sm(n)][o_93, f_105] ==> newPMask[o_93, f_105]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_94: Ref, f_44: (Field A B) ::
                  { newPMask[o_94, f_44] }
                  Heap[null, valid#sm(n)][o_94, f_44] || Heap[null, rightValid#sm(n)][o_94, f_44] ==> newPMask[o_94, f_44]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            
            // -- Execute definedness check of end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) without enforcing the checks (e.g., to gain more information)
              if (end_1) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef0Mask := UnfoldingMask;
                ExhaleWellDef0Heap := UnfoldingHeap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@102.18--102.79) [92759]"}
                    perm <= UnfoldingMask[null, udParentValid(n)];
                }
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92760]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92761]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92762]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92763]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92764]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92765]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                  if (Heap[n, parent] != null) {
                    havoc newPMask;
                    assume (forall <A, B> o_97: Ref, f_107: (Field A B) ::
                      { newPMask[o_97, f_107] }
                      Heap[null, udParentValid#sm(n)][o_97, f_107] || Heap[null, udValid#sm(Heap[n, parent])][o_97, f_107] ==> newPMask[o_97, f_107]
                    );
                    Heap := Heap[null, udParentValid#sm(n):=newPMask];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                  }
                  assume state(Heap, Mask);
              }
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.root1, write) might not hold on entry. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@94.18--94.39) [92766]"}
                perm <= Mask[this, root1];
            }
            Mask := Mask[this, root1:=Mask[this, root1] - perm];
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not hold on entry. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@95.18--95.66) [92767]"}
              Heap[this, root1] != null;
            perm := 1 / 2;
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@95.18--95.66) [92768]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not hold on entry. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@95.18--95.66) [92769]"}
                perm <= Mask[Heap[this, root1], parent];
            }
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] - perm];
            assert {:msg "  Loop invariant n != null might not hold on entry. Assertion n != null might not hold. (AVLTree.iterative.vpr@96.18--96.25) [92770]"}
              n != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(valid(n), write) might not hold on entry. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@97.18--97.37) [92771]"}
                perm <= Mask[null, valid(n)];
            }
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(udParentValid(n), write) might not hold on entry. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@98.18--98.45) [92772]"}
                perm <= Mask[null, udParentValid(n)];
            }
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] - perm];
            perm := 4 / 10;
            assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not hold on entry. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@99.18--99.34) [92773]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not hold on entry. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@99.18--99.34) [92774]"}
                perm <= Mask[n, root_1];
            }
            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := ExhaleWellDef0Heap;
              UnfoldingMask := ExhaleWellDef0Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef1Mask := UnfoldingMask;
              ExhaleWellDef1Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not hold on entry. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@100.18--100.71) [92775]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not hold on entry. Assertion n.root == this.root1 might not hold. (AVLTree.iterative.vpr@100.18--100.71) [92776]"}
              Heap[n, root_1] == Heap[this, root1];
            assert {:msg "  Loop invariant this.root1 != null might not hold on entry. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@101.18--101.34) [92777]"}
              Heap[this, root1] != null;
            if (end_1) {
              
              // -- Execute unfolding (for extra information)
                UnfoldingHeap := ExhaleWellDef0Heap;
                UnfoldingMask := ExhaleWellDef0Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef1Mask := UnfoldingMask;
                ExhaleWellDef1Heap := UnfoldingHeap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@102.18--102.79) [92778]"}
                    perm <= UnfoldingMask[null, udParentValid(n)];
                }
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92779]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92780]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92781]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92782]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92783]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92784]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not hold on entry. Assertion n.parent == null might not hold. (AVLTree.iterative.vpr@102.18--102.79) [92785]"}
                Heap[n, parent] == null;
            }
            
            // -- Free assumptions (exhale module)
              havoc newPMask;
              assume (forall <A, B> o_95: Ref, f_106: (Field A B) ::
                { newPMask[o_95, f_106] }
                Heap[null, valid#sm(n)][o_95, f_106] || Heap[null, validRest#sm(n)][o_95, f_106] ==> newPMask[o_95, f_106]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_96: Ref, f_45: (Field A B) ::
                { newPMask[o_96, f_45] }
                Heap[null, valid#sm(n)][o_96, f_45] || Heap[null, leftValid#sm(n)][o_96, f_45] ==> newPMask[o_96, f_45]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_77: Ref, f_109: (Field A B) ::
                { newPMask[o_77, f_109] }
                Heap[null, valid#sm(n)][o_77, f_109] || Heap[null, rightValid#sm(n)][o_77, f_109] ==> newPMask[o_77, f_109]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
              if (Heap[n, parent] != null) {
                havoc newPMask;
                assume (forall <A, B> o_98: Ref, f_87: (Field A B) ::
                  { newPMask[o_98, f_87] }
                  Heap[null, udParentValid#sm(n)][o_98, f_87] || Heap[null, udValid#sm(Heap[n, parent])][o_98, f_87] ==> newPMask[o_98, f_87]
                );
                Heap := Heap[null, udParentValid#sm(n):=newPMask];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
              }
              assume state(Heap, Mask);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc n, end_1, r_1;
          assume Heap[n, $allocated];
          assume Heap[r_1, $allocated];
        
        // -- Check definedness of invariant
          if (*) {
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, root1:=Mask[this, root1] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of this.root1 != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@95.18--95.66) [92786]"}
                HasDirectPerm(Mask, this, root1);
            assume Heap[this, root1] != null;
            
            // -- Check definedness of acc(this.root1.parent, 1 / 2)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@95.18--95.66) [92787]"}
                HasDirectPerm(Mask, this, root1);
            perm := 1 / 2;
            assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@95.18--95.66) [92788]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> Heap[this, root1] != null;
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume n != null;
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := 4 / 10;
            assert {:msg "  Contract might not be well-formed. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@99.18--99.34) [92789]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> n != null;
            Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (unfolding acc(valid(n), write) in n.root == this.root1)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@100.18--100.71) [92790]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@100.18--100.71) [92791]"}
                HasDirectPerm(UnfoldingMask, n, root_1);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@100.18--100.71) [92792]"}
                HasDirectPerm(UnfoldingMask, this, root1);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_99: Ref, f_108: (Field A B) ::
                  { newPMask[o_99, f_108] }
                  Heap[null, valid#sm(n)][o_99, f_108] || Heap[null, validRest#sm(n)][o_99, f_108] ==> newPMask[o_99, f_108]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_78: Ref, f_110: (Field A B) ::
                  { newPMask[o_78, f_110] }
                  Heap[null, valid#sm(n)][o_78, f_110] || Heap[null, leftValid#sm(n)][o_78, f_110] ==> newPMask[o_78, f_110]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_100: Ref, f_111: (Field A B) ::
                  { newPMask[o_100, f_111] }
                  Heap[null, valid#sm(n)][o_100, f_111] || Heap[null, rightValid#sm(n)][o_100, f_111] ==> newPMask[o_100, f_111]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assume Heap[n, root_1] == Heap[this, root1];
            assume state(Heap, Mask);
            
            // -- Check definedness of this.root1 != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@101.18--101.34) [92793]"}
                HasDirectPerm(Mask, this, root1);
            assume Heap[this, root1] != null;
            assume state(Heap, Mask);
            if (end_1) {
              
              // -- Check definedness of (unfolding acc(udParentValid(n), write) in n.parent == null)
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef0Mask := UnfoldingMask;
                ExhaleWellDef0Heap := UnfoldingHeap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@102.18--102.79) [92794]"}
                    perm <= UnfoldingMask[null, udParentValid(n)];
                }
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92795]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assert {:msg "  Contract might not be well-formed. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92796]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92797]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92798]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92799]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92800]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n.parent (AVLTree.iterative.vpr@102.18--102.79) [92801]"}
                  HasDirectPerm(UnfoldingMask, n, parent);
                
                // -- Free assumptions (exp module)
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                  if (Heap[n, parent] != null) {
                    havoc newPMask;
                    assume (forall <A, B> o_101: Ref, f_112: (Field A B) ::
                      { newPMask[o_101, f_112] }
                      Heap[null, udParentValid#sm(n)][o_101, f_112] || Heap[null, udValid#sm(Heap[n, parent])][o_101, f_112] ==> newPMask[o_101, f_112]
                    );
                    Heap := Heap[null, udParentValid#sm(n):=newPMask];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                  }
                  assume state(Heap, Mask);
              
              // -- Execute unfolding (for extra information)
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef0Mask := UnfoldingMask;
                ExhaleWellDef0Heap := UnfoldingHeap;
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
              assume Heap[n, parent] == null;
            }
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
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, root1:=Mask[this, root1] + perm];
            assume state(Heap, Mask);
            assume Heap[this, root1] != null;
            perm := 1 / 2;
            assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@95.18--95.66) [92802]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> Heap[this, root1] != null;
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
            assume state(Heap, Mask);
            assume n != null;
            perm := FullPerm;
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
            assume state(Heap, Mask);
            perm := 4 / 10;
            assert {:msg "  While statement might fail. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@99.18--99.34) [92803]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> n != null;
            Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
            assume state(Heap, Mask);
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assume Heap[n, root_1] == Heap[this, root1];
            
            // -- Free assumptions (inhale module)
              havoc newPMask;
              assume (forall <A, B> o_102: Ref, f_113: (Field A B) ::
                { newPMask[o_102, f_113] }
                Heap[null, valid#sm(n)][o_102, f_113] || Heap[null, validRest#sm(n)][o_102, f_113] ==> newPMask[o_102, f_113]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_103: Ref, f_114: (Field A B) ::
                { newPMask[o_103, f_114] }
                Heap[null, valid#sm(n)][o_103, f_114] || Heap[null, leftValid#sm(n)][o_103, f_114] ==> newPMask[o_103, f_114]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_104: Ref, f_115: (Field A B) ::
                { newPMask[o_104, f_115] }
                Heap[null, valid#sm(n)][o_104, f_115] || Heap[null, rightValid#sm(n)][o_104, f_115] ==> newPMask[o_104, f_115]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
            assume Heap[this, root1] != null;
            if (end_1) {
              
              // -- Execute unfolding (for extra information)
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef0Mask := UnfoldingMask;
                ExhaleWellDef0Heap := UnfoldingHeap;
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
              assume Heap[n, parent] == null;
              
              // -- Free assumptions (inhale module)
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                if (Heap[n, parent] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_105: Ref, f_116: (Field A B) ::
                    { newPMask[o_105, f_116] }
                    Heap[null, udParentValid#sm(n)][o_105, f_116] || Heap[null, udValid#sm(Heap[n, parent])][o_105, f_116] ==> newPMask[o_105, f_116]
                  );
                  Heap := Heap[null, udParentValid#sm(n):=newPMask];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                }
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            
            // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@100.18--100.71) [92804]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_106: Ref, f_117: (Field A B) ::
                  { newPMask[o_106, f_117] }
                  Heap[null, valid#sm(n)][o_106, f_117] || Heap[null, validRest#sm(n)][o_106, f_117] ==> newPMask[o_106, f_117]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_107: Ref, f_118: (Field A B) ::
                  { newPMask[o_107, f_118] }
                  Heap[null, valid#sm(n)][o_107, f_118] || Heap[null, leftValid#sm(n)][o_107, f_118] ==> newPMask[o_107, f_118]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_108: Ref, f_119: (Field A B) ::
                  { newPMask[o_108, f_119] }
                  Heap[null, valid#sm(n)][o_108, f_119] || Heap[null, rightValid#sm(n)][o_108, f_119] ==> newPMask[o_108, f_119]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            
            // -- Execute definedness check of end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) without enforcing the checks (e.g., to gain more information)
              if (end_1) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef0Mask := UnfoldingMask;
                ExhaleWellDef0Heap := UnfoldingHeap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  An internal error occurred. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@102.18--102.79) [92805]"}
                    perm <= UnfoldingMask[null, udParentValid(n)];
                }
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92806]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assert {:msg "  An internal error occurred. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92807]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92808]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92809]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92810]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92811]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                  if (Heap[n, parent] != null) {
                    havoc newPMask;
                    assume (forall <A, B> o_109: Ref, f_120: (Field A B) ::
                      { newPMask[o_109, f_120] }
                      Heap[null, udParentValid#sm(n)][o_109, f_120] || Heap[null, udValid#sm(Heap[n, parent])][o_109, f_120] ==> newPMask[o_109, f_120]
                    );
                    Heap := Heap[null, udParentValid#sm(n):=newPMask];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                  }
                  assume state(Heap, Mask);
              }
            // Check and assume guard
            assume !end_1;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: unfold acc(udParentValid(n), write) -- AVLTree.iterative.vpr@104.8--104.42
                assume udParentValid#trigger(Heap, udParentValid(n));
                assume Heap[null, udParentValid(n)] == CombineFrames(FrameFragment(Heap[n, parent]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment((if Heap[n, parent] != null then Heap[null, udValid(Heap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding udParentValid(n) might fail. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@104.8--104.42) [92812]"}
                    perm <= Mask[null, udParentValid(n)];
                }
                Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, udParentValid(n))) {
                    havoc newVersion;
                    Heap := Heap[null, udParentValid(n):=newVersion];
                  }
                perm := 1 / 2;
                assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@104.8--104.42) [92813]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                Mask := Mask[n, parent:=Mask[n, parent] + perm];
                assume state(Heap, Mask);
                perm := 1 / 10;
                assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@104.8--104.42) [92814]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
                assume state(Heap, Mask);
                if (Heap[n, parent] != null) {
                  perm := FullPerm;
                  Mask := Mask[null, udValid(Heap[n, parent]):=Mask[null, udValid(Heap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), Heap[null, udParentValid(n)], udValid(Heap[n, parent]), Heap[null, udValid(Heap[n, parent])]);
                  assume state(Heap, Mask);
                }
                if (Heap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@104.8--104.42) [92815]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> Heap[n, parent] != null;
                  Mask := Mask[Heap[n, parent], leftDown:=Mask[Heap[n, parent], leftDown] + perm];
                  assume state(Heap, Mask);
                }
                if (Heap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@104.8--104.42) [92816]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> Heap[n, parent] != null;
                  Mask := Mask[Heap[n, parent], left_2:=Mask[Heap[n, parent], left_2] + perm];
                  assume state(Heap, Mask);
                }
                if (Heap[n, parent] != null) {
                  assume Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], left_2] == n);
                }
                if (Heap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@104.8--104.42) [92817]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> Heap[n, parent] != null;
                  Mask := Mask[Heap[n, parent], right_1:=Mask[Heap[n, parent], right_1] + perm];
                  assume state(Heap, Mask);
                }
                if (Heap[n, parent] != null) {
                  assume !Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], right_1] == n);
                }
                if (Heap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@104.8--104.42) [92818]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> Heap[n, parent] != null;
                  Mask := Mask[Heap[n, parent], root_1:=Mask[Heap[n, parent], root_1] + perm];
                  assume state(Heap, Mask);
                }
                if (Heap[n, parent] != null) {
                  assume Heap[n, root_1] == Heap[Heap[n, parent], root_1];
                }
                if (Heap[n, parent] == null) {
                  assume Heap[n, root_1] == n;
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: r := n.parent -- AVLTree.iterative.vpr@105.8--105.21
                
                // -- Check definedness of n.parent
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access n.parent (AVLTree.iterative.vpr@105.8--105.21) [92819]"}
                    HasDirectPerm(Mask, n, parent);
                r_1 := Heap[n, parent];
                assume state(Heap, Mask);
              
              // -- Translating statement: if (r == null) -- AVLTree.iterative.vpr@106.8--121.9
                if (r_1 == null) {
                  
                  // -- Translating statement: end := true -- AVLTree.iterative.vpr@107.9--107.20
                    end_1 := true;
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: fold acc(udParentValid(n), write) -- AVLTree.iterative.vpr@108.9--108.41
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    perm := 1 / 2;
                    assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@108.9--108.41) [92820]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent (AVLTree.iterative.vpr@108.9--108.41) [92821]"}
                        perm <= Mask[n, parent];
                    }
                    Mask := Mask[n, parent:=Mask[n, parent] - perm];
                    perm := 1 / 10;
                    assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@108.9--108.41) [92822]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@108.9--108.41) [92823]"}
                        perm <= Mask[n, root_1];
                    }
                    Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
                    if (Heap[n, parent] != null) {
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access udValid(n.parent) (AVLTree.iterative.vpr@108.9--108.41) [92824]"}
                          perm <= Mask[null, udValid(Heap[n, parent])];
                      }
                      Mask := Mask[null, udValid(Heap[n, parent]):=Mask[null, udValid(Heap[n, parent])] - perm];
                      
                      // -- Record predicate instance information
                        assume InsidePredicate(udParentValid(n), Heap[null, udParentValid(n)], udValid(Heap[n, parent]), Heap[null, udValid(Heap[n, parent])]);
                    }
                    if (Heap[n, parent] != null) {
                      perm := 1 / 2;
                      assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@108.9--108.41) [92825]"}
                        perm >= NoPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.leftDown (AVLTree.iterative.vpr@108.9--108.41) [92826]"}
                          perm <= Mask[Heap[n, parent], leftDown];
                      }
                      Mask := Mask[Heap[n, parent], leftDown:=Mask[Heap[n, parent], leftDown] - perm];
                    }
                    if (Heap[n, parent] != null) {
                      perm := 1 / 2;
                      assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@108.9--108.41) [92827]"}
                        perm >= NoPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.left (AVLTree.iterative.vpr@108.9--108.41) [92828]"}
                          perm <= Mask[Heap[n, parent], left_2];
                      }
                      Mask := Mask[Heap[n, parent], left_2:=Mask[Heap[n, parent], left_2] - perm];
                    }
                    if (Heap[n, parent] != null) {
                      assert {:msg "  Folding udParentValid(n) might fail. Assertion n.parent.leftDown == (n.parent.left == n) might not hold. (AVLTree.iterative.vpr@108.9--108.41) [92829]"}
                        Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], left_2] == n);
                    }
                    if (Heap[n, parent] != null) {
                      perm := 1 / 2;
                      assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@108.9--108.41) [92830]"}
                        perm >= NoPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.right (AVLTree.iterative.vpr@108.9--108.41) [92831]"}
                          perm <= Mask[Heap[n, parent], right_1];
                      }
                      Mask := Mask[Heap[n, parent], right_1:=Mask[Heap[n, parent], right_1] - perm];
                    }
                    if (Heap[n, parent] != null) {
                      assert {:msg "  Folding udParentValid(n) might fail. Assertion !n.parent.leftDown == (n.parent.right == n) might not hold. (AVLTree.iterative.vpr@108.9--108.41) [92832]"}
                        !Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], right_1] == n);
                    }
                    if (Heap[n, parent] != null) {
                      perm := 1 / 2;
                      assert {:msg "  Folding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@108.9--108.41) [92833]"}
                        perm >= NoPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  Folding udParentValid(n) might fail. There might be insufficient permission to access n.parent.root (AVLTree.iterative.vpr@108.9--108.41) [92834]"}
                          perm <= Mask[Heap[n, parent], root_1];
                      }
                      Mask := Mask[Heap[n, parent], root_1:=Mask[Heap[n, parent], root_1] - perm];
                    }
                    if (Heap[n, parent] != null) {
                      assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n.parent.root might not hold. (AVLTree.iterative.vpr@108.9--108.41) [92835]"}
                        Heap[n, root_1] == Heap[Heap[n, parent], root_1];
                    }
                    if (Heap[n, parent] == null) {
                      assert {:msg "  Folding udParentValid(n) might fail. Assertion n.root == n might not hold. (AVLTree.iterative.vpr@108.9--108.41) [92836]"}
                        Heap[n, root_1] == n;
                    }
                    perm := FullPerm;
                    Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    assume udParentValid#trigger(Heap, udParentValid(n));
                    assume Heap[null, udParentValid(n)] == CombineFrames(FrameFragment(Heap[n, parent]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment((if Heap[n, parent] != null then Heap[null, udValid(Heap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                    if (!HasDirectPerm(Mask, null, udParentValid(n))) {
                      Heap := Heap[null, udParentValid#sm(n):=ZeroPMask];
                      havoc freshVersion;
                      Heap := Heap[null, udParentValid(n):=freshVersion];
                    }
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                    if (Heap[n, parent] != null) {
                      havoc newPMask;
                      assume (forall <A, B> o_110: Ref, f_121: (Field A B) ::
                        { newPMask[o_110, f_121] }
                        Heap[null, udParentValid#sm(n)][o_110, f_121] || Heap[null, udValid#sm(Heap[n, parent])][o_110, f_121] ==> newPMask[o_110, f_121]
                      );
                      Heap := Heap[null, udParentValid#sm(n):=newPMask];
                    }
                    if (Heap[n, parent] != null) {
                      Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                    }
                    if (Heap[n, parent] != null) {
                      Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                    }
                    if (Heap[n, parent] != null) {
                      Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                    }
                    if (Heap[n, parent] != null) {
                      Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                    }
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                } else {
                  
                  // -- Translating statement: unfold acc(udValid(r), write) -- AVLTree.iterative.vpr@110.9--110.37
                    assume udValid#trigger(Heap, udValid(r_1));
                    assume Heap[null, udValid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, key_6]), CombineFrames(FrameFragment(Heap[r_1, leftDown]), CombineFrames(FrameFragment(Heap[r_1, left_2]), CombineFrames(FrameFragment(Heap[r_1, right_1]), CombineFrames(FrameFragment(Heap[r_1, root_1]), CombineFrames(FrameFragment((if Heap[r_1, leftDown] then Heap[null, rightValid(r_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, leftDown] then Heap[null, leftOpen(r_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, leftDown] ==> false then Heap[null, leftValid(r_1)] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, leftDown] ==> false then Heap[null, rightOpen(r_1)] else EmptyFrame)), Heap[null, udParentValid(r_1)])))))))));
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Unfolding udValid(r) might fail. There might be insufficient permission to access udValid(r) (AVLTree.iterative.vpr@110.9--110.37) [92837]"}
                        perm <= Mask[null, udValid(r_1)];
                    }
                    Mask := Mask[null, udValid(r_1):=Mask[null, udValid(r_1)] - perm];
                    
                    // -- Update version of predicate
                      if (!HasDirectPerm(Mask, null, udValid(r_1))) {
                        havoc newVersion;
                        Heap := Heap[null, udValid(r_1):=newVersion];
                      }
                    perm := FullPerm;
                    assume r_1 != null;
                    Mask := Mask[r_1, key_6:=Mask[r_1, key_6] + perm];
                    assume state(Heap, Mask);
                    perm := 1 / 2;
                    assert {:msg "  Unfolding udValid(r) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@110.9--110.37) [92838]"}
                      perm >= NoPerm;
                    assume perm > NoPerm ==> r_1 != null;
                    Mask := Mask[r_1, leftDown:=Mask[r_1, leftDown] + perm];
                    assume state(Heap, Mask);
                    perm := 1 / 4;
                    assert {:msg "  Unfolding udValid(r) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@110.9--110.37) [92839]"}
                      perm >= NoPerm;
                    assume perm > NoPerm ==> r_1 != null;
                    Mask := Mask[r_1, left_2:=Mask[r_1, left_2] + perm];
                    assume state(Heap, Mask);
                    perm := 1 / 4;
                    assert {:msg "  Unfolding udValid(r) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@110.9--110.37) [92840]"}
                      perm >= NoPerm;
                    assume perm > NoPerm ==> r_1 != null;
                    Mask := Mask[r_1, right_1:=Mask[r_1, right_1] + perm];
                    assume state(Heap, Mask);
                    perm := 1 / 5;
                    assert {:msg "  Unfolding udValid(r) might fail. Fraction 1 / 5 might be negative. (AVLTree.iterative.vpr@110.9--110.37) [92841]"}
                      perm >= NoPerm;
                    assume perm > NoPerm ==> r_1 != null;
                    Mask := Mask[r_1, root_1:=Mask[r_1, root_1] + perm];
                    assume state(Heap, Mask);
                    if (Heap[r_1, leftDown]) {
                      perm := FullPerm;
                      Mask := Mask[null, rightValid(r_1):=Mask[null, rightValid(r_1)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(udValid(r_1), Heap[null, udValid(r_1)], rightValid(r_1), Heap[null, rightValid(r_1)]);
                      assume state(Heap, Mask);
                    }
                    if (Heap[r_1, leftDown]) {
                      perm := FullPerm;
                      Mask := Mask[null, leftOpen(r_1):=Mask[null, leftOpen(r_1)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(udValid(r_1), Heap[null, udValid(r_1)], leftOpen(r_1), Heap[null, leftOpen(r_1)]);
                      assume state(Heap, Mask);
                    }
                    if (Heap[r_1, leftDown] ==> false) {
                      perm := FullPerm;
                      Mask := Mask[null, leftValid(r_1):=Mask[null, leftValid(r_1)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(udValid(r_1), Heap[null, udValid(r_1)], leftValid(r_1), Heap[null, leftValid(r_1)]);
                      assume state(Heap, Mask);
                    }
                    if (Heap[r_1, leftDown] ==> false) {
                      perm := FullPerm;
                      Mask := Mask[null, rightOpen(r_1):=Mask[null, rightOpen(r_1)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(udValid(r_1), Heap[null, udValid(r_1)], rightOpen(r_1), Heap[null, rightOpen(r_1)]);
                      assume state(Heap, Mask);
                    }
                    perm := FullPerm;
                    Mask := Mask[null, udParentValid(r_1):=Mask[null, udParentValid(r_1)] + perm];
                    
                    // -- Extra unfolding of predicate
                      assume InsidePredicate(udValid(r_1), Heap[null, udValid(r_1)], udParentValid(r_1), Heap[null, udParentValid(r_1)]);
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: if (r.left == n) -- AVLTree.iterative.vpr@111.9--117.10
                    
                    // -- Check definedness of r.left == n
                      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access r.left (AVLTree.iterative.vpr@111.13--111.22) [92842]"}
                        HasDirectPerm(Mask, r_1, left_2);
                    if (Heap[r_1, left_2] == n) {
                      
                      // -- Translating statement: unfold acc(leftOpen(r), write) -- AVLTree.iterative.vpr@112.10--112.39
                        assume leftOpen#trigger(Heap, leftOpen(r_1));
                        assume Heap[null, leftOpen(r_1)] == CombineFrames(FrameFragment(Heap[r_1, left_2]), CombineFrames(FrameFragment(Heap[r_1, root_1]), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then FrameFragment(Heap[Heap[r_1, left_2], parent]) else EmptyFrame)), FrameFragment((if Heap[r_1, left_2] != null then EmptyFrame else EmptyFrame)))));
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        perm := FullPerm;
                        if (perm != NoPerm) {
                          assert {:msg "  Unfolding leftOpen(r) might fail. There might be insufficient permission to access leftOpen(r) (AVLTree.iterative.vpr@112.10--112.39) [92843]"}
                            perm <= Mask[null, leftOpen(r_1)];
                        }
                        Mask := Mask[null, leftOpen(r_1):=Mask[null, leftOpen(r_1)] - perm];
                        
                        // -- Update version of predicate
                          if (!HasDirectPerm(Mask, null, leftOpen(r_1))) {
                            havoc newVersion;
                            Heap := Heap[null, leftOpen(r_1):=newVersion];
                          }
                        perm := 1 / 4;
                        assert {:msg "  Unfolding leftOpen(r) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@112.10--112.39) [92844]"}
                          perm >= NoPerm;
                        assume perm > NoPerm ==> r_1 != null;
                        Mask := Mask[r_1, left_2:=Mask[r_1, left_2] + perm];
                        assume state(Heap, Mask);
                        perm := 1 / 10;
                        assert {:msg "  Unfolding leftOpen(r) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@112.10--112.39) [92845]"}
                          perm >= NoPerm;
                        assume perm > NoPerm ==> r_1 != null;
                        Mask := Mask[r_1, root_1:=Mask[r_1, root_1] + perm];
                        assume state(Heap, Mask);
                        if (Heap[r_1, left_2] != null) {
                          perm := 1 / 2;
                          assert {:msg "  Unfolding leftOpen(r) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@112.10--112.39) [92846]"}
                            perm >= NoPerm;
                          assume perm > NoPerm ==> Heap[r_1, left_2] != null;
                          Mask := Mask[Heap[r_1, left_2], parent:=Mask[Heap[r_1, left_2], parent] + perm];
                          assume state(Heap, Mask);
                        }
                        if (Heap[r_1, left_2] != null) {
                          assume Heap[Heap[r_1, left_2], parent] == r_1;
                        }
                        assume state(Heap, Mask);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: fold acc(leftValid(r), write) -- AVLTree.iterative.vpr@113.10--113.40
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        perm := 1 / 4;
                        assert {:msg "  Folding leftValid(r) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@113.10--113.40) [92847]"}
                          perm >= NoPerm;
                        if (perm != NoPerm) {
                          assert {:msg "  Folding leftValid(r) might fail. There might be insufficient permission to access r.left (AVLTree.iterative.vpr@113.10--113.40) [92848]"}
                            perm <= Mask[r_1, left_2];
                        }
                        Mask := Mask[r_1, left_2:=Mask[r_1, left_2] - perm];
                        perm := 1 / 10;
                        assert {:msg "  Folding leftValid(r) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@113.10--113.40) [92849]"}
                          perm >= NoPerm;
                        if (perm != NoPerm) {
                          assert {:msg "  Folding leftValid(r) might fail. There might be insufficient permission to access r.root (AVLTree.iterative.vpr@113.10--113.40) [92850]"}
                            perm <= Mask[r_1, root_1];
                        }
                        Mask := Mask[r_1, root_1:=Mask[r_1, root_1] - perm];
                        if (Heap[r_1, left_2] != null) {
                          perm := FullPerm;
                          if (perm != NoPerm) {
                            assert {:msg "  Folding leftValid(r) might fail. There might be insufficient permission to access valid(r.left) (AVLTree.iterative.vpr@113.10--113.40) [92851]"}
                              perm <= Mask[null, valid(Heap[r_1, left_2])];
                          }
                          Mask := Mask[null, valid(Heap[r_1, left_2]):=Mask[null, valid(Heap[r_1, left_2])] - perm];
                          
                          // -- Record predicate instance information
                            assume InsidePredicate(leftValid(r_1), Heap[null, leftValid(r_1)], valid(Heap[r_1, left_2]), Heap[null, valid(Heap[r_1, left_2])]);
                        }
                        if (Heap[r_1, left_2] != null) {
                          perm := FullPerm;
                          if (perm != NoPerm) {
                            assert {:msg "  Folding leftValid(r) might fail. There might be insufficient permission to access r.left.parent (AVLTree.iterative.vpr@113.10--113.40) [92852]"}
                              perm <= Mask[Heap[r_1, left_2], parent];
                          }
                          Mask := Mask[Heap[r_1, left_2], parent:=Mask[Heap[r_1, left_2], parent] - perm];
                        }
                        if (Heap[r_1, left_2] != null) {
                          assert {:msg "  Folding leftValid(r) might fail. Assertion r.left.parent == r might not hold. (AVLTree.iterative.vpr@113.10--113.40) [92853]"}
                            Heap[Heap[r_1, left_2], parent] == r_1;
                        }
                        if (Heap[r_1, left_2] != null) {
                          perm := 1 / 2;
                          assert {:msg "  Folding leftValid(r) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@113.10--113.40) [92854]"}
                            perm >= NoPerm;
                          if (perm != NoPerm) {
                            assert {:msg "  Folding leftValid(r) might fail. There might be insufficient permission to access r.left.root (AVLTree.iterative.vpr@113.10--113.40) [92855]"}
                              perm <= Mask[Heap[r_1, left_2], root_1];
                          }
                          Mask := Mask[Heap[r_1, left_2], root_1:=Mask[Heap[r_1, left_2], root_1] - perm];
                        }
                        if (Heap[r_1, left_2] != null) {
                          assert {:msg "  Folding leftValid(r) might fail. Assertion r.left.root == r.root might not hold. (AVLTree.iterative.vpr@113.10--113.40) [92856]"}
                            Heap[Heap[r_1, left_2], root_1] == Heap[r_1, root_1];
                        }
                        perm := FullPerm;
                        Mask := Mask[null, leftValid(r_1):=Mask[null, leftValid(r_1)] + perm];
                        assume state(Heap, Mask);
                        assume state(Heap, Mask);
                        assume leftValid#trigger(Heap, leftValid(r_1));
                        assume Heap[null, leftValid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, left_2]), CombineFrames(FrameFragment(Heap[r_1, root_1]), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then Heap[null, valid(Heap[r_1, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then FrameFragment(Heap[Heap[r_1, left_2], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then FrameFragment(Heap[Heap[r_1, left_2], root_1]) else EmptyFrame)), FrameFragment((if Heap[r_1, left_2] != null then EmptyFrame else EmptyFrame))))))));
                        if (!HasDirectPerm(Mask, null, leftValid(r_1))) {
                          Heap := Heap[null, leftValid#sm(r_1):=ZeroPMask];
                          havoc freshVersion;
                          Heap := Heap[null, leftValid(r_1):=freshVersion];
                        }
                        Heap := Heap[null, leftValid#sm(r_1):=Heap[null, leftValid#sm(r_1)][r_1, left_2:=true]];
                        Heap := Heap[null, leftValid#sm(r_1):=Heap[null, leftValid#sm(r_1)][r_1, root_1:=true]];
                        if (Heap[r_1, left_2] != null) {
                          havoc newPMask;
                          assume (forall <A, B> o_111: Ref, f_122: (Field A B) ::
                            { newPMask[o_111, f_122] }
                            Heap[null, leftValid#sm(r_1)][o_111, f_122] || Heap[null, valid#sm(Heap[r_1, left_2])][o_111, f_122] ==> newPMask[o_111, f_122]
                          );
                          Heap := Heap[null, leftValid#sm(r_1):=newPMask];
                        }
                        if (Heap[r_1, left_2] != null) {
                          Heap := Heap[null, leftValid#sm(r_1):=Heap[null, leftValid#sm(r_1)][Heap[r_1, left_2], parent:=true]];
                        }
                        if (Heap[r_1, left_2] != null) {
                          Heap := Heap[null, leftValid#sm(r_1):=Heap[null, leftValid#sm(r_1)][Heap[r_1, left_2], root_1:=true]];
                        }
                        assume state(Heap, Mask);
                        assume state(Heap, Mask);
                    } else {
                      
                      // -- Translating statement: unfold acc(rightOpen(r), write) -- AVLTree.iterative.vpr@115.10--115.40
                        assume rightOpen#trigger(Heap, rightOpen(r_1));
                        assume Heap[null, rightOpen(r_1)] == CombineFrames(FrameFragment(Heap[r_1, right_1]), CombineFrames(FrameFragment(Heap[r_1, root_1]), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], parent]) else EmptyFrame)), FrameFragment((if Heap[r_1, right_1] != null then EmptyFrame else EmptyFrame)))));
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        perm := FullPerm;
                        if (perm != NoPerm) {
                          assert {:msg "  Unfolding rightOpen(r) might fail. There might be insufficient permission to access rightOpen(r) (AVLTree.iterative.vpr@115.10--115.40) [92857]"}
                            perm <= Mask[null, rightOpen(r_1)];
                        }
                        Mask := Mask[null, rightOpen(r_1):=Mask[null, rightOpen(r_1)] - perm];
                        
                        // -- Update version of predicate
                          if (!HasDirectPerm(Mask, null, rightOpen(r_1))) {
                            havoc newVersion;
                            Heap := Heap[null, rightOpen(r_1):=newVersion];
                          }
                        perm := 1 / 4;
                        assert {:msg "  Unfolding rightOpen(r) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@115.10--115.40) [92858]"}
                          perm >= NoPerm;
                        assume perm > NoPerm ==> r_1 != null;
                        Mask := Mask[r_1, right_1:=Mask[r_1, right_1] + perm];
                        assume state(Heap, Mask);
                        perm := 1 / 10;
                        assert {:msg "  Unfolding rightOpen(r) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@115.10--115.40) [92859]"}
                          perm >= NoPerm;
                        assume perm > NoPerm ==> r_1 != null;
                        Mask := Mask[r_1, root_1:=Mask[r_1, root_1] + perm];
                        assume state(Heap, Mask);
                        if (Heap[r_1, right_1] != null) {
                          perm := 1 / 2;
                          assert {:msg "  Unfolding rightOpen(r) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@115.10--115.40) [92860]"}
                            perm >= NoPerm;
                          assume perm > NoPerm ==> Heap[r_1, right_1] != null;
                          Mask := Mask[Heap[r_1, right_1], parent:=Mask[Heap[r_1, right_1], parent] + perm];
                          assume state(Heap, Mask);
                        }
                        if (Heap[r_1, right_1] != null) {
                          assume Heap[Heap[r_1, right_1], parent] == r_1;
                        }
                        assume state(Heap, Mask);
                        assume state(Heap, Mask);
                      
                      // -- Translating statement: fold acc(rightValid(r), write) -- AVLTree.iterative.vpr@116.10--116.41
                        ExhaleWellDef0Mask := Mask;
                        ExhaleWellDef0Heap := Heap;
                        perm := 1 / 4;
                        assert {:msg "  Folding rightValid(r) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@116.10--116.41) [92861]"}
                          perm >= NoPerm;
                        if (perm != NoPerm) {
                          assert {:msg "  Folding rightValid(r) might fail. There might be insufficient permission to access r.right (AVLTree.iterative.vpr@116.10--116.41) [92862]"}
                            perm <= Mask[r_1, right_1];
                        }
                        Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
                        perm := 1 / 10;
                        assert {:msg "  Folding rightValid(r) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@116.10--116.41) [92863]"}
                          perm >= NoPerm;
                        if (perm != NoPerm) {
                          assert {:msg "  Folding rightValid(r) might fail. There might be insufficient permission to access r.root (AVLTree.iterative.vpr@116.10--116.41) [92864]"}
                            perm <= Mask[r_1, root_1];
                        }
                        Mask := Mask[r_1, root_1:=Mask[r_1, root_1] - perm];
                        if (Heap[r_1, right_1] != null) {
                          perm := FullPerm;
                          if (perm != NoPerm) {
                            assert {:msg "  Folding rightValid(r) might fail. There might be insufficient permission to access valid(r.right) (AVLTree.iterative.vpr@116.10--116.41) [92865]"}
                              perm <= Mask[null, valid(Heap[r_1, right_1])];
                          }
                          Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
                          
                          // -- Record predicate instance information
                            assume InsidePredicate(rightValid(r_1), Heap[null, rightValid(r_1)], valid(Heap[r_1, right_1]), Heap[null, valid(Heap[r_1, right_1])]);
                        }
                        if (Heap[r_1, right_1] != null) {
                          perm := FullPerm;
                          if (perm != NoPerm) {
                            assert {:msg "  Folding rightValid(r) might fail. There might be insufficient permission to access r.right.parent (AVLTree.iterative.vpr@116.10--116.41) [92866]"}
                              perm <= Mask[Heap[r_1, right_1], parent];
                          }
                          Mask := Mask[Heap[r_1, right_1], parent:=Mask[Heap[r_1, right_1], parent] - perm];
                        }
                        if (Heap[r_1, right_1] != null) {
                          assert {:msg "  Folding rightValid(r) might fail. Assertion r.right.parent == r might not hold. (AVLTree.iterative.vpr@116.10--116.41) [92867]"}
                            Heap[Heap[r_1, right_1], parent] == r_1;
                        }
                        if (Heap[r_1, right_1] != null) {
                          perm := 1 / 2;
                          assert {:msg "  Folding rightValid(r) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@116.10--116.41) [92868]"}
                            perm >= NoPerm;
                          if (perm != NoPerm) {
                            assert {:msg "  Folding rightValid(r) might fail. There might be insufficient permission to access r.right.root (AVLTree.iterative.vpr@116.10--116.41) [92869]"}
                              perm <= Mask[Heap[r_1, right_1], root_1];
                          }
                          Mask := Mask[Heap[r_1, right_1], root_1:=Mask[Heap[r_1, right_1], root_1] - perm];
                        }
                        if (Heap[r_1, right_1] != null) {
                          assert {:msg "  Folding rightValid(r) might fail. Assertion r.right.root == r.root might not hold. (AVLTree.iterative.vpr@116.10--116.41) [92870]"}
                            Heap[Heap[r_1, right_1], root_1] == Heap[r_1, root_1];
                        }
                        perm := FullPerm;
                        Mask := Mask[null, rightValid(r_1):=Mask[null, rightValid(r_1)] + perm];
                        assume state(Heap, Mask);
                        assume state(Heap, Mask);
                        assume rightValid#trigger(Heap, rightValid(r_1));
                        assume Heap[null, rightValid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, right_1]), CombineFrames(FrameFragment(Heap[r_1, root_1]), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then Heap[null, valid(Heap[r_1, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], root_1]) else EmptyFrame)), FrameFragment((if Heap[r_1, right_1] != null then EmptyFrame else EmptyFrame))))))));
                        if (!HasDirectPerm(Mask, null, rightValid(r_1))) {
                          Heap := Heap[null, rightValid#sm(r_1):=ZeroPMask];
                          havoc freshVersion;
                          Heap := Heap[null, rightValid(r_1):=freshVersion];
                        }
                        Heap := Heap[null, rightValid#sm(r_1):=Heap[null, rightValid#sm(r_1)][r_1, right_1:=true]];
                        Heap := Heap[null, rightValid#sm(r_1):=Heap[null, rightValid#sm(r_1)][r_1, root_1:=true]];
                        if (Heap[r_1, right_1] != null) {
                          havoc newPMask;
                          assume (forall <A, B> o_112: Ref, f_123: (Field A B) ::
                            { newPMask[o_112, f_123] }
                            Heap[null, rightValid#sm(r_1)][o_112, f_123] || Heap[null, valid#sm(Heap[r_1, right_1])][o_112, f_123] ==> newPMask[o_112, f_123]
                          );
                          Heap := Heap[null, rightValid#sm(r_1):=newPMask];
                        }
                        if (Heap[r_1, right_1] != null) {
                          Heap := Heap[null, rightValid#sm(r_1):=Heap[null, rightValid#sm(r_1)][Heap[r_1, right_1], parent:=true]];
                        }
                        if (Heap[r_1, right_1] != null) {
                          Heap := Heap[null, rightValid#sm(r_1):=Heap[null, rightValid#sm(r_1)][Heap[r_1, right_1], root_1:=true]];
                        }
                        assume state(Heap, Mask);
                        assume state(Heap, Mask);
                    }
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: fold acc(validRest(r), write) -- AVLTree.iterative.vpr@118.9--118.37
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(r) might fail. There might be insufficient permission to access r.key (AVLTree.iterative.vpr@118.9--118.37) [92871]"}
                        perm <= Mask[r_1, key_6];
                    }
                    Mask := Mask[r_1, key_6:=Mask[r_1, key_6] - perm];
                    perm := 3 / 10;
                    assert {:msg "  Folding validRest(r) might fail. Fraction 3 / 10 might be negative. (AVLTree.iterative.vpr@118.9--118.37) [92872]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(r) might fail. There might be insufficient permission to access r.root (AVLTree.iterative.vpr@118.9--118.37) [92873]"}
                        perm <= Mask[r_1, root_1];
                    }
                    Mask := Mask[r_1, root_1:=Mask[r_1, root_1] - perm];
                    perm := 3 / 4;
                    assert {:msg "  Folding validRest(r) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@118.9--118.37) [92874]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(r) might fail. There might be insufficient permission to access r.left (AVLTree.iterative.vpr@118.9--118.37) [92875]"}
                        perm <= Mask[r_1, left_2];
                    }
                    Mask := Mask[r_1, left_2:=Mask[r_1, left_2] - perm];
                    perm := 3 / 4;
                    assert {:msg "  Folding validRest(r) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@118.9--118.37) [92876]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(r) might fail. There might be insufficient permission to access r.right (AVLTree.iterative.vpr@118.9--118.37) [92877]"}
                        perm <= Mask[r_1, right_1];
                    }
                    Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding validRest(r) might fail. There might be insufficient permission to access r.leftDown (AVLTree.iterative.vpr@118.9--118.37) [92878]"}
                        perm <= Mask[r_1, leftDown];
                    }
                    Mask := Mask[r_1, leftDown:=Mask[r_1, leftDown] - perm];
                    assert {:msg "  Folding validRest(r) might fail. Assertion r.right != r.left || r.right == null might not hold. (AVLTree.iterative.vpr@118.9--118.37) [92879]"}
                      Heap[r_1, right_1] != Heap[r_1, left_2] || Heap[r_1, right_1] == null;
                    perm := FullPerm;
                    Mask := Mask[null, validRest(r_1):=Mask[null, validRest(r_1)] + perm];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    assume validRest#trigger(Heap, validRest(r_1));
                    assume Heap[null, validRest(r_1)] == CombineFrames(FrameFragment(Heap[r_1, key_6]), CombineFrames(FrameFragment(Heap[r_1, root_1]), CombineFrames(FrameFragment(Heap[r_1, left_2]), CombineFrames(FrameFragment(Heap[r_1, right_1]), FrameFragment(Heap[r_1, leftDown])))));
                    if (!HasDirectPerm(Mask, null, validRest(r_1))) {
                      Heap := Heap[null, validRest#sm(r_1):=ZeroPMask];
                      havoc freshVersion;
                      Heap := Heap[null, validRest(r_1):=freshVersion];
                    }
                    Heap := Heap[null, validRest#sm(r_1):=Heap[null, validRest#sm(r_1)][r_1, key_6:=true]];
                    Heap := Heap[null, validRest#sm(r_1):=Heap[null, validRest#sm(r_1)][r_1, root_1:=true]];
                    Heap := Heap[null, validRest#sm(r_1):=Heap[null, validRest#sm(r_1)][r_1, left_2:=true]];
                    Heap := Heap[null, validRest#sm(r_1):=Heap[null, validRest#sm(r_1)][r_1, right_1:=true]];
                    Heap := Heap[null, validRest#sm(r_1):=Heap[null, validRest#sm(r_1)][r_1, leftDown:=true]];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: fold acc(valid(r), write) -- AVLTree.iterative.vpr@119.9--119.33
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access validRest(r) (AVLTree.iterative.vpr@119.9--119.33) [92880]"}
                        perm <= Mask[null, validRest(r_1)];
                    }
                    Mask := Mask[null, validRest(r_1):=Mask[null, validRest(r_1)] - perm];
                    
                    // -- Record predicate instance information
                      assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], validRest(r_1), Heap[null, validRest(r_1)]);
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access leftValid(r) (AVLTree.iterative.vpr@119.9--119.33) [92881]"}
                        perm <= Mask[null, leftValid(r_1)];
                    }
                    Mask := Mask[null, leftValid(r_1):=Mask[null, leftValid(r_1)] - perm];
                    
                    // -- Record predicate instance information
                      assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], leftValid(r_1), Heap[null, leftValid(r_1)]);
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding valid(r) might fail. There might be insufficient permission to access rightValid(r) (AVLTree.iterative.vpr@119.9--119.33) [92882]"}
                        perm <= Mask[null, rightValid(r_1)];
                    }
                    Mask := Mask[null, rightValid(r_1):=Mask[null, rightValid(r_1)] - perm];
                    
                    // -- Record predicate instance information
                      assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], rightValid(r_1), Heap[null, rightValid(r_1)]);
                    perm := FullPerm;
                    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    assume valid#trigger(Heap, valid(r_1));
                    assume Heap[null, valid(r_1)] == CombineFrames(Heap[null, validRest(r_1)], CombineFrames(Heap[null, leftValid(r_1)], Heap[null, rightValid(r_1)]));
                    if (!HasDirectPerm(Mask, null, valid(r_1))) {
                      Heap := Heap[null, valid#sm(r_1):=ZeroPMask];
                      havoc freshVersion;
                      Heap := Heap[null, valid(r_1):=freshVersion];
                    }
                    havoc newPMask;
                    assume (forall <A, B> o_114: Ref, f_125: (Field A B) ::
                      { newPMask[o_114, f_125] }
                      Heap[null, valid#sm(r_1)][o_114, f_125] || Heap[null, validRest#sm(r_1)][o_114, f_125] ==> newPMask[o_114, f_125]
                    );
                    Heap := Heap[null, valid#sm(r_1):=newPMask];
                    havoc newPMask;
                    assume (forall <A, B> o_113: Ref, f_124: (Field A B) ::
                      { newPMask[o_113, f_124] }
                      Heap[null, valid#sm(r_1)][o_113, f_124] || Heap[null, leftValid#sm(r_1)][o_113, f_124] ==> newPMask[o_113, f_124]
                    );
                    Heap := Heap[null, valid#sm(r_1):=newPMask];
                    havoc newPMask;
                    assume (forall <A, B> o_115: Ref, f_126: (Field A B) ::
                      { newPMask[o_115, f_126] }
                      Heap[null, valid#sm(r_1)][o_115, f_126] || Heap[null, rightValid#sm(r_1)][o_115, f_126] ==> newPMask[o_115, f_126]
                    );
                    Heap := Heap[null, valid#sm(r_1):=newPMask];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: n := r -- AVLTree.iterative.vpr@120.9--120.13
                    n := r_1;
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
            // Exhale invariant
            
            // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not be preserved. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@100.18--100.71) [92883]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                havoc newPMask;
                assume (forall <A, B> o_116: Ref, f_127: (Field A B) ::
                  { newPMask[o_116, f_127] }
                  Heap[null, valid#sm(n)][o_116, f_127] || Heap[null, validRest#sm(n)][o_116, f_127] ==> newPMask[o_116, f_127]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_118: Ref, f_129: (Field A B) ::
                  { newPMask[o_118, f_129] }
                  Heap[null, valid#sm(n)][o_118, f_129] || Heap[null, leftValid#sm(n)][o_118, f_129] ==> newPMask[o_118, f_129]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                havoc newPMask;
                assume (forall <A, B> o_117: Ref, f_128: (Field A B) ::
                  { newPMask[o_117, f_128] }
                  Heap[null, valid#sm(n)][o_117, f_128] || Heap[null, rightValid#sm(n)][o_117, f_128] ==> newPMask[o_117, f_128]
                );
                Heap := Heap[null, valid#sm(n):=newPMask];
                assume state(Heap, Mask);
            
            // -- Execute definedness check of end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) without enforcing the checks (e.g., to gain more information)
              if (end_1) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef0Mask := UnfoldingMask;
                ExhaleWellDef0Heap := UnfoldingHeap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@102.18--102.79) [92884]"}
                    perm <= UnfoldingMask[null, udParentValid(n)];
                }
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92885]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92886]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92887]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92888]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92889]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92890]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                  if (Heap[n, parent] != null) {
                    havoc newPMask;
                    assume (forall <A, B> o_122: Ref, f_138: (Field A B) ::
                      { newPMask[o_122, f_138] }
                      Heap[null, udParentValid#sm(n)][o_122, f_138] || Heap[null, udValid#sm(Heap[n, parent])][o_122, f_138] ==> newPMask[o_122, f_138]
                    );
                    Heap := Heap[null, udParentValid#sm(n):=newPMask];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                  }
                  if (Heap[n, parent] != null) {
                    Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                  }
                  assume state(Heap, Mask);
              }
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.root1, write) might not be preserved. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@94.18--94.39) [92891]"}
                perm <= Mask[this, root1];
            }
            Mask := Mask[this, root1:=Mask[this, root1] - perm];
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not be preserved. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@95.18--95.66) [92892]"}
              Heap[this, root1] != null;
            perm := 1 / 2;
            assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@95.18--95.66) [92893]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant this.root1 != null && acc(this.root1.parent, 1 / 2) might not be preserved. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@95.18--95.66) [92894]"}
                perm <= Mask[Heap[this, root1], parent];
            }
            Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] - perm];
            assert {:msg "  Loop invariant n != null might not be preserved. Assertion n != null might not hold. (AVLTree.iterative.vpr@96.18--96.25) [92895]"}
              n != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(valid(n), write) might not be preserved. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@97.18--97.37) [92896]"}
                perm <= Mask[null, valid(n)];
            }
            Mask := Mask[null, valid(n):=Mask[null, valid(n)] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(udParentValid(n), write) might not be preserved. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@98.18--98.45) [92897]"}
                perm <= Mask[null, udParentValid(n)];
            }
            Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] - perm];
            perm := 4 / 10;
            assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not be preserved. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@99.18--99.34) [92898]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(n.root, 4 / 10) might not be preserved. There might be insufficient permission to access n.root (AVLTree.iterative.vpr@99.18--99.34) [92899]"}
                perm <= Mask[n, root_1];
            }
            Mask := Mask[n, root_1:=Mask[n, root_1] - perm];
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := ExhaleWellDef0Heap;
              UnfoldingMask := ExhaleWellDef0Mask;
              assume valid#trigger(UnfoldingHeap, valid(n));
              assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
              ExhaleWellDef1Mask := UnfoldingMask;
              ExhaleWellDef1Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not be preserved. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@100.18--100.71) [92900]"}
                  perm <= UnfoldingMask[null, valid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume state(UnfoldingHeap, UnfoldingMask);
            assert {:msg "  Loop invariant (unfolding acc(valid(n), write) in n.root == this.root1) might not be preserved. Assertion n.root == this.root1 might not hold. (AVLTree.iterative.vpr@100.18--100.71) [92901]"}
              Heap[n, root_1] == Heap[this, root1];
            assert {:msg "  Loop invariant this.root1 != null might not be preserved. Assertion this.root1 != null might not hold. (AVLTree.iterative.vpr@101.18--101.34) [92902]"}
              Heap[this, root1] != null;
            if (end_1) {
              
              // -- Execute unfolding (for extra information)
                UnfoldingHeap := ExhaleWellDef0Heap;
                UnfoldingMask := ExhaleWellDef0Mask;
                assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
                assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
                ExhaleWellDef1Mask := UnfoldingMask;
                ExhaleWellDef1Heap := UnfoldingHeap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@102.18--102.79) [92903]"}
                    perm <= UnfoldingMask[null, udParentValid(n)];
                }
                UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
                perm := 1 / 2;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92904]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                perm := 1 / 10;
                assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92905]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> n != null;
                UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
                if (UnfoldingHeap[n, parent] != null) {
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92906]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92907]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92908]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  perm := 1 / 2;
                  assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92909]"}
                    perm >= NoPerm;
                  assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                }
                if (UnfoldingHeap[n, parent] != null) {
                  assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
                }
                if (UnfoldingHeap[n, parent] == null) {
                  assume UnfoldingHeap[n, root_1] == n;
                }
                assume state(UnfoldingHeap, UnfoldingMask);
              assert {:msg "  Loop invariant end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) might not be preserved. Assertion n.parent == null might not hold. (AVLTree.iterative.vpr@102.18--102.79) [92910]"}
                Heap[n, parent] == null;
            }
            
            // -- Free assumptions (exhale module)
              havoc newPMask;
              assume (forall <A, B> o_123: Ref, f_139: (Field A B) ::
                { newPMask[o_123, f_139] }
                Heap[null, valid#sm(n)][o_123, f_139] || Heap[null, validRest#sm(n)][o_123, f_139] ==> newPMask[o_123, f_139]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_124: Ref, f_140: (Field A B) ::
                { newPMask[o_124, f_140] }
                Heap[null, valid#sm(n)][o_124, f_140] || Heap[null, leftValid#sm(n)][o_124, f_140] ==> newPMask[o_124, f_140]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_125: Ref, f_141: (Field A B) ::
                { newPMask[o_125, f_141] }
                Heap[null, valid#sm(n)][o_125, f_141] || Heap[null, rightValid#sm(n)][o_125, f_141] ==> newPMask[o_125, f_141]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
              if (Heap[n, parent] != null) {
                havoc newPMask;
                assume (forall <A, B> o_126: Ref, f_142: (Field A B) ::
                  { newPMask[o_126, f_142] }
                  Heap[null, udParentValid#sm(n)][o_126, f_142] || Heap[null, udValid#sm(Heap[n, parent])][o_126, f_142] ==> newPMask[o_126, f_142]
                );
                Heap := Heap[null, udParentValid#sm(n):=newPMask];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
              }
              assume state(Heap, Mask);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume end_1;
          assume state(Heap, Mask);
          perm := FullPerm;
          assume this != null;
          Mask := Mask[this, root1:=Mask[this, root1] + perm];
          assume state(Heap, Mask);
          assume Heap[this, root1] != null;
          perm := 1 / 2;
          assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@95.18--95.66) [92911]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Heap[this, root1] != null;
          Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] + perm];
          assume state(Heap, Mask);
          assume n != null;
          perm := FullPerm;
          Mask := Mask[null, valid(n):=Mask[null, valid(n)] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] + perm];
          assume state(Heap, Mask);
          perm := 4 / 10;
          assert {:msg "  While statement might fail. Fraction 4 / 10 might be negative. (AVLTree.iterative.vpr@99.18--99.34) [92912]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> n != null;
          Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume valid#trigger(UnfoldingHeap, valid(n));
            assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[n, root_1] == Heap[this, root1];
          
          // -- Free assumptions (inhale module)
            havoc newPMask;
            assume (forall <A, B> o_91: Ref, f_143: (Field A B) ::
              { newPMask[o_91, f_143] }
              Heap[null, valid#sm(n)][o_91, f_143] || Heap[null, validRest#sm(n)][o_91, f_143] ==> newPMask[o_91, f_143]
            );
            Heap := Heap[null, valid#sm(n):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_127: Ref, f_104: (Field A B) ::
              { newPMask[o_127, f_104] }
              Heap[null, valid#sm(n)][o_127, f_104] || Heap[null, leftValid#sm(n)][o_127, f_104] ==> newPMask[o_127, f_104]
            );
            Heap := Heap[null, valid#sm(n):=newPMask];
            havoc newPMask;
            assume (forall <A, B> o_128: Ref, f_144: (Field A B) ::
              { newPMask[o_128, f_144] }
              Heap[null, valid#sm(n)][o_128, f_144] || Heap[null, rightValid#sm(n)][o_128, f_144] ==> newPMask[o_128, f_144]
            );
            Heap := Heap[null, valid#sm(n):=newPMask];
            assume state(Heap, Mask);
          assume Heap[this, root1] != null;
          if (end_1) {
            
            // -- Execute unfolding (for extra information)
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
              assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
              perm := 1 / 2;
              assume perm > NoPerm ==> n != null;
              UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := 1 / 10;
              assume perm > NoPerm ==> n != null;
              UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[n, parent] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
              }
              if (UnfoldingHeap[n, parent] == null) {
                assume UnfoldingHeap[n, root_1] == n;
              }
              assume state(UnfoldingHeap, UnfoldingMask);
            assume Heap[n, parent] == null;
            
            // -- Free assumptions (inhale module)
              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
              Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
              if (Heap[n, parent] != null) {
                havoc newPMask;
                assume (forall <A, B> o_92: Ref, f_145: (Field A B) ::
                  { newPMask[o_92, f_145] }
                  Heap[null, udParentValid#sm(n)][o_92, f_145] || Heap[null, udValid#sm(Heap[n, parent])][o_92, f_145] ==> newPMask[o_92, f_145]
                );
                Heap := Heap[null, udParentValid#sm(n):=newPMask];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
              }
              if (Heap[n, parent] != null) {
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
              }
              assume state(Heap, Mask);
          }
          assume state(Heap, Mask);
          
          // -- Execute definedness check of (unfolding acc(valid(n), write) in n.root == this.root1) without enforcing the checks (e.g., to gain more information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume valid#trigger(UnfoldingHeap, valid(n));
            assume UnfoldingHeap[null, valid(n)] == CombineFrames(UnfoldingHeap[null, validRest(n)], CombineFrames(UnfoldingHeap[null, leftValid(n)], UnfoldingHeap[null, rightValid(n)]));
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  An internal error occurred. There might be insufficient permission to access valid(n) (AVLTree.iterative.vpr@100.18--100.71) [92913]"}
                perm <= UnfoldingMask[null, valid(n)];
            }
            UnfoldingMask := UnfoldingMask[null, valid(n):=UnfoldingMask[null, valid(n)] - perm];
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, validRest(n):=UnfoldingMask[null, validRest(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], validRest(n), UnfoldingHeap[null, validRest(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, leftValid(n):=UnfoldingMask[null, leftValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], leftValid(n), UnfoldingHeap[null, leftValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, rightValid(n):=UnfoldingMask[null, rightValid(n)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(n), UnfoldingHeap[null, valid(n)], rightValid(n), UnfoldingHeap[null, rightValid(n)]);
            assume state(UnfoldingHeap, UnfoldingMask);
            assume state(UnfoldingHeap, UnfoldingMask);
            
            // -- Free assumptions (exp module)
              havoc newPMask;
              assume (forall <A, B> o_129: Ref, f_146: (Field A B) ::
                { newPMask[o_129, f_146] }
                Heap[null, valid#sm(n)][o_129, f_146] || Heap[null, validRest#sm(n)][o_129, f_146] ==> newPMask[o_129, f_146]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_130: Ref, f_147: (Field A B) ::
                { newPMask[o_130, f_147] }
                Heap[null, valid#sm(n)][o_130, f_147] || Heap[null, leftValid#sm(n)][o_130, f_147] ==> newPMask[o_130, f_147]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              havoc newPMask;
              assume (forall <A, B> o_131: Ref, f_148: (Field A B) ::
                { newPMask[o_131, f_148] }
                Heap[null, valid#sm(n)][o_131, f_148] || Heap[null, rightValid#sm(n)][o_131, f_148] ==> newPMask[o_131, f_148]
              );
              Heap := Heap[null, valid#sm(n):=newPMask];
              assume state(Heap, Mask);
          
          // -- Execute definedness check of end ==> (unfolding acc(udParentValid(n), write) in n.parent == null) without enforcing the checks (e.g., to gain more information)
            if (end_1) {
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume udParentValid#trigger(UnfoldingHeap, udParentValid(n));
              assume UnfoldingHeap[null, udParentValid(n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, parent]), CombineFrames(FrameFragment(UnfoldingHeap[n, root_1]), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if UnfoldingHeap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  An internal error occurred. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@102.18--102.79) [92914]"}
                  perm <= UnfoldingMask[null, udParentValid(n)];
              }
              UnfoldingMask := UnfoldingMask[null, udParentValid(n):=UnfoldingMask[null, udParentValid(n)] - perm];
              perm := 1 / 2;
              assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92915]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> n != null;
              UnfoldingMask := UnfoldingMask[n, parent:=UnfoldingMask[n, parent] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := 1 / 10;
              assert {:msg "  An internal error occurred. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92916]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> n != null;
              UnfoldingMask := UnfoldingMask[n, root_1:=UnfoldingMask[n, root_1] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              if (UnfoldingHeap[n, parent] != null) {
                perm := FullPerm;
                UnfoldingMask := UnfoldingMask[null, udValid(UnfoldingHeap[n, parent]):=UnfoldingMask[null, udValid(UnfoldingHeap[n, parent])] + perm];
                
                // -- Extra unfolding of predicate
                  assume InsidePredicate(udParentValid(n), UnfoldingHeap[null, udParentValid(n)], udValid(UnfoldingHeap[n, parent]), UnfoldingHeap[null, udValid(UnfoldingHeap[n, parent])]);
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92917]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], leftDown:=UnfoldingMask[UnfoldingHeap[n, parent], leftDown] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92918]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], left_2:=UnfoldingMask[UnfoldingHeap[n, parent], left_2] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                assume UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], left_2] == n);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92919]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], right_1:=UnfoldingMask[UnfoldingHeap[n, parent], right_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                assume !UnfoldingHeap[UnfoldingHeap[n, parent], leftDown] == (UnfoldingHeap[UnfoldingHeap[n, parent], right_1] == n);
              }
              if (UnfoldingHeap[n, parent] != null) {
                perm := 1 / 2;
                assert {:msg "  An internal error occurred. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@102.18--102.79) [92920]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> UnfoldingHeap[n, parent] != null;
                UnfoldingMask := UnfoldingMask[UnfoldingHeap[n, parent], root_1:=UnfoldingMask[UnfoldingHeap[n, parent], root_1] + perm];
                assume state(UnfoldingHeap, UnfoldingMask);
              }
              if (UnfoldingHeap[n, parent] != null) {
                assume UnfoldingHeap[n, root_1] == UnfoldingHeap[UnfoldingHeap[n, parent], root_1];
              }
              if (UnfoldingHeap[n, parent] == null) {
                assume UnfoldingHeap[n, root_1] == n;
              }
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, parent:=true]];
                Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][n, root_1:=true]];
                if (Heap[n, parent] != null) {
                  havoc newPMask;
                  assume (forall <A, B> o_132: Ref, f_149: (Field A B) ::
                    { newPMask[o_132, f_149] }
                    Heap[null, udParentValid#sm(n)][o_132, f_149] || Heap[null, udValid#sm(Heap[n, parent])][o_132, f_149] ==> newPMask[o_132, f_149]
                  );
                  Heap := Heap[null, udParentValid#sm(n):=newPMask];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], leftDown:=true]];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], left_2:=true]];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], right_1:=true]];
                }
                if (Heap[n, parent] != null) {
                  Heap := Heap[null, udParentValid#sm(n):=Heap[null, udParentValid#sm(n)][Heap[n, parent], root_1:=true]];
                }
                assume state(Heap, Mask);
            }
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(udParentValid(n), write) -- AVLTree.iterative.vpr@123.7--123.41
        assume udParentValid#trigger(Heap, udParentValid(n));
        assume Heap[null, udParentValid(n)] == CombineFrames(FrameFragment(Heap[n, parent]), CombineFrames(FrameFragment(Heap[n, root_1]), CombineFrames(FrameFragment((if Heap[n, parent] != null then Heap[null, udValid(Heap[n, parent])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], leftDown]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], left_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], right_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then FrameFragment(Heap[Heap[n, parent], root_1]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[n, parent] != null then EmptyFrame else EmptyFrame)), FrameFragment((if Heap[n, parent] == null then EmptyFrame else EmptyFrame))))))))))));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding udParentValid(n) might fail. There might be insufficient permission to access udParentValid(n) (AVLTree.iterative.vpr@123.7--123.41) [92923]"}
            perm <= Mask[null, udParentValid(n)];
        }
        Mask := Mask[null, udParentValid(n):=Mask[null, udParentValid(n)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, udParentValid(n))) {
            havoc newVersion;
            Heap := Heap[null, udParentValid(n):=newVersion];
          }
        perm := 1 / 2;
        assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@123.7--123.41) [92924]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> n != null;
        Mask := Mask[n, parent:=Mask[n, parent] + perm];
        assume state(Heap, Mask);
        perm := 1 / 10;
        assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@123.7--123.41) [92925]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> n != null;
        Mask := Mask[n, root_1:=Mask[n, root_1] + perm];
        assume state(Heap, Mask);
        if (Heap[n, parent] != null) {
          perm := FullPerm;
          Mask := Mask[null, udValid(Heap[n, parent]):=Mask[null, udValid(Heap[n, parent])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(udParentValid(n), Heap[null, udParentValid(n)], udValid(Heap[n, parent]), Heap[null, udValid(Heap[n, parent])]);
          assume state(Heap, Mask);
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@123.7--123.41) [92927]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Heap[n, parent] != null;
          Mask := Mask[Heap[n, parent], leftDown:=Mask[Heap[n, parent], leftDown] + perm];
          assume state(Heap, Mask);
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@123.7--123.41) [92928]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Heap[n, parent] != null;
          Mask := Mask[Heap[n, parent], left_2:=Mask[Heap[n, parent], left_2] + perm];
          assume state(Heap, Mask);
        }
        if (Heap[n, parent] != null) {
          assume Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], left_2] == n);
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@123.7--123.41) [92929]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Heap[n, parent] != null;
          Mask := Mask[Heap[n, parent], right_1:=Mask[Heap[n, parent], right_1] + perm];
          assume state(Heap, Mask);
        }
        if (Heap[n, parent] != null) {
          assume !Heap[Heap[n, parent], leftDown] == (Heap[Heap[n, parent], right_1] == n);
        }
        if (Heap[n, parent] != null) {
          perm := 1 / 2;
          assert {:msg "  Unfolding udParentValid(n) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@123.7--123.41) [92930]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> Heap[n, parent] != null;
          Mask := Mask[Heap[n, parent], root_1:=Mask[Heap[n, parent], root_1] + perm];
          assume state(Heap, Mask);
        }
        if (Heap[n, parent] != null) {
          assume Heap[n, root_1] == Heap[Heap[n, parent], root_1];
        }
        if (Heap[n, parent] == null) {
          assume Heap[n, root_1] == n;
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(valid1(this), write) -- AVLTree.iterative.vpr@124.7--124.35
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1 (AVLTree.iterative.vpr@124.7--124.35) [92933]"}
            perm <= Mask[this, root1];
        }
        Mask := Mask[this, root1:=Mask[this, root1] - perm];
        if (Heap[this, root1] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access valid(this.root1) (AVLTree.iterative.vpr@124.7--124.35) [92935]"}
              perm <= Mask[null, valid(Heap[this, root1])];
          }
          Mask := Mask[null, valid(Heap[this, root1]):=Mask[null, valid(Heap[this, root1])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(valid1(this), Heap[null, valid1(this)], valid(Heap[this, root1]), Heap[null, valid(Heap[this, root1])]);
        }
        if (Heap[this, root1] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1.parent (AVLTree.iterative.vpr@124.7--124.35) [92937]"}
              perm <= Mask[Heap[this, root1], parent];
          }
          Mask := Mask[Heap[this, root1], parent:=Mask[Heap[this, root1], parent] - perm];
        }
        if (Heap[this, root1] != null) {
          assert {:msg "  Folding valid1(this) might fail. Assertion this.root1.parent == null might not hold. (AVLTree.iterative.vpr@124.7--124.35) [92938]"}
            Heap[Heap[this, root1], parent] == null;
        }
        if (Heap[this, root1] != null) {
          perm := 1 / 2;
          assert {:msg "  Folding valid1(this) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@124.7--124.35) [92939]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding valid1(this) might fail. There might be insufficient permission to access this.root1.root (AVLTree.iterative.vpr@124.7--124.35) [92940]"}
              perm <= Mask[Heap[this, root1], root_1];
          }
          Mask := Mask[Heap[this, root1], root_1:=Mask[Heap[this, root1], root_1] - perm];
        }
        if (Heap[this, root1] != null) {
          assert {:msg "  Folding valid1(this) might fail. Assertion this.root1.root == this.root1 might not hold. (AVLTree.iterative.vpr@124.7--124.35) [92941]"}
            Heap[Heap[this, root1], root_1] == Heap[this, root1];
        }
        perm := FullPerm;
        Mask := Mask[null, valid1(this):=Mask[null, valid1(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume valid1#trigger(Heap, valid1(this));
        assume Heap[null, valid1(this)] == CombineFrames(FrameFragment(Heap[this, root1]), CombineFrames(FrameFragment((if Heap[this, root1] != null then Heap[null, valid(Heap[this, root1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root1] != null then FrameFragment(Heap[Heap[this, root1], root_1]) else EmptyFrame)), FrameFragment((if Heap[this, root1] != null then EmptyFrame else EmptyFrame)))))));
        if (!HasDirectPerm(Mask, null, valid1(this))) {
          Heap := Heap[null, valid1#sm(this):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, valid1(this):=freshVersion];
        }
        Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][this, root1:=true]];
        if (Heap[this, root1] != null) {
          havoc newPMask;
          assume (forall <A, B> o_133: Ref, f_150: (Field A B) ::
            { newPMask[o_133, f_150] }
            Heap[null, valid1#sm(this)][o_133, f_150] || Heap[null, valid#sm(Heap[this, root1])][o_133, f_150] ==> newPMask[o_133, f_150]
          );
          Heap := Heap[null, valid1#sm(this):=newPMask];
        }
        if (Heap[this, root1] != null) {
          Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][Heap[this, root1], parent:=true]];
        }
        if (Heap[this, root1] != null) {
          Heap := Heap[null, valid1#sm(this):=Heap[null, valid1#sm(this)][Heap[this, root1], root_1:=true]];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of has might not hold. There might be insufficient permission to access valid1(this) (AVLTree.iterative.vpr@26.11--26.34) [92943]"}
        perm <= Mask[null, valid1(this)];
    }
    Mask := Mask[null, valid1(this):=Mask[null, valid1(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method init_2
// ==================================================

procedure init_2(this: Ref, k: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
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
    Mask := Mask[this, key_6:=Mask[this, key_6] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, leftDown:=Mask[this, leftDown] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
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
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.left := null -- AVLTree.iterative.vpr@226.3--226.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@226.3--226.22) [92944]"}
      FullPerm == Mask[this, left_2];
    Heap := Heap[this, left_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right := null -- AVLTree.iterative.vpr@227.3--227.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@227.3--227.22) [92945]"}
      FullPerm == Mask[this, right_1];
    Heap := Heap[this, right_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.key := k -- AVLTree.iterative.vpr@228.3--228.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.key (AVLTree.iterative.vpr@228.3--228.19) [92946]"}
      FullPerm == Mask[this, key_6];
    Heap := Heap[this, key_6:=k];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(leftValid(this), write) -- AVLTree.iterative.vpr@230.3--230.34
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 4;
    assert {:msg "  Folding leftValid(this) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@230.3--230.34) [92948]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding leftValid(this) might fail. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@230.3--230.34) [92949]"}
        perm <= Mask[this, left_2];
    }
    Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
    perm := 1 / 10;
    assert {:msg "  Folding leftValid(this) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@230.3--230.34) [92950]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding leftValid(this) might fail. There might be insufficient permission to access this.root (AVLTree.iterative.vpr@230.3--230.34) [92951]"}
        perm <= Mask[this, root_1];
    }
    Mask := Mask[this, root_1:=Mask[this, root_1] - perm];
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding leftValid(this) might fail. There might be insufficient permission to access valid(this.left) (AVLTree.iterative.vpr@230.3--230.34) [92953]"}
          perm <= Mask[null, valid(Heap[this, left_2])];
      }
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(leftValid(this), Heap[null, leftValid(this)], valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])]);
    }
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding leftValid(this) might fail. There might be insufficient permission to access this.left.parent (AVLTree.iterative.vpr@230.3--230.34) [92955]"}
          perm <= Mask[Heap[this, left_2], parent];
      }
      Mask := Mask[Heap[this, left_2], parent:=Mask[Heap[this, left_2], parent] - perm];
    }
    if (Heap[this, left_2] != null) {
      assert {:msg "  Folding leftValid(this) might fail. Assertion this.left.parent == this might not hold. (AVLTree.iterative.vpr@230.3--230.34) [92956]"}
        Heap[Heap[this, left_2], parent] == this;
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding leftValid(this) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@230.3--230.34) [92957]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding leftValid(this) might fail. There might be insufficient permission to access this.left.root (AVLTree.iterative.vpr@230.3--230.34) [92958]"}
          perm <= Mask[Heap[this, left_2], root_1];
      }
      Mask := Mask[Heap[this, left_2], root_1:=Mask[Heap[this, left_2], root_1] - perm];
    }
    if (Heap[this, left_2] != null) {
      assert {:msg "  Folding leftValid(this) might fail. Assertion this.left.root == this.root might not hold. (AVLTree.iterative.vpr@230.3--230.34) [92959]"}
        Heap[Heap[this, left_2], root_1] == Heap[this, root_1];
    }
    perm := FullPerm;
    Mask := Mask[null, leftValid(this):=Mask[null, leftValid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume leftValid#trigger(Heap, leftValid(this));
    assume Heap[null, leftValid(this)] == CombineFrames(FrameFragment(Heap[this, left_2]), CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, left_2] != null then Heap[null, valid(Heap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], root_1]) else EmptyFrame)), FrameFragment((if Heap[this, left_2] != null then EmptyFrame else EmptyFrame))))))));
    if (!HasDirectPerm(Mask, null, leftValid(this))) {
      Heap := Heap[null, leftValid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, leftValid(this):=freshVersion];
    }
    Heap := Heap[null, leftValid#sm(this):=Heap[null, leftValid#sm(this)][this, left_2:=true]];
    Heap := Heap[null, leftValid#sm(this):=Heap[null, leftValid#sm(this)][this, root_1:=true]];
    if (Heap[this, left_2] != null) {
      havoc newPMask;
      assume (forall <A, B> o_134: Ref, f_151: (Field A B) ::
        { newPMask[o_134, f_151] }
        Heap[null, leftValid#sm(this)][o_134, f_151] || Heap[null, valid#sm(Heap[this, left_2])][o_134, f_151] ==> newPMask[o_134, f_151]
      );
      Heap := Heap[null, leftValid#sm(this):=newPMask];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, leftValid#sm(this):=Heap[null, leftValid#sm(this)][Heap[this, left_2], parent:=true]];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, leftValid#sm(this):=Heap[null, leftValid#sm(this)][Heap[this, left_2], root_1:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(rightValid(this), write) -- AVLTree.iterative.vpr@231.3--231.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 4;
    assert {:msg "  Folding rightValid(this) might fail. Fraction 1 / 4 might be negative. (AVLTree.iterative.vpr@231.3--231.35) [92962]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding rightValid(this) might fail. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@231.3--231.35) [92963]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := 1 / 10;
    assert {:msg "  Folding rightValid(this) might fail. Fraction 1 / 10 might be negative. (AVLTree.iterative.vpr@231.3--231.35) [92964]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding rightValid(this) might fail. There might be insufficient permission to access this.root (AVLTree.iterative.vpr@231.3--231.35) [92965]"}
        perm <= Mask[this, root_1];
    }
    Mask := Mask[this, root_1:=Mask[this, root_1] - perm];
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding rightValid(this) might fail. There might be insufficient permission to access valid(this.right) (AVLTree.iterative.vpr@231.3--231.35) [92967]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(rightValid(this), Heap[null, rightValid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding rightValid(this) might fail. There might be insufficient permission to access this.right.parent (AVLTree.iterative.vpr@231.3--231.35) [92969]"}
          perm <= Mask[Heap[this, right_1], parent];
      }
      Mask := Mask[Heap[this, right_1], parent:=Mask[Heap[this, right_1], parent] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding rightValid(this) might fail. Assertion this.right.parent == this might not hold. (AVLTree.iterative.vpr@231.3--231.35) [92970]"}
        Heap[Heap[this, right_1], parent] == this;
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding rightValid(this) might fail. Fraction 1 / 2 might be negative. (AVLTree.iterative.vpr@231.3--231.35) [92971]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding rightValid(this) might fail. There might be insufficient permission to access this.right.root (AVLTree.iterative.vpr@231.3--231.35) [92972]"}
          perm <= Mask[Heap[this, right_1], root_1];
      }
      Mask := Mask[Heap[this, right_1], root_1:=Mask[Heap[this, right_1], root_1] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding rightValid(this) might fail. Assertion this.right.root == this.root might not hold. (AVLTree.iterative.vpr@231.3--231.35) [92973]"}
        Heap[Heap[this, right_1], root_1] == Heap[this, root_1];
    }
    perm := FullPerm;
    Mask := Mask[null, rightValid(this):=Mask[null, rightValid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume rightValid#trigger(Heap, rightValid(this));
    assume Heap[null, rightValid(this)] == CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], parent]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], root_1]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))));
    if (!HasDirectPerm(Mask, null, rightValid(this))) {
      Heap := Heap[null, rightValid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, rightValid(this):=freshVersion];
    }
    Heap := Heap[null, rightValid#sm(this):=Heap[null, rightValid#sm(this)][this, right_1:=true]];
    Heap := Heap[null, rightValid#sm(this):=Heap[null, rightValid#sm(this)][this, root_1:=true]];
    if (Heap[this, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_135: Ref, f_152: (Field A B) ::
        { newPMask[o_135, f_152] }
        Heap[null, rightValid#sm(this)][o_135, f_152] || Heap[null, valid#sm(Heap[this, right_1])][o_135, f_152] ==> newPMask[o_135, f_152]
      );
      Heap := Heap[null, rightValid#sm(this):=newPMask];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, rightValid#sm(this):=Heap[null, rightValid#sm(this)][Heap[this, right_1], parent:=true]];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, rightValid#sm(this):=Heap[null, rightValid#sm(this)][Heap[this, right_1], root_1:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(validRest(this), write) -- AVLTree.iterative.vpr@232.3--232.34
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding validRest(this) might fail. There might be insufficient permission to access this.key (AVLTree.iterative.vpr@232.3--232.34) [92977]"}
        perm <= Mask[this, key_6];
    }
    Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
    perm := 3 / 10;
    assert {:msg "  Folding validRest(this) might fail. Fraction 3 / 10 might be negative. (AVLTree.iterative.vpr@232.3--232.34) [92978]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding validRest(this) might fail. There might be insufficient permission to access this.root (AVLTree.iterative.vpr@232.3--232.34) [92979]"}
        perm <= Mask[this, root_1];
    }
    Mask := Mask[this, root_1:=Mask[this, root_1] - perm];
    perm := 3 / 4;
    assert {:msg "  Folding validRest(this) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@232.3--232.34) [92980]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding validRest(this) might fail. There might be insufficient permission to access this.left (AVLTree.iterative.vpr@232.3--232.34) [92981]"}
        perm <= Mask[this, left_2];
    }
    Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
    perm := 3 / 4;
    assert {:msg "  Folding validRest(this) might fail. Fraction 3 / 4 might be negative. (AVLTree.iterative.vpr@232.3--232.34) [92982]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding validRest(this) might fail. There might be insufficient permission to access this.right (AVLTree.iterative.vpr@232.3--232.34) [92983]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding validRest(this) might fail. There might be insufficient permission to access this.leftDown (AVLTree.iterative.vpr@232.3--232.34) [92985]"}
        perm <= Mask[this, leftDown];
    }
    Mask := Mask[this, leftDown:=Mask[this, leftDown] - perm];
    assert {:msg "  Folding validRest(this) might fail. Assertion this.right != this.left || this.right == null might not hold. (AVLTree.iterative.vpr@232.3--232.34) [92986]"}
      Heap[this, right_1] != Heap[this, left_2] || Heap[this, right_1] == null;
    perm := FullPerm;
    Mask := Mask[null, validRest(this):=Mask[null, validRest(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume validRest#trigger(Heap, validRest(this));
    assume Heap[null, validRest(this)] == CombineFrames(FrameFragment(Heap[this, key_6]), CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment(Heap[this, left_2]), CombineFrames(FrameFragment(Heap[this, right_1]), FrameFragment(Heap[this, leftDown])))));
    if (!HasDirectPerm(Mask, null, validRest(this))) {
      Heap := Heap[null, validRest#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, validRest(this):=freshVersion];
    }
    Heap := Heap[null, validRest#sm(this):=Heap[null, validRest#sm(this)][this, key_6:=true]];
    Heap := Heap[null, validRest#sm(this):=Heap[null, validRest#sm(this)][this, root_1:=true]];
    Heap := Heap[null, validRest#sm(this):=Heap[null, validRest#sm(this)][this, left_2:=true]];
    Heap := Heap[null, validRest#sm(this):=Heap[null, validRest#sm(this)][this, right_1:=true]];
    Heap := Heap[null, validRest#sm(this):=Heap[null, validRest#sm(this)][this, leftDown:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- AVLTree.iterative.vpr@233.3--233.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access validRest(this) (AVLTree.iterative.vpr@233.3--233.30) [92990]"}
        perm <= Mask[null, validRest(this)];
    }
    Mask := Mask[null, validRest(this):=Mask[null, validRest(this)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(valid(this), Heap[null, valid(this)], validRest(this), Heap[null, validRest(this)]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access leftValid(this) (AVLTree.iterative.vpr@233.3--233.30) [92992]"}
        perm <= Mask[null, leftValid(this)];
    }
    Mask := Mask[null, leftValid(this):=Mask[null, leftValid(this)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(valid(this), Heap[null, valid(this)], leftValid(this), Heap[null, leftValid(this)]);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access rightValid(this) (AVLTree.iterative.vpr@233.3--233.30) [92994]"}
        perm <= Mask[null, rightValid(this)];
    }
    Mask := Mask[null, rightValid(this):=Mask[null, rightValid(this)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(valid(this), Heap[null, valid(this)], rightValid(this), Heap[null, rightValid(this)]);
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(Heap[null, validRest(this)], CombineFrames(Heap[null, leftValid(this)], Heap[null, rightValid(this)]));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_136: Ref, f_153: (Field A B) ::
      { newPMask[o_136, f_153] }
      Heap[null, valid#sm(this)][o_136, f_153] || Heap[null, validRest#sm(this)][o_136, f_153] ==> newPMask[o_136, f_153]
    );
    Heap := Heap[null, valid#sm(this):=newPMask];
    havoc newPMask;
    assume (forall <A, B> o_137: Ref, f_154: (Field A B) ::
      { newPMask[o_137, f_154] }
      Heap[null, valid#sm(this)][o_137, f_154] || Heap[null, leftValid#sm(this)][o_137, f_154] ==> newPMask[o_137, f_154]
    );
    Heap := Heap[null, valid#sm(this):=newPMask];
    havoc newPMask;
    assume (forall <A, B> o_138: Ref, f_155: (Field A B) ::
      { newPMask[o_138, f_155] }
      Heap[null, valid#sm(this)][o_138, f_155] || Heap[null, rightValid#sm(this)][o_138, f_155] ==> newPMask[o_138, f_155]
    );
    Heap := Heap[null, valid#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init_2 might not hold. There might be insufficient permission to access valid(this) (AVLTree.iterative.vpr@224.11--224.33) [92996]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}