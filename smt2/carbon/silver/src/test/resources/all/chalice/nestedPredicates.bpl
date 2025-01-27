// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:25:28
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/nestedPredicates.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/nestedPredicates-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_98: Ref, f_132: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_98, f_132] }
  Heap[o_98, $allocated] ==> Heap[Heap[o_98, f_132], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_100: Ref, f_133: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_100, f_133] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_100, f_133) ==> Heap[o_100, f_133] == ExhaleHeap[o_100, f_133]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_43), ExhaleHeap[null, PredicateMaskField(pm_f_43)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsPredicateField(pm_f_43) ==> Heap[null, PredicateMaskField(pm_f_43)] == ExhaleHeap[null, PredicateMaskField(pm_f_43)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_43) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsPredicateField(pm_f_43) ==> (forall <A, B> o2_43: Ref, f_133: (Field A B) ::
    { ExhaleHeap[o2_43, f_133] }
    Heap[null, PredicateMaskField(pm_f_43)][o2_43, f_133] ==> Heap[o2_43, f_133] == ExhaleHeap[o2_43, f_133]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_43), ExhaleHeap[null, WandMaskField(pm_f_43)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsWandField(pm_f_43) ==> Heap[null, WandMaskField(pm_f_43)] == ExhaleHeap[null, WandMaskField(pm_f_43)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_43: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_43) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_43) && IsWandField(pm_f_43) ==> (forall <A, B> o2_43: Ref, f_133: (Field A B) ::
    { ExhaleHeap[o2_43, f_133] }
    Heap[null, WandMaskField(pm_f_43)][o2_43, f_133] ==> Heap[o2_43, f_133] == ExhaleHeap[o2_43, f_133]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_100: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_100, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_100, $allocated] ==> ExhaleHeap[o_100, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_98: Ref, f_108: (Field A B), v: B ::
  { Heap[o_98, f_108:=v] }
  succHeap(Heap, Heap[o_98, f_108:=v])
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
// - height 0: getNext
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

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique value_1: Field NormalField int;
axiom !IsPredicateField(value_1);
axiom !IsWandField(value_1);

// ==================================================
// Translation of function getNext
// ==================================================

// Uninterpreted function definitions
function  getNext(Heap: HeapType, this: Ref): Ref;
function  getNext'(Heap: HeapType, this: Ref): Ref;
axiom (forall Heap: HeapType, this: Ref ::
  { getNext(Heap, this) }
  getNext(Heap, this) == getNext'(Heap, this) && dummyFunction(getNext#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { getNext'(Heap, this) }
  dummyFunction(getNext#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getNext(Heap, this) } { state(Heap, Mask), getNext#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> getNext(Heap, this) == Heap[this, next]
);

// Framing axioms
function  getNext#frame(frame: FrameType, this: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), getNext'(Heap, this) }
  state(Heap, Mask) ==> getNext'(Heap, this) == getNext#frame(Heap[null, valid(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  getNext#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  getNext#triggerStateless(this: Ref): Ref;

// Check contract well-formedness and postcondition
procedure getNext#definedness(this: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), wildcard) in this.next)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@106.3--108.58) [89021]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@106.3--108.58) [89022]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, valid#sm(this)][o_5, f_11] || Heap[null, valid#sm(Heap[this, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, next];
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
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@8.3--12.4) [89023]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@8.3--12.4) [89024]"}
          HasDirectPerm(Mask, this, next);
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_2(this: Ref): Field PredicateType_p FrameType;
function  p#sm(this: Ref): Field PredicateType_p PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(p_2(this)) }
  PredicateMaskField(p_2(this)) == p#sm(this)
);
axiom (forall this: Ref ::
  { p_2(this) }
  IsPredicateField(p_2(this))
);
axiom (forall this: Ref ::
  { p_2(this) }
  getPredWandId(p_2(this)) == 1
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { p_2(this), p_2(this2) }
  p_2(this) == p_2(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { p#sm(this), p#sm(this2) }
  p#sm(this) == p#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { p#trigger(Heap, p_2(this)) }
  p#everUsed(p_2(this))
);

procedure p#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of p
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@46.3--46.144) [89025]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(q(this.next), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@46.3--46.144) [89026]"}
          HasDirectPerm(Mask, this, next);
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, q_6(Heap[this, next]):=Mask[null, q_6(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate q
// ==================================================

type PredicateType_q;
function  q_6(this: Ref): Field PredicateType_q FrameType;
function  q#sm(this: Ref): Field PredicateType_q PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(q_6(this)) }
  PredicateMaskField(q_6(this)) == q#sm(this)
);
axiom (forall this: Ref ::
  { q_6(this) }
  IsPredicateField(q_6(this))
);
axiom (forall this: Ref ::
  { q_6(this) }
  getPredWandId(q_6(this)) == 2
);
function  q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { q_6(this), q_6(this2) }
  q_6(this) == q_6(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { q#sm(this), q#sm(this2) }
  q#sm(this) == q#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { q#trigger(Heap, q_6(this)) }
  q#everUsed(q_6(this))
);

procedure q#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Check definedness of predicate body of q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@47.3--47.144) [89027]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(p(this.next), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@47.3--47.144) [89028]"}
          HasDirectPerm(Mask, this, next);
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, p_2(Heap[this, next]):=Mask[null, p_2(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfold
// ==================================================

procedure testNestingUnfold(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(valid(this), wildcard) -- nestedPredicates.vpr@16.5--16.38
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value_1]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@16.5--16.38) [89030]"}
      Mask[null, valid(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, valid(this)];
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this))) {
        havoc newVersion;
        Heap := Heap[null, valid(this):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@17.5--17.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@17.13--17.34) [89031]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@17.13--17.34) [89032]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next != null) -- nestedPredicates.vpr@18.5--22.6
    
    // -- Check definedness of this.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@18.10--18.31) [89033]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: unfold acc(valid(this.next), wildcard) -- nestedPredicates.vpr@19.7--19.45
        
        // -- Check definedness of acc(valid(this.next), wildcard)
          assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@19.7--19.45) [89034]"}
            HasDirectPerm(Mask, this, next);
        assume valid#trigger(Heap, valid(Heap[this, next]));
        assume Heap[null, valid(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value_1]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, valid(Heap[Heap[this, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@19.7--19.45) [89036]"}
          Mask[null, valid(Heap[this, next])] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[null, valid(Heap[this, next])];
        Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] - wildcard];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, valid(Heap[this, next]))) {
            havoc newVersion;
            Heap := Heap[null, valid(Heap[this, next]):=newVersion];
          }
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, next] != null;
        Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, next] != null;
        Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] + perm];
        assume state(Heap, Mask);
        if (Heap[Heap[this, next], next] != null) {
          havoc wildcard;
          perm := wildcard;
          Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(Heap[this, next]), Heap[null, valid(Heap[this, next])], valid(Heap[Heap[this, next], next]), Heap[null, valid(Heap[Heap[this, next], next])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@20.7--20.47
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this.next != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@20.15--20.46) [89037]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@20.15--20.46) [89038]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@20.15--20.46) [89039]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@20.15--20.46) [89040]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@21.7--21.42
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@21.15--21.41) [89041]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@21.15--21.41) [89042]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@21.15--21.41) [89043]"}
          this != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingFold
// ==================================================

procedure testNestingFold(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.next, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@26.14--26.43) [89044]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.value, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@27.14--27.44) [89045]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@28.14--28.69) [89046]"}
        HasDirectPerm(Mask, this, next);
    assume Heap[this, next] != null;
    
    // -- Check definedness of this.next.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@28.14--28.69) [89047]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@28.14--28.69) [89048]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    assume Heap[Heap[this, next], next] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.next.next), wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@29.14--29.50) [89049]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@29.14--29.50) [89050]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(valid(this.next), wildcard) -- nestedPredicates.vpr@31.5--31.41
    
    // -- Check definedness of acc(valid(this.next), wildcard)
      assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@31.5--31.41) [89051]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@31.5--31.41) [89053]"}
      Mask[Heap[this, next], next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], next];
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - wildcard];
    assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next.value (nestedPredicates.vpr@31.5--31.41) [89054]"}
      Mask[Heap[this, next], value_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], value_1];
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] - wildcard];
    if (Heap[Heap[this, next], next] != null) {
      assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access valid(this.next.next) (nestedPredicates.vpr@31.5--31.41) [89055]"}
        Mask[null, valid(Heap[Heap[this, next], next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, valid(Heap[Heap[this, next], next])];
      Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(Heap[this, next]), Heap[null, valid(Heap[this, next])], valid(Heap[Heap[this, next], next]), Heap[null, valid(Heap[Heap[this, next], next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(Heap[this, next]));
    assume Heap[null, valid(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value_1]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, valid(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(Heap[this, next]))) {
      Heap := Heap[null, valid#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
    Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
        { newPMask[o_6, f_12] }
        Heap[null, valid#sm(Heap[this, next])][o_6, f_12] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_6, f_12] ==> newPMask[o_6, f_12]
      );
      Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@32.5--32.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.next != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@32.13--32.44) [89056]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@32.13--32.44) [89057]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@32.13--32.44) [89058]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@32.13--32.44) [89059]"}
      Heap[this, next] != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), wildcard) -- nestedPredicates.vpr@33.5--33.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@33.5--33.36) [89061]"}
      Mask[this, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, next];
    Mask := Mask[this, next:=Mask[this, next] - wildcard];
    assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.value (nestedPredicates.vpr@33.5--33.36) [89062]"}
      Mask[this, value_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, value_1];
    Mask := Mask[this, value_1:=Mask[this, value_1] - wildcard];
    if (Heap[this, next] != null) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@33.5--33.36) [89063]"}
        Mask[null, valid(Heap[this, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, valid(Heap[this, next])];
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value_1]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, valid#sm(this)][o_40, f_52] || Heap[null, valid#sm(Heap[this, next])][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@34.5--34.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@34.13--34.34) [89064]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@34.13--34.34) [89065]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@35.5--35.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@35.13--35.39) [89066]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@35.13--35.39) [89067]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@35.13--35.39) [89068]"}
      this != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfolding
// ==================================================

procedure testNestingUnfolding(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert this != (unfolding acc(valid(this), write) in this.next) -- nestedPredicates.vpr@40.5--40.74
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != (unfolding acc(valid(this), write) in this.next)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@40.13--40.73) [89069]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@40.13--40.73) [89070]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
            { newPMask[o_42, f_55] }
            Heap[null, valid#sm(this)][o_42, f_55] || Heap[null, valid#sm(Heap[this, next])][o_42, f_55] ==> newPMask[o_42, f_55]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Heap[null, valid#sm(this)][o_46, f_60] || Heap[null, valid#sm(Heap[this, next])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(valid(this), write) in this.next) might not hold. (nestedPredicates.vpr@40.13--40.73) [89071]"}
      this != Heap[this, next];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o: Ref, f_61: (Field A B) ::
          { newPMask[o, f_61] }
          Heap[null, valid#sm(this)][o, f_61] || Heap[null, valid#sm(Heap[this, next])][o, f_61] ==> newPMask[o, f_61]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((unfolding acc(valid(this), wildcard) in this.next) != null) -- nestedPredicates.vpr@41.5--44.6
    
    // -- Check definedness of (unfolding acc(valid(this), wildcard) in this.next) != null
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@41.10--41.73) [89072]"}
        UnfoldingMask[null, valid(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid(this)];
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@41.10--41.73) [89073]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            Heap[null, valid#sm(this)][o_14, f_3] || Heap[null, valid#sm(Heap[this, next])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
            { newPMask[o_3, f_24] }
            Heap[null, valid#sm(this)][o_3, f_24] || Heap[null, valid#sm(Heap[this, next])][o_3, f_24] ==> newPMask[o_3, f_24]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: assert (unfolding acc(valid(this), wildcard) in this.next) !=
  //   (unfolding acc(valid(this), wildcard) in
  //     (unfolding acc(valid(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@42.7--42.178
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (unfolding acc(valid(this), wildcard) in this.next) != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(this));
          assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@42.15--42.177) [89074]"}
            UnfoldingMask[null, valid(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, valid(this)];
          UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@42.15--42.177) [89075]"}
            HasDirectPerm(UnfoldingMask, this, next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
                { newPMask[o_1, f_10] }
                Heap[null, valid#sm(this)][o_1, f_10] || Heap[null, valid#sm(Heap[this, next])][o_1, f_10] ==> newPMask[o_1, f_10]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(this));
          assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@42.15--42.177) [89076]"}
            UnfoldingMask[null, valid(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, valid(this)];
          UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[this, next]));
          assume Unfolding1Heap[null, valid(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value_1]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@42.15--42.177) [89077]"}
            Unfolding1Mask[null, valid(Unfolding1Heap[this, next])] > NoPerm;
          havoc wildcard;
          assume wildcard < Unfolding1Mask[null, valid(Unfolding1Heap[this, next])];
          Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[this, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[this, next])] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value_1:=Unfolding1Mask[Unfolding1Heap[this, next], value_1] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
            havoc wildcard;
            perm := wildcard;
            Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(Unfolding1Heap[this, next]), Unfolding1Heap[null, valid(Unfolding1Heap[this, next])], valid(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@42.15--42.177) [89078]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@42.15--42.177) [89079]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@42.15--42.177) [89080]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_15: Ref, f_51: (Field A B) ::
                { newPMask[o_15, f_51] }
                Heap[null, valid#sm(Heap[this, next])][o_15, f_51] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_15, f_51] ==> newPMask[o_15, f_51]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_4: Ref, f_54: (Field A B) ::
                { newPMask[o_4, f_54] }
                Heap[null, valid#sm(this)][o_4, f_54] || Heap[null, valid#sm(Heap[this, next])][o_4, f_54] ==> newPMask[o_4, f_54]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_12: Ref, f_25: (Field A B) ::
                { newPMask[o_12, f_25] }
                Heap[null, valid#sm(Heap[this, next])][o_12, f_25] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_12, f_25] ==> newPMask[o_12, f_25]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_41: Ref, f_21: (Field A B) ::
                { newPMask[o_41, f_21] }
                Heap[null, valid#sm(this)][o_41, f_21] || Heap[null, valid#sm(Heap[this, next])][o_41, f_21] ==> newPMask[o_41, f_21]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
                { newPMask[o_23, f_13] }
                Heap[null, valid#sm(this)][o_23, f_13] || Heap[null, valid#sm(Heap[this, next])][o_23, f_13] ==> newPMask[o_23, f_13]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
                { newPMask[o_13, f_65] }
                Heap[null, valid#sm(Heap[this, next])][o_13, f_65] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_13, f_65] ==> newPMask[o_13, f_65]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(valid(this), wildcard) in this.next) != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@42.15--42.177) [89081]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
              { newPMask[o_51, f_66] }
              Heap[null, valid#sm(this)][o_51, f_66] || Heap[null, valid#sm(Heap[this, next])][o_51, f_66] ==> newPMask[o_51, f_66]
            );
            Heap := Heap[null, valid#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
              { newPMask[o_52, f_14] }
              Heap[null, valid#sm(this)][o_52, f_14] || Heap[null, valid#sm(Heap[this, next])][o_52, f_14] ==> newPMask[o_52, f_14]
            );
            Heap := Heap[null, valid#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
              { newPMask[o_20, f_50] }
              Heap[null, valid#sm(Heap[this, next])][o_20, f_50] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_20, f_50] ==> newPMask[o_20, f_50]
            );
            Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(valid(this), wildcard) in
  //     (unfolding acc(valid(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@43.7--43.131
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(this));
          assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@43.15--43.130) [89082]"}
            UnfoldingMask[null, valid(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, valid(this)];
          UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[this, next]));
          assume Unfolding1Heap[null, valid(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value_1]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@43.15--43.130) [89083]"}
            Unfolding1Mask[null, valid(Unfolding1Heap[this, next])] > NoPerm;
          havoc wildcard;
          assume wildcard < Unfolding1Mask[null, valid(Unfolding1Heap[this, next])];
          Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[this, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[this, next])] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value_1:=Unfolding1Mask[Unfolding1Heap[this, next], value_1] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
            havoc wildcard;
            perm := wildcard;
            Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(valid(Unfolding1Heap[this, next]), Unfolding1Heap[null, valid(Unfolding1Heap[this, next])], valid(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@43.15--43.130) [89084]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@43.15--43.130) [89085]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@43.15--43.130) [89086]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
                { newPMask[o_58, f_30] }
                Heap[null, valid#sm(Heap[this, next])][o_58, f_30] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_58, f_30] ==> newPMask[o_58, f_30]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
                { newPMask[o_10, f_67] }
                Heap[null, valid#sm(this)][o_10, f_67] || Heap[null, valid#sm(Heap[this, next])][o_10, f_67] ==> newPMask[o_10, f_67]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
                { newPMask[o_18, f_18] }
                Heap[null, valid#sm(Heap[this, next])][o_18, f_18] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_18, f_18] ==> newPMask[o_18, f_18]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
                { newPMask[o_66, f_28] }
                Heap[null, valid#sm(this)][o_66, f_28] || Heap[null, valid#sm(Heap[this, next])][o_66, f_28] ==> newPMask[o_66, f_28]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
                { newPMask[o_11, f_34] }
                Heap[null, valid#sm(Heap[this, next])][o_11, f_34] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_11, f_34] ==> newPMask[o_11, f_34]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@43.15--43.130) [89087]"}
          this != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
              { newPMask[o_19, f_57] }
              Heap[null, valid#sm(this)][o_19, f_57] || Heap[null, valid#sm(Heap[this, next])][o_19, f_57] ==> newPMask[o_19, f_57]
            );
            Heap := Heap[null, valid#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
              { newPMask[o_21, f_58] }
              Heap[null, valid#sm(Heap[this, next])][o_21, f_58] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_21, f_58] ==> newPMask[o_21, f_58]
            );
            Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfoldTwo
// ==================================================

procedure testNestingUnfoldTwo(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_2(this):=Mask[null, p_2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(p(this), wildcard) -- nestedPredicates.vpr@51.5--51.34
    assume p#trigger(Heap, p_2(this));
    assume Heap[null, p_2(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value_1]), FrameFragment((if Heap[this, next] != null then Heap[null, q_6(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Unfolding p(this) might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@51.5--51.34) [89089]"}
      Mask[null, p_2(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, p_2(this)];
    Mask := Mask[null, p_2(this):=Mask[null, p_2(this)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p_2(this))) {
        havoc newVersion;
        Heap := Heap[null, p_2(this):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, q_6(Heap[this, next]):=Mask[null, q_6(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(p_2(this), Heap[null, p_2(this)], q_6(Heap[this, next]), Heap[null, q_6(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@53.5--53.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@53.13--53.34) [89090]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@53.13--53.34) [89091]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next != null) -- nestedPredicates.vpr@54.5--59.6
    
    // -- Check definedness of this.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@54.10--54.31) [89092]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: unfold acc(q(this.next), wildcard) -- nestedPredicates.vpr@55.7--55.41
        
        // -- Check definedness of acc(q(this.next), wildcard)
          assert {:msg "  Unfolding q(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@55.7--55.41) [89093]"}
            HasDirectPerm(Mask, this, next);
        assume q#trigger(Heap, q_6(Heap[this, next]));
        assume Heap[null, q_6(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value_1]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, p_2(Heap[Heap[this, next], next])] else EmptyFrame))));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Unfolding q(this.next) might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@55.7--55.41) [89095]"}
          Mask[null, q_6(Heap[this, next])] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[null, q_6(Heap[this, next])];
        Mask := Mask[null, q_6(Heap[this, next]):=Mask[null, q_6(Heap[this, next])] - wildcard];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, q_6(Heap[this, next]))) {
            havoc newVersion;
            Heap := Heap[null, q_6(Heap[this, next]):=newVersion];
          }
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, next] != null;
        Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, next] != null;
        Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] + perm];
        assume state(Heap, Mask);
        if (Heap[Heap[this, next], next] != null) {
          havoc wildcard;
          perm := wildcard;
          Mask := Mask[null, p_2(Heap[Heap[this, next], next]):=Mask[null, p_2(Heap[Heap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(q_6(Heap[this, next]), Heap[null, q_6(Heap[this, next])], p_2(Heap[Heap[this, next], next]), Heap[null, p_2(Heap[Heap[this, next], next])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@57.7--57.47
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this.next != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@57.15--57.46) [89096]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@57.15--57.46) [89097]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@57.15--57.46) [89098]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@57.15--57.46) [89099]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@58.7--58.42
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@58.15--58.41) [89100]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@58.15--58.41) [89101]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@58.15--58.41) [89102]"}
          this != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingFoldTwo
// ==================================================

procedure testNestingFoldTwo(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.next, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@63.14--63.43) [89103]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.value, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@64.14--64.44) [89104]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@65.14--65.69) [89105]"}
        HasDirectPerm(Mask, this, next);
    assume Heap[this, next] != null;
    
    // -- Check definedness of this.next.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@65.14--65.69) [89106]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@65.14--65.69) [89107]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    assume Heap[Heap[this, next], next] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p(this.next.next), wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@66.14--66.46) [89108]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@66.14--66.46) [89109]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_2(Heap[Heap[this, next], next]):=Mask[null, p_2(Heap[Heap[this, next], next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(q(this.next), wildcard) -- nestedPredicates.vpr@68.5--68.37
    
    // -- Check definedness of acc(q(this.next), wildcard)
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@68.5--68.37) [89110]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@68.5--68.37) [89112]"}
      Mask[Heap[this, next], next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], next];
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - wildcard];
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.value (nestedPredicates.vpr@68.5--68.37) [89113]"}
      Mask[Heap[this, next], value_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], value_1];
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] - wildcard];
    if (Heap[Heap[this, next], next] != null) {
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access p(this.next.next) (nestedPredicates.vpr@68.5--68.37) [89114]"}
        Mask[null, p_2(Heap[Heap[this, next], next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, p_2(Heap[Heap[this, next], next])];
      Mask := Mask[null, p_2(Heap[Heap[this, next], next]):=Mask[null, p_2(Heap[Heap[this, next], next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(q_6(Heap[this, next]), Heap[null, q_6(Heap[this, next])], p_2(Heap[Heap[this, next], next]), Heap[null, p_2(Heap[Heap[this, next], next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, q_6(Heap[this, next]):=Mask[null, q_6(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume q#trigger(Heap, q_6(Heap[this, next]));
    assume Heap[null, q_6(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value_1]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, p_2(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, q_6(Heap[this, next]))) {
      Heap := Heap[null, q#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, q_6(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
        { newPMask[o_43, f_33] }
        Heap[null, q#sm(Heap[this, next])][o_43, f_33] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_43, f_33] ==> newPMask[o_43, f_33]
      );
      Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@70.5--70.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@70.13--70.34) [89115]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@70.13--70.34) [89116]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@72.5--72.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.next != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@72.13--72.44) [89117]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@72.13--72.44) [89118]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@72.13--72.44) [89119]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@72.13--72.44) [89120]"}
      Heap[this, next] != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@74.5--74.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@74.13--74.39) [89121]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@74.13--74.39) [89122]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@74.13--74.39) [89123]"}
      this != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingFoldThree
// ==================================================

procedure testNestingFoldThree(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.next, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@78.14--78.43) [89124]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.value, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@79.14--79.44) [89125]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@80.14--80.69) [89126]"}
        HasDirectPerm(Mask, this, next);
    assume Heap[this, next] != null;
    
    // -- Check definedness of this.next.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@80.14--80.69) [89127]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@80.14--80.69) [89128]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    assume Heap[Heap[this, next], next] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p(this.next.next), wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@81.14--81.46) [89129]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@81.14--81.46) [89130]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_2(Heap[Heap[this, next], next]):=Mask[null, p_2(Heap[Heap[this, next], next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(q(this.next), wildcard) -- nestedPredicates.vpr@83.5--83.37
    
    // -- Check definedness of acc(q(this.next), wildcard)
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@83.5--83.37) [89131]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@83.5--83.37) [89133]"}
      Mask[Heap[this, next], next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], next];
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - wildcard];
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.value (nestedPredicates.vpr@83.5--83.37) [89134]"}
      Mask[Heap[this, next], value_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], value_1];
    Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] - wildcard];
    if (Heap[Heap[this, next], next] != null) {
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access p(this.next.next) (nestedPredicates.vpr@83.5--83.37) [89135]"}
        Mask[null, p_2(Heap[Heap[this, next], next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, p_2(Heap[Heap[this, next], next])];
      Mask := Mask[null, p_2(Heap[Heap[this, next], next]):=Mask[null, p_2(Heap[Heap[this, next], next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(q_6(Heap[this, next]), Heap[null, q_6(Heap[this, next])], p_2(Heap[Heap[this, next], next]), Heap[null, p_2(Heap[Heap[this, next], next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, q_6(Heap[this, next]):=Mask[null, q_6(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume q#trigger(Heap, q_6(Heap[this, next]));
    assume Heap[null, q_6(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value_1]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, p_2(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, q_6(Heap[this, next]))) {
      Heap := Heap[null, q#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, q_6(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
        { newPMask[o_50, f_75] }
        Heap[null, q#sm(Heap[this, next])][o_50, f_75] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_50, f_75] ==> newPMask[o_50, f_75]
      );
      Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p(this), wildcard) -- nestedPredicates.vpr@84.5--84.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Folding p(this) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@84.5--84.32) [89137]"}
      Mask[this, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, next];
    Mask := Mask[this, next:=Mask[this, next] - wildcard];
    assert {:msg "  Folding p(this) might fail. There might be insufficient permission to access this.value (nestedPredicates.vpr@84.5--84.32) [89138]"}
      Mask[this, value_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, value_1];
    Mask := Mask[this, value_1:=Mask[this, value_1] - wildcard];
    if (Heap[this, next] != null) {
      assert {:msg "  Folding p(this) might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@84.5--84.32) [89139]"}
        Mask[null, q_6(Heap[this, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, q_6(Heap[this, next])];
      Mask := Mask[null, q_6(Heap[this, next]):=Mask[null, q_6(Heap[this, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(p_2(this), Heap[null, p_2(this)], q_6(Heap[this, next]), Heap[null, q_6(Heap[this, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_2(this):=Mask[null, p_2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p#trigger(Heap, p_2(this));
    assume Heap[null, p_2(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value_1]), FrameFragment((if Heap[this, next] != null then Heap[null, q_6(Heap[this, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, p_2(this))) {
      Heap := Heap[null, p#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p_2(this):=freshVersion];
    }
    Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
    Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
        { newPMask[o_22, f_59] }
        Heap[null, p#sm(this)][o_22, f_59] || Heap[null, q#sm(Heap[this, next])][o_22, f_59] ==> newPMask[o_22, f_59]
      );
      Heap := Heap[null, p#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@85.5--85.35
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@85.13--85.34) [89140]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@85.13--85.34) [89141]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@87.5--87.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.next != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@87.13--87.44) [89142]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@87.13--87.44) [89143]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@87.13--87.44) [89144]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@87.13--87.44) [89145]"}
      Heap[this, next] != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@88.5--88.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@88.13--88.39) [89146]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@88.13--88.39) [89147]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@88.13--88.39) [89148]"}
      this != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfoldingTwo
// ==================================================

procedure testNestingUnfoldingTwo(this: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newPMask: PMaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_2(this):=Mask[null, p_2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert this != (unfolding acc(p(this), wildcard) in this.next) -- nestedPredicates.vpr@94.5--94.73
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this != (unfolding acc(p(this), wildcard) in this.next)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume p#trigger(UnfoldingHeap, p_2(this));
      assume UnfoldingHeap[null, p_2(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@94.13--94.72) [89149]"}
        UnfoldingMask[null, p_2(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, p_2(this)];
      UnfoldingMask := UnfoldingMask[null, p_2(this):=UnfoldingMask[null, p_2(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, q_6(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_6(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(p_2(this), UnfoldingHeap[null, p_2(this)], q_6(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@94.13--94.72) [89150]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
            { newPMask[o_67, f_69] }
            Heap[null, p#sm(this)][o_67, f_69] || Heap[null, q#sm(Heap[this, next])][o_67, f_69] ==> newPMask[o_67, f_69]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
            { newPMask[o_68, f_76] }
            Heap[null, p#sm(this)][o_68, f_76] || Heap[null, q#sm(Heap[this, next])][o_68, f_76] ==> newPMask[o_68, f_76]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(p(this), wildcard) in this.next) might not hold. (nestedPredicates.vpr@94.13--94.72) [89151]"}
      this != Heap[this, next];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
      Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
          { newPMask[o_69, f_77] }
          Heap[null, p#sm(this)][o_69, f_77] || Heap[null, q#sm(Heap[this, next])][o_69, f_77] ==> newPMask[o_69, f_77]
        );
        Heap := Heap[null, p#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((unfolding acc(p(this), wildcard) in this.next) != null) -- nestedPredicates.vpr@95.5--99.6
    
    // -- Check definedness of (unfolding acc(p(this), wildcard) in this.next) != null
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_2(this));
      assume UnfoldingHeap[null, p_2(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@95.10--95.69) [89152]"}
        UnfoldingMask[null, p_2(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, p_2(this)];
      UnfoldingMask := UnfoldingMask[null, p_2(this):=UnfoldingMask[null, p_2(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, q_6(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_6(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(p_2(this), UnfoldingHeap[null, p_2(this)], q_6(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@95.10--95.69) [89153]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
            { newPMask[o_70, f_78] }
            Heap[null, p#sm(this)][o_70, f_78] || Heap[null, q#sm(Heap[this, next])][o_70, f_78] ==> newPMask[o_70, f_78]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
            { newPMask[o_71, f_35] }
            Heap[null, p#sm(this)][o_71, f_35] || Heap[null, q#sm(Heap[this, next])][o_71, f_35] ==> newPMask[o_71, f_35]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: assert (unfolding acc(p(this), wildcard) in this.next) !=
  //   (unfolding acc(p(this), wildcard) in
  //     (unfolding acc(q(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@97.7--97.166
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (unfolding acc(p(this), wildcard) in this.next) != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p#trigger(UnfoldingHeap, p_2(this));
          assume UnfoldingHeap[null, p_2(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@97.15--97.165) [89154]"}
            UnfoldingMask[null, p_2(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, p_2(this)];
          UnfoldingMask := UnfoldingMask[null, p_2(this):=UnfoldingMask[null, p_2(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, q_6(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_6(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(p_2(this), UnfoldingHeap[null, p_2(this)], q_6(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@97.15--97.165) [89155]"}
            HasDirectPerm(UnfoldingMask, this, next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
                { newPMask[o_72, f_79] }
                Heap[null, p#sm(this)][o_72, f_79] || Heap[null, q#sm(Heap[this, next])][o_72, f_79] ==> newPMask[o_72, f_79]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p#trigger(UnfoldingHeap, p_2(this));
          assume UnfoldingHeap[null, p_2(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@97.15--97.165) [89156]"}
            UnfoldingMask[null, p_2(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, p_2(this)];
          UnfoldingMask := UnfoldingMask[null, p_2(this):=UnfoldingMask[null, p_2(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, q_6(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_6(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(p_2(this), UnfoldingHeap[null, p_2(this)], q_6(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume q#trigger(Unfolding1Heap, q_6(Unfolding1Heap[this, next]));
          assume Unfolding1Heap[null, q_6(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value_1]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@97.15--97.165) [89157]"}
            Unfolding1Mask[null, q_6(Unfolding1Heap[this, next])] > NoPerm;
          havoc wildcard;
          assume wildcard < Unfolding1Mask[null, q_6(Unfolding1Heap[this, next])];
          Unfolding1Mask := Unfolding1Mask[null, q_6(Unfolding1Heap[this, next]):=Unfolding1Mask[null, q_6(Unfolding1Heap[this, next])] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value_1:=Unfolding1Mask[Unfolding1Heap[this, next], value_1] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
            havoc wildcard;
            perm := wildcard;
            Unfolding1Mask := Unfolding1Mask[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(q_6(Unfolding1Heap[this, next]), Unfolding1Heap[null, q_6(Unfolding1Heap[this, next])], p_2(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@97.15--97.165) [89158]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@97.15--97.165) [89159]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@97.15--97.165) [89160]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
                { newPMask[o_30, f_80] }
                Heap[null, q#sm(Heap[this, next])][o_30, f_80] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_30, f_80] ==> newPMask[o_30, f_80]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
                { newPMask[o_79, f_36] }
                Heap[null, p#sm(this)][o_79, f_36] || Heap[null, q#sm(Heap[this, next])][o_79, f_36] ==> newPMask[o_79, f_36]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
                { newPMask[o_80, f_88] }
                Heap[null, q#sm(Heap[this, next])][o_80, f_88] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_80, f_88] ==> newPMask[o_80, f_88]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
                { newPMask[o_31, f_89] }
                Heap[null, p#sm(this)][o_31, f_89] || Heap[null, q#sm(Heap[this, next])][o_31, f_89] ==> newPMask[o_31, f_89]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
                { newPMask[o_81, f_90] }
                Heap[null, p#sm(this)][o_81, f_90] || Heap[null, q#sm(Heap[this, next])][o_81, f_90] ==> newPMask[o_81, f_90]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
                { newPMask[o_82, f_91] }
                Heap[null, q#sm(Heap[this, next])][o_82, f_91] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_82, f_91] ==> newPMask[o_82, f_91]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(p(this), wildcard) in this.next) != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@97.15--97.165) [89161]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
              { newPMask[o_62, f_47] }
              Heap[null, p#sm(this)][o_62, f_47] || Heap[null, q#sm(Heap[this, next])][o_62, f_47] ==> newPMask[o_62, f_47]
            );
            Heap := Heap[null, p#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
              { newPMask[o_83, f_72] }
              Heap[null, p#sm(this)][o_83, f_72] || Heap[null, q#sm(Heap[this, next])][o_83, f_72] ==> newPMask[o_83, f_72]
            );
            Heap := Heap[null, p#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
              { newPMask[o_84, f_92] }
              Heap[null, q#sm(Heap[this, next])][o_84, f_92] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_84, f_92] ==> newPMask[o_84, f_92]
            );
            Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(p(this), wildcard) in
  //     (unfolding acc(q(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@98.7--98.123
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of this != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p#trigger(UnfoldingHeap, p_2(this));
          assume UnfoldingHeap[null, p_2(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@98.15--98.122) [89162]"}
            UnfoldingMask[null, p_2(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, p_2(this)];
          UnfoldingMask := UnfoldingMask[null, p_2(this):=UnfoldingMask[null, p_2(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, q_6(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_6(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(p_2(this), UnfoldingHeap[null, p_2(this)], q_6(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_6(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume q#trigger(Unfolding1Heap, q_6(Unfolding1Heap[this, next]));
          assume Unfolding1Heap[null, q_6(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value_1]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Heap := Unfolding1Heap;
          ExhaleWellDef1Mask := Unfolding1Mask;
          assert {:msg "  Assert might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@98.15--98.122) [89163]"}
            Unfolding1Mask[null, q_6(Unfolding1Heap[this, next])] > NoPerm;
          havoc wildcard;
          assume wildcard < Unfolding1Mask[null, q_6(Unfolding1Heap[this, next])];
          Unfolding1Mask := Unfolding1Mask[null, q_6(Unfolding1Heap[this, next]):=Unfolding1Mask[null, q_6(Unfolding1Heap[this, next])] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value_1:=Unfolding1Mask[Unfolding1Heap[this, next], value_1] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
            havoc wildcard;
            perm := wildcard;
            Unfolding1Mask := Unfolding1Mask[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(q_6(Unfolding1Heap[this, next]), Unfolding1Heap[null, q_6(Unfolding1Heap[this, next])], p_2(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, p_2(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@98.15--98.122) [89164]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@98.15--98.122) [89165]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@98.15--98.122) [89166]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
                { newPMask[o_63, f_48] }
                Heap[null, q#sm(Heap[this, next])][o_63, f_48] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_63, f_48] ==> newPMask[o_63, f_48]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
                { newPMask[o_28, f_93] }
                Heap[null, p#sm(this)][o_28, f_93] || Heap[null, q#sm(Heap[this, next])][o_28, f_93] ==> newPMask[o_28, f_93]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
                { newPMask[o_85, f_41] }
                Heap[null, q#sm(Heap[this, next])][o_85, f_41] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_85, f_41] ==> newPMask[o_85, f_41]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
                { newPMask[o_86, f_94] }
                Heap[null, p#sm(this)][o_86, f_94] || Heap[null, q#sm(Heap[this, next])][o_86, f_94] ==> newPMask[o_86, f_94]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
                { newPMask[o_29, f_95] }
                Heap[null, q#sm(Heap[this, next])][o_29, f_95] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_29, f_95] ==> newPMask[o_29, f_95]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@98.15--98.122) [89167]"}
          this != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value_1:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
              { newPMask[o_87, f_96] }
              Heap[null, p#sm(this)][o_87, f_96] || Heap[null, q#sm(Heap[this, next])][o_87, f_96] ==> newPMask[o_87, f_96]
            );
            Heap := Heap[null, p#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value_1:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
              { newPMask[o_88, f_97] }
              Heap[null, q#sm(Heap[this, next])][o_88, f_97] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_88, f_97] ==> newPMask[o_88, f_97]
            );
            Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfoldingPrecondition
// ==================================================

procedure testNestingUnfoldingPrecondition(this: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid(this), wildcard) in this.next == x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@102.14--102.106) [89168]"}
        UnfoldingMask[null, valid(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid(this)];
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@102.14--102.106) [89169]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
            { newPMask[o_89, f_98] }
            Heap[null, valid#sm(this)][o_89, f_98] || Heap[null, valid#sm(Heap[this, next])][o_89, f_98] ==> newPMask[o_89, f_98]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid(this)];
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, next] == x;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert this != x -- nestedPredicates.vpr@104.5--104.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion this != x might not hold. (nestedPredicates.vpr@104.13--104.26) [89170]"}
      this != x;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testNestingUnfoldingPostcondition
// ==================================================

procedure testNestingUnfoldingPostcondition(this: Ref, x: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
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
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
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
    havoc wildcard;
    perm := wildcard;
    PostMask := PostMask[null, valid(this):=PostMask[null, valid(this)] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this), wildcard) in true)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@111.13--111.89) [89171]"}
        UnfoldingMask[null, valid(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid(this)];
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, next:=true]];
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, value_1:=true]];
        if (PostHeap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
            { newPMask[o_90, f_99] }
            PostHeap[null, valid#sm(this)][o_90, f_99] || PostHeap[null, valid#sm(PostHeap[this, next])][o_90, f_99] ==> newPMask[o_90, f_99]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid(this)];
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of testNestingUnfoldingPostcondition might not hold. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@111.13--111.89) [89172]"}
      Mask[null, valid(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, valid(this)];
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - wildcard];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      assert {:msg "  Postcondition of testNestingUnfoldingPostcondition might not hold. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@111.13--111.89) [89173]"}
        UnfoldingMask[null, valid(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid(this)];
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value_1:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_93: Ref, f_105: (Field A B) ::
          { newPMask[o_93, f_105] }
          Heap[null, valid#sm(this)][o_93, f_105] || Heap[null, valid#sm(Heap[this, next])][o_93, f_105] ==> newPMask[o_93, f_105]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}