// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:15:22
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0228b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0228b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(j_1: int): bool;
function  neverTriggered2(j_3_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: getptr
// - height 0: cond
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
// Translation of domain Ptr
// ==================================================

// The type for domain Ptr
type PtrDomainType;

// Translation of domain function loc
function  loc(a_3: PtrDomainType, i_79: int): Ref;

// Translation of domain axiom loc_inject
axiom (forall a_2: PtrDomainType, i: int, j_9: int ::
  { (loc(a_2, i): Ref), (loc(a_2, j_9): Ref) }
  i >= 0 && (j_9 >= 0 && i != j_9) ==> (loc(a_2, i): Ref) != (loc(a_2, j_9): Ref)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique ptr_1: Field NormalField PtrDomainType;
axiom !IsPredicateField(ptr_1);
axiom !IsWandField(ptr_1);
const unique len_2: Field NormalField int;
axiom !IsPredicateField(len_2);
axiom !IsWandField(len_2);
const unique w_12: Field NormalField Ref;
axiom !IsPredicateField(w_12);
axiom !IsWandField(w_12);

// ==================================================
// Translation of function cond
// ==================================================

// Uninterpreted function definitions
function  cond(Heap: HeapType, this: Ref, j_9: int): bool;
function  cond'(Heap: HeapType, this: Ref, j_9: int): bool;
axiom (forall Heap: HeapType, this: Ref, j_9: int ::
  { cond(Heap, this, j_9) }
  cond(Heap, this, j_9) == cond'(Heap, this, j_9) && dummyFunction(cond#triggerStateless(this, j_9))
);
axiom (forall Heap: HeapType, this: Ref, j_9: int ::
  { cond'(Heap, this, j_9) }
  dummyFunction(cond#triggerStateless(this, j_9))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, j_9: int ::
  { state(Heap, Mask), cond(Heap, this, j_9) } { state(Heap, Mask), cond#triggerStateless(this, j_9), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> cond(Heap, this, j_9) == (0 <= j_9 && j_9 < Heap[this, len_2])
);

// Framing axioms
function  cond#frame(frame: FrameType, this: Ref, j_9: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, j_9: int ::
  { state(Heap, Mask), cond'(Heap, this, j_9) }
  state(Heap, Mask) ==> cond'(Heap, this, j_9) == cond#frame(Heap[null, valid(this)], this, j_9)
);

// Trigger function (controlling recursive postconditions)
function  cond#trigger(frame: FrameType, this: Ref, j_9: int): bool;

// State-independent trigger function
function  cond#triggerStateless(this: Ref, j_9: int): bool;

// Check contract well-formedness and postcondition
procedure cond#definedness(this: Ref, j_9: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 0 <= j && j < (unfolding acc(valid(this), write) in this.len)
      if (0 <= j_9) {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume valid#trigger(UnfoldingHeap, valid(this));
        assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, ptr_1]), FrameFragment(UnfoldingHeap[this, len_2]));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (0228b.vpr@4.1--6.59) [202789]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
        perm := FullPerm;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, ptr_1:=UnfoldingMask[this, ptr_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, len_2:=UnfoldingMask[this, len_2] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.len (0228b.vpr@4.1--6.59) [202790]"}
          HasDirectPerm(UnfoldingMask, this, len_2);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, ptr_1:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, len_2:=true]];
          assume state(Heap, Mask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, ptr_1:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, len_2:=true]];
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := 0 <= j_9 && j_9 < Heap[this, len_2];
}

// ==================================================
// Translation of function getptr
// ==================================================

// Uninterpreted function definitions
function  getptr(Heap: HeapType, this: Ref): PtrDomainType;
function  getptr'(Heap: HeapType, this: Ref): PtrDomainType;
axiom (forall Heap: HeapType, this: Ref ::
  { getptr(Heap, this) }
  getptr(Heap, this) == getptr'(Heap, this) && dummyFunction(getptr#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { getptr'(Heap, this) }
  dummyFunction(getptr#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getptr(Heap, this) } { state(Heap, Mask), getptr#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> getptr(Heap, this) == Heap[this, ptr_1]
);

// Framing axioms
function  getptr#frame(frame: FrameType, this: Ref): PtrDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getptr'(Heap, this) }
  state(Heap, Mask) ==> getptr'(Heap, this) == getptr#frame(Heap[null, valid(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  getptr#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  getptr#triggerStateless(this: Ref): PtrDomainType;

// Check contract well-formedness and postcondition
procedure getptr#definedness(this: Ref) returns (Result: PtrDomainType)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), write) in this.ptr)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, ptr_1]), FrameFragment(UnfoldingHeap[this, len_2]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (0228b.vpr@10.1--12.43) [202791]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, ptr_1:=UnfoldingMask[this, ptr_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, len_2:=UnfoldingMask[this, len_2] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.ptr (0228b.vpr@10.1--12.43) [202792]"}
        HasDirectPerm(UnfoldingMask, this, ptr_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, ptr_1:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, len_2:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, ptr_1];
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
  getPredWandId(valid(this)) == 0
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
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, ptr_1:=Mask[this, ptr_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, len_2:=Mask[this, len_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method not_ok
// ==================================================

procedure not_ok(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var j_5: int;
  var QPMask: MaskType;
  var j: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { cond(this, j) } { loc(getptr(this), j) } cond(this, j) ==> acc(loc(getptr(this), j).w, write))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function cond might not hold. There might be insufficient permission to access valid(this) (0228b.vpr@22.29--22.42) [202793]"}
            NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (cond(Heap, this, j_5)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function getptr might not hold. There might be insufficient permission to access valid(this) (0228b.vpr@22.55--22.67) [202794]"}
              NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(getptr(this), j).w might not be injective. (0228b.vpr@22.12--22.74) [202795]"}
      (forall j_1: int, j_1_1: int ::
      
      (((j_1 != j_1_1 && cond(Heap, this, j_1)) && cond(Heap, this, j_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(getptr(Heap, this), j_1): Ref) != (loc(getptr(Heap, this), j_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { (loc(getptr#frame(Heap[null, valid(this)], this), j_1): Ref) } { cond#frame(Heap[null, valid(this)], this, j_1) } { (loc(getptr#frame(Heap[null, valid(this)], this), j_1): Ref) }
        cond(Heap, this, j_1) && NoPerm < FullPerm ==> qpRange1((loc(getptr(Heap, this), j_1): Ref)) && invRecv1((loc(getptr(Heap, this), j_1): Ref)) == j_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (cond(Heap, this, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (loc(getptr(Heap, this), invRecv1(o_4)): Ref) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_1: int ::
        { (loc(getptr#frame(Heap[null, valid(this)], this), j_1): Ref) } { cond#frame(Heap[null, valid(this)], this, j_1) } { (loc(getptr#frame(Heap[null, valid(this)], this), j_1): Ref) }
        cond(Heap, this, j_1) ==> (loc(getptr(Heap, this), j_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, w_12] }
        ((cond(Heap, this, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> (loc(getptr(Heap, this), invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, w_12] == Mask[o_4, w_12] + FullPerm) && (!((cond(Heap, this, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, w_12] == Mask[o_4, w_12])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != w_12 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { cond(this, j) } { loc(getptr(this), j) } cond(this, j) ==> acc(loc(getptr(this), j).w.w, write))
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          assert {:msg "  Precondition of function cond might not hold. There might be insufficient permission to access valid(this) (0228b.vpr@24.29--24.42) [202796]"}
            NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (cond(Heap, this, j)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function getptr might not hold. There might be insufficient permission to access valid(this) (0228b.vpr@24.55--24.67) [202797]"}
              NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(getptr(this), j).w (0228b.vpr@24.12--24.76) [202798]"}
            HasDirectPerm(Mask, (loc(getptr(Heap, this), j): Ref), w_12);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(getptr(this), j).w.w might not be injective. (0228b.vpr@24.12--24.76) [202799]"}
      (forall j_3_1: int, j_3_2: int ::
      
      (((j_3_1 != j_3_2 && cond(Heap, this, j_3_1)) && cond(Heap, this, j_3_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[(loc(getptr(Heap, this), j_3_1): Ref), w_12] != Heap[(loc(getptr(Heap, this), j_3_2): Ref), w_12]
    );
    
    // -- Define Inverse Function
      assume (forall j_3_1: int ::
        { Heap[(loc(getptr#frame(Heap[null, valid(this)], this), j_3_1): Ref), w_12] } { cond#frame(Heap[null, valid(this)], this, j_3_1) } { (loc(getptr#frame(Heap[null, valid(this)], this), j_3_1): Ref) }
        cond(Heap, this, j_3_1) && NoPerm < FullPerm ==> qpRange2(Heap[(loc(getptr(Heap, this), j_3_1): Ref), w_12]) && invRecv2(Heap[(loc(getptr(Heap, this), j_3_1): Ref), w_12]) == j_3_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (cond(Heap, this, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> Heap[(loc(getptr(Heap, this), invRecv2(o_4)): Ref), w_12] == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall j_3_1: int ::
        { Heap[(loc(getptr#frame(Heap[null, valid(this)], this), j_3_1): Ref), w_12] } { cond#frame(Heap[null, valid(this)], this, j_3_1) } { (loc(getptr#frame(Heap[null, valid(this)], this), j_3_1): Ref) }
        cond(Heap, this, j_3_1) ==> Heap[(loc(getptr(Heap, this), j_3_1): Ref), w_12] != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, w_12] }
        ((cond(Heap, this, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> Heap[(loc(getptr(Heap, this), invRecv2(o_4)): Ref), w_12] == o_4) && QPMask[o_4, w_12] == Mask[o_4, w_12] + FullPerm) && (!((cond(Heap, this, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, w_12] == Mask[o_4, w_12])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != w_12 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
}