// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0075_AVLTree.nokeys.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0075_AVLTree.nokeys-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_72: Ref, f_100: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_72, f_100] }
  Heap[o_72, $allocated] ==> Heap[Heap[o_72, f_100], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_80: Ref, f_101: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_80, f_101] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_80, f_101) ==> Heap[o_80, f_101] == ExhaleHeap[o_80, f_101]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_36: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_36), ExhaleHeap[null, PredicateMaskField(pm_f_36)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_36) && IsPredicateField(pm_f_36) ==> Heap[null, PredicateMaskField(pm_f_36)] == ExhaleHeap[null, PredicateMaskField(pm_f_36)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_36: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_36) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_36) && IsPredicateField(pm_f_36) ==> (forall <A, B> o2_36: Ref, f_101: (Field A B) ::
    { ExhaleHeap[o2_36, f_101] }
    Heap[null, PredicateMaskField(pm_f_36)][o2_36, f_101] ==> Heap[o2_36, f_101] == ExhaleHeap[o2_36, f_101]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_36: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_36), ExhaleHeap[null, WandMaskField(pm_f_36)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_36) && IsWandField(pm_f_36) ==> Heap[null, WandMaskField(pm_f_36)] == ExhaleHeap[null, WandMaskField(pm_f_36)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_36: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_36) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_36) && IsWandField(pm_f_36) ==> (forall <A, B> o2_36: Ref, f_101: (Field A B) ::
    { ExhaleHeap[o2_36, f_101] }
    Heap[null, WandMaskField(pm_f_36)][o2_36, f_101] ==> Heap[o2_36, f_101] == ExhaleHeap[o2_36, f_101]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_80: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_80, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_80, $allocated] ==> ExhaleHeap[o_80, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_72: Ref, f_80: (Field A B), v: B ::
  { Heap[o_72, f_80:=v] }
  succHeap(Heap, Heap[o_72, f_80:=v])
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

const unique root_1: Field NormalField Ref;
axiom !IsPredicateField(root_1);
axiom !IsWandField(root_1);
const unique key_6: Field NormalField int;
axiom !IsPredicateField(key_6);
axiom !IsWandField(key_6);
const unique height: Field NormalField int;
axiom !IsPredicateField(height);
axiom !IsWandField(height);
const unique left_2: Field NormalField Ref;
axiom !IsPredicateField(left_2);
axiom !IsWandField(left_2);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);
const unique balanceFactor: Field NormalField int;
axiom !IsPredicateField(balanceFactor);
axiom !IsWandField(balanceFactor);

// ==================================================
// Translation of predicate headvalid
// ==================================================

type PredicateType_headvalid;
function  headvalid(this: Ref): Field PredicateType_headvalid FrameType;
function  headvalid#sm(this: Ref): Field PredicateType_headvalid PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(headvalid(this)) }
  PredicateMaskField(headvalid(this)) == headvalid#sm(this)
);
axiom (forall this: Ref ::
  { headvalid(this) }
  IsPredicateField(headvalid(this))
);
axiom (forall this: Ref ::
  { headvalid(this) }
  getPredWandId(headvalid(this)) == 0
);
function  headvalid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  headvalid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { headvalid(this), headvalid(this2) }
  headvalid(this) == headvalid(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { headvalid#sm(this), headvalid#sm(this2) }
  headvalid#sm(this) == headvalid#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { headvalid#trigger(Heap, headvalid(this)) }
  headvalid#everUsed(headvalid(this))
);

procedure headvalid#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of headvalid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.root != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [66962]"}
        HasDirectPerm(Mask, this, root_1);
    if (Heap[this, root_1] != null) {
      
      // -- Check definedness of acc(valid(this.root), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [66963]"}
          HasDirectPerm(Mask, this, root_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, root_1]):=Mask[null, valid(Heap[this, root_1])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.root != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [66964]"}
        HasDirectPerm(Mask, this, root_1);
    if (Heap[this, root_1] != null) {
      
      // -- Check definedness of acc(this.root.height, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [66965]"}
          HasDirectPerm(Mask, this, root_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@6.2--11.3) [66966]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root_1] != null;
      Mask := Mask[Heap[this, root_1], height:=Mask[Heap[this, root_1], height] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.root != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [66967]"}
        HasDirectPerm(Mask, this, root_1);
    if (Heap[this, root_1] != null) {
      
      // -- Check definedness of acc(this.root.balanceFactor, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [66968]"}
          HasDirectPerm(Mask, this, root_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@6.2--11.3) [66969]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root_1] != null;
      Mask := Mask[Heap[this, root_1], balanceFactor:=Mask[Heap[this, root_1], balanceFactor] + perm];
      assume state(Heap, Mask);
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
    assume this != null;
    Mask := Mask[this, key_6:=Mask[this, key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [66970]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, height:=Mask[this, height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [66971]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66972]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66973]"}
          HasDirectPerm(Mask, this, left_2);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66974]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66975]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [66976]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66977]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66978]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [66979]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66980]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of this.left.height > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66981]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [66982]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      assume Heap[Heap[this, left_2], height] > 0;
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66983]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66984]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66985]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66986]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [66987]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66988]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66989]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [66990]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66991]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of this.right.height > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66992]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [66993]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      assume Heap[Heap[this, right_1], height] > 0;
    }
    
    // -- Check definedness of this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [66994]"}
        HasDirectPerm(Mask, this, height);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66995]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [66996]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [66997]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66998]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [66999]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [67000]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
      if ((if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height])) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [67001]"}
          HasDirectPerm(Mask, this, left_2);
        if (Heap[this, left_2] == null) {
        } else {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [67002]"}
            HasDirectPerm(Mask, this, left_2);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [67003]"}
            HasDirectPerm(Mask, Heap[this, left_2], height);
        }
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [67004]"}
          HasDirectPerm(Mask, this, right_1);
        if (Heap[this, right_1] == null) {
        } else {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [67005]"}
            HasDirectPerm(Mask, this, right_1);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [67006]"}
            HasDirectPerm(Mask, Heap[this, right_1], height);
        }
      }
    assume Heap[this, height] == (if (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) then (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) + 1);
    
    // -- Check definedness of this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@46.2--65.3) [67007]"}
        HasDirectPerm(Mask, this, balanceFactor);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [67008]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [67009]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [67010]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [67011]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [67012]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [67013]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    assume Heap[this, balanceFactor] == (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    
    // -- Check definedness of this.balanceFactor <= 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@46.2--65.3) [67014]"}
        HasDirectPerm(Mask, this, balanceFactor);
    assume Heap[this, balanceFactor] <= 1;
    
    // -- Check definedness of this.balanceFactor >= -1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@46.2--65.3) [67015]"}
        HasDirectPerm(Mask, this, balanceFactor);
    assume Heap[this, balanceFactor] >= -1;
    
    // -- Check definedness of this.height > 0
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [67016]"}
        HasDirectPerm(Mask, this, height);
    assume Heap[this, height] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method headinit
// ==================================================

procedure headinit(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, headvalid(this):=PostMask[null, headvalid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.root := null -- 0075_AVLTree.nokeys.vpr@17.3--17.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@17.3--17.20) [67017]"}
      FullPerm == Mask[this, root_1];
    Heap := Heap[this, root_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(headvalid(this), write) -- 0075_AVLTree.nokeys.vpr@18.3--18.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@18.3--18.34) [67020]"}
        perm <= Mask[this, root_1];
    }
    Mask := Mask[this, root_1:=Mask[this, root_1] - perm];
    if (Heap[this, root_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access valid(this.root) (0075_AVLTree.nokeys.vpr@18.3--18.34) [67022]"}
          perm <= Mask[null, valid(Heap[this, root_1])];
      }
      Mask := Mask[null, valid(Heap[this, root_1]):=Mask[null, valid(Heap[this, root_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(headvalid(this), Heap[null, headvalid(this)], valid(Heap[this, root_1]), Heap[null, valid(Heap[this, root_1])]);
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@18.3--18.34) [67023]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.height (0075_AVLTree.nokeys.vpr@18.3--18.34) [67024]"}
          perm <= Mask[Heap[this, root_1], height];
      }
      Mask := Mask[Heap[this, root_1], height:=Mask[Heap[this, root_1], height] - perm];
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@18.3--18.34) [67025]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.balanceFactor (0075_AVLTree.nokeys.vpr@18.3--18.34) [67026]"}
          perm <= Mask[Heap[this, root_1], balanceFactor];
      }
      Mask := Mask[Heap[this, root_1], balanceFactor:=Mask[Heap[this, root_1], balanceFactor] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume headvalid#trigger(Heap, headvalid(this));
    assume Heap[null, headvalid(this)] == CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, root_1] != null then Heap[null, valid(Heap[this, root_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], height]) else EmptyFrame)), FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], balanceFactor]) else EmptyFrame)))));
    if (!HasDirectPerm(Mask, null, headvalid(this))) {
      Heap := Heap[null, headvalid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, headvalid(this):=freshVersion];
    }
    Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][this, root_1:=true]];
    if (Heap[this, root_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
        { newPMask[o_5, f_11] }
        Heap[null, headvalid#sm(this)][o_5, f_11] || Heap[null, valid#sm(Heap[this, root_1])][o_5, f_11] ==> newPMask[o_5, f_11]
      );
      Heap := Heap[null, headvalid#sm(this):=newPMask];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], height:=true]];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of headinit might not hold. There might be insufficient permission to access headvalid(this) (0075_AVLTree.nokeys.vpr@15.11--15.37) [67028]"}
        perm <= Mask[null, headvalid(this)];
    }
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method headhas
// ==================================================

procedure headhas(this: Ref, k: int) returns (b_24: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var ExhaleHeap: HeapType;
  var bb: bool;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, headvalid(this):=PostMask[null, headvalid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(headvalid(this), write) -- 0075_AVLTree.nokeys.vpr@27.3--27.36
    assume headvalid#trigger(Heap, headvalid(this));
    assume Heap[null, headvalid(this)] == CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, root_1] != null then Heap[null, valid(Heap[this, root_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], height]) else EmptyFrame)), FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], balanceFactor]) else EmptyFrame)))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding headvalid(this) might fail. There might be insufficient permission to access headvalid(this) (0075_AVLTree.nokeys.vpr@27.3--27.36) [67031]"}
        perm <= Mask[null, headvalid(this)];
    }
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, headvalid(this))) {
        havoc newVersion;
        Heap := Heap[null, headvalid(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, root_1:=Mask[this, root_1] + perm];
    assume state(Heap, Mask);
    if (Heap[this, root_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, root_1]):=Mask[null, valid(Heap[this, root_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(headvalid(this), Heap[null, headvalid(this)], valid(Heap[this, root_1]), Heap[null, valid(Heap[this, root_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@27.3--27.36) [67034]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root_1] != null;
      Mask := Mask[Heap[this, root_1], height:=Mask[Heap[this, root_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@27.3--27.36) [67035]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root_1] != null;
      Mask := Mask[Heap[this, root_1], balanceFactor:=Mask[Heap[this, root_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.root == null) -- 0075_AVLTree.nokeys.vpr@28.3--33.4
    
    // -- Check definedness of this.root == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@28.7--28.22) [67036]"}
        HasDirectPerm(Mask, this, root_1);
    if (Heap[this, root_1] == null) {
      
      // -- Translating statement: b := false -- 0075_AVLTree.nokeys.vpr@29.4--29.14
        b_24 := false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: bb := has(this.root, k) -- 0075_AVLTree.nokeys.vpr@31.4--31.25
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.root
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@31.4--31.25) [67037]"}
            HasDirectPerm(Mask, this, root_1);
        arg_this := Heap[this, root_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method has might not hold. There might be insufficient permission to access valid(this.root) (0075_AVLTree.nokeys.vpr@31.4--31.25) [67038]"}
              perm <= Mask[null, valid(arg_this)];
          }
          Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc bb;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: b := bb -- 0075_AVLTree.nokeys.vpr@32.4--32.11
        b_24 := bb;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(headvalid(this), write) -- 0075_AVLTree.nokeys.vpr@34.3--34.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@34.3--34.34) [67041]"}
        perm <= Mask[this, root_1];
    }
    Mask := Mask[this, root_1:=Mask[this, root_1] - perm];
    if (Heap[this, root_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access valid(this.root) (0075_AVLTree.nokeys.vpr@34.3--34.34) [67043]"}
          perm <= Mask[null, valid(Heap[this, root_1])];
      }
      Mask := Mask[null, valid(Heap[this, root_1]):=Mask[null, valid(Heap[this, root_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(headvalid(this), Heap[null, headvalid(this)], valid(Heap[this, root_1]), Heap[null, valid(Heap[this, root_1])]);
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@34.3--34.34) [67044]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.height (0075_AVLTree.nokeys.vpr@34.3--34.34) [67045]"}
          perm <= Mask[Heap[this, root_1], height];
      }
      Mask := Mask[Heap[this, root_1], height:=Mask[Heap[this, root_1], height] - perm];
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@34.3--34.34) [67046]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.balanceFactor (0075_AVLTree.nokeys.vpr@34.3--34.34) [67047]"}
          perm <= Mask[Heap[this, root_1], balanceFactor];
      }
      Mask := Mask[Heap[this, root_1], balanceFactor:=Mask[Heap[this, root_1], balanceFactor] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume headvalid#trigger(Heap, headvalid(this));
    assume Heap[null, headvalid(this)] == CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, root_1] != null then Heap[null, valid(Heap[this, root_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], height]) else EmptyFrame)), FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], balanceFactor]) else EmptyFrame)))));
    if (!HasDirectPerm(Mask, null, headvalid(this))) {
      Heap := Heap[null, headvalid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, headvalid(this):=freshVersion];
    }
    Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][this, root_1:=true]];
    if (Heap[this, root_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
        { newPMask[o_6, f_12] }
        Heap[null, headvalid#sm(this)][o_6, f_12] || Heap[null, valid#sm(Heap[this, root_1])][o_6, f_12] ==> newPMask[o_6, f_12]
      );
      Heap := Heap[null, headvalid#sm(this):=newPMask];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], height:=true]];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of headhas might not hold. There might be insufficient permission to access headvalid(this) (0075_AVLTree.nokeys.vpr@24.11--24.37) [67049]"}
        perm <= Mask[null, headvalid(this)];
    }
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method init
// ==================================================

procedure init(this: Ref, k: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[this, height:=Mask[this, height] + perm];
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
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@74.11--74.31) [67050]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, height:=PostMask[this, height] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@75.11--75.38) [67051]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, balanceFactor:=PostMask[this, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.height == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@76.11--76.27) [67052]"}
        HasDirectPerm(PostMask, this, height);
    assume PostHeap[this, height] == 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.balanceFactor == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@77.11--77.34) [67053]"}
        HasDirectPerm(PostMask, this, balanceFactor);
    assume PostHeap[this, balanceFactor] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.left := null -- 0075_AVLTree.nokeys.vpr@79.3--79.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@79.3--79.22) [67054]"}
      FullPerm == Mask[this, left_2];
    Heap := Heap[this, left_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right := null -- 0075_AVLTree.nokeys.vpr@80.3--80.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@80.3--80.22) [67055]"}
      FullPerm == Mask[this, right_1];
    Heap := Heap[this, right_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.key := k -- 0075_AVLTree.nokeys.vpr@81.3--81.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@81.3--81.19) [67056]"}
      FullPerm == Mask[this, key_6];
    Heap := Heap[this, key_6:=k];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@82.3--82.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@82.3--82.14) [67057]"}
          perm <= Mask[this, key_6];
      }
      Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@82.3--82.14) [67058]"}
          perm <= Mask[this, height];
      }
      Mask := Mask[this, height:=Mask[this, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@82.3--82.14) [67059]"}
          perm <= Mask[this, left_2];
      }
      Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@82.3--82.14) [67060]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@82.3--82.14) [67061]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@82.3--82.14) [67062]"}
            perm <= Mask[null, valid(Heap[this, left_2])];
        }
        Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67063]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@82.3--82.14) [67064]"}
            perm <= Mask[Heap[this, left_2], height];
        }
        Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67065]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@82.3--82.14) [67066]"}
            perm <= Mask[Heap[this, left_2], balanceFactor];
        }
        Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@82.3--82.14) [67067]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67068]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@82.3--82.14) [67069]"}
            perm <= Mask[Heap[this, right_1], height];
        }
        Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67070]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@82.3--82.14) [67071]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67072]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67073]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67074]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height:=Mask[this, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [67075]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height] == (if (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) then (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@73.11--73.33) [67076]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of init might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@74.11--74.31) [67077]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@74.11--74.31) [67078]"}
        perm <= Mask[this, height];
    }
    Mask := Mask[this, height:=Mask[this, height] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of init might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@75.11--75.38) [67079]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@75.11--75.38) [67080]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    assert {:msg "  Postcondition of init might not hold. Assertion this.height == 1 might not hold. (0075_AVLTree.nokeys.vpr@76.11--76.27) [67081]"}
      Heap[this, height] == 1;
    assert {:msg "  Postcondition of init might not hold. Assertion this.balanceFactor == 0 might not hold. (0075_AVLTree.nokeys.vpr@77.11--77.34) [67082]"}
      Heap[this, balanceFactor] == 0;
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var ExhaleHeap: HeapType;
  var arg_this_1: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
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
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@96.3--96.32
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key_6]), CombineFrames(FrameFragment(Heap[this, height]), CombineFrames(FrameFragment(Heap[this, left_2]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left_2] != null then Heap[null, valid(Heap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@96.3--96.32) [67085]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this))) {
        havoc newVersion;
        Heap := Heap[null, valid(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, key_6:=Mask[this, key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [67087]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, height:=Mask[this, height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [67090]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [67092]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [67093]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left_2] != null) {
      assume Heap[Heap[this, left_2], height] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [67095]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [67096]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      assume Heap[Heap[this, right_1], height] > 0;
    }
    assume Heap[this, height] == (if (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) then (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) + 1);
    assume Heap[this, balanceFactor] == (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assume Heap[this, balanceFactor] <= 1;
    assume Heap[this, balanceFactor] >= -1;
    assume Heap[this, height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (k == this.key) -- 0075_AVLTree.nokeys.vpr@97.3--113.4
    
    // -- Check definedness of k == this.key
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@97.7--97.20) [67097]"}
        HasDirectPerm(Mask, this, key_6);
    if (k == Heap[this, key_6]) {
      
      // -- Translating statement: b := true -- 0075_AVLTree.nokeys.vpr@98.4--98.13
        b_24 := true;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (k < this.key) -- 0075_AVLTree.nokeys.vpr@100.4--112.5
        
        // -- Check definedness of k < this.key
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@100.8--100.22) [67098]"}
            HasDirectPerm(Mask, this, key_6);
        if (k < Heap[this, key_6]) {
          
          // -- Translating statement: if (this.left != null) -- 0075_AVLTree.nokeys.vpr@101.5--105.6
            
            // -- Check definedness of this.left != null
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@101.9--101.24) [67099]"}
                HasDirectPerm(Mask, this, left_2);
            if (Heap[this, left_2] != null) {
              
              // -- Translating statement: b := has(this.left, k) -- 0075_AVLTree.nokeys.vpr@102.6--102.27
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Check definedness of this.left
                  assert {:msg "  Method call might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@102.6--102.27) [67100]"}
                    HasDirectPerm(Mask, this, left_2);
                arg_this := Heap[this, left_2];
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method has might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@102.6--102.27) [67101]"}
                      perm <= Mask[null, valid(arg_this)];
                  }
                  Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc b_24;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] + perm];
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: b := false -- 0075_AVLTree.nokeys.vpr@104.6--104.16
                b_24 := false;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (this.right != null) -- 0075_AVLTree.nokeys.vpr@107.5--111.6
            
            // -- Check definedness of this.right != null
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@107.9--107.25) [67102]"}
                HasDirectPerm(Mask, this, right_1);
            if (Heap[this, right_1] != null) {
              
              // -- Translating statement: b := has(this.right, k) -- 0075_AVLTree.nokeys.vpr@108.6--108.28
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Check definedness of this.right
                  assert {:msg "  Method call might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@108.6--108.28) [67103]"}
                    HasDirectPerm(Mask, this, right_1);
                arg_this_1 := Heap[this, right_1];
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method has might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@108.6--108.28) [67104]"}
                      perm <= Mask[null, valid(arg_this_1)];
                  }
                  Mask := Mask[null, valid(arg_this_1):=Mask[null, valid(arg_this_1)] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc b_24;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  Mask := Mask[null, valid(arg_this_1):=Mask[null, valid(arg_this_1)] + perm];
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: b := false -- 0075_AVLTree.nokeys.vpr@110.6--110.16
                b_24 := false;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@114.3--114.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@114.3--114.30) [67107]"}
        perm <= Mask[this, key_6];
    }
    Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67108]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@114.3--114.30) [67109]"}
        perm <= Mask[this, height];
    }
    Mask := Mask[this, height:=Mask[this, height] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@114.3--114.30) [67111]"}
        perm <= Mask[this, left_2];
    }
    Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@114.3--114.30) [67113]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67114]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@114.3--114.30) [67115]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@114.3--114.30) [67117]"}
          perm <= Mask[null, valid(Heap[this, left_2])];
      }
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])]);
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67118]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@114.3--114.30) [67119]"}
          perm <= Mask[Heap[this, left_2], height];
      }
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67120]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@114.3--114.30) [67121]"}
          perm <= Mask[Heap[this, left_2], balanceFactor];
      }
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
    }
    if (Heap[this, left_2] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.left.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67122]"}
        Heap[Heap[this, left_2], height] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@114.3--114.30) [67124]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67125]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@114.3--114.30) [67126]"}
          perm <= Mask[Heap[this, right_1], height];
      }
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67127]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@114.3--114.30) [67128]"}
          perm <= Mask[Heap[this, right_1], balanceFactor];
      }
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.right.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67129]"}
        Heap[Heap[this, right_1], height] > 0;
    }
    assert {:msg "  Folding valid(this) might fail. Assertion this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1) might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67130]"}
      Heap[this, height] == (if (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) then (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) + 1);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67131]"}
      Heap[this, balanceFactor] == (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor <= 1 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67132]"}
      Heap[this, balanceFactor] <= 1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor >= -1 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67133]"}
      Heap[this, balanceFactor] >= -1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [67134]"}
      Heap[this, height] > 0;
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key_6]), CombineFrames(FrameFragment(Heap[this, height]), CombineFrames(FrameFragment(Heap[this, left_2]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left_2] != null then Heap[null, valid(Heap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key_6:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left_2:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
    if (Heap[this, left_2] != null) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, valid#sm(this)][o_40, f_52] || Heap[null, valid#sm(Heap[this, left_2])][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], height:=true]];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], balanceFactor:=true]];
    }
    if (Heap[this, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
        { newPMask[o_42, f_55] }
        Heap[null, valid#sm(this)][o_42, f_55] || Heap[null, valid#sm(Heap[this, right_1])][o_42, f_55] ==> newPMask[o_42, f_55]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height:=true]];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of has might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@94.11--94.33) [67136]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method getBalanceFactor
// ==================================================

procedure getBalanceFactor(this: Ref, rd: Perm) returns (bf: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var newVersion: FrameType;
  var lh: int;
  var rh: int;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := rd;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@120.12--120.38) [67137]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := rd;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@123.11--123.37) [67138]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, balanceFactor:=PostMask[this, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of bf == this.balanceFactor
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@124.11--124.37) [67139]"}
        HasDirectPerm(PostMask, this, balanceFactor);
    assume bf == PostHeap[this, balanceFactor];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this), write) in bf > 0 ==> this.left != null)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key_6]), CombineFrames(FrameFragment(UnfoldingHeap[this, height]), CombineFrames(FrameFragment(UnfoldingHeap[this, left_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@126.11--126.72) [67140]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key_6:=UnfoldingMask[this, key_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67141]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height:=UnfoldingMask[this, height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left_2:=UnfoldingMask[this, left_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67142]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left_2] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67143]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], height:=UnfoldingMask[UnfoldingHeap[this, left_2], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67144]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] > 0;
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67145]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67146]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
      }
      assume UnfoldingHeap[this, height] == (if (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) then (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
      if (bf > 0) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@126.11--126.72) [67147]"}
          HasDirectPerm(UnfoldingMask, this, left_2);
      }
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, key_6:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, height:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, left_2:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, right_1:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, balanceFactor:=true]];
        if (PostHeap[this, left_2] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            PostHeap[null, valid#sm(this)][o_46, f_60] || PostHeap[null, valid#sm(PostHeap[this, left_2])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, left_2] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left_2], height:=true]];
        }
        if (PostHeap[this, left_2] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left_2], balanceFactor:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            PostHeap[null, valid#sm(this)][o, f_61] || PostHeap[null, valid#sm(PostHeap[this, right_1])][o, f_61] ==> newPMask[o, f_61]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], height:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], balanceFactor:=true]];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key_6]), CombineFrames(FrameFragment(UnfoldingHeap[this, height]), CombineFrames(FrameFragment(UnfoldingHeap[this, left_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key_6:=UnfoldingMask[this, key_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height:=UnfoldingMask[this, height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left_2:=UnfoldingMask[this, left_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left_2] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], height:=UnfoldingMask[UnfoldingHeap[this, left_2], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] > 0;
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
      }
      assume UnfoldingHeap[this, height] == (if (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) then (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    assume bf > 0 ==> PostHeap[this, left_2] != null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this), write) in bf < 0 ==> this.right != null)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key_6]), CombineFrames(FrameFragment(UnfoldingHeap[this, height]), CombineFrames(FrameFragment(UnfoldingHeap[this, left_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@127.11--127.72) [67148]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key_6:=UnfoldingMask[this, key_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67149]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height:=UnfoldingMask[this, height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left_2:=UnfoldingMask[this, left_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67150]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left_2] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67151]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], height:=UnfoldingMask[UnfoldingHeap[this, left_2], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67152]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] > 0;
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67153]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67154]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
      }
      assume UnfoldingHeap[this, height] == (if (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) then (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
      if (bf < 0) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@127.11--127.72) [67155]"}
          HasDirectPerm(UnfoldingMask, this, right_1);
      }
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, key_6:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, height:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, left_2:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, right_1:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, balanceFactor:=true]];
        if (PostHeap[this, left_2] != null) {
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            PostHeap[null, valid#sm(this)][o_14, f_3] || PostHeap[null, valid#sm(PostHeap[this, left_2])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, left_2] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left_2], height:=true]];
        }
        if (PostHeap[this, left_2] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left_2], balanceFactor:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
            { newPMask[o_3, f_24] }
            PostHeap[null, valid#sm(this)][o_3, f_24] || PostHeap[null, valid#sm(PostHeap[this, right_1])][o_3, f_24] ==> newPMask[o_3, f_24]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], height:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], balanceFactor:=true]];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key_6]), CombineFrames(FrameFragment(UnfoldingHeap[this, height]), CombineFrames(FrameFragment(UnfoldingHeap[this, left_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key_6:=UnfoldingMask[this, key_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height:=UnfoldingMask[this, height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left_2:=UnfoldingMask[this, left_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left_2] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], height:=UnfoldingMask[UnfoldingHeap[this, left_2], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] > 0;
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
      }
      assume UnfoldingHeap[this, height] == (if (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) then (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    assume bf < 0 ==> PostHeap[this, right_1] != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@129.3--129.32
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key_6]), CombineFrames(FrameFragment(Heap[this, height]), CombineFrames(FrameFragment(Heap[this, left_2]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left_2] != null then Heap[null, valid(Heap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@129.3--129.32) [67158]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this))) {
        havoc newVersion;
        Heap := Heap[null, valid(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, key_6:=Mask[this, key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [67160]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, height:=Mask[this, height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [67163]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [67165]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [67166]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left_2] != null) {
      assume Heap[Heap[this, left_2], height] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [67168]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [67169]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      assume Heap[Heap[this, right_1], height] > 0;
    }
    assume Heap[this, height] == (if (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) then (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) + 1);
    assume Heap[this, balanceFactor] == (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assume Heap[this, balanceFactor] <= 1;
    assume Heap[this, balanceFactor] >= -1;
    assume Heap[this, height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: lh := (this.left == null ? 0 : this.left.height) -- 0075_AVLTree.nokeys.vpr@130.3--130.62
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@130.3--130.62) [67170]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@130.3--130.62) [67171]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@130.3--130.62) [67172]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
    lh := (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]);
    assume state(Heap, Mask);
  
  // -- Translating statement: rh := (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@131.3--131.62
    
    // -- Check definedness of (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@131.3--131.62) [67173]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@131.3--131.62) [67174]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@131.3--131.62) [67175]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    rh := (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assume state(Heap, Mask);
  
  // -- Translating statement: bf := lh - rh -- 0075_AVLTree.nokeys.vpr@132.3--132.14
    bf := lh - rh;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@134.3--134.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@134.3--134.30) [67178]"}
        perm <= Mask[this, key_6];
    }
    Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67179]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@134.3--134.30) [67180]"}
        perm <= Mask[this, height];
    }
    Mask := Mask[this, height:=Mask[this, height] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@134.3--134.30) [67182]"}
        perm <= Mask[this, left_2];
    }
    Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@134.3--134.30) [67184]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67185]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@134.3--134.30) [67186]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@134.3--134.30) [67188]"}
          perm <= Mask[null, valid(Heap[this, left_2])];
      }
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])]);
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67189]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@134.3--134.30) [67190]"}
          perm <= Mask[Heap[this, left_2], height];
      }
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67191]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@134.3--134.30) [67192]"}
          perm <= Mask[Heap[this, left_2], balanceFactor];
      }
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
    }
    if (Heap[this, left_2] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.left.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67193]"}
        Heap[Heap[this, left_2], height] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@134.3--134.30) [67195]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67196]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@134.3--134.30) [67197]"}
          perm <= Mask[Heap[this, right_1], height];
      }
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67198]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@134.3--134.30) [67199]"}
          perm <= Mask[Heap[this, right_1], balanceFactor];
      }
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.right.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67200]"}
        Heap[Heap[this, right_1], height] > 0;
    }
    assert {:msg "  Folding valid(this) might fail. Assertion this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1) might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67201]"}
      Heap[this, height] == (if (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) then (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) + 1);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67202]"}
      Heap[this, balanceFactor] == (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor <= 1 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67203]"}
      Heap[this, balanceFactor] <= 1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor >= -1 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67204]"}
      Heap[this, balanceFactor] >= -1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [67205]"}
      Heap[this, height] > 0;
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key_6]), CombineFrames(FrameFragment(Heap[this, height]), CombineFrames(FrameFragment(Heap[this, left_2]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left_2] != null then Heap[null, valid(Heap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key_6:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left_2:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
    if (Heap[this, left_2] != null) {
      havoc newPMask;
      assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
        { newPMask[o_41, f_21] }
        Heap[null, valid#sm(this)][o_41, f_21] || Heap[null, valid#sm(Heap[this, left_2])][o_41, f_21] ==> newPMask[o_41, f_21]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], height:=true]];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], balanceFactor:=true]];
    }
    if (Heap[this, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
        { newPMask[o_23, f_13] }
        Heap[null, valid#sm(this)][o_23, f_13] || Heap[null, valid#sm(Heap[this, right_1])][o_23, f_13] ==> newPMask[o_23, f_13]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height:=true]];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@122.11--122.33) [67207]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    perm := rd;
    assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@123.11--123.37) [67208]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@123.11--123.37) [67209]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    assert {:msg "  Postcondition of getBalanceFactor might not hold. Assertion bf == this.balanceFactor might not hold. (0075_AVLTree.nokeys.vpr@124.11--124.37) [67210]"}
      bf == Heap[this, balanceFactor];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key_6]), CombineFrames(FrameFragment(UnfoldingHeap[this, height]), CombineFrames(FrameFragment(UnfoldingHeap[this, left_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@126.11--126.72) [67211]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key_6:=UnfoldingMask[this, key_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67212]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height:=UnfoldingMask[this, height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left_2:=UnfoldingMask[this, left_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67213]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left_2] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67214]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], height:=UnfoldingMask[UnfoldingHeap[this, left_2], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67215]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] > 0;
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67216]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67217]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
      }
      assume UnfoldingHeap[this, height] == (if (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) then (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    if (bf > 0) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Assertion this.left != null might not hold. (0075_AVLTree.nokeys.vpr@126.11--126.72) [67218]"}
        Heap[this, left_2] != null;
    }
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key_6]), CombineFrames(FrameFragment(UnfoldingHeap[this, height]), CombineFrames(FrameFragment(UnfoldingHeap[this, left_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@127.11--127.72) [67219]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key_6:=UnfoldingMask[this, key_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67220]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height:=UnfoldingMask[this, height] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left_2:=UnfoldingMask[this, left_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67221]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left_2] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67222]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], height:=UnfoldingMask[UnfoldingHeap[this, left_2], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67223]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left_2] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] > 0;
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67224]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67225]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
      }
      assume UnfoldingHeap[this, height] == (if (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) then (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left_2], height]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    if (bf < 0) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Assertion this.right != null might not hold. (0075_AVLTree.nokeys.vpr@127.11--127.72) [67226]"}
        Heap[this, right_1] != null;
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key_6:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left_2:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
      if (Heap[this, left_2] != null) {
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
          { newPMask[o_1, f_10] }
          Heap[null, valid#sm(this)][o_1, f_10] || Heap[null, valid#sm(Heap[this, left_2])][o_1, f_10] ==> newPMask[o_1, f_10]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, left_2] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], height:=true]];
      }
      if (Heap[this, left_2] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], balanceFactor:=true]];
      }
      if (Heap[this, right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
          { newPMask[o_15, f_51] }
          Heap[null, valid#sm(this)][o_15, f_51] || Heap[null, valid#sm(Heap[this, right_1])][o_15, f_51] ==> newPMask[o_15, f_51]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, right_1] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height:=true]];
      }
      if (Heap[this, right_1] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key_6:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left_2:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
      if (Heap[this, left_2] != null) {
        havoc newPMask;
        assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
          { newPMask[o_4, f_54] }
          Heap[null, valid#sm(this)][o_4, f_54] || Heap[null, valid#sm(Heap[this, left_2])][o_4, f_54] ==> newPMask[o_4, f_54]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, left_2] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], height:=true]];
      }
      if (Heap[this, left_2] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], balanceFactor:=true]];
      }
      if (Heap[this, right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
          { newPMask[o_12, f_25] }
          Heap[null, valid#sm(this)][o_12, f_25] || Heap[null, valid#sm(Heap[this, right_1])][o_12, f_25] ==> newPMask[o_12, f_25]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, right_1] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height:=true]];
      }
      if (Heap[this, right_1] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method getBalanceFactorI
// ==================================================

procedure getBalanceFactorI(this: Ref, rd: Perm) returns (bf: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var lh: int;
  var rh: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd;
    assume state(Heap, Mask);
    perm := rd;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@140.12--140.29) [67227]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, left_2:=Mask[this, left_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@141.12--141.59) [67228]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@141.12--141.59) [67229]"}
          HasDirectPerm(Mask, this, left_2);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@142.12--142.56) [67230]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@142.12--142.56) [67231]"}
          HasDirectPerm(Mask, this, left_2);
      perm := rd;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@142.12--142.56) [67232]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    perm := rd;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@143.12--143.30) [67233]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@144.12--144.61) [67234]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@144.12--144.61) [67235]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@145.12--145.58) [67236]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@145.12--145.58) [67237]"}
          HasDirectPerm(Mask, this, right_1);
      perm := rd;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@145.12--145.58) [67238]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := rd;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@146.11--146.28) [67239]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, left_2:=PostMask[this, left_2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@147.11--147.58) [67240]"}
        HasDirectPerm(PostMask, this, left_2);
    if (PostHeap[this, left_2] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@147.11--147.58) [67241]"}
          HasDirectPerm(PostMask, this, left_2);
      perm := FullPerm;
      PostMask := PostMask[null, valid(PostHeap[this, left_2]):=PostMask[null, valid(PostHeap[this, left_2])] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@148.11--148.55) [67242]"}
        HasDirectPerm(PostMask, this, left_2);
    if (PostHeap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@148.11--148.55) [67243]"}
          HasDirectPerm(PostMask, this, left_2);
      perm := rd;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@148.11--148.55) [67244]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> PostHeap[this, left_2] != null;
      PostMask := PostMask[PostHeap[this, left_2], height:=PostMask[PostHeap[this, left_2], height] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    perm := rd;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@149.11--149.29) [67245]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, right_1:=PostMask[this, right_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@150.11--150.60) [67246]"}
        HasDirectPerm(PostMask, this, right_1);
    if (PostHeap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@150.11--150.60) [67247]"}
          HasDirectPerm(PostMask, this, right_1);
      perm := FullPerm;
      PostMask := PostMask[null, valid(PostHeap[this, right_1]):=PostMask[null, valid(PostHeap[this, right_1])] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@151.11--151.57) [67248]"}
        HasDirectPerm(PostMask, this, right_1);
    if (PostHeap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@151.11--151.57) [67249]"}
          HasDirectPerm(PostMask, this, right_1);
      perm := rd;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@151.11--151.57) [67250]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> PostHeap[this, right_1] != null;
      PostMask := PostMask[PostHeap[this, right_1], height:=PostMask[PostHeap[this, right_1], height] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of bf == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@152.11--152.94) [67251]"}
        HasDirectPerm(PostMask, this, left_2);
      if (PostHeap[this, left_2] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@152.11--152.94) [67252]"}
          HasDirectPerm(PostMask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@152.11--152.94) [67253]"}
          HasDirectPerm(PostMask, PostHeap[this, left_2], height);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@152.11--152.94) [67254]"}
        HasDirectPerm(PostMask, this, right_1);
      if (PostHeap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@152.11--152.94) [67255]"}
          HasDirectPerm(PostMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@152.11--152.94) [67256]"}
          HasDirectPerm(PostMask, PostHeap[this, right_1], height);
      }
    assume bf == (if PostHeap[this, left_2] == null then 0 else PostHeap[PostHeap[this, left_2], height]) - (if PostHeap[this, right_1] == null then 0 else PostHeap[PostHeap[this, right_1], height]);
    assume state(PostHeap, PostMask);
    if (bf > 0) {
      
      // -- Check definedness of this.left != null
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@153.11--153.36) [67257]"}
          HasDirectPerm(PostMask, this, left_2);
      assume PostHeap[this, left_2] != null;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: lh := (this.left == null ? 0 : this.left.height) -- 0075_AVLTree.nokeys.vpr@155.3--155.62
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@155.3--155.62) [67258]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@155.3--155.62) [67259]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@155.3--155.62) [67260]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
    lh := (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]);
    assume state(Heap, Mask);
  
  // -- Translating statement: rh := (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@156.3--156.62
    
    // -- Check definedness of (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@156.3--156.62) [67261]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@156.3--156.62) [67262]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@156.3--156.62) [67263]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    rh := (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assume state(Heap, Mask);
  
  // -- Translating statement: bf := lh - rh -- 0075_AVLTree.nokeys.vpr@157.3--157.14
    bf := lh - rh;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.right != null ==>
  //   (unfolding acc(valid(this.right), write) in true) -- 0075_AVLTree.nokeys.vpr@162.3--162.80
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.right != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@162.10--162.80) [67264]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of (unfolding acc(valid(this.right), write) in true)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[this, right_1]));
        assume UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], key_6]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@162.10--162.80) [67265]"}
            perm <= UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])];
        }
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], key_6:=UnfoldingMask[UnfoldingHeap[this, right_1], key_6] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [67266]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], left_2:=UnfoldingMask[UnfoldingHeap[this, right_1], left_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], right_1:=UnfoldingMask[UnfoldingHeap[this, right_1], right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [67267]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])], valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [67268]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [67269]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height] > 0;
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])], valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [67270]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [67271]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height] > 0;
        }
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] == (if (if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) > (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]) then (if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) + 1 else (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]) + 1);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] == (if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) - (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] <= 1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] >= -1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@162.10--162.80) [67272]"}
          HasDirectPerm(UnfoldingMask, this, right_1);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key_6:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left_2:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
          if (Heap[Heap[this, right_1], left_2] != null) {
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
              { newPMask[o_13, f_65] }
              Heap[null, valid#sm(Heap[this, right_1])][o_13, f_65] || Heap[null, valid#sm(Heap[Heap[this, right_1], left_2])][o_13, f_65] ==> newPMask[o_13, f_65]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], left_2] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], height:=true]];
          }
          if (Heap[Heap[this, right_1], left_2] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], balanceFactor:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
              { newPMask[o_51, f_66] }
              Heap[null, valid#sm(Heap[this, right_1])][o_51, f_66] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_51, f_66] ==> newPMask[o_51, f_66]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
          }
          assume state(Heap, Mask);
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key_6:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left_2:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
      if (Heap[Heap[this, right_1], left_2] != null) {
        havoc newPMask;
        assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
          { newPMask[o_52, f_14] }
          Heap[null, valid#sm(Heap[this, right_1])][o_52, f_14] || Heap[null, valid#sm(Heap[Heap[this, right_1], left_2])][o_52, f_14] ==> newPMask[o_52, f_14]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], left_2] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], height:=true]];
      }
      if (Heap[Heap[this, right_1], left_2] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], balanceFactor:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
          { newPMask[o_20, f_50] }
          Heap[null, valid#sm(Heap[this, right_1])][o_20, f_50] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_20, f_50] ==> newPMask[o_20, f_50]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := rd;
    assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@146.11--146.28) [67274]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@146.11--146.28) [67275]"}
        perm <= Mask[this, left_2];
    }
    Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@147.11--147.58) [67276]"}
          perm <= Mask[null, valid(Heap[this, left_2])];
      }
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
    }
    if (Heap[this, left_2] != null) {
      perm := rd;
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@148.11--148.55) [67277]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@148.11--148.55) [67278]"}
          perm <= Mask[Heap[this, left_2], height];
      }
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
    }
    perm := rd;
    assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@149.11--149.29) [67279]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@149.11--149.29) [67280]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@150.11--150.60) [67281]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := rd;
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@151.11--151.57) [67282]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@151.11--151.57) [67283]"}
          perm <= Mask[Heap[this, right_1], height];
      }
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
    }
    assert {:msg "  Postcondition of getBalanceFactorI might not hold. Assertion bf == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@152.11--152.94) [67284]"}
      bf == (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    if (bf > 0) {
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. Assertion this.left != null might not hold. (0075_AVLTree.nokeys.vpr@153.11--153.36) [67285]"}
        Heap[this, left_2] != null;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method close
// ==================================================

procedure close(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var lh: int;
  var rh: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newPMask: PMaskType;
  var freshVersion: FrameType;
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
    Mask := Mask[this, height:=Mask[this, height] + perm];
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
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@171.12--171.59) [67286]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@171.12--171.59) [67287]"}
          HasDirectPerm(Mask, this, left_2);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@172.12--172.64) [67288]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@172.12--172.64) [67289]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@172.12--172.64) [67290]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@173.12--173.64) [67291]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@173.12--173.64) [67292]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@173.12--173.64) [67293]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@174.12--174.61) [67294]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@174.12--174.61) [67295]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@175.12--175.66) [67296]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@175.12--175.66) [67297]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@175.12--175.66) [67298]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@176.12--176.66) [67299]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@176.12--176.66) [67300]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@176.12--176.66) [67301]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@177.14--177.104) [67302]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@177.14--177.104) [67303]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@177.14--177.104) [67304]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@177.14--177.104) [67305]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@177.14--177.104) [67306]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@177.14--177.104) [67307]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    assume (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) <= 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@178.14--178.104) [67308]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@178.14--178.104) [67309]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@178.14--178.104) [67310]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@178.14--178.104) [67311]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@178.14--178.104) [67312]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@178.14--178.104) [67313]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    assume (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) >= -1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@180.11--180.38) [67314]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, height:=PostMask[this, height] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@181.11--181.38) [67315]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, balanceFactor:=PostMask[this, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.height == ((old(this.left) == null ? 0 : old(this.left.height)) > (old(this.right) == null ? 0 : old(this.right.height)) ? (old(this.left) == null ? 0 : old(this.left.height)) + 1 : (old(this.right) == null ? 0 : old(this.right.height)) + 1)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [67316]"}
        HasDirectPerm(PostMask, this, height);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [67317]"}
        HasDirectPerm(oldMask, this, left_2);
      if (oldHeap[this, left_2] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [67318]"}
          HasDirectPerm(oldMask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [67319]"}
          HasDirectPerm(oldMask, oldHeap[this, left_2], height);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [67320]"}
        HasDirectPerm(oldMask, this, right_1);
      if (oldHeap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [67321]"}
          HasDirectPerm(oldMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [67322]"}
          HasDirectPerm(oldMask, oldHeap[this, right_1], height);
      }
      if ((if oldHeap[this, left_2] == null then 0 else oldHeap[oldHeap[this, left_2], height]) > (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height])) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [67323]"}
          HasDirectPerm(oldMask, this, left_2);
        if (oldHeap[this, left_2] == null) {
        } else {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [67324]"}
            HasDirectPerm(oldMask, this, left_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [67325]"}
            HasDirectPerm(oldMask, oldHeap[this, left_2], height);
        }
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [67326]"}
          HasDirectPerm(oldMask, this, right_1);
        if (oldHeap[this, right_1] == null) {
        } else {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [67327]"}
            HasDirectPerm(oldMask, this, right_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [67328]"}
            HasDirectPerm(oldMask, oldHeap[this, right_1], height);
        }
      }
    assume PostHeap[this, height] == (if (if oldHeap[this, left_2] == null then 0 else oldHeap[oldHeap[this, left_2], height]) > (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height]) then (if oldHeap[this, left_2] == null then 0 else oldHeap[oldHeap[this, left_2], height]) + 1 else (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height]) + 1);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.balanceFactor == (old(this.left) == null ? 0 : old(this.left.height)) - (old(this.right) == null ? 0 : old(this.right.height))
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@189.11--190.113) [67329]"}
        HasDirectPerm(PostMask, this, balanceFactor);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@189.11--190.113) [67330]"}
        HasDirectPerm(oldMask, this, left_2);
      if (oldHeap[this, left_2] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@189.11--190.113) [67331]"}
          HasDirectPerm(oldMask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@189.11--190.113) [67332]"}
          HasDirectPerm(oldMask, oldHeap[this, left_2], height);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@189.11--190.113) [67333]"}
        HasDirectPerm(oldMask, this, right_1);
      if (oldHeap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@189.11--190.113) [67334]"}
          HasDirectPerm(oldMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@189.11--190.113) [67335]"}
          HasDirectPerm(oldMask, oldHeap[this, right_1], height);
      }
    assume PostHeap[this, balanceFactor] == (if oldHeap[this, left_2] == null then 0 else oldHeap[oldHeap[this, left_2], height]) - (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: lh := (this.left == null ? 0 : this.left.height) -- 0075_AVLTree.nokeys.vpr@192.3--192.62
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@192.3--192.62) [67336]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@192.3--192.62) [67337]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@192.3--192.62) [67338]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
    lh := (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]);
    assume state(Heap, Mask);
  
  // -- Translating statement: rh := (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@193.3--193.62
    
    // -- Check definedness of (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@193.3--193.62) [67339]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@193.3--193.62) [67340]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@193.3--193.62) [67341]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    rh := (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.height := ((this.left == null ? 0 : this.left.height) >
  //   (this.right == null ? 0 : this.right.height) ?
  //     (this.left == null ? 0 : this.left.height) + 1 :
  //     (this.right == null ? 0 : this.right.height) + 1) -- 0075_AVLTree.nokeys.vpr@195.3--195.206
    
    // -- Check definedness of ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [67342]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [67343]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [67344]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [67345]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [67346]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [67347]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
      if ((if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height])) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [67348]"}
          HasDirectPerm(Mask, this, left_2);
        if (Heap[this, left_2] == null) {
        } else {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [67349]"}
            HasDirectPerm(Mask, this, left_2);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [67350]"}
            HasDirectPerm(Mask, Heap[this, left_2], height);
        }
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [67351]"}
          HasDirectPerm(Mask, this, right_1);
        if (Heap[this, right_1] == null) {
        } else {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [67352]"}
            HasDirectPerm(Mask, this, right_1);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [67353]"}
            HasDirectPerm(Mask, Heap[this, right_1], height);
        }
      }
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [67354]"}
      FullPerm == Mask[this, height];
    Heap := Heap[this, height:=(if (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) then (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) + 1)];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.balanceFactor := (this.left == null ? 0 : this.left.height) -
  //   (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@196.3--196.112
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@196.3--196.112) [67355]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@196.3--196.112) [67356]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@196.3--196.112) [67357]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@196.3--196.112) [67358]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@196.3--196.112) [67359]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@196.3--196.112) [67360]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@196.3--196.112) [67361]"}
      FullPerm == Mask[this, balanceFactor];
    Heap := Heap[this, balanceFactor:=(if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height])];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.left != null ==>
  //   (unfolding acc(valid(this.left), write) in true) -- 0075_AVLTree.nokeys.vpr@201.3--201.79
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.left != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@201.10--201.79) [67362]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of (unfolding acc(valid(this.left), write) in true)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[this, left_2]));
        assume UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], key_6]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], height]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], left_2]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], right_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@201.10--201.79) [67363]"}
            perm <= UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])];
        }
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left_2])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], key_6:=UnfoldingMask[UnfoldingHeap[this, left_2], key_6] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [67364]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], height:=UnfoldingMask[UnfoldingHeap[this, left_2], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], left_2:=UnfoldingMask[UnfoldingHeap[this, left_2], left_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], right_1:=UnfoldingMask[UnfoldingHeap[this, left_2], right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [67365]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left_2] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left_2], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], left_2])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])], valid(UnfoldingHeap[UnfoldingHeap[this, left_2], left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], left_2])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [67366]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], height:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], height] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [67367]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], height] > 0;
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left_2])], valid(UnfoldingHeap[UnfoldingHeap[this, left_2], right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left_2], right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [67368]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], height:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], height] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [67369]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], height] > 0;
        }
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] == (if (if UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], height]) > (if UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], height]) then (if UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], height]) + 1 else (if UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], height]) + 1);
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor] == (if UnfoldingHeap[UnfoldingHeap[this, left_2], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], left_2], height]) - (if UnfoldingHeap[UnfoldingHeap[this, left_2], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left_2], right_1], height]);
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor] <= 1;
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], balanceFactor] >= -1;
        assume UnfoldingHeap[UnfoldingHeap[this, left_2], height] > 0;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@201.10--201.79) [67370]"}
          HasDirectPerm(UnfoldingMask, this, left_2);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], key_6:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], height:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], left_2:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], right_1:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], balanceFactor:=true]];
          if (Heap[Heap[this, left_2], left_2] != null) {
            havoc newPMask;
            assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
              { newPMask[o_58, f_30] }
              Heap[null, valid#sm(Heap[this, left_2])][o_58, f_30] || Heap[null, valid#sm(Heap[Heap[this, left_2], left_2])][o_58, f_30] ==> newPMask[o_58, f_30]
            );
            Heap := Heap[null, valid#sm(Heap[this, left_2]):=newPMask];
          }
          if (Heap[Heap[this, left_2], left_2] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], left_2], height:=true]];
          }
          if (Heap[Heap[this, left_2], left_2] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], left_2], balanceFactor:=true]];
          }
          if (Heap[Heap[this, left_2], right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
              { newPMask[o_10, f_67] }
              Heap[null, valid#sm(Heap[this, left_2])][o_10, f_67] || Heap[null, valid#sm(Heap[Heap[this, left_2], right_1])][o_10, f_67] ==> newPMask[o_10, f_67]
            );
            Heap := Heap[null, valid#sm(Heap[this, left_2]):=newPMask];
          }
          if (Heap[Heap[this, left_2], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], right_1], height:=true]];
          }
          if (Heap[Heap[this, left_2], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], right_1], balanceFactor:=true]];
          }
          assume state(Heap, Mask);
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], key_6:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], height:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], left_2:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], right_1:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[this, left_2], balanceFactor:=true]];
      if (Heap[Heap[this, left_2], left_2] != null) {
        havoc newPMask;
        assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
          { newPMask[o_18, f_18] }
          Heap[null, valid#sm(Heap[this, left_2])][o_18, f_18] || Heap[null, valid#sm(Heap[Heap[this, left_2], left_2])][o_18, f_18] ==> newPMask[o_18, f_18]
        );
        Heap := Heap[null, valid#sm(Heap[this, left_2]):=newPMask];
      }
      if (Heap[Heap[this, left_2], left_2] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], left_2], height:=true]];
      }
      if (Heap[Heap[this, left_2], left_2] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], left_2], balanceFactor:=true]];
      }
      if (Heap[Heap[this, left_2], right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
          { newPMask[o_66, f_28] }
          Heap[null, valid#sm(Heap[this, left_2])][o_66, f_28] || Heap[null, valid#sm(Heap[Heap[this, left_2], right_1])][o_66, f_28] ==> newPMask[o_66, f_28]
        );
        Heap := Heap[null, valid#sm(Heap[this, left_2]):=newPMask];
      }
      if (Heap[Heap[this, left_2], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], right_1], height:=true]];
      }
      if (Heap[Heap[this, left_2], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left_2]):=Heap[null, valid#sm(Heap[this, left_2])][Heap[Heap[this, left_2], right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.right != null ==>
  //   (unfolding acc(valid(this.right), write) in true) -- 0075_AVLTree.nokeys.vpr@202.3--202.79
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.right != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@202.10--202.79) [67372]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of (unfolding acc(valid(this.right), write) in true)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[this, right_1]));
        assume UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], key_6]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@202.10--202.79) [67373]"}
            perm <= UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])];
        }
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], key_6:=UnfoldingMask[UnfoldingHeap[this, right_1], key_6] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [67374]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height:=UnfoldingMask[UnfoldingHeap[this, right_1], height] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], left_2:=UnfoldingMask[UnfoldingHeap[this, right_1], left_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], right_1:=UnfoldingMask[UnfoldingHeap[this, right_1], right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [67375]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])], valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left_2])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [67376]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [67377]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height] > 0;
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])], valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [67378]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [67379]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height] > 0;
        }
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] == (if (if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) > (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]) then (if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) + 1 else (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]) + 1);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] == (if UnfoldingHeap[UnfoldingHeap[this, right_1], left_2] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left_2], height]) - (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height]);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] <= 1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] >= -1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height] > 0;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@202.10--202.79) [67380]"}
          HasDirectPerm(UnfoldingMask, this, right_1);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key_6:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left_2:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
          if (Heap[Heap[this, right_1], left_2] != null) {
            havoc newPMask;
            assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
              { newPMask[o_11, f_34] }
              Heap[null, valid#sm(Heap[this, right_1])][o_11, f_34] || Heap[null, valid#sm(Heap[Heap[this, right_1], left_2])][o_11, f_34] ==> newPMask[o_11, f_34]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], left_2] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], height:=true]];
          }
          if (Heap[Heap[this, right_1], left_2] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], balanceFactor:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
              { newPMask[o_19, f_57] }
              Heap[null, valid#sm(Heap[this, right_1])][o_19, f_57] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_19, f_57] ==> newPMask[o_19, f_57]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
          }
          assume state(Heap, Mask);
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key_6:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left_2:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
      if (Heap[Heap[this, right_1], left_2] != null) {
        havoc newPMask;
        assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
          { newPMask[o_21, f_58] }
          Heap[null, valid#sm(Heap[this, right_1])][o_21, f_58] || Heap[null, valid#sm(Heap[Heap[this, right_1], left_2])][o_21, f_58] ==> newPMask[o_21, f_58]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], left_2] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], height:=true]];
      }
      if (Heap[Heap[this, right_1], left_2] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left_2], balanceFactor:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
          { newPMask[o_43, f_33] }
          Heap[null, valid#sm(Heap[this, right_1])][o_43, f_33] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_43, f_33] ==> newPMask[o_43, f_33]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@204.3--204.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@204.3--204.30) [67384]"}
        perm <= Mask[this, key_6];
    }
    Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67385]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@204.3--204.30) [67386]"}
        perm <= Mask[this, height];
    }
    Mask := Mask[this, height:=Mask[this, height] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@204.3--204.30) [67388]"}
        perm <= Mask[this, left_2];
    }
    Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@204.3--204.30) [67390]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67391]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@204.3--204.30) [67392]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    if (Heap[this, left_2] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@204.3--204.30) [67394]"}
          perm <= Mask[null, valid(Heap[this, left_2])];
      }
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])]);
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67395]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@204.3--204.30) [67396]"}
          perm <= Mask[Heap[this, left_2], height];
      }
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
    }
    if (Heap[this, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67397]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@204.3--204.30) [67398]"}
          perm <= Mask[Heap[this, left_2], balanceFactor];
      }
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
    }
    if (Heap[this, left_2] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.left.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67399]"}
        Heap[Heap[this, left_2], height] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@204.3--204.30) [67401]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67402]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@204.3--204.30) [67403]"}
          perm <= Mask[Heap[this, right_1], height];
      }
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67404]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@204.3--204.30) [67405]"}
          perm <= Mask[Heap[this, right_1], balanceFactor];
      }
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.right.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67406]"}
        Heap[Heap[this, right_1], height] > 0;
    }
    assert {:msg "  Folding valid(this) might fail. Assertion this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1) might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67407]"}
      Heap[this, height] == (if (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) then (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) + 1);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67408]"}
      Heap[this, balanceFactor] == (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor <= 1 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67409]"}
      Heap[this, balanceFactor] <= 1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor >= -1 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67410]"}
      Heap[this, balanceFactor] >= -1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [67411]"}
      Heap[this, height] > 0;
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key_6]), CombineFrames(FrameFragment(Heap[this, height]), CombineFrames(FrameFragment(Heap[this, left_2]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left_2] != null then Heap[null, valid(Heap[this, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then FrameFragment(Heap[Heap[this, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key_6:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left_2:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
    if (Heap[this, left_2] != null) {
      havoc newPMask;
      assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
        { newPMask[o_50, f_75] }
        Heap[null, valid#sm(this)][o_50, f_75] || Heap[null, valid#sm(Heap[this, left_2])][o_50, f_75] ==> newPMask[o_50, f_75]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], height:=true]];
    }
    if (Heap[this, left_2] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left_2], balanceFactor:=true]];
    }
    if (Heap[this, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
        { newPMask[o_22, f_59] }
        Heap[null, valid#sm(this)][o_22, f_59] || Heap[null, valid#sm(Heap[this, right_1])][o_22, f_59] ==> newPMask[o_22, f_59]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height:=true]];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of close might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@179.11--179.33) [67413]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@180.11--180.38) [67414]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@180.11--180.38) [67415]"}
        perm <= Mask[this, height];
    }
    Mask := Mask[this, height:=Mask[this, height] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@181.11--181.38) [67416]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@181.11--181.38) [67417]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    assert {:msg "  Postcondition of close might not hold. Assertion this.height == ((old(this.left) == null ? 0 : old(this.left.height)) > (old(this.right) == null ? 0 : old(this.right.height)) ? (old(this.left) == null ? 0 : old(this.left.height)) + 1 : (old(this.right) == null ? 0 : old(this.right.height)) + 1) might not hold. (0075_AVLTree.nokeys.vpr@182.11--188.5) [67418]"}
      Heap[this, height] == (if (if oldHeap[this, left_2] == null then 0 else oldHeap[oldHeap[this, left_2], height]) > (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height]) then (if oldHeap[this, left_2] == null then 0 else oldHeap[oldHeap[this, left_2], height]) + 1 else (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height]) + 1);
    assert {:msg "  Postcondition of close might not hold. Assertion this.balanceFactor == (old(this.left) == null ? 0 : old(this.left.height)) - (old(this.right) == null ? 0 : old(this.right.height)) might not hold. (0075_AVLTree.nokeys.vpr@189.11--190.113) [67419]"}
      Heap[this, balanceFactor] == (if oldHeap[this, left_2] == null then 0 else oldHeap[oldHeap[this, left_2], height]) - (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height]);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method rebalanceRL
// ==================================================

procedure rebalanceRL(this: Ref) returns (r_1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
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
    Mask := Mask[this, height:=Mask[this, height] + perm];
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
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@214.12--214.27) [67420]"}
        HasDirectPerm(Mask, this, left_2);
    assume Heap[this, left_2] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@215.12--215.39) [67421]"}
        HasDirectPerm(Mask, this, left_2);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@216.12--216.44) [67422]"}
        HasDirectPerm(Mask, this, left_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@216.12--216.44) [67423]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@217.12--217.44) [67424]"}
        HasDirectPerm(Mask, this, left_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@217.12--217.44) [67425]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@218.12--218.61) [67426]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@218.12--218.61) [67427]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@219.12--219.66) [67428]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@219.12--219.66) [67429]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@219.12--219.66) [67430]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@220.12--220.66) [67431]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@220.12--220.66) [67432]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@220.12--220.66) [67433]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.height - (this.right == null ? 0 : this.right.height) == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@221.12--221.70) [67434]"}
        HasDirectPerm(Mask, this, left_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@221.12--221.70) [67435]"}
        HasDirectPerm(Mask, Heap[this, left_2], height);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@221.12--221.70) [67436]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@221.12--221.70) [67437]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@221.12--221.70) [67438]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    assume Heap[Heap[this, left_2], height] - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) == 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.balanceFactor == -1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@222.12--222.39) [67439]"}
        HasDirectPerm(Mask, this, left_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@222.12--222.39) [67440]"}
        HasDirectPerm(Mask, Heap[this, left_2], balanceFactor);
    assume Heap[Heap[this, left_2], balanceFactor] == -1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@224.11--224.35) [67441]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height:=PostMask[r_1, height] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@225.11--225.35) [67442]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.left.height)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@226.11--226.44) [67443]"}
        HasDirectPerm(PostMask, r_1, height);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@226.11--226.44) [67444]"}
        HasDirectPerm(oldMask, this, left_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@226.11--226.44) [67445]"}
        HasDirectPerm(oldMask, oldHeap[this, left_2], height);
    assume PostHeap[r_1, height] == oldHeap[oldHeap[this, left_2], height];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.left), write) -- 0075_AVLTree.nokeys.vpr@228.3--228.37
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@228.3--228.37) [67446]"}
        HasDirectPerm(Mask, this, left_2);
    assume valid#trigger(Heap, valid(Heap[this, left_2]));
    assume Heap[null, valid(Heap[this, left_2])] == CombineFrames(FrameFragment(Heap[Heap[this, left_2], key_6]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], height]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], left_2]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then Heap[null, valid(Heap[Heap[this, left_2], left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then FrameFragment(Heap[Heap[Heap[this, left_2], left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then FrameFragment(Heap[Heap[Heap[this, left_2], left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], right_1] != null then Heap[null, valid(Heap[Heap[this, left_2], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left_2], right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left_2], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, left_2], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@228.3--228.37) [67449]"}
        perm <= Mask[null, valid(Heap[this, left_2])];
    }
    Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, left_2]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, left_2]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], key_6:=Mask[Heap[this, left_2], key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [67451]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], left_2:=Mask[Heap[this, left_2], left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], right_1:=Mask[Heap[this, left_2], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [67454]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, left_2], left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left_2], left_2]):=Mask[null, valid(Heap[Heap[this, left_2], left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])], valid(Heap[Heap[this, left_2], left_2]), Heap[null, valid(Heap[Heap[this, left_2], left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [67456]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], left_2] != null;
      Mask := Mask[Heap[Heap[this, left_2], left_2], height:=Mask[Heap[Heap[this, left_2], left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [67457]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], left_2] != null;
      Mask := Mask[Heap[Heap[this, left_2], left_2], balanceFactor:=Mask[Heap[Heap[this, left_2], left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], left_2] != null) {
      assume Heap[Heap[Heap[this, left_2], left_2], height] > 0;
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left_2], right_1]):=Mask[null, valid(Heap[Heap[this, left_2], right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])], valid(Heap[Heap[this, left_2], right_1]), Heap[null, valid(Heap[Heap[this, left_2], right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [67459]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], right_1] != null;
      Mask := Mask[Heap[Heap[this, left_2], right_1], height:=Mask[Heap[Heap[this, left_2], right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [67460]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], right_1] != null;
      Mask := Mask[Heap[Heap[this, left_2], right_1], balanceFactor:=Mask[Heap[Heap[this, left_2], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      assume Heap[Heap[Heap[this, left_2], right_1], height] > 0;
    }
    assume Heap[Heap[this, left_2], height] == (if (if Heap[Heap[this, left_2], left_2] == null then 0 else Heap[Heap[Heap[this, left_2], left_2], height]) > (if Heap[Heap[this, left_2], right_1] == null then 0 else Heap[Heap[Heap[this, left_2], right_1], height]) then (if Heap[Heap[this, left_2], left_2] == null then 0 else Heap[Heap[Heap[this, left_2], left_2], height]) + 1 else (if Heap[Heap[this, left_2], right_1] == null then 0 else Heap[Heap[Heap[this, left_2], right_1], height]) + 1);
    assume Heap[Heap[this, left_2], balanceFactor] == (if Heap[Heap[this, left_2], left_2] == null then 0 else Heap[Heap[Heap[this, left_2], left_2], height]) - (if Heap[Heap[this, left_2], right_1] == null then 0 else Heap[Heap[Heap[this, left_2], right_1], height]);
    assume Heap[Heap[this, left_2], balanceFactor] <= 1;
    assume Heap[Heap[this, left_2], balanceFactor] >= -1;
    assume Heap[Heap[this, left_2], height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.left.right -- 0075_AVLTree.nokeys.vpr@229.3--229.23
    
    // -- Check definedness of this.left.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@229.3--229.23) [67461]"}
        HasDirectPerm(Mask, this, left_2);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.right (0075_AVLTree.nokeys.vpr@229.3--229.23) [67462]"}
        HasDirectPerm(Mask, Heap[this, left_2], right_1);
    r_1 := Heap[Heap[this, left_2], right_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- 0075_AVLTree.nokeys.vpr@230.3--230.29
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, key_6]), CombineFrames(FrameFragment(Heap[r_1, height]), CombineFrames(FrameFragment(Heap[r_1, left_2]), CombineFrames(FrameFragment(Heap[r_1, right_1]), CombineFrames(FrameFragment(Heap[r_1, balanceFactor]), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then Heap[null, valid(Heap[r_1, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then FrameFragment(Heap[Heap[r_1, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then FrameFragment(Heap[Heap[r_1, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then Heap[null, valid(Heap[r_1, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[r_1, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@230.3--230.29) [67465]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(r_1))) {
        havoc newVersion;
        Heap := Heap[null, valid(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, key_6:=Mask[r_1, key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [67467]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, height:=Mask[r_1, height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, left_2:=Mask[r_1, left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, right_1:=Mask[r_1, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [67470]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, left_2]):=Mask[null, valid(Heap[r_1, left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, left_2]), Heap[null, valid(Heap[r_1, left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [67472]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left_2] != null;
      Mask := Mask[Heap[r_1, left_2], height:=Mask[Heap[r_1, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [67473]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left_2] != null;
      Mask := Mask[Heap[r_1, left_2], balanceFactor:=Mask[Heap[r_1, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left_2] != null) {
      assume Heap[Heap[r_1, left_2], height] > 0;
    }
    if (Heap[r_1, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, right_1]), Heap[null, valid(Heap[r_1, right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [67475]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], height:=Mask[Heap[r_1, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [67476]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      assume Heap[Heap[r_1, right_1], height] > 0;
    }
    assume Heap[r_1, height] == (if (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) > (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) then (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) + 1 else (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) + 1);
    assume Heap[r_1, balanceFactor] == (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]);
    assume Heap[r_1, balanceFactor] <= 1;
    assume Heap[r_1, balanceFactor] >= -1;
    assume Heap[r_1, height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.left.right := r.left -- 0075_AVLTree.nokeys.vpr@232.3--232.28
    
    // -- Check definedness of this.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@232.3--232.28) [67477]"}
        HasDirectPerm(Mask, this, left_2);
    
    // -- Check definedness of r.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@232.3--232.28) [67478]"}
        HasDirectPerm(Mask, r_1, left_2);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.right (0075_AVLTree.nokeys.vpr@232.3--232.28) [67479]"}
      FullPerm == Mask[Heap[this, left_2], right_1];
    Heap := Heap[Heap[this, left_2], right_1:=Heap[r_1, left_2]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this.left) -- 0075_AVLTree.nokeys.vpr@233.3--233.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of this.left
      assert {:msg "  Method call might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@233.3--233.19) [67480]"}
        HasDirectPerm(Mask, this, left_2);
    arg_this := Heap[this, left_2];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.key (0075_AVLTree.nokeys.vpr@233.3--233.19) [67481]"}
          perm <= Mask[arg_this, key_6];
      }
      Mask := Mask[arg_this, key_6:=Mask[arg_this, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@233.3--233.19) [67482]"}
          perm <= Mask[arg_this, height];
      }
      Mask := Mask[arg_this, height:=Mask[arg_this, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.left (0075_AVLTree.nokeys.vpr@233.3--233.19) [67483]"}
          perm <= Mask[arg_this, left_2];
      }
      Mask := Mask[arg_this, left_2:=Mask[arg_this, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.right (0075_AVLTree.nokeys.vpr@233.3--233.19) [67484]"}
          perm <= Mask[arg_this, right_1];
      }
      Mask := Mask[arg_this, right_1:=Mask[arg_this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@233.3--233.19) [67485]"}
          perm <= Mask[arg_this, balanceFactor];
      }
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] - perm];
      if (Heap[arg_this, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left.left) (0075_AVLTree.nokeys.vpr@233.3--233.19) [67486]"}
            perm <= Mask[null, valid(Heap[arg_this, left_2])];
        }
        Mask := Mask[null, valid(Heap[arg_this, left_2]):=Mask[null, valid(Heap[arg_this, left_2])] - perm];
      }
      if (Heap[arg_this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67487]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.left.height (0075_AVLTree.nokeys.vpr@233.3--233.19) [67488]"}
            perm <= Mask[Heap[arg_this, left_2], height];
        }
        Mask := Mask[Heap[arg_this, left_2], height:=Mask[Heap[arg_this, left_2], height] - perm];
      }
      if (Heap[arg_this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67489]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.left.balanceFactor (0075_AVLTree.nokeys.vpr@233.3--233.19) [67490]"}
            perm <= Mask[Heap[arg_this, left_2], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, left_2], balanceFactor:=Mask[Heap[arg_this, left_2], balanceFactor] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left.right) (0075_AVLTree.nokeys.vpr@233.3--233.19) [67491]"}
            perm <= Mask[null, valid(Heap[arg_this, right_1])];
        }
        Mask := Mask[null, valid(Heap[arg_this, right_1]):=Mask[null, valid(Heap[arg_this, right_1])] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67492]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.right.height (0075_AVLTree.nokeys.vpr@233.3--233.19) [67493]"}
            perm <= Mask[Heap[arg_this, right_1], height];
        }
        Mask := Mask[Heap[arg_this, right_1], height:=Mask[Heap[arg_this, right_1], height] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67494]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.right.balanceFactor (0075_AVLTree.nokeys.vpr@233.3--233.19) [67495]"}
            perm <= Mask[Heap[arg_this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, right_1], balanceFactor:=Mask[Heap[arg_this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left.left == null ? 0 : this.left.left.height) - (this.left.right == null ? 0 : this.left.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67496]"}
        (if Heap[arg_this, left_2] == null then 0 else Heap[Heap[arg_this, left_2], height]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left.left == null ? 0 : this.left.left.height) - (this.left.right == null ? 0 : this.left.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67497]"}
        (if Heap[arg_this, left_2] == null then 0 else Heap[Heap[arg_this, left_2], height]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67498]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, height:=Mask[arg_this, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [67499]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_this, height] == (if (if PreCallHeap[arg_this, left_2] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left_2], height]) > (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height]) then (if PreCallHeap[arg_this, left_2] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left_2], height]) + 1 else (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height]) + 1);
      assume Heap[arg_this, balanceFactor] == (if PreCallHeap[arg_this, left_2] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left_2], height]) - (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.left := this.left -- 0075_AVLTree.nokeys.vpr@234.3--234.26
    
    // -- Check definedness of this.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@234.3--234.26) [67500]"}
        HasDirectPerm(Mask, this, left_2);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@234.3--234.26) [67501]"}
      FullPerm == Mask[r_1, left_2];
    Heap := Heap[r_1, left_2:=Heap[this, left_2]];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.left := r.right -- 0075_AVLTree.nokeys.vpr@235.3--235.29
    
    // -- Check definedness of r.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@235.3--235.29) [67502]"}
        HasDirectPerm(Mask, r_1, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@235.3--235.29) [67503]"}
      FullPerm == Mask[this, left_2];
    Heap := Heap[this, left_2:=Heap[r_1, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@237.3--237.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@237.3--237.14) [67504]"}
          perm <= Mask[this, key_6];
      }
      Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@237.3--237.14) [67505]"}
          perm <= Mask[this, height];
      }
      Mask := Mask[this, height:=Mask[this, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@237.3--237.14) [67506]"}
          perm <= Mask[this, left_2];
      }
      Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@237.3--237.14) [67507]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@237.3--237.14) [67508]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@237.3--237.14) [67509]"}
            perm <= Mask[null, valid(Heap[this, left_2])];
        }
        Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67510]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@237.3--237.14) [67511]"}
            perm <= Mask[Heap[this, left_2], height];
        }
        Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67512]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@237.3--237.14) [67513]"}
            perm <= Mask[Heap[this, left_2], balanceFactor];
        }
        Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@237.3--237.14) [67514]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67515]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@237.3--237.14) [67516]"}
            perm <= Mask[Heap[this, right_1], height];
        }
        Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67517]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@237.3--237.14) [67518]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67519]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67520]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67521]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height:=Mask[this, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [67522]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height] == (if (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) then (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.right := this -- 0075_AVLTree.nokeys.vpr@238.3--238.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@238.3--238.21) [67523]"}
      FullPerm == Mask[r_1, right_1];
    Heap := Heap[r_1, right_1:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@239.3--239.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@239.3--239.11) [67524]"}
          perm <= Mask[r_1, key_6];
      }
      Mask := Mask[r_1, key_6:=Mask[r_1, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@239.3--239.11) [67525]"}
          perm <= Mask[r_1, height];
      }
      Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@239.3--239.11) [67526]"}
          perm <= Mask[r_1, left_2];
      }
      Mask := Mask[r_1, left_2:=Mask[r_1, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@239.3--239.11) [67527]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@239.3--239.11) [67528]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@239.3--239.11) [67529]"}
            perm <= Mask[null, valid(Heap[r_1, left_2])];
        }
        Mask := Mask[null, valid(Heap[r_1, left_2]):=Mask[null, valid(Heap[r_1, left_2])] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67530]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@239.3--239.11) [67531]"}
            perm <= Mask[Heap[r_1, left_2], height];
        }
        Mask := Mask[Heap[r_1, left_2], height:=Mask[Heap[r_1, left_2], height] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67532]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@239.3--239.11) [67533]"}
            perm <= Mask[Heap[r_1, left_2], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left_2], balanceFactor:=Mask[Heap[r_1, left_2], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@239.3--239.11) [67534]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67535]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@239.3--239.11) [67536]"}
            perm <= Mask[Heap[r_1, right_1], height];
        }
        Mask := Mask[Heap[r_1, right_1], height:=Mask[Heap[r_1, right_1], height] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67537]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@239.3--239.11) [67538]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67539]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67540]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67541]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height:=Mask[r_1, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [67542]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height] == (if (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) then (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of rebalanceRL might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@223.11--223.43) [67543]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRL might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@223.11--223.43) [67544]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@224.11--224.35) [67545]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRL might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@224.11--224.35) [67546]"}
        perm <= Mask[r_1, height];
    }
    Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@225.11--225.35) [67547]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRL might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@225.11--225.35) [67548]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceRL might not hold. Assertion r.height == old(this.left.height) might not hold. (0075_AVLTree.nokeys.vpr@226.11--226.44) [67549]"}
      Heap[r_1, height] == oldHeap[oldHeap[this, left_2], height];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method rebalanceRR
// ==================================================

procedure rebalanceRR(this: Ref) returns (r_1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
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
    Mask := Mask[this, height:=Mask[this, height] + perm];
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
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@248.12--248.27) [67550]"}
        HasDirectPerm(Mask, this, left_2);
    assume Heap[this, left_2] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@249.12--249.39) [67551]"}
        HasDirectPerm(Mask, this, left_2);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@250.12--250.44) [67552]"}
        HasDirectPerm(Mask, this, left_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@250.12--250.44) [67553]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@251.12--251.44) [67554]"}
        HasDirectPerm(Mask, this, left_2);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@251.12--251.44) [67555]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@252.12--252.61) [67556]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@252.12--252.61) [67557]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@253.12--253.66) [67558]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@253.12--253.66) [67559]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@253.12--253.66) [67560]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@254.12--254.66) [67561]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@254.12--254.66) [67562]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@254.12--254.66) [67563]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.height - (this.right == null ? 0 : this.right.height) == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@255.12--255.72) [67564]"}
        HasDirectPerm(Mask, this, left_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@255.12--255.72) [67565]"}
        HasDirectPerm(Mask, Heap[this, left_2], height);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@255.12--255.72) [67566]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@255.12--255.72) [67567]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@255.12--255.72) [67568]"}
          HasDirectPerm(Mask, Heap[this, right_1], height);
      }
    assume Heap[Heap[this, left_2], height] - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) == 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.balanceFactor >= 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@256.12--256.38) [67569]"}
        HasDirectPerm(Mask, this, left_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@256.12--256.38) [67570]"}
        HasDirectPerm(Mask, Heap[this, left_2], balanceFactor);
    assume Heap[Heap[this, left_2], balanceFactor] >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@258.11--258.35) [67571]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height:=PostMask[r_1, height] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@259.11--259.35) [67572]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.left.height) || r.height == old(this.left.height) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [67573]"}
        HasDirectPerm(PostMask, r_1, height);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@260.11--260.85) [67574]"}
        HasDirectPerm(oldMask, this, left_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [67575]"}
        HasDirectPerm(oldMask, oldHeap[this, left_2], height);
      if (!(PostHeap[r_1, height] == oldHeap[oldHeap[this, left_2], height])) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [67576]"}
          HasDirectPerm(PostMask, r_1, height);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@260.11--260.85) [67577]"}
          HasDirectPerm(oldMask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [67578]"}
          HasDirectPerm(oldMask, oldHeap[this, left_2], height);
      }
    assume PostHeap[r_1, height] == oldHeap[oldHeap[this, left_2], height] || PostHeap[r_1, height] == oldHeap[oldHeap[this, left_2], height] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.left), write) -- 0075_AVLTree.nokeys.vpr@262.3--262.37
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@262.3--262.37) [67579]"}
        HasDirectPerm(Mask, this, left_2);
    assume valid#trigger(Heap, valid(Heap[this, left_2]));
    assume Heap[null, valid(Heap[this, left_2])] == CombineFrames(FrameFragment(Heap[Heap[this, left_2], key_6]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], height]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], left_2]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, left_2], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then Heap[null, valid(Heap[Heap[this, left_2], left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then FrameFragment(Heap[Heap[Heap[this, left_2], left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then FrameFragment(Heap[Heap[Heap[this, left_2], left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], right_1] != null then Heap[null, valid(Heap[Heap[this, left_2], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left_2], right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left_2], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left_2], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, left_2], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@262.3--262.37) [67582]"}
        perm <= Mask[null, valid(Heap[this, left_2])];
    }
    Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, left_2]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, left_2]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], key_6:=Mask[Heap[this, left_2], key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [67584]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], left_2:=Mask[Heap[this, left_2], left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], right_1:=Mask[Heap[this, left_2], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [67587]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left_2] != null;
    Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, left_2], left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left_2], left_2]):=Mask[null, valid(Heap[Heap[this, left_2], left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])], valid(Heap[Heap[this, left_2], left_2]), Heap[null, valid(Heap[Heap[this, left_2], left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [67589]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], left_2] != null;
      Mask := Mask[Heap[Heap[this, left_2], left_2], height:=Mask[Heap[Heap[this, left_2], left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [67590]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], left_2] != null;
      Mask := Mask[Heap[Heap[this, left_2], left_2], balanceFactor:=Mask[Heap[Heap[this, left_2], left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], left_2] != null) {
      assume Heap[Heap[Heap[this, left_2], left_2], height] > 0;
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left_2], right_1]):=Mask[null, valid(Heap[Heap[this, left_2], right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left_2]), Heap[null, valid(Heap[this, left_2])], valid(Heap[Heap[this, left_2], right_1]), Heap[null, valid(Heap[Heap[this, left_2], right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [67592]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], right_1] != null;
      Mask := Mask[Heap[Heap[this, left_2], right_1], height:=Mask[Heap[Heap[this, left_2], right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [67593]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left_2], right_1] != null;
      Mask := Mask[Heap[Heap[this, left_2], right_1], balanceFactor:=Mask[Heap[Heap[this, left_2], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left_2], right_1] != null) {
      assume Heap[Heap[Heap[this, left_2], right_1], height] > 0;
    }
    assume Heap[Heap[this, left_2], height] == (if (if Heap[Heap[this, left_2], left_2] == null then 0 else Heap[Heap[Heap[this, left_2], left_2], height]) > (if Heap[Heap[this, left_2], right_1] == null then 0 else Heap[Heap[Heap[this, left_2], right_1], height]) then (if Heap[Heap[this, left_2], left_2] == null then 0 else Heap[Heap[Heap[this, left_2], left_2], height]) + 1 else (if Heap[Heap[this, left_2], right_1] == null then 0 else Heap[Heap[Heap[this, left_2], right_1], height]) + 1);
    assume Heap[Heap[this, left_2], balanceFactor] == (if Heap[Heap[this, left_2], left_2] == null then 0 else Heap[Heap[Heap[this, left_2], left_2], height]) - (if Heap[Heap[this, left_2], right_1] == null then 0 else Heap[Heap[Heap[this, left_2], right_1], height]);
    assume Heap[Heap[this, left_2], balanceFactor] <= 1;
    assume Heap[Heap[this, left_2], balanceFactor] >= -1;
    assume Heap[Heap[this, left_2], height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.left -- 0075_AVLTree.nokeys.vpr@263.3--263.23
    
    // -- Check definedness of this.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@263.3--263.23) [67594]"}
        HasDirectPerm(Mask, this, left_2);
    r_1 := Heap[this, left_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.left := r.right -- 0075_AVLTree.nokeys.vpr@264.3--264.26
    
    // -- Check definedness of r.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@264.3--264.26) [67595]"}
        HasDirectPerm(Mask, r_1, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@264.3--264.26) [67596]"}
      FullPerm == Mask[this, left_2];
    Heap := Heap[this, left_2:=Heap[r_1, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@265.3--265.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@265.3--265.14) [67597]"}
          perm <= Mask[this, key_6];
      }
      Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@265.3--265.14) [67598]"}
          perm <= Mask[this, height];
      }
      Mask := Mask[this, height:=Mask[this, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@265.3--265.14) [67599]"}
          perm <= Mask[this, left_2];
      }
      Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@265.3--265.14) [67600]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@265.3--265.14) [67601]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@265.3--265.14) [67602]"}
            perm <= Mask[null, valid(Heap[this, left_2])];
        }
        Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67603]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@265.3--265.14) [67604]"}
            perm <= Mask[Heap[this, left_2], height];
        }
        Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67605]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@265.3--265.14) [67606]"}
            perm <= Mask[Heap[this, left_2], balanceFactor];
        }
        Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@265.3--265.14) [67607]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67608]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@265.3--265.14) [67609]"}
            perm <= Mask[Heap[this, right_1], height];
        }
        Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67610]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@265.3--265.14) [67611]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67612]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67613]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67614]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height:=Mask[this, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [67615]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height] == (if (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) then (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.right := this -- 0075_AVLTree.nokeys.vpr@266.3--266.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@266.3--266.18) [67616]"}
      FullPerm == Mask[r_1, right_1];
    Heap := Heap[r_1, right_1:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@267.3--267.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@267.3--267.11) [67617]"}
          perm <= Mask[r_1, key_6];
      }
      Mask := Mask[r_1, key_6:=Mask[r_1, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@267.3--267.11) [67618]"}
          perm <= Mask[r_1, height];
      }
      Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@267.3--267.11) [67619]"}
          perm <= Mask[r_1, left_2];
      }
      Mask := Mask[r_1, left_2:=Mask[r_1, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@267.3--267.11) [67620]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@267.3--267.11) [67621]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@267.3--267.11) [67622]"}
            perm <= Mask[null, valid(Heap[r_1, left_2])];
        }
        Mask := Mask[null, valid(Heap[r_1, left_2]):=Mask[null, valid(Heap[r_1, left_2])] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67623]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@267.3--267.11) [67624]"}
            perm <= Mask[Heap[r_1, left_2], height];
        }
        Mask := Mask[Heap[r_1, left_2], height:=Mask[Heap[r_1, left_2], height] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67625]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@267.3--267.11) [67626]"}
            perm <= Mask[Heap[r_1, left_2], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left_2], balanceFactor:=Mask[Heap[r_1, left_2], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@267.3--267.11) [67627]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67628]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@267.3--267.11) [67629]"}
            perm <= Mask[Heap[r_1, right_1], height];
        }
        Mask := Mask[Heap[r_1, right_1], height:=Mask[Heap[r_1, right_1], height] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67630]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@267.3--267.11) [67631]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67632]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67633]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67634]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height:=Mask[r_1, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [67635]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height] == (if (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) then (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of rebalanceRR might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@257.11--257.43) [67636]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRR might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@257.11--257.43) [67637]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@258.11--258.35) [67638]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRR might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@258.11--258.35) [67639]"}
        perm <= Mask[r_1, height];
    }
    Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@259.11--259.35) [67640]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRR might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@259.11--259.35) [67641]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceRR might not hold. Assertion r.height == old(this.left.height) || r.height == old(this.left.height) + 1 might not hold. (0075_AVLTree.nokeys.vpr@260.11--260.85) [67642]"}
      Heap[r_1, height] == oldHeap[oldHeap[this, left_2], height] || Heap[r_1, height] == oldHeap[oldHeap[this, left_2], height] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method rebalanceLR
// ==================================================

procedure rebalanceLR(this: Ref) returns (r_1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
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
    Mask := Mask[this, height:=Mask[this, height] + perm];
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
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@277.12--277.57) [67643]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@277.12--277.57) [67644]"}
          HasDirectPerm(Mask, this, left_2);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@278.12--278.62) [67645]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@278.12--278.62) [67646]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@278.12--278.62) [67647]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@279.12--279.62) [67648]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@279.12--279.62) [67649]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@279.12--279.62) [67650]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@280.12--280.28) [67651]"}
        HasDirectPerm(Mask, this, right_1);
    assume Heap[this, right_1] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@281.12--281.40) [67652]"}
        HasDirectPerm(Mask, this, right_1);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@282.12--282.45) [67653]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@282.12--282.45) [67654]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@283.12--283.45) [67655]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@283.12--283.45) [67656]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - this.right.height == -2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@284.12--284.72) [67657]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@284.12--284.72) [67658]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@284.12--284.72) [67659]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@284.12--284.72) [67660]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@284.12--284.72) [67661]"}
        HasDirectPerm(Mask, Heap[this, right_1], height);
    assume (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - Heap[Heap[this, right_1], height] == -2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right.balanceFactor == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@285.12--285.39) [67662]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@285.12--285.39) [67663]"}
        HasDirectPerm(Mask, Heap[this, right_1], balanceFactor);
    assume Heap[Heap[this, right_1], balanceFactor] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@287.11--287.35) [67664]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height:=PostMask[r_1, height] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@288.11--288.35) [67665]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.right.height)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@289.11--289.45) [67666]"}
        HasDirectPerm(PostMask, r_1, height);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@289.11--289.45) [67667]"}
        HasDirectPerm(oldMask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@289.11--289.45) [67668]"}
        HasDirectPerm(oldMask, oldHeap[this, right_1], height);
    assume PostHeap[r_1, height] == oldHeap[oldHeap[this, right_1], height];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.right), write) -- 0075_AVLTree.nokeys.vpr@291.3--291.38
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@291.3--291.38) [67669]"}
        HasDirectPerm(Mask, this, right_1);
    assume valid#trigger(Heap, valid(Heap[this, right_1]));
    assume Heap[null, valid(Heap[this, right_1])] == CombineFrames(FrameFragment(Heap[Heap[this, right_1], key_6]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], height]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], left_2]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then Heap[null, valid(Heap[Heap[this, right_1], left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then Heap[null, valid(Heap[Heap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@291.3--291.38) [67672]"}
        perm <= Mask[null, valid(Heap[this, right_1])];
    }
    Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, right_1]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, right_1]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], key_6:=Mask[Heap[this, right_1], key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [67674]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], left_2:=Mask[Heap[this, right_1], left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], right_1:=Mask[Heap[this, right_1], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [67677]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, right_1], left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, right_1], left_2]):=Mask[null, valid(Heap[Heap[this, right_1], left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])], valid(Heap[Heap[this, right_1], left_2]), Heap[null, valid(Heap[Heap[this, right_1], left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [67679]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left_2] != null;
      Mask := Mask[Heap[Heap[this, right_1], left_2], height:=Mask[Heap[Heap[this, right_1], left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [67680]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left_2] != null;
      Mask := Mask[Heap[Heap[this, right_1], left_2], balanceFactor:=Mask[Heap[Heap[this, right_1], left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left_2] != null) {
      assume Heap[Heap[Heap[this, right_1], left_2], height] > 0;
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, right_1], right_1]):=Mask[null, valid(Heap[Heap[this, right_1], right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])], valid(Heap[Heap[this, right_1], right_1]), Heap[null, valid(Heap[Heap[this, right_1], right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [67682]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], height:=Mask[Heap[Heap[this, right_1], right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [67683]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], balanceFactor:=Mask[Heap[Heap[this, right_1], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      assume Heap[Heap[Heap[this, right_1], right_1], height] > 0;
    }
    assume Heap[Heap[this, right_1], height] == (if (if Heap[Heap[this, right_1], left_2] == null then 0 else Heap[Heap[Heap[this, right_1], left_2], height]) > (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height]) then (if Heap[Heap[this, right_1], left_2] == null then 0 else Heap[Heap[Heap[this, right_1], left_2], height]) + 1 else (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height]) + 1);
    assume Heap[Heap[this, right_1], balanceFactor] == (if Heap[Heap[this, right_1], left_2] == null then 0 else Heap[Heap[Heap[this, right_1], left_2], height]) - (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height]);
    assume Heap[Heap[this, right_1], balanceFactor] <= 1;
    assume Heap[Heap[this, right_1], balanceFactor] >= -1;
    assume Heap[Heap[this, right_1], height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.right.left -- 0075_AVLTree.nokeys.vpr@292.3--292.23
    
    // -- Check definedness of this.right.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@292.3--292.23) [67684]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.left (0075_AVLTree.nokeys.vpr@292.3--292.23) [67685]"}
        HasDirectPerm(Mask, Heap[this, right_1], left_2);
    r_1 := Heap[Heap[this, right_1], left_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- 0075_AVLTree.nokeys.vpr@293.3--293.29
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, key_6]), CombineFrames(FrameFragment(Heap[r_1, height]), CombineFrames(FrameFragment(Heap[r_1, left_2]), CombineFrames(FrameFragment(Heap[r_1, right_1]), CombineFrames(FrameFragment(Heap[r_1, balanceFactor]), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then Heap[null, valid(Heap[r_1, left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then FrameFragment(Heap[Heap[r_1, left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then FrameFragment(Heap[Heap[r_1, left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then Heap[null, valid(Heap[r_1, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[r_1, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@293.3--293.29) [67688]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(r_1))) {
        havoc newVersion;
        Heap := Heap[null, valid(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, key_6:=Mask[r_1, key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [67690]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, height:=Mask[r_1, height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, left_2:=Mask[r_1, left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, right_1:=Mask[r_1, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [67693]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, left_2]):=Mask[null, valid(Heap[r_1, left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, left_2]), Heap[null, valid(Heap[r_1, left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [67695]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left_2] != null;
      Mask := Mask[Heap[r_1, left_2], height:=Mask[Heap[r_1, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [67696]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left_2] != null;
      Mask := Mask[Heap[r_1, left_2], balanceFactor:=Mask[Heap[r_1, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left_2] != null) {
      assume Heap[Heap[r_1, left_2], height] > 0;
    }
    if (Heap[r_1, right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, right_1]), Heap[null, valid(Heap[r_1, right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [67698]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], height:=Mask[Heap[r_1, right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [67699]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      assume Heap[Heap[r_1, right_1], height] > 0;
    }
    assume Heap[r_1, height] == (if (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) > (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) then (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) + 1 else (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) + 1);
    assume Heap[r_1, balanceFactor] == (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]);
    assume Heap[r_1, balanceFactor] <= 1;
    assume Heap[r_1, balanceFactor] >= -1;
    assume Heap[r_1, height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right.left := r.right -- 0075_AVLTree.nokeys.vpr@294.3--294.29
    
    // -- Check definedness of this.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@294.3--294.29) [67700]"}
        HasDirectPerm(Mask, this, right_1);
    
    // -- Check definedness of r.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@294.3--294.29) [67701]"}
        HasDirectPerm(Mask, r_1, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.left (0075_AVLTree.nokeys.vpr@294.3--294.29) [67702]"}
      FullPerm == Mask[Heap[this, right_1], left_2];
    Heap := Heap[Heap[this, right_1], left_2:=Heap[r_1, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this.right) -- 0075_AVLTree.nokeys.vpr@295.3--295.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of this.right
      assert {:msg "  Method call might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@295.3--295.20) [67703]"}
        HasDirectPerm(Mask, this, right_1);
    arg_this := Heap[this, right_1];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.key (0075_AVLTree.nokeys.vpr@295.3--295.20) [67704]"}
          perm <= Mask[arg_this, key_6];
      }
      Mask := Mask[arg_this, key_6:=Mask[arg_this, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@295.3--295.20) [67705]"}
          perm <= Mask[arg_this, height];
      }
      Mask := Mask[arg_this, height:=Mask[arg_this, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.left (0075_AVLTree.nokeys.vpr@295.3--295.20) [67706]"}
          perm <= Mask[arg_this, left_2];
      }
      Mask := Mask[arg_this, left_2:=Mask[arg_this, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.right (0075_AVLTree.nokeys.vpr@295.3--295.20) [67707]"}
          perm <= Mask[arg_this, right_1];
      }
      Mask := Mask[arg_this, right_1:=Mask[arg_this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@295.3--295.20) [67708]"}
          perm <= Mask[arg_this, balanceFactor];
      }
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] - perm];
      if (Heap[arg_this, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right.left) (0075_AVLTree.nokeys.vpr@295.3--295.20) [67709]"}
            perm <= Mask[null, valid(Heap[arg_this, left_2])];
        }
        Mask := Mask[null, valid(Heap[arg_this, left_2]):=Mask[null, valid(Heap[arg_this, left_2])] - perm];
      }
      if (Heap[arg_this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67710]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.left.height (0075_AVLTree.nokeys.vpr@295.3--295.20) [67711]"}
            perm <= Mask[Heap[arg_this, left_2], height];
        }
        Mask := Mask[Heap[arg_this, left_2], height:=Mask[Heap[arg_this, left_2], height] - perm];
      }
      if (Heap[arg_this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67712]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.left.balanceFactor (0075_AVLTree.nokeys.vpr@295.3--295.20) [67713]"}
            perm <= Mask[Heap[arg_this, left_2], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, left_2], balanceFactor:=Mask[Heap[arg_this, left_2], balanceFactor] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right.right) (0075_AVLTree.nokeys.vpr@295.3--295.20) [67714]"}
            perm <= Mask[null, valid(Heap[arg_this, right_1])];
        }
        Mask := Mask[null, valid(Heap[arg_this, right_1]):=Mask[null, valid(Heap[arg_this, right_1])] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67715]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.right.height (0075_AVLTree.nokeys.vpr@295.3--295.20) [67716]"}
            perm <= Mask[Heap[arg_this, right_1], height];
        }
        Mask := Mask[Heap[arg_this, right_1], height:=Mask[Heap[arg_this, right_1], height] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67717]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.right.balanceFactor (0075_AVLTree.nokeys.vpr@295.3--295.20) [67718]"}
            perm <= Mask[Heap[arg_this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, right_1], balanceFactor:=Mask[Heap[arg_this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.right.left == null ? 0 : this.right.left.height) - (this.right.right == null ? 0 : this.right.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67719]"}
        (if Heap[arg_this, left_2] == null then 0 else Heap[Heap[arg_this, left_2], height]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.right.left == null ? 0 : this.right.left.height) - (this.right.right == null ? 0 : this.right.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67720]"}
        (if Heap[arg_this, left_2] == null then 0 else Heap[Heap[arg_this, left_2], height]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67721]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, height:=Mask[arg_this, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [67722]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_this, height] == (if (if PreCallHeap[arg_this, left_2] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left_2], height]) > (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height]) then (if PreCallHeap[arg_this, left_2] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left_2], height]) + 1 else (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height]) + 1);
      assume Heap[arg_this, balanceFactor] == (if PreCallHeap[arg_this, left_2] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left_2], height]) - (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.right := this.right -- 0075_AVLTree.nokeys.vpr@296.3--296.27
    
    // -- Check definedness of this.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@296.3--296.27) [67723]"}
        HasDirectPerm(Mask, this, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@296.3--296.27) [67724]"}
      FullPerm == Mask[r_1, right_1];
    Heap := Heap[r_1, right_1:=Heap[this, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right := r.left -- 0075_AVLTree.nokeys.vpr@297.3--297.28
    
    // -- Check definedness of r.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@297.3--297.28) [67725]"}
        HasDirectPerm(Mask, r_1, left_2);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@297.3--297.28) [67726]"}
      FullPerm == Mask[this, right_1];
    Heap := Heap[this, right_1:=Heap[r_1, left_2]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@298.3--298.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@298.3--298.14) [67727]"}
          perm <= Mask[this, key_6];
      }
      Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@298.3--298.14) [67728]"}
          perm <= Mask[this, height];
      }
      Mask := Mask[this, height:=Mask[this, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@298.3--298.14) [67729]"}
          perm <= Mask[this, left_2];
      }
      Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@298.3--298.14) [67730]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@298.3--298.14) [67731]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@298.3--298.14) [67732]"}
            perm <= Mask[null, valid(Heap[this, left_2])];
        }
        Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67733]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@298.3--298.14) [67734]"}
            perm <= Mask[Heap[this, left_2], height];
        }
        Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67735]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@298.3--298.14) [67736]"}
            perm <= Mask[Heap[this, left_2], balanceFactor];
        }
        Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@298.3--298.14) [67737]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67738]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@298.3--298.14) [67739]"}
            perm <= Mask[Heap[this, right_1], height];
        }
        Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67740]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@298.3--298.14) [67741]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67742]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67743]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67744]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height:=Mask[this, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [67745]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height] == (if (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) then (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.left := this -- 0075_AVLTree.nokeys.vpr@299.3--299.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@299.3--299.21) [67746]"}
      FullPerm == Mask[r_1, left_2];
    Heap := Heap[r_1, left_2:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@300.3--300.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@300.3--300.11) [67747]"}
          perm <= Mask[r_1, key_6];
      }
      Mask := Mask[r_1, key_6:=Mask[r_1, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@300.3--300.11) [67748]"}
          perm <= Mask[r_1, height];
      }
      Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@300.3--300.11) [67749]"}
          perm <= Mask[r_1, left_2];
      }
      Mask := Mask[r_1, left_2:=Mask[r_1, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@300.3--300.11) [67750]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@300.3--300.11) [67751]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@300.3--300.11) [67752]"}
            perm <= Mask[null, valid(Heap[r_1, left_2])];
        }
        Mask := Mask[null, valid(Heap[r_1, left_2]):=Mask[null, valid(Heap[r_1, left_2])] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67753]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@300.3--300.11) [67754]"}
            perm <= Mask[Heap[r_1, left_2], height];
        }
        Mask := Mask[Heap[r_1, left_2], height:=Mask[Heap[r_1, left_2], height] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67755]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@300.3--300.11) [67756]"}
            perm <= Mask[Heap[r_1, left_2], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left_2], balanceFactor:=Mask[Heap[r_1, left_2], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@300.3--300.11) [67757]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67758]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@300.3--300.11) [67759]"}
            perm <= Mask[Heap[r_1, right_1], height];
        }
        Mask := Mask[Heap[r_1, right_1], height:=Mask[Heap[r_1, right_1], height] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67760]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@300.3--300.11) [67761]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67762]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67763]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67764]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height:=Mask[r_1, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [67765]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height] == (if (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) then (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of rebalanceLR might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@286.11--286.43) [67766]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLR might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@286.11--286.43) [67767]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@287.11--287.35) [67768]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLR might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@287.11--287.35) [67769]"}
        perm <= Mask[r_1, height];
    }
    Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@288.11--288.35) [67770]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLR might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@288.11--288.35) [67771]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceLR might not hold. Assertion r.height == old(this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@289.11--289.45) [67772]"}
      Heap[r_1, height] == oldHeap[oldHeap[this, right_1], height];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method rebalanceLL
// ==================================================

procedure rebalanceLL(this: Ref) returns (r_1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
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
    Mask := Mask[this, height:=Mask[this, height] + perm];
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
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@309.12--309.57) [67773]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@309.12--309.57) [67774]"}
          HasDirectPerm(Mask, this, left_2);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@310.12--310.62) [67775]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@310.12--310.62) [67776]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@310.12--310.62) [67777]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@311.12--311.62) [67778]"}
        HasDirectPerm(Mask, this, left_2);
    if (Heap[this, left_2] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@311.12--311.62) [67779]"}
          HasDirectPerm(Mask, this, left_2);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@311.12--311.62) [67780]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left_2] != null;
      Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@312.12--312.28) [67781]"}
        HasDirectPerm(Mask, this, right_1);
    assume Heap[this, right_1] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@313.12--313.40) [67782]"}
        HasDirectPerm(Mask, this, right_1);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@314.12--314.45) [67783]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@314.12--314.45) [67784]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@315.12--315.45) [67785]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@315.12--315.45) [67786]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - this.right.height == -2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@316.12--316.72) [67787]"}
        HasDirectPerm(Mask, this, left_2);
      if (Heap[this, left_2] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@316.12--316.72) [67788]"}
          HasDirectPerm(Mask, this, left_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@316.12--316.72) [67789]"}
          HasDirectPerm(Mask, Heap[this, left_2], height);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@316.12--316.72) [67790]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@316.12--316.72) [67791]"}
        HasDirectPerm(Mask, Heap[this, right_1], height);
    assume (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - Heap[Heap[this, right_1], height] == -2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right.balanceFactor <= 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@317.12--317.39) [67792]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@317.12--317.39) [67793]"}
        HasDirectPerm(Mask, Heap[this, right_1], balanceFactor);
    assume Heap[Heap[this, right_1], balanceFactor] <= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@319.11--319.35) [67794]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height:=PostMask[r_1, height] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@320.11--320.35) [67795]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.right.height) || r.height == old(this.right.height) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [67796]"}
        HasDirectPerm(PostMask, r_1, height);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@321.11--321.87) [67797]"}
        HasDirectPerm(oldMask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [67798]"}
        HasDirectPerm(oldMask, oldHeap[this, right_1], height);
      if (!(PostHeap[r_1, height] == oldHeap[oldHeap[this, right_1], height])) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [67799]"}
          HasDirectPerm(PostMask, r_1, height);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@321.11--321.87) [67800]"}
          HasDirectPerm(oldMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [67801]"}
          HasDirectPerm(oldMask, oldHeap[this, right_1], height);
      }
    assume PostHeap[r_1, height] == oldHeap[oldHeap[this, right_1], height] || PostHeap[r_1, height] == oldHeap[oldHeap[this, right_1], height] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.right), write) -- 0075_AVLTree.nokeys.vpr@323.3--323.38
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@323.3--323.38) [67802]"}
        HasDirectPerm(Mask, this, right_1);
    assume valid#trigger(Heap, valid(Heap[this, right_1]));
    assume Heap[null, valid(Heap[this, right_1])] == CombineFrames(FrameFragment(Heap[Heap[this, right_1], key_6]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], height]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], left_2]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then Heap[null, valid(Heap[Heap[this, right_1], left_2])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left_2], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left_2], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left_2] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then Heap[null, valid(Heap[Heap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], height]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@323.3--323.38) [67805]"}
        perm <= Mask[null, valid(Heap[this, right_1])];
    }
    Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, right_1]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, right_1]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], key_6:=Mask[Heap[this, right_1], key_6] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [67807]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], left_2:=Mask[Heap[this, right_1], left_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], right_1:=Mask[Heap[this, right_1], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [67810]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, right_1], left_2] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, right_1], left_2]):=Mask[null, valid(Heap[Heap[this, right_1], left_2])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])], valid(Heap[Heap[this, right_1], left_2]), Heap[null, valid(Heap[Heap[this, right_1], left_2])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [67812]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left_2] != null;
      Mask := Mask[Heap[Heap[this, right_1], left_2], height:=Mask[Heap[Heap[this, right_1], left_2], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left_2] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [67813]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left_2] != null;
      Mask := Mask[Heap[Heap[this, right_1], left_2], balanceFactor:=Mask[Heap[Heap[this, right_1], left_2], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left_2] != null) {
      assume Heap[Heap[Heap[this, right_1], left_2], height] > 0;
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, right_1], right_1]):=Mask[null, valid(Heap[Heap[this, right_1], right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])], valid(Heap[Heap[this, right_1], right_1]), Heap[null, valid(Heap[Heap[this, right_1], right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [67815]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], height:=Mask[Heap[Heap[this, right_1], right_1], height] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [67816]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], balanceFactor:=Mask[Heap[Heap[this, right_1], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      assume Heap[Heap[Heap[this, right_1], right_1], height] > 0;
    }
    assume Heap[Heap[this, right_1], height] == (if (if Heap[Heap[this, right_1], left_2] == null then 0 else Heap[Heap[Heap[this, right_1], left_2], height]) > (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height]) then (if Heap[Heap[this, right_1], left_2] == null then 0 else Heap[Heap[Heap[this, right_1], left_2], height]) + 1 else (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height]) + 1);
    assume Heap[Heap[this, right_1], balanceFactor] == (if Heap[Heap[this, right_1], left_2] == null then 0 else Heap[Heap[Heap[this, right_1], left_2], height]) - (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height]);
    assume Heap[Heap[this, right_1], balanceFactor] <= 1;
    assume Heap[Heap[this, right_1], balanceFactor] >= -1;
    assume Heap[Heap[this, right_1], height] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.right -- 0075_AVLTree.nokeys.vpr@324.3--324.24
    
    // -- Check definedness of this.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@324.3--324.24) [67817]"}
        HasDirectPerm(Mask, this, right_1);
    r_1 := Heap[this, right_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right := r.left -- 0075_AVLTree.nokeys.vpr@325.3--325.26
    
    // -- Check definedness of r.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@325.3--325.26) [67818]"}
        HasDirectPerm(Mask, r_1, left_2);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@325.3--325.26) [67819]"}
      FullPerm == Mask[this, right_1];
    Heap := Heap[this, right_1:=Heap[r_1, left_2]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@326.3--326.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@326.3--326.14) [67820]"}
          perm <= Mask[this, key_6];
      }
      Mask := Mask[this, key_6:=Mask[this, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@326.3--326.14) [67821]"}
          perm <= Mask[this, height];
      }
      Mask := Mask[this, height:=Mask[this, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@326.3--326.14) [67822]"}
          perm <= Mask[this, left_2];
      }
      Mask := Mask[this, left_2:=Mask[this, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@326.3--326.14) [67823]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@326.3--326.14) [67824]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@326.3--326.14) [67825]"}
            perm <= Mask[null, valid(Heap[this, left_2])];
        }
        Mask := Mask[null, valid(Heap[this, left_2]):=Mask[null, valid(Heap[this, left_2])] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67826]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@326.3--326.14) [67827]"}
            perm <= Mask[Heap[this, left_2], height];
        }
        Mask := Mask[Heap[this, left_2], height:=Mask[Heap[this, left_2], height] - perm];
      }
      if (Heap[this, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67828]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@326.3--326.14) [67829]"}
            perm <= Mask[Heap[this, left_2], balanceFactor];
        }
        Mask := Mask[Heap[this, left_2], balanceFactor:=Mask[Heap[this, left_2], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@326.3--326.14) [67830]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67831]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@326.3--326.14) [67832]"}
            perm <= Mask[Heap[this, right_1], height];
        }
        Mask := Mask[Heap[this, right_1], height:=Mask[Heap[this, right_1], height] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67833]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@326.3--326.14) [67834]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67835]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67836]"}
        (if Heap[this, left_2] == null then 0 else Heap[Heap[this, left_2], height]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67837]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height:=Mask[this, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [67838]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height] == (if (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) then (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left_2] == null then 0 else PreCallHeap[PreCallHeap[this, left_2], height]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.left := this -- 0075_AVLTree.nokeys.vpr@327.3--327.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@327.3--327.17) [67839]"}
      FullPerm == Mask[r_1, left_2];
    Heap := Heap[r_1, left_2:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@328.3--328.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@328.3--328.11) [67840]"}
          perm <= Mask[r_1, key_6];
      }
      Mask := Mask[r_1, key_6:=Mask[r_1, key_6] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@328.3--328.11) [67841]"}
          perm <= Mask[r_1, height];
      }
      Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@328.3--328.11) [67842]"}
          perm <= Mask[r_1, left_2];
      }
      Mask := Mask[r_1, left_2:=Mask[r_1, left_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@328.3--328.11) [67843]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@328.3--328.11) [67844]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left_2] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@328.3--328.11) [67845]"}
            perm <= Mask[null, valid(Heap[r_1, left_2])];
        }
        Mask := Mask[null, valid(Heap[r_1, left_2]):=Mask[null, valid(Heap[r_1, left_2])] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67846]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@328.3--328.11) [67847]"}
            perm <= Mask[Heap[r_1, left_2], height];
        }
        Mask := Mask[Heap[r_1, left_2], height:=Mask[Heap[r_1, left_2], height] - perm];
      }
      if (Heap[r_1, left_2] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67848]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@328.3--328.11) [67849]"}
            perm <= Mask[Heap[r_1, left_2], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left_2], balanceFactor:=Mask[Heap[r_1, left_2], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@328.3--328.11) [67850]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67851]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@328.3--328.11) [67852]"}
            perm <= Mask[Heap[r_1, right_1], height];
        }
        Mask := Mask[Heap[r_1, right_1], height:=Mask[Heap[r_1, right_1], height] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67853]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@328.3--328.11) [67854]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67855]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67856]"}
        (if Heap[r_1, left_2] == null then 0 else Heap[Heap[r_1, left_2], height]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67857]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height:=Mask[r_1, height] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [67858]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height] == (if (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) then (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left_2] == null then 0 else PreCallHeap[PreCallHeap[r_1, left_2], height]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of rebalanceLL might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@318.11--318.43) [67859]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLL might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@318.11--318.43) [67860]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@319.11--319.35) [67861]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLL might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@319.11--319.35) [67862]"}
        perm <= Mask[r_1, height];
    }
    Mask := Mask[r_1, height:=Mask[r_1, height] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@320.11--320.35) [67863]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLL might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@320.11--320.35) [67864]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceLL might not hold. Assertion r.height == old(this.right.height) || r.height == old(this.right.height) + 1 might not hold. (0075_AVLTree.nokeys.vpr@321.11--321.87) [67865]"}
      Heap[r_1, height] == oldHeap[oldHeap[this, right_1], height] || Heap[r_1, height] == oldHeap[oldHeap[this, right_1], height] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}