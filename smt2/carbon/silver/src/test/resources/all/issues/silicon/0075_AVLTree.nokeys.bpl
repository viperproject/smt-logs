// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:07:15
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
axiom (forall o_83: Ref, f_193: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_83, f_193] }
  Heap[o_83, $allocated] ==> Heap[Heap[o_83, f_193], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_85: Ref, f_62: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_85, f_62] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_85, f_62) ==> Heap[o_85, f_62] == ExhaleHeap[o_85, f_62]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_60), ExhaleHeap[null, PredicateMaskField(pm_f_60)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsPredicateField(pm_f_60) ==> Heap[null, PredicateMaskField(pm_f_60)] == ExhaleHeap[null, PredicateMaskField(pm_f_60)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_60) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsPredicateField(pm_f_60) ==> (forall <A, B> o2_60: Ref, f_62: (Field A B) ::
    { ExhaleHeap[o2_60, f_62] }
    Heap[null, PredicateMaskField(pm_f_60)][o2_60, f_62] ==> Heap[o2_60, f_62] == ExhaleHeap[o2_60, f_62]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_60), ExhaleHeap[null, WandMaskField(pm_f_60)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsWandField(pm_f_60) ==> Heap[null, WandMaskField(pm_f_60)] == ExhaleHeap[null, WandMaskField(pm_f_60)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_60: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_60) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_60) && IsWandField(pm_f_60) ==> (forall <A, B> o2_60: Ref, f_62: (Field A B) ::
    { ExhaleHeap[o2_60, f_62] }
    Heap[null, WandMaskField(pm_f_60)][o2_60, f_62] ==> Heap[o2_60, f_62] == ExhaleHeap[o2_60, f_62]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_85: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_85, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_85, $allocated] ==> ExhaleHeap[o_85, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_83: Ref, f_58: (Field A B), v: B ::
  { Heap[o_83, f_58:=v] }
  succHeap(Heap, Heap[o_83, f_58:=v])
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
const unique key: Field NormalField int;
axiom !IsPredicateField(key);
axiom !IsWandField(key);
const unique height_2: Field NormalField int;
axiom !IsPredicateField(height_2);
axiom !IsWandField(height_2);
const unique left: Field NormalField Ref;
axiom !IsPredicateField(left);
axiom !IsWandField(left);
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [213312]"}
        HasDirectPerm(Mask, this, root_1);
    if (Heap[this, root_1] != null) {
      
      // -- Check definedness of acc(valid(this.root), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [213313]"}
          HasDirectPerm(Mask, this, root_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, root_1]):=Mask[null, valid(Heap[this, root_1])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.root != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [213314]"}
        HasDirectPerm(Mask, this, root_1);
    if (Heap[this, root_1] != null) {
      
      // -- Check definedness of acc(this.root.height, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [213315]"}
          HasDirectPerm(Mask, this, root_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@6.2--11.3) [213316]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root_1] != null;
      Mask := Mask[Heap[this, root_1], height_2:=Mask[Heap[this, root_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.root != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [213317]"}
        HasDirectPerm(Mask, this, root_1);
    if (Heap[this, root_1] != null) {
      
      // -- Check definedness of acc(this.root.balanceFactor, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@6.2--11.3) [213318]"}
          HasDirectPerm(Mask, this, root_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@6.2--11.3) [213319]"}
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [213320]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [213321]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213322]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213323]"}
          HasDirectPerm(Mask, this, left);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213324]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213325]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [213326]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213327]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213328]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [213329]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.left != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213330]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of this.left.height > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213331]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213332]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      assume Heap[Heap[this, left], height_2] > 0;
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213333]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213334]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213335]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213336]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [213337]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213338]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213339]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@46.2--65.3) [213340]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of this.right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213341]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of this.right.height > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213342]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213343]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      assume Heap[Heap[this, right_1], height_2] > 0;
    }
    
    // -- Check definedness of this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213344]"}
        HasDirectPerm(Mask, this, height_2);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213345]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213346]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213347]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213348]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213349]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213350]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
      if ((if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2])) {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213351]"}
          HasDirectPerm(Mask, this, left);
        if (Heap[this, left] == null) {
        } else {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213352]"}
            HasDirectPerm(Mask, this, left);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213353]"}
            HasDirectPerm(Mask, Heap[this, left], height_2);
        }
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213354]"}
          HasDirectPerm(Mask, this, right_1);
        if (Heap[this, right_1] == null) {
        } else {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213355]"}
            HasDirectPerm(Mask, this, right_1);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213356]"}
            HasDirectPerm(Mask, Heap[this, right_1], height_2);
        }
      }
    assume Heap[this, height_2] == (if (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) then (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) + 1);
    
    // -- Check definedness of this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@46.2--65.3) [213357]"}
        HasDirectPerm(Mask, this, balanceFactor);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213358]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@46.2--65.3) [213359]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213360]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213361]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@46.2--65.3) [213362]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213363]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    assume Heap[this, balanceFactor] == (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    
    // -- Check definedness of this.balanceFactor <= 1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@46.2--65.3) [213364]"}
        HasDirectPerm(Mask, this, balanceFactor);
    assume Heap[this, balanceFactor] <= 1;
    
    // -- Check definedness of this.balanceFactor >= -1
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@46.2--65.3) [213365]"}
        HasDirectPerm(Mask, this, balanceFactor);
    assume Heap[this, balanceFactor] >= -1;
    
    // -- Check definedness of this.height > 0
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@46.2--65.3) [213366]"}
        HasDirectPerm(Mask, this, height_2);
    assume Heap[this, height_2] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method headinit
// ==================================================

procedure headinit(this: Ref) returns ()
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
    PostMask := PostMask[null, headvalid(this):=PostMask[null, headvalid(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.root := null -- 0075_AVLTree.nokeys.vpr@17.3--17.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@17.3--17.20) [213367]"}
      FullPerm == Mask[this, root_1];
    Heap := Heap[this, root_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(headvalid(this), write) -- 0075_AVLTree.nokeys.vpr@18.3--18.34
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@18.3--18.34) [213370]"}
        perm <= Mask[this, root_1];
    }
    Mask := Mask[this, root_1:=Mask[this, root_1] - perm];
    if (Heap[this, root_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access valid(this.root) (0075_AVLTree.nokeys.vpr@18.3--18.34) [213372]"}
          perm <= Mask[null, valid(Heap[this, root_1])];
      }
      Mask := Mask[null, valid(Heap[this, root_1]):=Mask[null, valid(Heap[this, root_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(headvalid(this), Heap[null, headvalid(this)], valid(Heap[this, root_1]), Heap[null, valid(Heap[this, root_1])]);
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@18.3--18.34) [213373]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.height (0075_AVLTree.nokeys.vpr@18.3--18.34) [213374]"}
          perm <= Mask[Heap[this, root_1], height_2];
      }
      Mask := Mask[Heap[this, root_1], height_2:=Mask[Heap[this, root_1], height_2] - perm];
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@18.3--18.34) [213375]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.balanceFactor (0075_AVLTree.nokeys.vpr@18.3--18.34) [213376]"}
          perm <= Mask[Heap[this, root_1], balanceFactor];
      }
      Mask := Mask[Heap[this, root_1], balanceFactor:=Mask[Heap[this, root_1], balanceFactor] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume headvalid#trigger(Heap, headvalid(this));
    assume Heap[null, headvalid(this)] == CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, root_1] != null then Heap[null, valid(Heap[this, root_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], height_2]) else EmptyFrame)), FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], balanceFactor]) else EmptyFrame)))));
    if (!HasDirectPerm(Mask, null, headvalid(this))) {
      Heap := Heap[null, headvalid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, headvalid(this):=freshVersion];
    }
    Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][this, root_1:=true]];
    if (Heap[this, root_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
        { newPMask[o_15, f_20] }
        Heap[null, headvalid#sm(this)][o_15, f_20] || Heap[null, valid#sm(Heap[this, root_1])][o_15, f_20] ==> newPMask[o_15, f_20]
      );
      Heap := Heap[null, headvalid#sm(this):=newPMask];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], height_2:=true]];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of headinit might not hold. There might be insufficient permission to access headvalid(this) (0075_AVLTree.nokeys.vpr@15.11--15.37) [213378]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
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
    assume Heap[null, headvalid(this)] == CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, root_1] != null then Heap[null, valid(Heap[this, root_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], height_2]) else EmptyFrame)), FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], balanceFactor]) else EmptyFrame)))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding headvalid(this) might fail. There might be insufficient permission to access headvalid(this) (0075_AVLTree.nokeys.vpr@27.3--27.36) [213381]"}
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
      assert {:msg "  Unfolding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@27.3--27.36) [213384]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root_1] != null;
      Mask := Mask[Heap[this, root_1], height_2:=Mask[Heap[this, root_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@27.3--27.36) [213385]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, root_1] != null;
      Mask := Mask[Heap[this, root_1], balanceFactor:=Mask[Heap[this, root_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.root == null) -- 0075_AVLTree.nokeys.vpr@28.3--33.4
    
    // -- Check definedness of this.root == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@28.7--28.22) [213386]"}
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
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@31.4--31.25) [213387]"}
            HasDirectPerm(Mask, this, root_1);
        arg_this := Heap[this, root_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method has might not hold. There might be insufficient permission to access valid(this.root) (0075_AVLTree.nokeys.vpr@31.4--31.25) [213388]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root (0075_AVLTree.nokeys.vpr@34.3--34.34) [213391]"}
        perm <= Mask[this, root_1];
    }
    Mask := Mask[this, root_1:=Mask[this, root_1] - perm];
    if (Heap[this, root_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access valid(this.root) (0075_AVLTree.nokeys.vpr@34.3--34.34) [213393]"}
          perm <= Mask[null, valid(Heap[this, root_1])];
      }
      Mask := Mask[null, valid(Heap[this, root_1]):=Mask[null, valid(Heap[this, root_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(headvalid(this), Heap[null, headvalid(this)], valid(Heap[this, root_1]), Heap[null, valid(Heap[this, root_1])]);
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@34.3--34.34) [213394]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.height (0075_AVLTree.nokeys.vpr@34.3--34.34) [213395]"}
          perm <= Mask[Heap[this, root_1], height_2];
      }
      Mask := Mask[Heap[this, root_1], height_2:=Mask[Heap[this, root_1], height_2] - perm];
    }
    if (Heap[this, root_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding headvalid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@34.3--34.34) [213396]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding headvalid(this) might fail. There might be insufficient permission to access this.root.balanceFactor (0075_AVLTree.nokeys.vpr@34.3--34.34) [213397]"}
          perm <= Mask[Heap[this, root_1], balanceFactor];
      }
      Mask := Mask[Heap[this, root_1], balanceFactor:=Mask[Heap[this, root_1], balanceFactor] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, headvalid(this):=Mask[null, headvalid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume headvalid#trigger(Heap, headvalid(this));
    assume Heap[null, headvalid(this)] == CombineFrames(FrameFragment(Heap[this, root_1]), CombineFrames(FrameFragment((if Heap[this, root_1] != null then Heap[null, valid(Heap[this, root_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], height_2]) else EmptyFrame)), FrameFragment((if Heap[this, root_1] != null then FrameFragment(Heap[Heap[this, root_1], balanceFactor]) else EmptyFrame)))));
    if (!HasDirectPerm(Mask, null, headvalid(this))) {
      Heap := Heap[null, headvalid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, headvalid(this):=freshVersion];
    }
    Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][this, root_1:=true]];
    if (Heap[this, root_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, headvalid#sm(this)][o_16, f_21] || Heap[null, valid#sm(Heap[this, root_1])][o_16, f_21] ==> newPMask[o_16, f_21]
      );
      Heap := Heap[null, headvalid#sm(this):=newPMask];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], height_2:=true]];
    }
    if (Heap[this, root_1] != null) {
      Heap := Heap[null, headvalid#sm(this):=Heap[null, headvalid#sm(this)][Heap[this, root_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of headhas might not hold. There might be insufficient permission to access headvalid(this) (0075_AVLTree.nokeys.vpr@24.11--24.37) [213399]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
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
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@74.11--74.31) [213400]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, height_2:=PostMask[this, height_2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@75.11--75.38) [213401]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, balanceFactor:=PostMask[this, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.height == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@76.11--76.27) [213402]"}
        HasDirectPerm(PostMask, this, height_2);
    assume PostHeap[this, height_2] == 1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.balanceFactor == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@77.11--77.34) [213403]"}
        HasDirectPerm(PostMask, this, balanceFactor);
    assume PostHeap[this, balanceFactor] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.left := null -- 0075_AVLTree.nokeys.vpr@79.3--79.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@79.3--79.22) [213404]"}
      FullPerm == Mask[this, left];
    Heap := Heap[this, left:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right := null -- 0075_AVLTree.nokeys.vpr@80.3--80.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@80.3--80.22) [213405]"}
      FullPerm == Mask[this, right_1];
    Heap := Heap[this, right_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.key := k -- 0075_AVLTree.nokeys.vpr@81.3--81.19
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@81.3--81.19) [213406]"}
      FullPerm == Mask[this, key];
    Heap := Heap[this, key:=k];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@82.3--82.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@82.3--82.14) [213407]"}
          perm <= Mask[this, key];
      }
      Mask := Mask[this, key:=Mask[this, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@82.3--82.14) [213408]"}
          perm <= Mask[this, height_2];
      }
      Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@82.3--82.14) [213409]"}
          perm <= Mask[this, left];
      }
      Mask := Mask[this, left:=Mask[this, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@82.3--82.14) [213410]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@82.3--82.14) [213411]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@82.3--82.14) [213412]"}
            perm <= Mask[null, valid(Heap[this, left])];
        }
        Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213413]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@82.3--82.14) [213414]"}
            perm <= Mask[Heap[this, left], height_2];
        }
        Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213415]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@82.3--82.14) [213416]"}
            perm <= Mask[Heap[this, left], balanceFactor];
        }
        Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@82.3--82.14) [213417]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213418]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@82.3--82.14) [213419]"}
            perm <= Mask[Heap[this, right_1], height_2];
        }
        Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213420]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@82.3--82.14) [213421]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213422]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213423]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213424]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@82.3--82.14) [213425]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height_2] == (if (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) then (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@73.11--73.33) [213426]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of init might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@74.11--74.31) [213427]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@74.11--74.31) [213428]"}
        perm <= Mask[this, height_2];
    }
    Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of init might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@75.11--75.38) [213429]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@75.11--75.38) [213430]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    assert {:msg "  Postcondition of init might not hold. Assertion this.height == 1 might not hold. (0075_AVLTree.nokeys.vpr@76.11--76.27) [213431]"}
      Heap[this, height_2] == 1;
    assert {:msg "  Postcondition of init might not hold. Assertion this.balanceFactor == 0 might not hold. (0075_AVLTree.nokeys.vpr@77.11--77.34) [213432]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@96.3--96.32
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key]), CombineFrames(FrameFragment(Heap[this, height_2]), CombineFrames(FrameFragment(Heap[this, left]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left] != null then Heap[null, valid(Heap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@96.3--96.32) [213435]"}
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [213437]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [213440]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[this, left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left]), Heap[null, valid(Heap[this, left])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [213442]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [213443]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left] != null) {
      assume Heap[Heap[this, left], height_2] > 0;
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
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [213445]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@96.3--96.32) [213446]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      assume Heap[Heap[this, right_1], height_2] > 0;
    }
    assume Heap[this, height_2] == (if (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) then (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) + 1);
    assume Heap[this, balanceFactor] == (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assume Heap[this, balanceFactor] <= 1;
    assume Heap[this, balanceFactor] >= -1;
    assume Heap[this, height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (k == this.key) -- 0075_AVLTree.nokeys.vpr@97.3--113.4
    
    // -- Check definedness of k == this.key
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@97.7--97.20) [213447]"}
        HasDirectPerm(Mask, this, key);
    if (k == Heap[this, key]) {
      
      // -- Translating statement: b := true -- 0075_AVLTree.nokeys.vpr@98.4--98.13
        b_24 := true;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (k < this.key) -- 0075_AVLTree.nokeys.vpr@100.4--112.5
        
        // -- Check definedness of k < this.key
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@100.8--100.22) [213448]"}
            HasDirectPerm(Mask, this, key);
        if (k < Heap[this, key]) {
          
          // -- Translating statement: if (this.left != null) -- 0075_AVLTree.nokeys.vpr@101.5--105.6
            
            // -- Check definedness of this.left != null
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@101.9--101.24) [213449]"}
                HasDirectPerm(Mask, this, left);
            if (Heap[this, left] != null) {
              
              // -- Translating statement: b := has(this.left, k) -- 0075_AVLTree.nokeys.vpr@102.6--102.27
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Check definedness of this.left
                  assert {:msg "  Method call might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@102.6--102.27) [213450]"}
                    HasDirectPerm(Mask, this, left);
                arg_this := Heap[this, left];
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method has might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@102.6--102.27) [213451]"}
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
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@107.9--107.25) [213452]"}
                HasDirectPerm(Mask, this, right_1);
            if (Heap[this, right_1] != null) {
              
              // -- Translating statement: b := has(this.right, k) -- 0075_AVLTree.nokeys.vpr@108.6--108.28
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Check definedness of this.right
                  assert {:msg "  Method call might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@108.6--108.28) [213453]"}
                    HasDirectPerm(Mask, this, right_1);
                arg_this_1 := Heap[this, right_1];
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method has might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@108.6--108.28) [213454]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@114.3--114.30) [213457]"}
        perm <= Mask[this, key];
    }
    Mask := Mask[this, key:=Mask[this, key] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213458]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@114.3--114.30) [213459]"}
        perm <= Mask[this, height_2];
    }
    Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@114.3--114.30) [213461]"}
        perm <= Mask[this, left];
    }
    Mask := Mask[this, left:=Mask[this, left] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@114.3--114.30) [213463]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213464]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@114.3--114.30) [213465]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    if (Heap[this, left] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@114.3--114.30) [213467]"}
          perm <= Mask[null, valid(Heap[this, left])];
      }
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left]), Heap[null, valid(Heap[this, left])]);
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213468]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@114.3--114.30) [213469]"}
          perm <= Mask[Heap[this, left], height_2];
      }
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213470]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@114.3--114.30) [213471]"}
          perm <= Mask[Heap[this, left], balanceFactor];
      }
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
    }
    if (Heap[this, left] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.left.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213472]"}
        Heap[Heap[this, left], height_2] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@114.3--114.30) [213474]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213475]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@114.3--114.30) [213476]"}
          perm <= Mask[Heap[this, right_1], height_2];
      }
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213477]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@114.3--114.30) [213478]"}
          perm <= Mask[Heap[this, right_1], balanceFactor];
      }
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.right.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213479]"}
        Heap[Heap[this, right_1], height_2] > 0;
    }
    assert {:msg "  Folding valid(this) might fail. Assertion this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1) might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213480]"}
      Heap[this, height_2] == (if (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) then (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) + 1);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213481]"}
      Heap[this, balanceFactor] == (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor <= 1 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213482]"}
      Heap[this, balanceFactor] <= 1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor >= -1 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213483]"}
      Heap[this, balanceFactor] >= -1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@114.3--114.30) [213484]"}
      Heap[this, height_2] > 0;
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key]), CombineFrames(FrameFragment(Heap[this, height_2]), CombineFrames(FrameFragment(Heap[this, left]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left] != null then Heap[null, valid(Heap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height_2:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
    if (Heap[this, left] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, valid#sm(this)][o_52, f_55] || Heap[null, valid#sm(Heap[this, left])][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, left] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], height_2:=true]];
    }
    if (Heap[this, left] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], balanceFactor:=true]];
    }
    if (Heap[this, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
        { newPMask[o_53, f_56] }
        Heap[null, valid#sm(this)][o_53, f_56] || Heap[null, valid#sm(Heap[this, right_1])][o_53, f_56] ==> newPMask[o_53, f_56]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height_2:=true]];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of has might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@94.11--94.33) [213486]"}
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

procedure getBalanceFactor(this: Ref, rd_1: Perm) returns (bf: int)
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
  var newPMask: PMaskType;
  var newVersion: FrameType;
  var lh: int;
  var rh: int;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd_1;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@120.12--120.38) [213487]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
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
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@123.11--123.37) [213488]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, balanceFactor:=PostMask[this, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of bf == this.balanceFactor
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@124.11--124.37) [213489]"}
        HasDirectPerm(PostMask, this, balanceFactor);
    assume bf == PostHeap[this, balanceFactor];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this), write) in bf > 0 ==> this.left != null)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key]), CombineFrames(FrameFragment(UnfoldingHeap[this, height_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, left]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@126.11--126.72) [213490]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key:=UnfoldingMask[this, key] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213491]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height_2:=UnfoldingMask[this, height_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left:=UnfoldingMask[this, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213492]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213493]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], height_2:=UnfoldingMask[UnfoldingHeap[this, left], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213494]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] > 0;
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
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213495]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213496]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
      }
      assume UnfoldingHeap[this, height_2] == (if (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) then (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height_2] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
      if (bf > 0) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@126.11--126.72) [213497]"}
          HasDirectPerm(UnfoldingMask, this, left);
      }
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, key:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, height_2:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, left:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, right_1:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, balanceFactor:=true]];
        if (PostHeap[this, left] != null) {
          havoc newPMask;
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            PostHeap[null, valid#sm(this)][o_26, f_29] || PostHeap[null, valid#sm(PostHeap[this, left])][o_26, f_29] ==> newPMask[o_26, f_29]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, left] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left], height_2:=true]];
        }
        if (PostHeap[this, left] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left], balanceFactor:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_85: (Field A B) ::
            { newPMask[o, f_85] }
            PostHeap[null, valid#sm(this)][o, f_85] || PostHeap[null, valid#sm(PostHeap[this, right_1])][o, f_85] ==> newPMask[o, f_85]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], height_2:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], balanceFactor:=true]];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key]), CombineFrames(FrameFragment(UnfoldingHeap[this, height_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, left]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key:=UnfoldingMask[this, key] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height_2:=UnfoldingMask[this, height_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left:=UnfoldingMask[this, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], height_2:=UnfoldingMask[UnfoldingHeap[this, left], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] > 0;
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
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
      }
      assume UnfoldingHeap[this, height_2] == (if (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) then (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height_2] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    assume bf > 0 ==> PostHeap[this, left] != null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this), write) in bf < 0 ==> this.right != null)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key]), CombineFrames(FrameFragment(UnfoldingHeap[this, height_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, left]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@127.11--127.72) [213498]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key:=UnfoldingMask[this, key] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213499]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height_2:=UnfoldingMask[this, height_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left:=UnfoldingMask[this, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213500]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213501]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], height_2:=UnfoldingMask[UnfoldingHeap[this, left], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213502]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] > 0;
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
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213503]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213504]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
      }
      assume UnfoldingHeap[this, height_2] == (if (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) then (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height_2] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
      if (bf < 0) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@127.11--127.72) [213505]"}
          HasDirectPerm(UnfoldingMask, this, right_1);
      }
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, key:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, height_2:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, left:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, right_1:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, balanceFactor:=true]];
        if (PostHeap[this, left] != null) {
          havoc newPMask;
          assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
            { newPMask[o_11, f_3] }
            PostHeap[null, valid#sm(this)][o_11, f_3] || PostHeap[null, valid#sm(PostHeap[this, left])][o_11, f_3] ==> newPMask[o_11, f_3]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, left] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left], height_2:=true]];
        }
        if (PostHeap[this, left] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, left], balanceFactor:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          havoc newPMask;
          assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
            { newPMask[o_35, f_17] }
            PostHeap[null, valid#sm(this)][o_35, f_17] || PostHeap[null, valid#sm(PostHeap[this, right_1])][o_35, f_17] ==> newPMask[o_35, f_17]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], height_2:=true]];
        }
        if (PostHeap[this, right_1] != null) {
          PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][PostHeap[this, right_1], balanceFactor:=true]];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key]), CombineFrames(FrameFragment(UnfoldingHeap[this, height_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, left]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key:=UnfoldingMask[this, key] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height_2:=UnfoldingMask[this, height_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left:=UnfoldingMask[this, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], height_2:=UnfoldingMask[UnfoldingHeap[this, left], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] > 0;
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
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
      }
      assume UnfoldingHeap[this, height_2] == (if (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) then (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height_2] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    assume bf < 0 ==> PostHeap[this, right_1] != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@129.3--129.32
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key]), CombineFrames(FrameFragment(Heap[this, height_2]), CombineFrames(FrameFragment(Heap[this, left]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left] != null then Heap[null, valid(Heap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@129.3--129.32) [213508]"}
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [213510]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [213513]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[this, left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left]), Heap[null, valid(Heap[this, left])]);
      assume state(Heap, Mask);
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [213515]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [213516]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, left] != null) {
      assume Heap[Heap[this, left], height_2] > 0;
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
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [213518]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@129.3--129.32) [213519]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[this, right_1] != null) {
      assume Heap[Heap[this, right_1], height_2] > 0;
    }
    assume Heap[this, height_2] == (if (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) then (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) + 1);
    assume Heap[this, balanceFactor] == (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assume Heap[this, balanceFactor] <= 1;
    assume Heap[this, balanceFactor] >= -1;
    assume Heap[this, height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: lh := (this.left == null ? 0 : this.left.height) -- 0075_AVLTree.nokeys.vpr@130.3--130.62
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@130.3--130.62) [213520]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@130.3--130.62) [213521]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@130.3--130.62) [213522]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
    lh := (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]);
    assume state(Heap, Mask);
  
  // -- Translating statement: rh := (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@131.3--131.62
    
    // -- Check definedness of (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@131.3--131.62) [213523]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@131.3--131.62) [213524]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@131.3--131.62) [213525]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    rh := (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assume state(Heap, Mask);
  
  // -- Translating statement: bf := lh - rh -- 0075_AVLTree.nokeys.vpr@132.3--132.14
    bf := lh - rh;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@134.3--134.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@134.3--134.30) [213528]"}
        perm <= Mask[this, key];
    }
    Mask := Mask[this, key:=Mask[this, key] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213529]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@134.3--134.30) [213530]"}
        perm <= Mask[this, height_2];
    }
    Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@134.3--134.30) [213532]"}
        perm <= Mask[this, left];
    }
    Mask := Mask[this, left:=Mask[this, left] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@134.3--134.30) [213534]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213535]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@134.3--134.30) [213536]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    if (Heap[this, left] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@134.3--134.30) [213538]"}
          perm <= Mask[null, valid(Heap[this, left])];
      }
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left]), Heap[null, valid(Heap[this, left])]);
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213539]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@134.3--134.30) [213540]"}
          perm <= Mask[Heap[this, left], height_2];
      }
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213541]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@134.3--134.30) [213542]"}
          perm <= Mask[Heap[this, left], balanceFactor];
      }
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
    }
    if (Heap[this, left] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.left.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213543]"}
        Heap[Heap[this, left], height_2] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@134.3--134.30) [213545]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213546]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@134.3--134.30) [213547]"}
          perm <= Mask[Heap[this, right_1], height_2];
      }
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213548]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@134.3--134.30) [213549]"}
          perm <= Mask[Heap[this, right_1], balanceFactor];
      }
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.right.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213550]"}
        Heap[Heap[this, right_1], height_2] > 0;
    }
    assert {:msg "  Folding valid(this) might fail. Assertion this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1) might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213551]"}
      Heap[this, height_2] == (if (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) then (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) + 1);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213552]"}
      Heap[this, balanceFactor] == (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor <= 1 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213553]"}
      Heap[this, balanceFactor] <= 1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor >= -1 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213554]"}
      Heap[this, balanceFactor] >= -1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@134.3--134.30) [213555]"}
      Heap[this, height_2] > 0;
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key]), CombineFrames(FrameFragment(Heap[this, height_2]), CombineFrames(FrameFragment(Heap[this, left]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left] != null then Heap[null, valid(Heap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height_2:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
    if (Heap[this, left] != null) {
      havoc newPMask;
      assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
        { newPMask[o_46, f_35] }
        Heap[null, valid#sm(this)][o_46, f_35] || Heap[null, valid#sm(Heap[this, left])][o_46, f_35] ==> newPMask[o_46, f_35]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, left] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], height_2:=true]];
    }
    if (Heap[this, left] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], balanceFactor:=true]];
    }
    if (Heap[this, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
        { newPMask[o_41, f_25] }
        Heap[null, valid#sm(this)][o_41, f_25] || Heap[null, valid#sm(Heap[this, right_1])][o_41, f_25] ==> newPMask[o_41, f_25]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height_2:=true]];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@122.11--122.33) [213557]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    perm := rd_1;
    assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@123.11--123.37) [213558]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@123.11--123.37) [213559]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    assert {:msg "  Postcondition of getBalanceFactor might not hold. Assertion bf == this.balanceFactor might not hold. (0075_AVLTree.nokeys.vpr@124.11--124.37) [213560]"}
      bf == Heap[this, balanceFactor];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key]), CombineFrames(FrameFragment(UnfoldingHeap[this, height_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, left]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@126.11--126.72) [213561]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key:=UnfoldingMask[this, key] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213562]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height_2:=UnfoldingMask[this, height_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left:=UnfoldingMask[this, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213563]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213564]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], height_2:=UnfoldingMask[UnfoldingHeap[this, left], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213565]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] > 0;
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
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213566]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213567]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
      }
      assume UnfoldingHeap[this, height_2] == (if (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) then (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height_2] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    if (bf > 0) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Assertion this.left != null might not hold. (0075_AVLTree.nokeys.vpr@126.11--126.72) [213568]"}
        Heap[this, left] != null;
    }
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, key]), CombineFrames(FrameFragment(UnfoldingHeap[this, height_2]), CombineFrames(FrameFragment(UnfoldingHeap[this, left]), CombineFrames(FrameFragment(UnfoldingHeap[this, right_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[this, right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactor might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@127.11--127.72) [213569]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, key:=UnfoldingMask[this, key] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213570]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, height_2:=UnfoldingMask[this, height_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, left:=UnfoldingMask[this, left] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, right_1:=UnfoldingMask[this, right_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 2;
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213571]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, balanceFactor:=UnfoldingMask[this, balanceFactor] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, left] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213572]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], height_2:=UnfoldingMask[UnfoldingHeap[this, left], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213573]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, left] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] > 0;
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
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213574]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  Postcondition of getBalanceFactor might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213575]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if (UnfoldingHeap[this, right_1] != null) {
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
      }
      assume UnfoldingHeap[this, height_2] == (if (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) > (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) then (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) + 1 else (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]) + 1);
      assume UnfoldingHeap[this, balanceFactor] == (if UnfoldingHeap[this, left] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, left], height_2]) - (if UnfoldingHeap[this, right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]);
      assume UnfoldingHeap[this, balanceFactor] <= 1;
      assume UnfoldingHeap[this, balanceFactor] >= -1;
      assume UnfoldingHeap[this, height_2] > 0;
      assume state(UnfoldingHeap, UnfoldingMask);
    if (bf < 0) {
      assert {:msg "  Postcondition of getBalanceFactor might not hold. Assertion this.right != null might not hold. (0075_AVLTree.nokeys.vpr@127.11--127.72) [213576]"}
        Heap[this, right_1] != null;
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height_2:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
      if (Heap[this, left] != null) {
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
          { newPMask[o_1, f_11] }
          Heap[null, valid#sm(this)][o_1, f_11] || Heap[null, valid#sm(Heap[this, left])][o_1, f_11] ==> newPMask[o_1, f_11]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, left] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], height_2:=true]];
      }
      if (Heap[this, left] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], balanceFactor:=true]];
      }
      if (Heap[this, right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
          { newPMask[o_12, f_9] }
          Heap[null, valid#sm(this)][o_12, f_9] || Heap[null, valid#sm(Heap[this, right_1])][o_12, f_9] ==> newPMask[o_12, f_9]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, right_1] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height_2:=true]];
      }
      if (Heap[this, right_1] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height_2:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
      if (Heap[this, left] != null) {
        havoc newPMask;
        assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
          { newPMask[o_22, f_24] }
          Heap[null, valid#sm(this)][o_22, f_24] || Heap[null, valid#sm(Heap[this, left])][o_22, f_24] ==> newPMask[o_22, f_24]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, left] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], height_2:=true]];
      }
      if (Heap[this, left] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], balanceFactor:=true]];
      }
      if (Heap[this, right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
          { newPMask[o_3, f_12] }
          Heap[null, valid#sm(this)][o_3, f_12] || Heap[null, valid#sm(Heap[this, right_1])][o_3, f_12] ==> newPMask[o_3, f_12]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      if (Heap[this, right_1] != null) {
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height_2:=true]];
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

procedure getBalanceFactorI(this: Ref, rd_1: Perm) returns (bf: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var lh: int;
  var rh: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd_1;
    assume state(Heap, Mask);
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@140.12--140.29) [213577]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@141.12--141.59) [213578]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@141.12--141.59) [213579]"}
          HasDirectPerm(Mask, this, left);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@142.12--142.56) [213580]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@142.12--142.56) [213581]"}
          HasDirectPerm(Mask, this, left);
      perm := rd_1;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@142.12--142.56) [213582]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@143.12--143.30) [213583]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, right_1:=Mask[this, right_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@144.12--144.61) [213584]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@144.12--144.61) [213585]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@145.12--145.58) [213586]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@145.12--145.58) [213587]"}
          HasDirectPerm(Mask, this, right_1);
      perm := rd_1;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@145.12--145.58) [213588]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
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
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@146.11--146.28) [213589]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, left:=PostMask[this, left] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@147.11--147.58) [213590]"}
        HasDirectPerm(PostMask, this, left);
    if (PostHeap[this, left] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@147.11--147.58) [213591]"}
          HasDirectPerm(PostMask, this, left);
      perm := FullPerm;
      PostMask := PostMask[null, valid(PostHeap[this, left]):=PostMask[null, valid(PostHeap[this, left])] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@148.11--148.55) [213592]"}
        HasDirectPerm(PostMask, this, left);
    if (PostHeap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@148.11--148.55) [213593]"}
          HasDirectPerm(PostMask, this, left);
      perm := rd_1;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@148.11--148.55) [213594]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> PostHeap[this, left] != null;
      PostMask := PostMask[PostHeap[this, left], height_2:=PostMask[PostHeap[this, left], height_2] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    perm := rd_1;
    assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@149.11--149.29) [213595]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, right_1:=PostMask[this, right_1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@150.11--150.60) [213596]"}
        HasDirectPerm(PostMask, this, right_1);
    if (PostHeap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@150.11--150.60) [213597]"}
          HasDirectPerm(PostMask, this, right_1);
      perm := FullPerm;
      PostMask := PostMask[null, valid(PostHeap[this, right_1]):=PostMask[null, valid(PostHeap[this, right_1])] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@151.11--151.57) [213598]"}
        HasDirectPerm(PostMask, this, right_1);
    if (PostHeap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, rd)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@151.11--151.57) [213599]"}
          HasDirectPerm(PostMask, this, right_1);
      perm := rd_1;
      assert {:msg "  Contract might not be well-formed. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@151.11--151.57) [213600]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> PostHeap[this, right_1] != null;
      PostMask := PostMask[PostHeap[this, right_1], height_2:=PostMask[PostHeap[this, right_1], height_2] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of bf == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@152.11--152.94) [213601]"}
        HasDirectPerm(PostMask, this, left);
      if (PostHeap[this, left] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@152.11--152.94) [213602]"}
          HasDirectPerm(PostMask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@152.11--152.94) [213603]"}
          HasDirectPerm(PostMask, PostHeap[this, left], height_2);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@152.11--152.94) [213604]"}
        HasDirectPerm(PostMask, this, right_1);
      if (PostHeap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@152.11--152.94) [213605]"}
          HasDirectPerm(PostMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@152.11--152.94) [213606]"}
          HasDirectPerm(PostMask, PostHeap[this, right_1], height_2);
      }
    assume bf == (if PostHeap[this, left] == null then 0 else PostHeap[PostHeap[this, left], height_2]) - (if PostHeap[this, right_1] == null then 0 else PostHeap[PostHeap[this, right_1], height_2]);
    assume state(PostHeap, PostMask);
    if (bf > 0) {
      
      // -- Check definedness of this.left != null
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@153.11--153.36) [213607]"}
          HasDirectPerm(PostMask, this, left);
      assume PostHeap[this, left] != null;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: lh := (this.left == null ? 0 : this.left.height) -- 0075_AVLTree.nokeys.vpr@155.3--155.62
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@155.3--155.62) [213608]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@155.3--155.62) [213609]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@155.3--155.62) [213610]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
    lh := (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]);
    assume state(Heap, Mask);
  
  // -- Translating statement: rh := (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@156.3--156.62
    
    // -- Check definedness of (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@156.3--156.62) [213611]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@156.3--156.62) [213612]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@156.3--156.62) [213613]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    rh := (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assume state(Heap, Mask);
  
  // -- Translating statement: bf := lh - rh -- 0075_AVLTree.nokeys.vpr@157.3--157.14
    bf := lh - rh;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.right != null ==>
  //   (unfolding acc(valid(this.right), write) in true) -- 0075_AVLTree.nokeys.vpr@162.3--162.80
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.right != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@162.10--162.80) [213614]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of (unfolding acc(valid(this.right), write) in true)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[this, right_1]));
        assume UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], key]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], left]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@162.10--162.80) [213615]"}
            perm <= UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])];
        }
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], key:=UnfoldingMask[UnfoldingHeap[this, right_1], key] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [213616]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], left:=UnfoldingMask[UnfoldingHeap[this, right_1], left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], right_1:=UnfoldingMask[UnfoldingHeap[this, right_1], right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [213617]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])], valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [213618]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [213619]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2] > 0;
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
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [213620]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@162.10--162.80) [213621]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2] > 0;
        }
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] == (if (if UnfoldingHeap[UnfoldingHeap[this, right_1], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) > (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]) then (if UnfoldingHeap[UnfoldingHeap[this, right_1], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) + 1 else (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]) + 1);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] == (if UnfoldingHeap[UnfoldingHeap[this, right_1], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) - (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] <= 1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] >= -1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@162.10--162.80) [213622]"}
          HasDirectPerm(UnfoldingMask, this, right_1);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height_2:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
          if (Heap[Heap[this, right_1], left] != null) {
            havoc newPMask;
            assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
              { newPMask[o_34, f_44] }
              Heap[null, valid#sm(Heap[this, right_1])][o_34, f_44] || Heap[null, valid#sm(Heap[Heap[this, right_1], left])][o_34, f_44] ==> newPMask[o_34, f_44]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], left] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], height_2:=true]];
          }
          if (Heap[Heap[this, right_1], left] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], balanceFactor:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
              { newPMask[o_55, f_36] }
              Heap[null, valid#sm(Heap[this, right_1])][o_55, f_36] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_55, f_36] ==> newPMask[o_55, f_36]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height_2:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
          }
          assume state(Heap, Mask);
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height_2:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
      if (Heap[Heap[this, right_1], left] != null) {
        havoc newPMask;
        assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
          { newPMask[o_42, f_26] }
          Heap[null, valid#sm(Heap[this, right_1])][o_42, f_26] || Heap[null, valid#sm(Heap[Heap[this, right_1], left])][o_42, f_26] ==> newPMask[o_42, f_26]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], left] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], height_2:=true]];
      }
      if (Heap[Heap[this, right_1], left] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], balanceFactor:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
          { newPMask[o_13, f_45] }
          Heap[null, valid#sm(Heap[this, right_1])][o_13, f_45] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_13, f_45] ==> newPMask[o_13, f_45]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height_2:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := rd_1;
    assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@146.11--146.28) [213624]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@146.11--146.28) [213625]"}
        perm <= Mask[this, left];
    }
    Mask := Mask[this, left:=Mask[this, left] - perm];
    if (Heap[this, left] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@147.11--147.58) [213626]"}
          perm <= Mask[null, valid(Heap[this, left])];
      }
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
    }
    if (Heap[this, left] != null) {
      perm := rd_1;
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@148.11--148.55) [213627]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@148.11--148.55) [213628]"}
          perm <= Mask[Heap[this, left], height_2];
      }
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
    }
    perm := rd_1;
    assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@149.11--149.29) [213629]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@149.11--149.29) [213630]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@150.11--150.60) [213631]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := rd_1;
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. Fraction rd might be negative. (0075_AVLTree.nokeys.vpr@151.11--151.57) [213632]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of getBalanceFactorI might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@151.11--151.57) [213633]"}
          perm <= Mask[Heap[this, right_1], height_2];
      }
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
    }
    assert {:msg "  Postcondition of getBalanceFactorI might not hold. Assertion bf == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@152.11--152.94) [213634]"}
      bf == (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    if (bf > 0) {
      assert {:msg "  Postcondition of getBalanceFactorI might not hold. Assertion this.left != null might not hold. (0075_AVLTree.nokeys.vpr@153.11--153.36) [213635]"}
        Heap[this, left] != null;
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var lh: int;
  var rh: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@171.12--171.59) [213636]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@171.12--171.59) [213637]"}
          HasDirectPerm(Mask, this, left);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@172.12--172.64) [213638]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@172.12--172.64) [213639]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@172.12--172.64) [213640]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@173.12--173.64) [213641]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@173.12--173.64) [213642]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@173.12--173.64) [213643]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@174.12--174.61) [213644]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@174.12--174.61) [213645]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@175.12--175.66) [213646]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@175.12--175.66) [213647]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@175.12--175.66) [213648]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@176.12--176.66) [213649]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@176.12--176.66) [213650]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@176.12--176.66) [213651]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@177.14--177.104) [213652]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@177.14--177.104) [213653]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@177.14--177.104) [213654]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@177.14--177.104) [213655]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@177.14--177.104) [213656]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@177.14--177.104) [213657]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    assume (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) <= 1;
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@178.14--178.104) [213658]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@178.14--178.104) [213659]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@178.14--178.104) [213660]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@178.14--178.104) [213661]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@178.14--178.104) [213662]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@178.14--178.104) [213663]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    assume (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) >= -1;
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
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@180.11--180.38) [213664]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, height_2:=PostMask[this, height_2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@181.11--181.38) [213665]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    PostMask := PostMask[this, balanceFactor:=PostMask[this, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.height == ((old(this.left) == null ? 0 : old(this.left.height)) > (old(this.right) == null ? 0 : old(this.right.height)) ? (old(this.left) == null ? 0 : old(this.left.height)) + 1 : (old(this.right) == null ? 0 : old(this.right.height)) + 1)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [213666]"}
        HasDirectPerm(PostMask, this, height_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [213667]"}
        HasDirectPerm(oldMask, this, left);
      if (oldHeap[this, left] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [213668]"}
          HasDirectPerm(oldMask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [213669]"}
          HasDirectPerm(oldMask, oldHeap[this, left], height_2);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [213670]"}
        HasDirectPerm(oldMask, this, right_1);
      if (oldHeap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [213671]"}
          HasDirectPerm(oldMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [213672]"}
          HasDirectPerm(oldMask, oldHeap[this, right_1], height_2);
      }
      if ((if oldHeap[this, left] == null then 0 else oldHeap[oldHeap[this, left], height_2]) > (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height_2])) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [213673]"}
          HasDirectPerm(oldMask, this, left);
        if (oldHeap[this, left] == null) {
        } else {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@182.11--188.5) [213674]"}
            HasDirectPerm(oldMask, this, left);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [213675]"}
            HasDirectPerm(oldMask, oldHeap[this, left], height_2);
        }
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [213676]"}
          HasDirectPerm(oldMask, this, right_1);
        if (oldHeap[this, right_1] == null) {
        } else {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@182.11--188.5) [213677]"}
            HasDirectPerm(oldMask, this, right_1);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@182.11--188.5) [213678]"}
            HasDirectPerm(oldMask, oldHeap[this, right_1], height_2);
        }
      }
    assume PostHeap[this, height_2] == (if (if oldHeap[this, left] == null then 0 else oldHeap[oldHeap[this, left], height_2]) > (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height_2]) then (if oldHeap[this, left] == null then 0 else oldHeap[oldHeap[this, left], height_2]) + 1 else (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height_2]) + 1);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of this.balanceFactor == (old(this.left) == null ? 0 : old(this.left.height)) - (old(this.right) == null ? 0 : old(this.right.height))
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@189.11--190.113) [213679]"}
        HasDirectPerm(PostMask, this, balanceFactor);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@189.11--190.113) [213680]"}
        HasDirectPerm(oldMask, this, left);
      if (oldHeap[this, left] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@189.11--190.113) [213681]"}
          HasDirectPerm(oldMask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@189.11--190.113) [213682]"}
          HasDirectPerm(oldMask, oldHeap[this, left], height_2);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@189.11--190.113) [213683]"}
        HasDirectPerm(oldMask, this, right_1);
      if (oldHeap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@189.11--190.113) [213684]"}
          HasDirectPerm(oldMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@189.11--190.113) [213685]"}
          HasDirectPerm(oldMask, oldHeap[this, right_1], height_2);
      }
    assume PostHeap[this, balanceFactor] == (if oldHeap[this, left] == null then 0 else oldHeap[oldHeap[this, left], height_2]) - (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height_2]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: lh := (this.left == null ? 0 : this.left.height) -- 0075_AVLTree.nokeys.vpr@192.3--192.62
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@192.3--192.62) [213686]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@192.3--192.62) [213687]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@192.3--192.62) [213688]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
    lh := (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]);
    assume state(Heap, Mask);
  
  // -- Translating statement: rh := (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@193.3--193.62
    
    // -- Check definedness of (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@193.3--193.62) [213689]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@193.3--193.62) [213690]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@193.3--193.62) [213691]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    rh := (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.height := ((this.left == null ? 0 : this.left.height) >
  //   (this.right == null ? 0 : this.right.height) ?
  //     (this.left == null ? 0 : this.left.height) + 1 :
  //     (this.right == null ? 0 : this.right.height) + 1) -- 0075_AVLTree.nokeys.vpr@195.3--195.206
    
    // -- Check definedness of ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [213692]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [213693]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [213694]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [213695]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [213696]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [213697]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
      if ((if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2])) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [213698]"}
          HasDirectPerm(Mask, this, left);
        if (Heap[this, left] == null) {
        } else {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@195.3--195.206) [213699]"}
            HasDirectPerm(Mask, this, left);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [213700]"}
            HasDirectPerm(Mask, Heap[this, left], height_2);
        }
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [213701]"}
          HasDirectPerm(Mask, this, right_1);
        if (Heap[this, right_1] == null) {
        } else {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@195.3--195.206) [213702]"}
            HasDirectPerm(Mask, this, right_1);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [213703]"}
            HasDirectPerm(Mask, Heap[this, right_1], height_2);
        }
      }
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@195.3--195.206) [213704]"}
      FullPerm == Mask[this, height_2];
    Heap := Heap[this, height_2:=(if (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) then (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) + 1)];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.balanceFactor := (this.left == null ? 0 : this.left.height) -
  //   (this.right == null ? 0 : this.right.height) -- 0075_AVLTree.nokeys.vpr@196.3--196.112
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height)
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@196.3--196.112) [213705]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@196.3--196.112) [213706]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@196.3--196.112) [213707]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@196.3--196.112) [213708]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@196.3--196.112) [213709]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@196.3--196.112) [213710]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@196.3--196.112) [213711]"}
      FullPerm == Mask[this, balanceFactor];
    Heap := Heap[this, balanceFactor:=(if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2])];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.left != null ==>
  //   (unfolding acc(valid(this.left), write) in true) -- 0075_AVLTree.nokeys.vpr@201.3--201.79
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.left != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@201.10--201.79) [213712]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of (unfolding acc(valid(this.left), write) in true)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[this, left]));
        assume UnfoldingHeap[null, valid(UnfoldingHeap[this, left])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], key]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], height_2]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], left]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], right_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@201.10--201.79) [213713]"}
            perm <= UnfoldingMask[null, valid(UnfoldingHeap[this, left])];
        }
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, left]):=UnfoldingMask[null, valid(UnfoldingHeap[this, left])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], key:=UnfoldingMask[UnfoldingHeap[this, left], key] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [213714]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], height_2:=UnfoldingMask[UnfoldingHeap[this, left], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], left:=UnfoldingMask[UnfoldingHeap[this, left], left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], right_1:=UnfoldingMask[UnfoldingHeap[this, left], right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [213715]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, left] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, left], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, left], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, left], left] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], left]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])], valid(UnfoldingHeap[UnfoldingHeap[this, left], left]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], left])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left], left] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [213716]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left], left] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], left], height_2:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], left], height_2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left], left] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [213717]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left], left] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], left], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], left], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left], left] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], left], height_2] > 0;
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], right_1])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, left]), UnfoldingHeap[null, valid(UnfoldingHeap[this, left])], valid(UnfoldingHeap[UnfoldingHeap[this, left], right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, left], right_1])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [213718]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], right_1], height_2:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], right_1], height_2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@201.10--201.79) [213719]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, left], right_1], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, left], right_1] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], right_1], height_2] > 0;
        }
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] == (if (if UnfoldingHeap[UnfoldingHeap[this, left], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], left], height_2]) > (if UnfoldingHeap[UnfoldingHeap[this, left], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], right_1], height_2]) then (if UnfoldingHeap[UnfoldingHeap[this, left], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], left], height_2]) + 1 else (if UnfoldingHeap[UnfoldingHeap[this, left], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], right_1], height_2]) + 1);
        assume UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor] == (if UnfoldingHeap[UnfoldingHeap[this, left], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], left], height_2]) - (if UnfoldingHeap[UnfoldingHeap[this, left], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, left], right_1], height_2]);
        assume UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor] <= 1;
        assume UnfoldingHeap[UnfoldingHeap[this, left], balanceFactor] >= -1;
        assume UnfoldingHeap[UnfoldingHeap[this, left], height_2] > 0;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@201.10--201.79) [213720]"}
          HasDirectPerm(UnfoldingMask, this, left);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], key:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], height_2:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], left:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], right_1:=true]];
          Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], balanceFactor:=true]];
          if (Heap[Heap[this, left], left] != null) {
            havoc newPMask;
            assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
              { newPMask[o_43, f_13] }
              Heap[null, valid#sm(Heap[this, left])][o_43, f_13] || Heap[null, valid#sm(Heap[Heap[this, left], left])][o_43, f_13] ==> newPMask[o_43, f_13]
            );
            Heap := Heap[null, valid#sm(Heap[this, left]):=newPMask];
          }
          if (Heap[Heap[this, left], left] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], left], height_2:=true]];
          }
          if (Heap[Heap[this, left], left] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], left], balanceFactor:=true]];
          }
          if (Heap[Heap[this, left], right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
              { newPMask[o_47, f_41] }
              Heap[null, valid#sm(Heap[this, left])][o_47, f_41] || Heap[null, valid#sm(Heap[Heap[this, left], right_1])][o_47, f_41] ==> newPMask[o_47, f_41]
            );
            Heap := Heap[null, valid#sm(Heap[this, left]):=newPMask];
          }
          if (Heap[Heap[this, left], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], right_1], height_2:=true]];
          }
          if (Heap[Heap[this, left], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], right_1], balanceFactor:=true]];
          }
          assume state(Heap, Mask);
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], key:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], height_2:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], left:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], right_1:=true]];
      Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[this, left], balanceFactor:=true]];
      if (Heap[Heap[this, left], left] != null) {
        havoc newPMask;
        assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
          { newPMask[o_14, f_51] }
          Heap[null, valid#sm(Heap[this, left])][o_14, f_51] || Heap[null, valid#sm(Heap[Heap[this, left], left])][o_14, f_51] ==> newPMask[o_14, f_51]
        );
        Heap := Heap[null, valid#sm(Heap[this, left]):=newPMask];
      }
      if (Heap[Heap[this, left], left] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], left], height_2:=true]];
      }
      if (Heap[Heap[this, left], left] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], left], balanceFactor:=true]];
      }
      if (Heap[Heap[this, left], right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
          { newPMask[o_44, f_14] }
          Heap[null, valid#sm(Heap[this, left])][o_44, f_14] || Heap[null, valid#sm(Heap[Heap[this, left], right_1])][o_44, f_14] ==> newPMask[o_44, f_14]
        );
        Heap := Heap[null, valid#sm(Heap[this, left]):=newPMask];
      }
      if (Heap[Heap[this, left], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], right_1], height_2:=true]];
      }
      if (Heap[Heap[this, left], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, left]):=Heap[null, valid#sm(Heap[this, left])][Heap[Heap[this, left], right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.right != null ==>
  //   (unfolding acc(valid(this.right), write) in true) -- 0075_AVLTree.nokeys.vpr@202.3--202.79
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.right != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@202.10--202.79) [213722]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of (unfolding acc(valid(this.right), write) in true)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume valid#trigger(UnfoldingHeap, valid(UnfoldingHeap[this, right_1]));
        assume UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])] == CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], key]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], height_2]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], left]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@202.10--202.79) [213723]"}
            perm <= UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])];
        }
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, right_1]):=UnfoldingMask[null, valid(UnfoldingHeap[this, right_1])] - perm];
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], key:=UnfoldingMask[UnfoldingHeap[this, right_1], key] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [213724]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], height_2:=UnfoldingMask[UnfoldingHeap[this, right_1], height_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], left:=UnfoldingMask[UnfoldingHeap[this, right_1], left] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], right_1:=UnfoldingMask[UnfoldingHeap[this, right_1], right_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := 1 / 2;
        assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [213725]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> UnfoldingHeap[this, right_1] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[this, right_1], balanceFactor] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left]):=UnfoldingMask[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(UnfoldingHeap[this, right_1]), UnfoldingHeap[null, valid(UnfoldingHeap[this, right_1])], valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left]), UnfoldingHeap[null, valid(UnfoldingHeap[UnfoldingHeap[this, right_1], left])]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [213726]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [213727]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], left], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], left] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2] > 0;
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
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [213728]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          perm := 1 / 2;
          assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@202.10--202.79) [213729]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], balanceFactor] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        if (UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] != null) {
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2] > 0;
        }
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] == (if (if UnfoldingHeap[UnfoldingHeap[this, right_1], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) > (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]) then (if UnfoldingHeap[UnfoldingHeap[this, right_1], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) + 1 else (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]) + 1);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] == (if UnfoldingHeap[UnfoldingHeap[this, right_1], left] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], left], height_2]) - (if UnfoldingHeap[UnfoldingHeap[this, right_1], right_1] == null then 0 else UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, right_1], right_1], height_2]);
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] <= 1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], balanceFactor] >= -1;
        assume UnfoldingHeap[UnfoldingHeap[this, right_1], height_2] > 0;
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Assert might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@202.10--202.79) [213730]"}
          HasDirectPerm(UnfoldingMask, this, right_1);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height_2:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
          Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
          if (Heap[Heap[this, right_1], left] != null) {
            havoc newPMask;
            assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
              { newPMask[o_28, f_42] }
              Heap[null, valid#sm(Heap[this, right_1])][o_28, f_42] || Heap[null, valid#sm(Heap[Heap[this, right_1], left])][o_28, f_42] ==> newPMask[o_28, f_42]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], left] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], height_2:=true]];
          }
          if (Heap[Heap[this, right_1], left] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], balanceFactor:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            havoc newPMask;
            assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
              { newPMask[o_76, f_34] }
              Heap[null, valid#sm(Heap[this, right_1])][o_76, f_34] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_76, f_34] ==> newPMask[o_76, f_34]
            );
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height_2:=true]];
          }
          if (Heap[Heap[this, right_1], right_1] != null) {
            Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
          }
          assume state(Heap, Mask);
    }
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], key:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], height_2:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], left:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], right_1:=true]];
      Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[this, right_1], balanceFactor:=true]];
      if (Heap[Heap[this, right_1], left] != null) {
        havoc newPMask;
        assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
          { newPMask[o_51, f_46] }
          Heap[null, valid#sm(Heap[this, right_1])][o_51, f_46] || Heap[null, valid#sm(Heap[Heap[this, right_1], left])][o_51, f_46] ==> newPMask[o_51, f_46]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], left] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], height_2:=true]];
      }
      if (Heap[Heap[this, right_1], left] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], left], balanceFactor:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        havoc newPMask;
        assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
          { newPMask[o_29, f_81] }
          Heap[null, valid#sm(Heap[this, right_1])][o_29, f_81] || Heap[null, valid#sm(Heap[Heap[this, right_1], right_1])][o_29, f_81] ==> newPMask[o_29, f_81]
        );
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=newPMask];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], height_2:=true]];
      }
      if (Heap[Heap[this, right_1], right_1] != null) {
        Heap := Heap[null, valid#sm(Heap[this, right_1]):=Heap[null, valid#sm(Heap[this, right_1])][Heap[Heap[this, right_1], right_1], balanceFactor:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- 0075_AVLTree.nokeys.vpr@204.3--204.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@204.3--204.30) [213734]"}
        perm <= Mask[this, key];
    }
    Mask := Mask[this, key:=Mask[this, key] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213735]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@204.3--204.30) [213736]"}
        perm <= Mask[this, height_2];
    }
    Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@204.3--204.30) [213738]"}
        perm <= Mask[this, left];
    }
    Mask := Mask[this, left:=Mask[this, left] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@204.3--204.30) [213740]"}
        perm <= Mask[this, right_1];
    }
    Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213741]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@204.3--204.30) [213742]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    if (Heap[this, left] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@204.3--204.30) [213744]"}
          perm <= Mask[null, valid(Heap[this, left])];
      }
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, left]), Heap[null, valid(Heap[this, left])]);
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213745]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@204.3--204.30) [213746]"}
          perm <= Mask[Heap[this, left], height_2];
      }
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
    }
    if (Heap[this, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213747]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@204.3--204.30) [213748]"}
          perm <= Mask[Heap[this, left], balanceFactor];
      }
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
    }
    if (Heap[this, left] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.left.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213749]"}
        Heap[Heap[this, left], height_2] > 0;
    }
    if (Heap[this, right_1] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@204.3--204.30) [213751]"}
          perm <= Mask[null, valid(Heap[this, right_1])];
      }
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])]);
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213752]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@204.3--204.30) [213753]"}
          perm <= Mask[Heap[this, right_1], height_2];
      }
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
    }
    if (Heap[this, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Folding valid(this) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213754]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@204.3--204.30) [213755]"}
          perm <= Mask[Heap[this, right_1], balanceFactor];
      }
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
    }
    if (Heap[this, right_1] != null) {
      assert {:msg "  Folding valid(this) might fail. Assertion this.right.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213756]"}
        Heap[Heap[this, right_1], height_2] > 0;
    }
    assert {:msg "  Folding valid(this) might fail. Assertion this.height == ((this.left == null ? 0 : this.left.height) > (this.right == null ? 0 : this.right.height) ? (this.left == null ? 0 : this.left.height) + 1 : (this.right == null ? 0 : this.right.height) + 1) might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213757]"}
      Heap[this, height_2] == (if (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) > (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) then (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) + 1 else (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) + 1);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor == (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213758]"}
      Heap[this, balanceFactor] == (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]);
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor <= 1 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213759]"}
      Heap[this, balanceFactor] <= 1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.balanceFactor >= -1 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213760]"}
      Heap[this, balanceFactor] >= -1;
    assert {:msg "  Folding valid(this) might fail. Assertion this.height > 0 might not hold. (0075_AVLTree.nokeys.vpr@204.3--204.30) [213761]"}
      Heap[this, height_2] > 0;
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, key]), CombineFrames(FrameFragment(Heap[this, height_2]), CombineFrames(FrameFragment(Heap[this, left]), CombineFrames(FrameFragment(Heap[this, right_1]), CombineFrames(FrameFragment(Heap[this, balanceFactor]), CombineFrames(FrameFragment((if Heap[this, left] != null then Heap[null, valid(Heap[this, left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then FrameFragment(Heap[Heap[this, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then Heap[null, valid(Heap[this, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[this, right_1] != null then FrameFragment(Heap[Heap[this, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[this, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, key:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, height_2:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, left:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, right_1:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, balanceFactor:=true]];
    if (Heap[this, left] != null) {
      havoc newPMask;
      assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
        { newPMask[o_77, f_52] }
        Heap[null, valid#sm(this)][o_77, f_52] || Heap[null, valid#sm(Heap[this, left])][o_77, f_52] ==> newPMask[o_77, f_52]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, left] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], height_2:=true]];
    }
    if (Heap[this, left] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, left], balanceFactor:=true]];
    }
    if (Heap[this, right_1] != null) {
      havoc newPMask;
      assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
        { newPMask[o_78, f_49] }
        Heap[null, valid#sm(this)][o_78, f_49] || Heap[null, valid#sm(Heap[this, right_1])][o_78, f_49] ==> newPMask[o_78, f_49]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], height_2:=true]];
    }
    if (Heap[this, right_1] != null) {
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][Heap[this, right_1], balanceFactor:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of close might not hold. There might be insufficient permission to access valid(this) (0075_AVLTree.nokeys.vpr@179.11--179.33) [213763]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@180.11--180.38) [213764]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@180.11--180.38) [213765]"}
        perm <= Mask[this, height_2];
    }
    Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@181.11--181.38) [213766]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@181.11--181.38) [213767]"}
        perm <= Mask[this, balanceFactor];
    }
    Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
    assert {:msg "  Postcondition of close might not hold. Assertion this.height == ((old(this.left) == null ? 0 : old(this.left.height)) > (old(this.right) == null ? 0 : old(this.right.height)) ? (old(this.left) == null ? 0 : old(this.left.height)) + 1 : (old(this.right) == null ? 0 : old(this.right.height)) + 1) might not hold. (0075_AVLTree.nokeys.vpr@182.11--188.5) [213768]"}
      Heap[this, height_2] == (if (if oldHeap[this, left] == null then 0 else oldHeap[oldHeap[this, left], height_2]) > (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height_2]) then (if oldHeap[this, left] == null then 0 else oldHeap[oldHeap[this, left], height_2]) + 1 else (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height_2]) + 1);
    assert {:msg "  Postcondition of close might not hold. Assertion this.balanceFactor == (old(this.left) == null ? 0 : old(this.left.height)) - (old(this.right) == null ? 0 : old(this.right.height)) might not hold. (0075_AVLTree.nokeys.vpr@189.11--190.113) [213769]"}
      Heap[this, balanceFactor] == (if oldHeap[this, left] == null then 0 else oldHeap[oldHeap[this, left], height_2]) - (if oldHeap[this, right_1] == null then 0 else oldHeap[oldHeap[this, right_1], height_2]);
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@214.12--214.27) [213770]"}
        HasDirectPerm(Mask, this, left);
    assume Heap[this, left] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@215.12--215.39) [213771]"}
        HasDirectPerm(Mask, this, left);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@216.12--216.44) [213772]"}
        HasDirectPerm(Mask, this, left);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@216.12--216.44) [213773]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@217.12--217.44) [213774]"}
        HasDirectPerm(Mask, this, left);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@217.12--217.44) [213775]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@218.12--218.61) [213776]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@218.12--218.61) [213777]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@219.12--219.66) [213778]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@219.12--219.66) [213779]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@219.12--219.66) [213780]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@220.12--220.66) [213781]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@220.12--220.66) [213782]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@220.12--220.66) [213783]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.height - (this.right == null ? 0 : this.right.height) == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@221.12--221.70) [213784]"}
        HasDirectPerm(Mask, this, left);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@221.12--221.70) [213785]"}
        HasDirectPerm(Mask, Heap[this, left], height_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@221.12--221.70) [213786]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@221.12--221.70) [213787]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@221.12--221.70) [213788]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    assume Heap[Heap[this, left], height_2] - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) == 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.balanceFactor == -1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@222.12--222.39) [213789]"}
        HasDirectPerm(Mask, this, left);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@222.12--222.39) [213790]"}
        HasDirectPerm(Mask, Heap[this, left], balanceFactor);
    assume Heap[Heap[this, left], balanceFactor] == -1;
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
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@224.11--224.35) [213791]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height_2:=PostMask[r_1, height_2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@225.11--225.35) [213792]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.left.height)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@226.11--226.44) [213793]"}
        HasDirectPerm(PostMask, r_1, height_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@226.11--226.44) [213794]"}
        HasDirectPerm(oldMask, this, left);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@226.11--226.44) [213795]"}
        HasDirectPerm(oldMask, oldHeap[this, left], height_2);
    assume PostHeap[r_1, height_2] == oldHeap[oldHeap[this, left], height_2];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.left), write) -- 0075_AVLTree.nokeys.vpr@228.3--228.37
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@228.3--228.37) [213796]"}
        HasDirectPerm(Mask, this, left);
    assume valid#trigger(Heap, valid(Heap[this, left]));
    assume Heap[null, valid(Heap[this, left])] == CombineFrames(FrameFragment(Heap[Heap[this, left], key]), CombineFrames(FrameFragment(Heap[Heap[this, left], height_2]), CombineFrames(FrameFragment(Heap[Heap[this, left], left]), CombineFrames(FrameFragment(Heap[Heap[this, left], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, left], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then Heap[null, valid(Heap[Heap[this, left], left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then FrameFragment(Heap[Heap[Heap[this, left], left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then FrameFragment(Heap[Heap[Heap[this, left], left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], right_1] != null then Heap[null, valid(Heap[Heap[this, left], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left], right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, left], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@228.3--228.37) [213799]"}
        perm <= Mask[null, valid(Heap[this, left])];
    }
    Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, left]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, left]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, left] != null;
    Mask := Mask[Heap[this, left], key:=Mask[Heap[this, left], key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [213801]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left] != null;
    Mask := Mask[Heap[this, left], left:=Mask[Heap[this, left], left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left] != null;
    Mask := Mask[Heap[this, left], right_1:=Mask[Heap[this, left], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [213804]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, left], left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left], left]):=Mask[null, valid(Heap[Heap[this, left], left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left]), Heap[null, valid(Heap[this, left])], valid(Heap[Heap[this, left], left]), Heap[null, valid(Heap[Heap[this, left], left])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [213806]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], left] != null;
      Mask := Mask[Heap[Heap[this, left], left], height_2:=Mask[Heap[Heap[this, left], left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [213807]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], left] != null;
      Mask := Mask[Heap[Heap[this, left], left], balanceFactor:=Mask[Heap[Heap[this, left], left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], left] != null) {
      assume Heap[Heap[Heap[this, left], left], height_2] > 0;
    }
    if (Heap[Heap[this, left], right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left], right_1]):=Mask[null, valid(Heap[Heap[this, left], right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left]), Heap[null, valid(Heap[this, left])], valid(Heap[Heap[this, left], right_1]), Heap[null, valid(Heap[Heap[this, left], right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [213809]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], right_1] != null;
      Mask := Mask[Heap[Heap[this, left], right_1], height_2:=Mask[Heap[Heap[this, left], right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@228.3--228.37) [213810]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], right_1] != null;
      Mask := Mask[Heap[Heap[this, left], right_1], balanceFactor:=Mask[Heap[Heap[this, left], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], right_1] != null) {
      assume Heap[Heap[Heap[this, left], right_1], height_2] > 0;
    }
    assume Heap[Heap[this, left], height_2] == (if (if Heap[Heap[this, left], left] == null then 0 else Heap[Heap[Heap[this, left], left], height_2]) > (if Heap[Heap[this, left], right_1] == null then 0 else Heap[Heap[Heap[this, left], right_1], height_2]) then (if Heap[Heap[this, left], left] == null then 0 else Heap[Heap[Heap[this, left], left], height_2]) + 1 else (if Heap[Heap[this, left], right_1] == null then 0 else Heap[Heap[Heap[this, left], right_1], height_2]) + 1);
    assume Heap[Heap[this, left], balanceFactor] == (if Heap[Heap[this, left], left] == null then 0 else Heap[Heap[Heap[this, left], left], height_2]) - (if Heap[Heap[this, left], right_1] == null then 0 else Heap[Heap[Heap[this, left], right_1], height_2]);
    assume Heap[Heap[this, left], balanceFactor] <= 1;
    assume Heap[Heap[this, left], balanceFactor] >= -1;
    assume Heap[Heap[this, left], height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.left.right -- 0075_AVLTree.nokeys.vpr@229.3--229.23
    
    // -- Check definedness of this.left.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@229.3--229.23) [213811]"}
        HasDirectPerm(Mask, this, left);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.right (0075_AVLTree.nokeys.vpr@229.3--229.23) [213812]"}
        HasDirectPerm(Mask, Heap[this, left], right_1);
    r_1 := Heap[Heap[this, left], right_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- 0075_AVLTree.nokeys.vpr@230.3--230.29
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, key]), CombineFrames(FrameFragment(Heap[r_1, height_2]), CombineFrames(FrameFragment(Heap[r_1, left]), CombineFrames(FrameFragment(Heap[r_1, right_1]), CombineFrames(FrameFragment(Heap[r_1, balanceFactor]), CombineFrames(FrameFragment((if Heap[r_1, left] != null then Heap[null, valid(Heap[r_1, left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left] != null then FrameFragment(Heap[Heap[r_1, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left] != null then FrameFragment(Heap[Heap[r_1, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then Heap[null, valid(Heap[r_1, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[r_1, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@230.3--230.29) [213815]"}
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
    Mask := Mask[r_1, key:=Mask[r_1, key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [213817]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, height_2:=Mask[r_1, height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, left:=Mask[r_1, left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, right_1:=Mask[r_1, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [213820]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, left]):=Mask[null, valid(Heap[r_1, left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, left]), Heap[null, valid(Heap[r_1, left])]);
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [213822]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left] != null;
      Mask := Mask[Heap[r_1, left], height_2:=Mask[Heap[r_1, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [213823]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left] != null;
      Mask := Mask[Heap[r_1, left], balanceFactor:=Mask[Heap[r_1, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left] != null) {
      assume Heap[Heap[r_1, left], height_2] > 0;
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
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [213825]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], height_2:=Mask[Heap[r_1, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@230.3--230.29) [213826]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      assume Heap[Heap[r_1, right_1], height_2] > 0;
    }
    assume Heap[r_1, height_2] == (if (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) > (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) then (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) + 1 else (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) + 1);
    assume Heap[r_1, balanceFactor] == (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]);
    assume Heap[r_1, balanceFactor] <= 1;
    assume Heap[r_1, balanceFactor] >= -1;
    assume Heap[r_1, height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.left.right := r.left -- 0075_AVLTree.nokeys.vpr@232.3--232.28
    
    // -- Check definedness of this.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@232.3--232.28) [213827]"}
        HasDirectPerm(Mask, this, left);
    
    // -- Check definedness of r.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@232.3--232.28) [213828]"}
        HasDirectPerm(Mask, r_1, left);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left.right (0075_AVLTree.nokeys.vpr@232.3--232.28) [213829]"}
      FullPerm == Mask[Heap[this, left], right_1];
    Heap := Heap[Heap[this, left], right_1:=Heap[r_1, left]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this.left) -- 0075_AVLTree.nokeys.vpr@233.3--233.19
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of this.left
      assert {:msg "  Method call might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@233.3--233.19) [213830]"}
        HasDirectPerm(Mask, this, left);
    arg_this := Heap[this, left];
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.key (0075_AVLTree.nokeys.vpr@233.3--233.19) [213831]"}
          perm <= Mask[arg_this, key];
      }
      Mask := Mask[arg_this, key:=Mask[arg_this, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@233.3--233.19) [213832]"}
          perm <= Mask[arg_this, height_2];
      }
      Mask := Mask[arg_this, height_2:=Mask[arg_this, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.left (0075_AVLTree.nokeys.vpr@233.3--233.19) [213833]"}
          perm <= Mask[arg_this, left];
      }
      Mask := Mask[arg_this, left:=Mask[arg_this, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.right (0075_AVLTree.nokeys.vpr@233.3--233.19) [213834]"}
          perm <= Mask[arg_this, right_1];
      }
      Mask := Mask[arg_this, right_1:=Mask[arg_this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@233.3--233.19) [213835]"}
          perm <= Mask[arg_this, balanceFactor];
      }
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] - perm];
      if (Heap[arg_this, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left.left) (0075_AVLTree.nokeys.vpr@233.3--233.19) [213836]"}
            perm <= Mask[null, valid(Heap[arg_this, left])];
        }
        Mask := Mask[null, valid(Heap[arg_this, left]):=Mask[null, valid(Heap[arg_this, left])] - perm];
      }
      if (Heap[arg_this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213837]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.left.height (0075_AVLTree.nokeys.vpr@233.3--233.19) [213838]"}
            perm <= Mask[Heap[arg_this, left], height_2];
        }
        Mask := Mask[Heap[arg_this, left], height_2:=Mask[Heap[arg_this, left], height_2] - perm];
      }
      if (Heap[arg_this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213839]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.left.balanceFactor (0075_AVLTree.nokeys.vpr@233.3--233.19) [213840]"}
            perm <= Mask[Heap[arg_this, left], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, left], balanceFactor:=Mask[Heap[arg_this, left], balanceFactor] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left.right) (0075_AVLTree.nokeys.vpr@233.3--233.19) [213841]"}
            perm <= Mask[null, valid(Heap[arg_this, right_1])];
        }
        Mask := Mask[null, valid(Heap[arg_this, right_1]):=Mask[null, valid(Heap[arg_this, right_1])] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213842]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.right.height (0075_AVLTree.nokeys.vpr@233.3--233.19) [213843]"}
            perm <= Mask[Heap[arg_this, right_1], height_2];
        }
        Mask := Mask[Heap[arg_this, right_1], height_2:=Mask[Heap[arg_this, right_1], height_2] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213844]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.right.balanceFactor (0075_AVLTree.nokeys.vpr@233.3--233.19) [213845]"}
            perm <= Mask[Heap[arg_this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, right_1], balanceFactor:=Mask[Heap[arg_this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left.left == null ? 0 : this.left.left.height) - (this.left.right == null ? 0 : this.left.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213846]"}
        (if Heap[arg_this, left] == null then 0 else Heap[Heap[arg_this, left], height_2]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left.left == null ? 0 : this.left.left.height) - (this.left.right == null ? 0 : this.left.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213847]"}
        (if Heap[arg_this, left] == null then 0 else Heap[Heap[arg_this, left], height_2]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213848]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, height_2:=Mask[arg_this, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@233.3--233.19) [213849]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_this, height_2] == (if (if PreCallHeap[arg_this, left] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left], height_2]) > (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height_2]) then (if PreCallHeap[arg_this, left] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left], height_2]) + 1 else (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height_2]) + 1);
      assume Heap[arg_this, balanceFactor] == (if PreCallHeap[arg_this, left] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left], height_2]) - (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.left := this.left -- 0075_AVLTree.nokeys.vpr@234.3--234.26
    
    // -- Check definedness of this.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@234.3--234.26) [213850]"}
        HasDirectPerm(Mask, this, left);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@234.3--234.26) [213851]"}
      FullPerm == Mask[r_1, left];
    Heap := Heap[r_1, left:=Heap[this, left]];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.left := r.right -- 0075_AVLTree.nokeys.vpr@235.3--235.29
    
    // -- Check definedness of r.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@235.3--235.29) [213852]"}
        HasDirectPerm(Mask, r_1, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@235.3--235.29) [213853]"}
      FullPerm == Mask[this, left];
    Heap := Heap[this, left:=Heap[r_1, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@237.3--237.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@237.3--237.14) [213854]"}
          perm <= Mask[this, key];
      }
      Mask := Mask[this, key:=Mask[this, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@237.3--237.14) [213855]"}
          perm <= Mask[this, height_2];
      }
      Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@237.3--237.14) [213856]"}
          perm <= Mask[this, left];
      }
      Mask := Mask[this, left:=Mask[this, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@237.3--237.14) [213857]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@237.3--237.14) [213858]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@237.3--237.14) [213859]"}
            perm <= Mask[null, valid(Heap[this, left])];
        }
        Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213860]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@237.3--237.14) [213861]"}
            perm <= Mask[Heap[this, left], height_2];
        }
        Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213862]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@237.3--237.14) [213863]"}
            perm <= Mask[Heap[this, left], balanceFactor];
        }
        Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@237.3--237.14) [213864]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213865]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@237.3--237.14) [213866]"}
            perm <= Mask[Heap[this, right_1], height_2];
        }
        Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213867]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@237.3--237.14) [213868]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213869]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213870]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213871]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@237.3--237.14) [213872]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height_2] == (if (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) then (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.right := this -- 0075_AVLTree.nokeys.vpr@238.3--238.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@238.3--238.21) [213873]"}
      FullPerm == Mask[r_1, right_1];
    Heap := Heap[r_1, right_1:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@239.3--239.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@239.3--239.11) [213874]"}
          perm <= Mask[r_1, key];
      }
      Mask := Mask[r_1, key:=Mask[r_1, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@239.3--239.11) [213875]"}
          perm <= Mask[r_1, height_2];
      }
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@239.3--239.11) [213876]"}
          perm <= Mask[r_1, left];
      }
      Mask := Mask[r_1, left:=Mask[r_1, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@239.3--239.11) [213877]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@239.3--239.11) [213878]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@239.3--239.11) [213879]"}
            perm <= Mask[null, valid(Heap[r_1, left])];
        }
        Mask := Mask[null, valid(Heap[r_1, left]):=Mask[null, valid(Heap[r_1, left])] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213880]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@239.3--239.11) [213881]"}
            perm <= Mask[Heap[r_1, left], height_2];
        }
        Mask := Mask[Heap[r_1, left], height_2:=Mask[Heap[r_1, left], height_2] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213882]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@239.3--239.11) [213883]"}
            perm <= Mask[Heap[r_1, left], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left], balanceFactor:=Mask[Heap[r_1, left], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@239.3--239.11) [213884]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213885]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@239.3--239.11) [213886]"}
            perm <= Mask[Heap[r_1, right_1], height_2];
        }
        Mask := Mask[Heap[r_1, right_1], height_2:=Mask[Heap[r_1, right_1], height_2] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213887]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@239.3--239.11) [213888]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213889]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213890]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213891]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@239.3--239.11) [213892]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height_2] == (if (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) then (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of rebalanceRL might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@223.11--223.43) [213893]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRL might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@223.11--223.43) [213894]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@224.11--224.35) [213895]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRL might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@224.11--224.35) [213896]"}
        perm <= Mask[r_1, height_2];
    }
    Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@225.11--225.35) [213897]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRL might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@225.11--225.35) [213898]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceRL might not hold. Assertion r.height == old(this.left.height) might not hold. (0075_AVLTree.nokeys.vpr@226.11--226.44) [213899]"}
      Heap[r_1, height_2] == oldHeap[oldHeap[this, left], height_2];
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@248.12--248.27) [213900]"}
        HasDirectPerm(Mask, this, left);
    assume Heap[this, left] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@249.12--249.39) [213901]"}
        HasDirectPerm(Mask, this, left);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@250.12--250.44) [213902]"}
        HasDirectPerm(Mask, this, left);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@250.12--250.44) [213903]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@251.12--251.44) [213904]"}
        HasDirectPerm(Mask, this, left);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@251.12--251.44) [213905]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@252.12--252.61) [213906]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(valid(this.right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@252.12--252.61) [213907]"}
          HasDirectPerm(Mask, this, right_1);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@253.12--253.66) [213908]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@253.12--253.66) [213909]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@253.12--253.66) [213910]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@254.12--254.66) [213911]"}
        HasDirectPerm(Mask, this, right_1);
    if (Heap[this, right_1] != null) {
      
      // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@254.12--254.66) [213912]"}
          HasDirectPerm(Mask, this, right_1);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@254.12--254.66) [213913]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, right_1] != null;
      Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.height - (this.right == null ? 0 : this.right.height) == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@255.12--255.72) [213914]"}
        HasDirectPerm(Mask, this, left);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@255.12--255.72) [213915]"}
        HasDirectPerm(Mask, Heap[this, left], height_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@255.12--255.72) [213916]"}
        HasDirectPerm(Mask, this, right_1);
      if (Heap[this, right_1] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@255.12--255.72) [213917]"}
          HasDirectPerm(Mask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@255.12--255.72) [213918]"}
          HasDirectPerm(Mask, Heap[this, right_1], height_2);
      }
    assume Heap[Heap[this, left], height_2] - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) == 2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left.balanceFactor >= 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@256.12--256.38) [213919]"}
        HasDirectPerm(Mask, this, left);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@256.12--256.38) [213920]"}
        HasDirectPerm(Mask, Heap[this, left], balanceFactor);
    assume Heap[Heap[this, left], balanceFactor] >= 0;
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
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@258.11--258.35) [213921]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height_2:=PostMask[r_1, height_2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@259.11--259.35) [213922]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.left.height) || r.height == old(this.left.height) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [213923]"}
        HasDirectPerm(PostMask, r_1, height_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@260.11--260.85) [213924]"}
        HasDirectPerm(oldMask, this, left);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [213925]"}
        HasDirectPerm(oldMask, oldHeap[this, left], height_2);
      if (!(PostHeap[r_1, height_2] == oldHeap[oldHeap[this, left], height_2])) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [213926]"}
          HasDirectPerm(PostMask, r_1, height_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@260.11--260.85) [213927]"}
          HasDirectPerm(oldMask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@260.11--260.85) [213928]"}
          HasDirectPerm(oldMask, oldHeap[this, left], height_2);
      }
    assume PostHeap[r_1, height_2] == oldHeap[oldHeap[this, left], height_2] || PostHeap[r_1, height_2] == oldHeap[oldHeap[this, left], height_2] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.left), write) -- 0075_AVLTree.nokeys.vpr@262.3--262.37
    
    // -- Check definedness of acc(valid(this.left), write)
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@262.3--262.37) [213929]"}
        HasDirectPerm(Mask, this, left);
    assume valid#trigger(Heap, valid(Heap[this, left]));
    assume Heap[null, valid(Heap[this, left])] == CombineFrames(FrameFragment(Heap[Heap[this, left], key]), CombineFrames(FrameFragment(Heap[Heap[this, left], height_2]), CombineFrames(FrameFragment(Heap[Heap[this, left], left]), CombineFrames(FrameFragment(Heap[Heap[this, left], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, left], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then Heap[null, valid(Heap[Heap[this, left], left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then FrameFragment(Heap[Heap[Heap[this, left], left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then FrameFragment(Heap[Heap[Heap[this, left], left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], right_1] != null then Heap[null, valid(Heap[Heap[this, left], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left], right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, left], right_1] != null then FrameFragment(Heap[Heap[Heap[this, left], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, left], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.left) might fail. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@262.3--262.37) [213932]"}
        perm <= Mask[null, valid(Heap[this, left])];
    }
    Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, left]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, left]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, left] != null;
    Mask := Mask[Heap[this, left], key:=Mask[Heap[this, left], key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [213934]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left] != null;
    Mask := Mask[Heap[this, left], left:=Mask[Heap[this, left], left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, left] != null;
    Mask := Mask[Heap[this, left], right_1:=Mask[Heap[this, left], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [213937]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, left] != null;
    Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, left], left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left], left]):=Mask[null, valid(Heap[Heap[this, left], left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left]), Heap[null, valid(Heap[this, left])], valid(Heap[Heap[this, left], left]), Heap[null, valid(Heap[Heap[this, left], left])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [213939]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], left] != null;
      Mask := Mask[Heap[Heap[this, left], left], height_2:=Mask[Heap[Heap[this, left], left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [213940]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], left] != null;
      Mask := Mask[Heap[Heap[this, left], left], balanceFactor:=Mask[Heap[Heap[this, left], left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], left] != null) {
      assume Heap[Heap[Heap[this, left], left], height_2] > 0;
    }
    if (Heap[Heap[this, left], right_1] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, left], right_1]):=Mask[null, valid(Heap[Heap[this, left], right_1])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, left]), Heap[null, valid(Heap[this, left])], valid(Heap[Heap[this, left], right_1]), Heap[null, valid(Heap[Heap[this, left], right_1])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [213942]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], right_1] != null;
      Mask := Mask[Heap[Heap[this, left], right_1], height_2:=Mask[Heap[Heap[this, left], right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.left) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@262.3--262.37) [213943]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, left], right_1] != null;
      Mask := Mask[Heap[Heap[this, left], right_1], balanceFactor:=Mask[Heap[Heap[this, left], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, left], right_1] != null) {
      assume Heap[Heap[Heap[this, left], right_1], height_2] > 0;
    }
    assume Heap[Heap[this, left], height_2] == (if (if Heap[Heap[this, left], left] == null then 0 else Heap[Heap[Heap[this, left], left], height_2]) > (if Heap[Heap[this, left], right_1] == null then 0 else Heap[Heap[Heap[this, left], right_1], height_2]) then (if Heap[Heap[this, left], left] == null then 0 else Heap[Heap[Heap[this, left], left], height_2]) + 1 else (if Heap[Heap[this, left], right_1] == null then 0 else Heap[Heap[Heap[this, left], right_1], height_2]) + 1);
    assume Heap[Heap[this, left], balanceFactor] == (if Heap[Heap[this, left], left] == null then 0 else Heap[Heap[Heap[this, left], left], height_2]) - (if Heap[Heap[this, left], right_1] == null then 0 else Heap[Heap[Heap[this, left], right_1], height_2]);
    assume Heap[Heap[this, left], balanceFactor] <= 1;
    assume Heap[Heap[this, left], balanceFactor] >= -1;
    assume Heap[Heap[this, left], height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.left -- 0075_AVLTree.nokeys.vpr@263.3--263.23
    
    // -- Check definedness of this.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@263.3--263.23) [213944]"}
        HasDirectPerm(Mask, this, left);
    r_1 := Heap[this, left];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.left := r.right -- 0075_AVLTree.nokeys.vpr@264.3--264.26
    
    // -- Check definedness of r.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@264.3--264.26) [213945]"}
        HasDirectPerm(Mask, r_1, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@264.3--264.26) [213946]"}
      FullPerm == Mask[this, left];
    Heap := Heap[this, left:=Heap[r_1, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@265.3--265.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@265.3--265.14) [213947]"}
          perm <= Mask[this, key];
      }
      Mask := Mask[this, key:=Mask[this, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@265.3--265.14) [213948]"}
          perm <= Mask[this, height_2];
      }
      Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@265.3--265.14) [213949]"}
          perm <= Mask[this, left];
      }
      Mask := Mask[this, left:=Mask[this, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@265.3--265.14) [213950]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@265.3--265.14) [213951]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@265.3--265.14) [213952]"}
            perm <= Mask[null, valid(Heap[this, left])];
        }
        Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213953]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@265.3--265.14) [213954]"}
            perm <= Mask[Heap[this, left], height_2];
        }
        Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213955]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@265.3--265.14) [213956]"}
            perm <= Mask[Heap[this, left], balanceFactor];
        }
        Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@265.3--265.14) [213957]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213958]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@265.3--265.14) [213959]"}
            perm <= Mask[Heap[this, right_1], height_2];
        }
        Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213960]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@265.3--265.14) [213961]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213962]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213963]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213964]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@265.3--265.14) [213965]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height_2] == (if (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) then (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.right := this -- 0075_AVLTree.nokeys.vpr@266.3--266.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@266.3--266.18) [213966]"}
      FullPerm == Mask[r_1, right_1];
    Heap := Heap[r_1, right_1:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@267.3--267.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@267.3--267.11) [213967]"}
          perm <= Mask[r_1, key];
      }
      Mask := Mask[r_1, key:=Mask[r_1, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@267.3--267.11) [213968]"}
          perm <= Mask[r_1, height_2];
      }
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@267.3--267.11) [213969]"}
          perm <= Mask[r_1, left];
      }
      Mask := Mask[r_1, left:=Mask[r_1, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@267.3--267.11) [213970]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@267.3--267.11) [213971]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@267.3--267.11) [213972]"}
            perm <= Mask[null, valid(Heap[r_1, left])];
        }
        Mask := Mask[null, valid(Heap[r_1, left]):=Mask[null, valid(Heap[r_1, left])] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213973]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@267.3--267.11) [213974]"}
            perm <= Mask[Heap[r_1, left], height_2];
        }
        Mask := Mask[Heap[r_1, left], height_2:=Mask[Heap[r_1, left], height_2] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213975]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@267.3--267.11) [213976]"}
            perm <= Mask[Heap[r_1, left], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left], balanceFactor:=Mask[Heap[r_1, left], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@267.3--267.11) [213977]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213978]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@267.3--267.11) [213979]"}
            perm <= Mask[Heap[r_1, right_1], height_2];
        }
        Mask := Mask[Heap[r_1, right_1], height_2:=Mask[Heap[r_1, right_1], height_2] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213980]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@267.3--267.11) [213981]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213982]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213983]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213984]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@267.3--267.11) [213985]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height_2] == (if (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) then (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of rebalanceRR might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@257.11--257.43) [213986]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRR might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@257.11--257.43) [213987]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@258.11--258.35) [213988]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRR might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@258.11--258.35) [213989]"}
        perm <= Mask[r_1, height_2];
    }
    Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceRR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@259.11--259.35) [213990]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceRR might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@259.11--259.35) [213991]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceRR might not hold. Assertion r.height == old(this.left.height) || r.height == old(this.left.height) + 1 might not hold. (0075_AVLTree.nokeys.vpr@260.11--260.85) [213992]"}
      Heap[r_1, height_2] == oldHeap[oldHeap[this, left], height_2] || Heap[r_1, height_2] == oldHeap[oldHeap[this, left], height_2] + 1;
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@277.12--277.57) [213993]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@277.12--277.57) [213994]"}
          HasDirectPerm(Mask, this, left);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@278.12--278.62) [213995]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@278.12--278.62) [213996]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@278.12--278.62) [213997]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@279.12--279.62) [213998]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@279.12--279.62) [213999]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@279.12--279.62) [214000]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@280.12--280.28) [214001]"}
        HasDirectPerm(Mask, this, right_1);
    assume Heap[this, right_1] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@281.12--281.40) [214002]"}
        HasDirectPerm(Mask, this, right_1);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@282.12--282.45) [214003]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@282.12--282.45) [214004]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@283.12--283.45) [214005]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@283.12--283.45) [214006]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - this.right.height == -2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@284.12--284.72) [214007]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@284.12--284.72) [214008]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@284.12--284.72) [214009]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@284.12--284.72) [214010]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@284.12--284.72) [214011]"}
        HasDirectPerm(Mask, Heap[this, right_1], height_2);
    assume (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - Heap[Heap[this, right_1], height_2] == -2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right.balanceFactor == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@285.12--285.39) [214012]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@285.12--285.39) [214013]"}
        HasDirectPerm(Mask, Heap[this, right_1], balanceFactor);
    assume Heap[Heap[this, right_1], balanceFactor] == 1;
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
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@287.11--287.35) [214014]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height_2:=PostMask[r_1, height_2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@288.11--288.35) [214015]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.right.height)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@289.11--289.45) [214016]"}
        HasDirectPerm(PostMask, r_1, height_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@289.11--289.45) [214017]"}
        HasDirectPerm(oldMask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@289.11--289.45) [214018]"}
        HasDirectPerm(oldMask, oldHeap[this, right_1], height_2);
    assume PostHeap[r_1, height_2] == oldHeap[oldHeap[this, right_1], height_2];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.right), write) -- 0075_AVLTree.nokeys.vpr@291.3--291.38
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@291.3--291.38) [214019]"}
        HasDirectPerm(Mask, this, right_1);
    assume valid#trigger(Heap, valid(Heap[this, right_1]));
    assume Heap[null, valid(Heap[this, right_1])] == CombineFrames(FrameFragment(Heap[Heap[this, right_1], key]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], height_2]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], left]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then Heap[null, valid(Heap[Heap[this, right_1], left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then Heap[null, valid(Heap[Heap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@291.3--291.38) [214022]"}
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
    Mask := Mask[Heap[this, right_1], key:=Mask[Heap[this, right_1], key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [214024]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], left:=Mask[Heap[this, right_1], left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], right_1:=Mask[Heap[this, right_1], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [214027]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, right_1], left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, right_1], left]):=Mask[null, valid(Heap[Heap[this, right_1], left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])], valid(Heap[Heap[this, right_1], left]), Heap[null, valid(Heap[Heap[this, right_1], left])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [214029]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left] != null;
      Mask := Mask[Heap[Heap[this, right_1], left], height_2:=Mask[Heap[Heap[this, right_1], left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [214030]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left] != null;
      Mask := Mask[Heap[Heap[this, right_1], left], balanceFactor:=Mask[Heap[Heap[this, right_1], left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left] != null) {
      assume Heap[Heap[Heap[this, right_1], left], height_2] > 0;
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
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [214032]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], height_2:=Mask[Heap[Heap[this, right_1], right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@291.3--291.38) [214033]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], balanceFactor:=Mask[Heap[Heap[this, right_1], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      assume Heap[Heap[Heap[this, right_1], right_1], height_2] > 0;
    }
    assume Heap[Heap[this, right_1], height_2] == (if (if Heap[Heap[this, right_1], left] == null then 0 else Heap[Heap[Heap[this, right_1], left], height_2]) > (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height_2]) then (if Heap[Heap[this, right_1], left] == null then 0 else Heap[Heap[Heap[this, right_1], left], height_2]) + 1 else (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height_2]) + 1);
    assume Heap[Heap[this, right_1], balanceFactor] == (if Heap[Heap[this, right_1], left] == null then 0 else Heap[Heap[Heap[this, right_1], left], height_2]) - (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height_2]);
    assume Heap[Heap[this, right_1], balanceFactor] <= 1;
    assume Heap[Heap[this, right_1], balanceFactor] >= -1;
    assume Heap[Heap[this, right_1], height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.right.left -- 0075_AVLTree.nokeys.vpr@292.3--292.23
    
    // -- Check definedness of this.right.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@292.3--292.23) [214034]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.left (0075_AVLTree.nokeys.vpr@292.3--292.23) [214035]"}
        HasDirectPerm(Mask, Heap[this, right_1], left);
    r_1 := Heap[Heap[this, right_1], left];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(r), write) -- 0075_AVLTree.nokeys.vpr@293.3--293.29
    assume valid#trigger(Heap, valid(r_1));
    assume Heap[null, valid(r_1)] == CombineFrames(FrameFragment(Heap[r_1, key]), CombineFrames(FrameFragment(Heap[r_1, height_2]), CombineFrames(FrameFragment(Heap[r_1, left]), CombineFrames(FrameFragment(Heap[r_1, right_1]), CombineFrames(FrameFragment(Heap[r_1, balanceFactor]), CombineFrames(FrameFragment((if Heap[r_1, left] != null then Heap[null, valid(Heap[r_1, left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left] != null then FrameFragment(Heap[Heap[r_1, left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left] != null then FrameFragment(Heap[Heap[r_1, left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then Heap[null, valid(Heap[r_1, right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[r_1, right_1] != null then FrameFragment(Heap[Heap[r_1, right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[r_1, right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(r) might fail. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@293.3--293.29) [214038]"}
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
    Mask := Mask[r_1, key:=Mask[r_1, key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [214040]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, height_2:=Mask[r_1, height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, left:=Mask[r_1, left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, right_1:=Mask[r_1, right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [214043]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[r_1, left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[r_1, left]):=Mask[null, valid(Heap[r_1, left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(r_1), Heap[null, valid(r_1)], valid(Heap[r_1, left]), Heap[null, valid(Heap[r_1, left])]);
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [214045]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left] != null;
      Mask := Mask[Heap[r_1, left], height_2:=Mask[Heap[r_1, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [214046]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, left] != null;
      Mask := Mask[Heap[r_1, left], balanceFactor:=Mask[Heap[r_1, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, left] != null) {
      assume Heap[Heap[r_1, left], height_2] > 0;
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
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [214048]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], height_2:=Mask[Heap[r_1, right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(r) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@293.3--293.29) [214049]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[r_1, right_1] != null;
      Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[r_1, right_1] != null) {
      assume Heap[Heap[r_1, right_1], height_2] > 0;
    }
    assume Heap[r_1, height_2] == (if (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) > (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) then (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) + 1 else (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) + 1);
    assume Heap[r_1, balanceFactor] == (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]);
    assume Heap[r_1, balanceFactor] <= 1;
    assume Heap[r_1, balanceFactor] >= -1;
    assume Heap[r_1, height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right.left := r.right -- 0075_AVLTree.nokeys.vpr@294.3--294.29
    
    // -- Check definedness of this.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@294.3--294.29) [214050]"}
        HasDirectPerm(Mask, this, right_1);
    
    // -- Check definedness of r.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@294.3--294.29) [214051]"}
        HasDirectPerm(Mask, r_1, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right.left (0075_AVLTree.nokeys.vpr@294.3--294.29) [214052]"}
      FullPerm == Mask[Heap[this, right_1], left];
    Heap := Heap[Heap[this, right_1], left:=Heap[r_1, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this.right) -- 0075_AVLTree.nokeys.vpr@295.3--295.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of this.right
      assert {:msg "  Method call might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@295.3--295.20) [214053]"}
        HasDirectPerm(Mask, this, right_1);
    arg_this := Heap[this, right_1];
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.key (0075_AVLTree.nokeys.vpr@295.3--295.20) [214054]"}
          perm <= Mask[arg_this, key];
      }
      Mask := Mask[arg_this, key:=Mask[arg_this, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@295.3--295.20) [214055]"}
          perm <= Mask[arg_this, height_2];
      }
      Mask := Mask[arg_this, height_2:=Mask[arg_this, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.left (0075_AVLTree.nokeys.vpr@295.3--295.20) [214056]"}
          perm <= Mask[arg_this, left];
      }
      Mask := Mask[arg_this, left:=Mask[arg_this, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.right (0075_AVLTree.nokeys.vpr@295.3--295.20) [214057]"}
          perm <= Mask[arg_this, right_1];
      }
      Mask := Mask[arg_this, right_1:=Mask[arg_this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@295.3--295.20) [214058]"}
          perm <= Mask[arg_this, balanceFactor];
      }
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] - perm];
      if (Heap[arg_this, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right.left) (0075_AVLTree.nokeys.vpr@295.3--295.20) [214059]"}
            perm <= Mask[null, valid(Heap[arg_this, left])];
        }
        Mask := Mask[null, valid(Heap[arg_this, left]):=Mask[null, valid(Heap[arg_this, left])] - perm];
      }
      if (Heap[arg_this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214060]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.left.height (0075_AVLTree.nokeys.vpr@295.3--295.20) [214061]"}
            perm <= Mask[Heap[arg_this, left], height_2];
        }
        Mask := Mask[Heap[arg_this, left], height_2:=Mask[Heap[arg_this, left], height_2] - perm];
      }
      if (Heap[arg_this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214062]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.left.balanceFactor (0075_AVLTree.nokeys.vpr@295.3--295.20) [214063]"}
            perm <= Mask[Heap[arg_this, left], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, left], balanceFactor:=Mask[Heap[arg_this, left], balanceFactor] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right.right) (0075_AVLTree.nokeys.vpr@295.3--295.20) [214064]"}
            perm <= Mask[null, valid(Heap[arg_this, right_1])];
        }
        Mask := Mask[null, valid(Heap[arg_this, right_1]):=Mask[null, valid(Heap[arg_this, right_1])] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214065]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.right.height (0075_AVLTree.nokeys.vpr@295.3--295.20) [214066]"}
            perm <= Mask[Heap[arg_this, right_1], height_2];
        }
        Mask := Mask[Heap[arg_this, right_1], height_2:=Mask[Heap[arg_this, right_1], height_2] - perm];
      }
      if (Heap[arg_this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214067]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.right.balanceFactor (0075_AVLTree.nokeys.vpr@295.3--295.20) [214068]"}
            perm <= Mask[Heap[arg_this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[arg_this, right_1], balanceFactor:=Mask[Heap[arg_this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.right.left == null ? 0 : this.right.left.height) - (this.right.right == null ? 0 : this.right.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214069]"}
        (if Heap[arg_this, left] == null then 0 else Heap[Heap[arg_this, left], height_2]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.right.left == null ? 0 : this.right.left.height) - (this.right.right == null ? 0 : this.right.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214070]"}
        (if Heap[arg_this, left] == null then 0 else Heap[Heap[arg_this, left], height_2]) - (if Heap[arg_this, right_1] == null then 0 else Heap[Heap[arg_this, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214071]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, height_2:=Mask[arg_this, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@295.3--295.20) [214072]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> arg_this != null;
      Mask := Mask[arg_this, balanceFactor:=Mask[arg_this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[arg_this, height_2] == (if (if PreCallHeap[arg_this, left] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left], height_2]) > (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height_2]) then (if PreCallHeap[arg_this, left] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left], height_2]) + 1 else (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height_2]) + 1);
      assume Heap[arg_this, balanceFactor] == (if PreCallHeap[arg_this, left] == null then 0 else PreCallHeap[PreCallHeap[arg_this, left], height_2]) - (if PreCallHeap[arg_this, right_1] == null then 0 else PreCallHeap[PreCallHeap[arg_this, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.right := this.right -- 0075_AVLTree.nokeys.vpr@296.3--296.27
    
    // -- Check definedness of this.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@296.3--296.27) [214073]"}
        HasDirectPerm(Mask, this, right_1);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@296.3--296.27) [214074]"}
      FullPerm == Mask[r_1, right_1];
    Heap := Heap[r_1, right_1:=Heap[this, right_1]];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right := r.left -- 0075_AVLTree.nokeys.vpr@297.3--297.28
    
    // -- Check definedness of r.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@297.3--297.28) [214075]"}
        HasDirectPerm(Mask, r_1, left);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@297.3--297.28) [214076]"}
      FullPerm == Mask[this, right_1];
    Heap := Heap[this, right_1:=Heap[r_1, left]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@298.3--298.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@298.3--298.14) [214077]"}
          perm <= Mask[this, key];
      }
      Mask := Mask[this, key:=Mask[this, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@298.3--298.14) [214078]"}
          perm <= Mask[this, height_2];
      }
      Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@298.3--298.14) [214079]"}
          perm <= Mask[this, left];
      }
      Mask := Mask[this, left:=Mask[this, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@298.3--298.14) [214080]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@298.3--298.14) [214081]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@298.3--298.14) [214082]"}
            perm <= Mask[null, valid(Heap[this, left])];
        }
        Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214083]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@298.3--298.14) [214084]"}
            perm <= Mask[Heap[this, left], height_2];
        }
        Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214085]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@298.3--298.14) [214086]"}
            perm <= Mask[Heap[this, left], balanceFactor];
        }
        Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@298.3--298.14) [214087]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214088]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@298.3--298.14) [214089]"}
            perm <= Mask[Heap[this, right_1], height_2];
        }
        Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214090]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@298.3--298.14) [214091]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214092]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214093]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214094]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@298.3--298.14) [214095]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height_2] == (if (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) then (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.left := this -- 0075_AVLTree.nokeys.vpr@299.3--299.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@299.3--299.21) [214096]"}
      FullPerm == Mask[r_1, left];
    Heap := Heap[r_1, left:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@300.3--300.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@300.3--300.11) [214097]"}
          perm <= Mask[r_1, key];
      }
      Mask := Mask[r_1, key:=Mask[r_1, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@300.3--300.11) [214098]"}
          perm <= Mask[r_1, height_2];
      }
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@300.3--300.11) [214099]"}
          perm <= Mask[r_1, left];
      }
      Mask := Mask[r_1, left:=Mask[r_1, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@300.3--300.11) [214100]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@300.3--300.11) [214101]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@300.3--300.11) [214102]"}
            perm <= Mask[null, valid(Heap[r_1, left])];
        }
        Mask := Mask[null, valid(Heap[r_1, left]):=Mask[null, valid(Heap[r_1, left])] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214103]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@300.3--300.11) [214104]"}
            perm <= Mask[Heap[r_1, left], height_2];
        }
        Mask := Mask[Heap[r_1, left], height_2:=Mask[Heap[r_1, left], height_2] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214105]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@300.3--300.11) [214106]"}
            perm <= Mask[Heap[r_1, left], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left], balanceFactor:=Mask[Heap[r_1, left], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@300.3--300.11) [214107]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214108]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@300.3--300.11) [214109]"}
            perm <= Mask[Heap[r_1, right_1], height_2];
        }
        Mask := Mask[Heap[r_1, right_1], height_2:=Mask[Heap[r_1, right_1], height_2] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214110]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@300.3--300.11) [214111]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214112]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214113]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214114]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@300.3--300.11) [214115]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height_2] == (if (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) then (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of rebalanceLR might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@286.11--286.43) [214116]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLR might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@286.11--286.43) [214117]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@287.11--287.35) [214118]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLR might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@287.11--287.35) [214119]"}
        perm <= Mask[r_1, height_2];
    }
    Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLR might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@288.11--288.35) [214120]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLR might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@288.11--288.35) [214121]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceLR might not hold. Assertion r.height == old(this.right.height) might not hold. (0075_AVLTree.nokeys.vpr@289.11--289.45) [214122]"}
      Heap[r_1, height_2] == oldHeap[oldHeap[this, right_1], height_2];
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, key:=Mask[this, key] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, left:=Mask[this, left] + perm];
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@309.12--309.57) [214123]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(valid(this.left), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@309.12--309.57) [214124]"}
          HasDirectPerm(Mask, this, left);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@310.12--310.62) [214125]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.height, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@310.12--310.62) [214126]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@310.12--310.62) [214127]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.left != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@311.12--311.62) [214128]"}
        HasDirectPerm(Mask, this, left);
    if (Heap[this, left] != null) {
      
      // -- Check definedness of acc(this.left.balanceFactor, 1 / 2)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@311.12--311.62) [214129]"}
          HasDirectPerm(Mask, this, left);
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@311.12--311.62) [214130]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[this, left] != null;
      Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@312.12--312.28) [214131]"}
        HasDirectPerm(Mask, this, right_1);
    assume Heap[this, right_1] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@313.12--313.40) [214132]"}
        HasDirectPerm(Mask, this, right_1);
    perm := FullPerm;
    Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.height, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@314.12--314.45) [214133]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@314.12--314.45) [214134]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.right.balanceFactor, 1 / 2)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@315.12--315.45) [214135]"}
        HasDirectPerm(Mask, this, right_1);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@315.12--315.45) [214136]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (this.left == null ? 0 : this.left.height) - this.right.height == -2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@316.12--316.72) [214137]"}
        HasDirectPerm(Mask, this, left);
      if (Heap[this, left] == null) {
      } else {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@316.12--316.72) [214138]"}
          HasDirectPerm(Mask, this, left);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@316.12--316.72) [214139]"}
          HasDirectPerm(Mask, Heap[this, left], height_2);
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@316.12--316.72) [214140]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@316.12--316.72) [214141]"}
        HasDirectPerm(Mask, Heap[this, right_1], height_2);
    assume (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - Heap[Heap[this, right_1], height_2] == -2;
    assume state(Heap, Mask);
    
    // -- Check definedness of this.right.balanceFactor <= 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@317.12--317.39) [214142]"}
        HasDirectPerm(Mask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@317.12--317.39) [214143]"}
        HasDirectPerm(Mask, Heap[this, right_1], balanceFactor);
    assume Heap[Heap[this, right_1], balanceFactor] <= 0;
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
    assume r_1 != null;
    perm := FullPerm;
    PostMask := PostMask[null, valid(r_1):=PostMask[null, valid(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@319.11--319.35) [214144]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, height_2:=PostMask[r_1, height_2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@320.11--320.35) [214145]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> r_1 != null;
    PostMask := PostMask[r_1, balanceFactor:=PostMask[r_1, balanceFactor] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of r.height == old(this.right.height) || r.height == old(this.right.height) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [214146]"}
        HasDirectPerm(PostMask, r_1, height_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@321.11--321.87) [214147]"}
        HasDirectPerm(oldMask, this, right_1);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [214148]"}
        HasDirectPerm(oldMask, oldHeap[this, right_1], height_2);
      if (!(PostHeap[r_1, height_2] == oldHeap[oldHeap[this, right_1], height_2])) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [214149]"}
          HasDirectPerm(PostMask, r_1, height_2);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@321.11--321.87) [214150]"}
          HasDirectPerm(oldMask, this, right_1);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@321.11--321.87) [214151]"}
          HasDirectPerm(oldMask, oldHeap[this, right_1], height_2);
      }
    assume PostHeap[r_1, height_2] == oldHeap[oldHeap[this, right_1], height_2] || PostHeap[r_1, height_2] == oldHeap[oldHeap[this, right_1], height_2] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this.right), write) -- 0075_AVLTree.nokeys.vpr@323.3--323.38
    
    // -- Check definedness of acc(valid(this.right), write)
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@323.3--323.38) [214152]"}
        HasDirectPerm(Mask, this, right_1);
    assume valid#trigger(Heap, valid(Heap[this, right_1]));
    assume Heap[null, valid(Heap[this, right_1])] == CombineFrames(FrameFragment(Heap[Heap[this, right_1], key]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], height_2]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], left]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], right_1]), CombineFrames(FrameFragment(Heap[Heap[this, right_1], balanceFactor]), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then Heap[null, valid(Heap[Heap[this, right_1], left])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then FrameFragment(Heap[Heap[Heap[this, right_1], left], balanceFactor]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], left] != null then EmptyFrame else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then Heap[null, valid(Heap[Heap[this, right_1], right_1])] else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], height_2]) else EmptyFrame)), CombineFrames(FrameFragment((if Heap[Heap[this, right_1], right_1] != null then FrameFragment(Heap[Heap[Heap[this, right_1], right_1], balanceFactor]) else EmptyFrame)), FrameFragment((if Heap[Heap[this, right_1], right_1] != null then EmptyFrame else EmptyFrame))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.right) might fail. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@323.3--323.38) [214155]"}
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
    Mask := Mask[Heap[this, right_1], key:=Mask[Heap[this, right_1], key] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [214157]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], left:=Mask[Heap[this, right_1], left] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], right_1:=Mask[Heap[this, right_1], right_1] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [214160]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[this, right_1] != null;
    Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, right_1], left] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, right_1], left]):=Mask[null, valid(Heap[Heap[this, right_1], left])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, right_1]), Heap[null, valid(Heap[this, right_1])], valid(Heap[Heap[this, right_1], left]), Heap[null, valid(Heap[Heap[this, right_1], left])]);
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [214162]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left] != null;
      Mask := Mask[Heap[Heap[this, right_1], left], height_2:=Mask[Heap[Heap[this, right_1], left], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [214163]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], left] != null;
      Mask := Mask[Heap[Heap[this, right_1], left], balanceFactor:=Mask[Heap[Heap[this, right_1], left], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], left] != null) {
      assume Heap[Heap[Heap[this, right_1], left], height_2] > 0;
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
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [214165]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], height_2:=Mask[Heap[Heap[this, right_1], right_1], height_2] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      perm := 1 / 2;
      assert {:msg "  Unfolding valid(this.right) might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@323.3--323.38) [214166]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> Heap[Heap[this, right_1], right_1] != null;
      Mask := Mask[Heap[Heap[this, right_1], right_1], balanceFactor:=Mask[Heap[Heap[this, right_1], right_1], balanceFactor] + perm];
      assume state(Heap, Mask);
    }
    if (Heap[Heap[this, right_1], right_1] != null) {
      assume Heap[Heap[Heap[this, right_1], right_1], height_2] > 0;
    }
    assume Heap[Heap[this, right_1], height_2] == (if (if Heap[Heap[this, right_1], left] == null then 0 else Heap[Heap[Heap[this, right_1], left], height_2]) > (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height_2]) then (if Heap[Heap[this, right_1], left] == null then 0 else Heap[Heap[Heap[this, right_1], left], height_2]) + 1 else (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height_2]) + 1);
    assume Heap[Heap[this, right_1], balanceFactor] == (if Heap[Heap[this, right_1], left] == null then 0 else Heap[Heap[Heap[this, right_1], left], height_2]) - (if Heap[Heap[this, right_1], right_1] == null then 0 else Heap[Heap[Heap[this, right_1], right_1], height_2]);
    assume Heap[Heap[this, right_1], balanceFactor] <= 1;
    assume Heap[Heap[this, right_1], balanceFactor] >= -1;
    assume Heap[Heap[this, right_1], height_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r := this.right -- 0075_AVLTree.nokeys.vpr@324.3--324.24
    
    // -- Check definedness of this.right
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@324.3--324.24) [214167]"}
        HasDirectPerm(Mask, this, right_1);
    r_1 := Heap[this, right_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.right := r.left -- 0075_AVLTree.nokeys.vpr@325.3--325.26
    
    // -- Check definedness of r.left
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@325.3--325.26) [214168]"}
        HasDirectPerm(Mask, r_1, left);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@325.3--325.26) [214169]"}
      FullPerm == Mask[this, right_1];
    Heap := Heap[this, right_1:=Heap[r_1, left]];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(this) -- 0075_AVLTree.nokeys.vpr@326.3--326.14
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.key (0075_AVLTree.nokeys.vpr@326.3--326.14) [214170]"}
          perm <= Mask[this, key];
      }
      Mask := Mask[this, key:=Mask[this, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.height (0075_AVLTree.nokeys.vpr@326.3--326.14) [214171]"}
          perm <= Mask[this, height_2];
      }
      Mask := Mask[this, height_2:=Mask[this, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left (0075_AVLTree.nokeys.vpr@326.3--326.14) [214172]"}
          perm <= Mask[this, left];
      }
      Mask := Mask[this, left:=Mask[this, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right (0075_AVLTree.nokeys.vpr@326.3--326.14) [214173]"}
          perm <= Mask[this, right_1];
      }
      Mask := Mask[this, right_1:=Mask[this, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.balanceFactor (0075_AVLTree.nokeys.vpr@326.3--326.14) [214174]"}
          perm <= Mask[this, balanceFactor];
      }
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] - perm];
      if (Heap[this, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.left) (0075_AVLTree.nokeys.vpr@326.3--326.14) [214175]"}
            perm <= Mask[null, valid(Heap[this, left])];
        }
        Mask := Mask[null, valid(Heap[this, left]):=Mask[null, valid(Heap[this, left])] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214176]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.height (0075_AVLTree.nokeys.vpr@326.3--326.14) [214177]"}
            perm <= Mask[Heap[this, left], height_2];
        }
        Mask := Mask[Heap[this, left], height_2:=Mask[Heap[this, left], height_2] - perm];
      }
      if (Heap[this, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214178]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.left.balanceFactor (0075_AVLTree.nokeys.vpr@326.3--326.14) [214179]"}
            perm <= Mask[Heap[this, left], balanceFactor];
        }
        Mask := Mask[Heap[this, left], balanceFactor:=Mask[Heap[this, left], balanceFactor] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(this.right) (0075_AVLTree.nokeys.vpr@326.3--326.14) [214180]"}
            perm <= Mask[null, valid(Heap[this, right_1])];
        }
        Mask := Mask[null, valid(Heap[this, right_1]):=Mask[null, valid(Heap[this, right_1])] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214181]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.height (0075_AVLTree.nokeys.vpr@326.3--326.14) [214182]"}
            perm <= Mask[Heap[this, right_1], height_2];
        }
        Mask := Mask[Heap[this, right_1], height_2:=Mask[Heap[this, right_1], height_2] - perm];
      }
      if (Heap[this, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214183]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access this.right.balanceFactor (0075_AVLTree.nokeys.vpr@326.3--326.14) [214184]"}
            perm <= Mask[Heap[this, right_1], balanceFactor];
        }
        Mask := Mask[Heap[this, right_1], balanceFactor:=Mask[Heap[this, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214185]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (this.left == null ? 0 : this.left.height) - (this.right == null ? 0 : this.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214186]"}
        (if Heap[this, left] == null then 0 else Heap[Heap[this, left], height_2]) - (if Heap[this, right_1] == null then 0 else Heap[Heap[this, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214187]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, height_2:=Mask[this, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@326.3--326.14) [214188]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      Mask := Mask[this, balanceFactor:=Mask[this, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[this, height_2] == (if (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) > (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) then (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) + 1 else (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]) + 1);
      assume Heap[this, balanceFactor] == (if PreCallHeap[this, left] == null then 0 else PreCallHeap[PreCallHeap[this, left], height_2]) - (if PreCallHeap[this, right_1] == null then 0 else PreCallHeap[PreCallHeap[this, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: r.left := this -- 0075_AVLTree.nokeys.vpr@327.3--327.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@327.3--327.17) [214189]"}
      FullPerm == Mask[r_1, left];
    Heap := Heap[r_1, left:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: close(r) -- 0075_AVLTree.nokeys.vpr@328.3--328.11
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.key (0075_AVLTree.nokeys.vpr@328.3--328.11) [214190]"}
          perm <= Mask[r_1, key];
      }
      Mask := Mask[r_1, key:=Mask[r_1, key] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@328.3--328.11) [214191]"}
          perm <= Mask[r_1, height_2];
      }
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left (0075_AVLTree.nokeys.vpr@328.3--328.11) [214192]"}
          perm <= Mask[r_1, left];
      }
      Mask := Mask[r_1, left:=Mask[r_1, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right (0075_AVLTree.nokeys.vpr@328.3--328.11) [214193]"}
          perm <= Mask[r_1, right_1];
      }
      Mask := Mask[r_1, right_1:=Mask[r_1, right_1] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@328.3--328.11) [214194]"}
          perm <= Mask[r_1, balanceFactor];
      }
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
      if (Heap[r_1, left] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.left) (0075_AVLTree.nokeys.vpr@328.3--328.11) [214195]"}
            perm <= Mask[null, valid(Heap[r_1, left])];
        }
        Mask := Mask[null, valid(Heap[r_1, left]):=Mask[null, valid(Heap[r_1, left])] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214196]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.height (0075_AVLTree.nokeys.vpr@328.3--328.11) [214197]"}
            perm <= Mask[Heap[r_1, left], height_2];
        }
        Mask := Mask[Heap[r_1, left], height_2:=Mask[Heap[r_1, left], height_2] - perm];
      }
      if (Heap[r_1, left] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214198]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.left.balanceFactor (0075_AVLTree.nokeys.vpr@328.3--328.11) [214199]"}
            perm <= Mask[Heap[r_1, left], balanceFactor];
        }
        Mask := Mask[Heap[r_1, left], balanceFactor:=Mask[Heap[r_1, left], balanceFactor] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access valid(r.right) (0075_AVLTree.nokeys.vpr@328.3--328.11) [214200]"}
            perm <= Mask[null, valid(Heap[r_1, right_1])];
        }
        Mask := Mask[null, valid(Heap[r_1, right_1]):=Mask[null, valid(Heap[r_1, right_1])] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214201]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.height (0075_AVLTree.nokeys.vpr@328.3--328.11) [214202]"}
            perm <= Mask[Heap[r_1, right_1], height_2];
        }
        Mask := Mask[Heap[r_1, right_1], height_2:=Mask[Heap[r_1, right_1], height_2] - perm];
      }
      if (Heap[r_1, right_1] != null) {
        perm := 1 / 2;
        assert {:msg "  The precondition of method close might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214203]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method close might not hold. There might be insufficient permission to access r.right.balanceFactor (0075_AVLTree.nokeys.vpr@328.3--328.11) [214204]"}
            perm <= Mask[Heap[r_1, right_1], balanceFactor];
        }
        Mask := Mask[Heap[r_1, right_1], balanceFactor:=Mask[Heap[r_1, right_1], balanceFactor] - perm];
      }
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) <= 1 might not hold. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214205]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) <= 1;
      assert {:msg "  The precondition of method close might not hold. Assertion (r.left == null ? 0 : r.left.height) - (r.right == null ? 0 : r.right.height) >= -1 might not hold. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214206]"}
        (if Heap[r_1, left] == null then 0 else Heap[Heap[r_1, left], height_2]) - (if Heap[r_1, right_1] == null then 0 else Heap[Heap[r_1, right_1], height_2]) >= -1;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214207]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, height_2:=Mask[r_1, height_2] + perm];
      assume state(Heap, Mask);
      perm := 1 / 2;
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@328.3--328.11) [214208]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> r_1 != null;
      Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, height_2] == (if (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) > (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) then (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) + 1 else (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]) + 1);
      assume Heap[r_1, balanceFactor] == (if PreCallHeap[r_1, left] == null then 0 else PreCallHeap[PreCallHeap[r_1, left], height_2]) - (if PreCallHeap[r_1, right_1] == null then 0 else PreCallHeap[PreCallHeap[r_1, right_1], height_2]);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of rebalanceLL might not hold. Assertion r != null might not hold. (0075_AVLTree.nokeys.vpr@318.11--318.43) [214209]"}
      r_1 != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLL might not hold. There might be insufficient permission to access valid(r) (0075_AVLTree.nokeys.vpr@318.11--318.43) [214210]"}
        perm <= Mask[null, valid(r_1)];
    }
    Mask := Mask[null, valid(r_1):=Mask[null, valid(r_1)] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@319.11--319.35) [214211]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLL might not hold. There might be insufficient permission to access r.height (0075_AVLTree.nokeys.vpr@319.11--319.35) [214212]"}
        perm <= Mask[r_1, height_2];
    }
    Mask := Mask[r_1, height_2:=Mask[r_1, height_2] - perm];
    perm := 1 / 2;
    assert {:msg "  Postcondition of rebalanceLL might not hold. Fraction 1 / 2 might be negative. (0075_AVLTree.nokeys.vpr@320.11--320.35) [214213]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of rebalanceLL might not hold. There might be insufficient permission to access r.balanceFactor (0075_AVLTree.nokeys.vpr@320.11--320.35) [214214]"}
        perm <= Mask[r_1, balanceFactor];
    }
    Mask := Mask[r_1, balanceFactor:=Mask[r_1, balanceFactor] - perm];
    assert {:msg "  Postcondition of rebalanceLL might not hold. Assertion r.height == old(this.right.height) || r.height == old(this.right.height) + 1 might not hold. (0075_AVLTree.nokeys.vpr@321.11--321.87) [214215]"}
      Heap[r_1, height_2] == oldHeap[oldHeap[this, right_1], height_2] || Heap[r_1, height_2] == oldHeap[oldHeap[this, right_1], height_2] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}