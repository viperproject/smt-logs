// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:28:47
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
axiom (forall o_104: Ref, f_200: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_104, f_200] }
  Heap[o_104, $allocated] ==> Heap[Heap[o_104, f_200], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_107: Ref, f_201: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_107, f_201] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_107, f_201) ==> Heap[o_107, f_201] == ExhaleHeap[o_107, f_201]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_51), ExhaleHeap[null, PredicateMaskField(pm_f_51)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsPredicateField(pm_f_51) ==> Heap[null, PredicateMaskField(pm_f_51)] == ExhaleHeap[null, PredicateMaskField(pm_f_51)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_51) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsPredicateField(pm_f_51) ==> (forall <A, B> o2_51: Ref, f_201: (Field A B) ::
    { ExhaleHeap[o2_51, f_201] }
    Heap[null, PredicateMaskField(pm_f_51)][o2_51, f_201] ==> Heap[o2_51, f_201] == ExhaleHeap[o2_51, f_201]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_51), ExhaleHeap[null, WandMaskField(pm_f_51)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsWandField(pm_f_51) ==> Heap[null, WandMaskField(pm_f_51)] == ExhaleHeap[null, WandMaskField(pm_f_51)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_51: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_51) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_51) && IsWandField(pm_f_51) ==> (forall <A, B> o2_51: Ref, f_201: (Field A B) ::
    { ExhaleHeap[o2_51, f_201] }
    Heap[null, WandMaskField(pm_f_51)][o2_51, f_201] ==> Heap[o2_51, f_201] == ExhaleHeap[o2_51, f_201]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_107: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_107, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_107, $allocated] ==> ExhaleHeap[o_107, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_104: Ref, f_106: (Field A B), v: B ::
  { Heap[o_104, f_106:=v] }
  succHeap(Heap, Heap[o_104, f_106:=v])
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
const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);

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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@106.3--108.58) [146753]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@106.3--108.58) [146754]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, valid#sm(this)][o_15, f_20] || Heap[null, valid#sm(Heap[this, next])][o_15, f_20] ==> newPMask[o_15, f_20]
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@8.3--12.4) [146755]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@8.3--12.4) [146756]"}
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
function  p_14(this: Ref): Field PredicateType_p FrameType;
function  p#sm(this: Ref): Field PredicateType_p PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(p_14(this)) }
  PredicateMaskField(p_14(this)) == p#sm(this)
);
axiom (forall this: Ref ::
  { p_14(this) }
  IsPredicateField(p_14(this))
);
axiom (forall this: Ref ::
  { p_14(this) }
  getPredWandId(p_14(this)) == 1
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { p_14(this), p_14(this2) }
  p_14(this) == p_14(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { p#sm(this), p#sm(this2) }
  p#sm(this) == p#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { p#trigger(Heap, p_14(this)) }
  p#everUsed(p_14(this))
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@46.3--46.144) [146757]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(q(this.next), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@46.3--46.144) [146758]"}
          HasDirectPerm(Mask, this, next);
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, q_18(Heap[this, next]):=Mask[null, q_18(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate q
// ==================================================

type PredicateType_q;
function  q_18(this: Ref): Field PredicateType_q FrameType;
function  q#sm(this: Ref): Field PredicateType_q PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(q_18(this)) }
  PredicateMaskField(q_18(this)) == q#sm(this)
);
axiom (forall this: Ref ::
  { q_18(this) }
  IsPredicateField(q_18(this))
);
axiom (forall this: Ref ::
  { q_18(this) }
  getPredWandId(q_18(this)) == 2
);
function  q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { q_18(this), q_18(this2) }
  q_18(this) == q_18(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { q#sm(this), q#sm(this2) }
  q#sm(this) == q#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { q#trigger(Heap, q_18(this)) }
  q#everUsed(q_18(this))
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@47.3--47.144) [146759]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(p(this.next), wildcard)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@47.3--47.144) [146760]"}
          HasDirectPerm(Mask, this, next);
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, p_14(Heap[this, next]):=Mask[null, p_14(Heap[this, next])] + perm];
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(valid(this), wildcard) -- nestedPredicates.vpr@16.5--16.38
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@16.5--16.38) [146762]"}
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@17.13--17.34) [146763]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@17.13--17.34) [146764]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next != null) -- nestedPredicates.vpr@18.5--22.6
    
    // -- Check definedness of this.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@18.10--18.31) [146765]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: unfold acc(valid(this.next), wildcard) -- nestedPredicates.vpr@19.7--19.45
        
        // -- Check definedness of acc(valid(this.next), wildcard)
          assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@19.7--19.45) [146766]"}
            HasDirectPerm(Mask, this, next);
        assume valid#trigger(Heap, valid(Heap[this, next]));
        assume Heap[null, valid(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, valid(Heap[Heap[this, next], next])] else EmptyFrame))));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@19.7--19.45) [146768]"}
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
        Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] + perm];
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this.next != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@20.15--20.46) [146769]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@20.15--20.46) [146770]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@20.15--20.46) [146771]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@20.15--20.46) [146772]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@21.7--21.42
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@21.15--21.41) [146773]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@21.15--21.41) [146774]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@21.15--21.41) [146775]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.next, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@26.14--26.43) [146776]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.value, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@27.14--27.44) [146777]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@28.14--28.69) [146778]"}
        HasDirectPerm(Mask, this, next);
    assume Heap[this, next] != null;
    
    // -- Check definedness of this.next.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@28.14--28.69) [146779]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@28.14--28.69) [146780]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    assume Heap[Heap[this, next], next] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(valid(this.next.next), wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@29.14--29.50) [146781]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@29.14--29.50) [146782]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(valid(this.next), wildcard) -- nestedPredicates.vpr@31.5--31.41
    
    // -- Check definedness of acc(valid(this.next), wildcard)
      assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@31.5--31.41) [146783]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@31.5--31.41) [146785]"}
      Mask[Heap[this, next], next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], next];
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - wildcard];
    assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next.value (nestedPredicates.vpr@31.5--31.41) [146786]"}
      Mask[Heap[this, next], value] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], value];
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] - wildcard];
    if (Heap[Heap[this, next], next] != null) {
      assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access valid(this.next.next) (nestedPredicates.vpr@31.5--31.41) [146787]"}
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
    assume Heap[null, valid(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, valid(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(Heap[this, next]))) {
      Heap := Heap[null, valid#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
    Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, valid#sm(Heap[this, next])][o_16, f_21] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_16, f_21] ==> newPMask[o_16, f_21]
      );
      Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@32.5--32.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.next != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@32.13--32.44) [146788]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@32.13--32.44) [146789]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@32.13--32.44) [146790]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@32.13--32.44) [146791]"}
      Heap[this, next] != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), wildcard) -- nestedPredicates.vpr@33.5--33.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@33.5--33.36) [146793]"}
      Mask[this, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, next];
    Mask := Mask[this, next:=Mask[this, next] - wildcard];
    assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.value (nestedPredicates.vpr@33.5--33.36) [146794]"}
      Mask[this, value] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, value];
    Mask := Mask[this, value:=Mask[this, value] - wildcard];
    if (Heap[this, next] != null) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@33.5--33.36) [146795]"}
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
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(this))) {
      Heap := Heap[null, valid#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
    Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, valid#sm(this)][o_52, f_55] || Heap[null, valid#sm(Heap[this, next])][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@34.5--34.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@34.13--34.34) [146796]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@34.13--34.34) [146797]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@35.5--35.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@35.13--35.39) [146798]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@35.13--35.39) [146799]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@35.13--35.39) [146800]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert this != (unfolding acc(valid(this), write) in this.next) -- nestedPredicates.vpr@40.5--40.74
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != (unfolding acc(valid(this), write) in this.next)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@40.13--40.73) [146801]"}
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
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@40.13--40.73) [146802]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, valid#sm(this)][o_53, f_56] || Heap[null, valid#sm(Heap[this, next])][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            Heap[null, valid#sm(this)][o_26, f_29] || Heap[null, valid#sm(Heap[this, next])][o_26, f_29] ==> newPMask[o_26, f_29]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(valid(this), write) in this.next) might not hold. (nestedPredicates.vpr@40.13--40.73) [146803]"}
      this != Heap[this, next];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o: Ref, f_85: (Field A B) ::
          { newPMask[o, f_85] }
          Heap[null, valid#sm(this)][o, f_85] || Heap[null, valid#sm(Heap[this, next])][o, f_85] ==> newPMask[o, f_85]
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
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@41.10--41.73) [146804]"}
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
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@41.10--41.73) [146805]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
            { newPMask[o_11, f_3] }
            Heap[null, valid#sm(this)][o_11, f_3] || Heap[null, valid#sm(Heap[this, next])][o_11, f_3] ==> newPMask[o_11, f_3]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
            { newPMask[o_35, f_17] }
            Heap[null, valid#sm(this)][o_35, f_17] || Heap[null, valid#sm(Heap[this, next])][o_35, f_17] ==> newPMask[o_35, f_17]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: assert (unfolding acc(valid(this), wildcard) in this.next) !=
  //   (unfolding acc(valid(this), wildcard) in
  //     (unfolding acc(valid(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@42.7--42.178
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (unfolding acc(valid(this), wildcard) in this.next) != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(this));
          assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@42.15--42.177) [146806]"}
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
          UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@42.15--42.177) [146807]"}
            HasDirectPerm(UnfoldingMask, this, next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
                { newPMask[o_1, f_11] }
                Heap[null, valid#sm(this)][o_1, f_11] || Heap[null, valid#sm(Heap[this, next])][o_1, f_11] ==> newPMask[o_1, f_11]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(this));
          assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@42.15--42.177) [146808]"}
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
          UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
          assume Unfolding1Heap[null, valid(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@42.15--42.177) [146809]"}
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
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value:=Unfolding1Mask[Unfolding1Heap[this, next], value] + perm];
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@42.15--42.177) [146810]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@42.15--42.177) [146811]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@42.15--42.177) [146812]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
                { newPMask[o_12, f_9] }
                Heap[null, valid#sm(Heap[this, next])][o_12, f_9] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_12, f_9] ==> newPMask[o_12, f_9]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
                { newPMask[o_22, f_24] }
                Heap[null, valid#sm(this)][o_22, f_24] || Heap[null, valid#sm(Heap[this, next])][o_22, f_24] ==> newPMask[o_22, f_24]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
                { newPMask[o_3, f_12] }
                Heap[null, valid#sm(Heap[this, next])][o_3, f_12] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_3, f_12] ==> newPMask[o_3, f_12]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
                { newPMask[o_46, f_35] }
                Heap[null, valid#sm(this)][o_46, f_35] || Heap[null, valid#sm(Heap[this, next])][o_46, f_35] ==> newPMask[o_46, f_35]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
                { newPMask[o_41, f_25] }
                Heap[null, valid#sm(this)][o_41, f_25] || Heap[null, valid#sm(Heap[this, next])][o_41, f_25] ==> newPMask[o_41, f_25]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
                { newPMask[o_34, f_44] }
                Heap[null, valid#sm(Heap[this, next])][o_34, f_44] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_34, f_44] ==> newPMask[o_34, f_44]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(valid(this), wildcard) in this.next) != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@42.15--42.177) [146813]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
              { newPMask[o_55, f_36] }
              Heap[null, valid#sm(this)][o_55, f_36] || Heap[null, valid#sm(Heap[this, next])][o_55, f_36] ==> newPMask[o_55, f_36]
            );
            Heap := Heap[null, valid#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
              { newPMask[o_42, f_26] }
              Heap[null, valid#sm(this)][o_42, f_26] || Heap[null, valid#sm(Heap[this, next])][o_42, f_26] ==> newPMask[o_42, f_26]
            );
            Heap := Heap[null, valid#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
              { newPMask[o_13, f_45] }
              Heap[null, valid#sm(Heap[this, next])][o_13, f_45] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_13, f_45] ==> newPMask[o_13, f_45]
            );
            Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(valid(this), wildcard) in
  //     (unfolding acc(valid(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@43.7--43.131
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume valid#trigger(UnfoldingHeap, valid(this));
          assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@43.15--43.130) [146814]"}
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
          UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
          assume Unfolding1Heap[null, valid(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.next) (nestedPredicates.vpr@43.15--43.130) [146815]"}
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
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value:=Unfolding1Mask[Unfolding1Heap[this, next], value] + perm];
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
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@43.15--43.130) [146816]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@43.15--43.130) [146817]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@43.15--43.130) [146818]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_43: Ref, f_13: (Field A B) ::
                { newPMask[o_43, f_13] }
                Heap[null, valid#sm(Heap[this, next])][o_43, f_13] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_43, f_13] ==> newPMask[o_43, f_13]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_47: Ref, f_41: (Field A B) ::
                { newPMask[o_47, f_41] }
                Heap[null, valid#sm(this)][o_47, f_41] || Heap[null, valid#sm(Heap[this, next])][o_47, f_41] ==> newPMask[o_47, f_41]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_14: Ref, f_51: (Field A B) ::
                { newPMask[o_14, f_51] }
                Heap[null, valid#sm(Heap[this, next])][o_14, f_51] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_14, f_51] ==> newPMask[o_14, f_51]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
            Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_44: Ref, f_14: (Field A B) ::
                { newPMask[o_44, f_14] }
                Heap[null, valid#sm(this)][o_44, f_14] || Heap[null, valid#sm(Heap[this, next])][o_44, f_14] ==> newPMask[o_44, f_14]
              );
              Heap := Heap[null, valid#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_28: Ref, f_42: (Field A B) ::
                { newPMask[o_28, f_42] }
                Heap[null, valid#sm(Heap[this, next])][o_28, f_42] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_28, f_42] ==> newPMask[o_28, f_42]
              );
              Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(valid(this), wildcard) in (unfolding acc(valid(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@43.15--43.130) [146819]"}
          this != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
          Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_76: Ref, f_34: (Field A B) ::
              { newPMask[o_76, f_34] }
              Heap[null, valid#sm(this)][o_76, f_34] || Heap[null, valid#sm(Heap[this, next])][o_76, f_34] ==> newPMask[o_76, f_34]
            );
            Heap := Heap[null, valid#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], value:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_51: Ref, f_46: (Field A B) ::
              { newPMask[o_51, f_46] }
              Heap[null, valid#sm(Heap[this, next])][o_51, f_46] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_51, f_46] ==> newPMask[o_51, f_46]
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(p(this), wildcard) -- nestedPredicates.vpr@51.5--51.34
    assume p#trigger(Heap, p_14(this));
    assume Heap[null, p_14(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value]), FrameFragment((if Heap[this, next] != null then Heap[null, q_18(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Unfolding p(this) might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@51.5--51.34) [146821]"}
      Mask[null, p_14(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, p_14(this)];
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p_14(this))) {
        havoc newVersion;
        Heap := Heap[null, p_14(this):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, q_18(Heap[this, next]):=Mask[null, q_18(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(p_14(this), Heap[null, p_14(this)], q_18(Heap[this, next]), Heap[null, q_18(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@53.5--53.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@53.13--53.34) [146822]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@53.13--53.34) [146823]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next != null) -- nestedPredicates.vpr@54.5--59.6
    
    // -- Check definedness of this.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@54.10--54.31) [146824]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: unfold acc(q(this.next), wildcard) -- nestedPredicates.vpr@55.7--55.41
        
        // -- Check definedness of acc(q(this.next), wildcard)
          assert {:msg "  Unfolding q(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@55.7--55.41) [146825]"}
            HasDirectPerm(Mask, this, next);
        assume q#trigger(Heap, q_18(Heap[this, next]));
        assume Heap[null, q_18(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, p_14(Heap[Heap[this, next], next])] else EmptyFrame))));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Unfolding q(this.next) might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@55.7--55.41) [146827]"}
          Mask[null, q_18(Heap[this, next])] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[null, q_18(Heap[this, next])];
        Mask := Mask[null, q_18(Heap[this, next]):=Mask[null, q_18(Heap[this, next])] - wildcard];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, q_18(Heap[this, next]))) {
            havoc newVersion;
            Heap := Heap[null, q_18(Heap[this, next]):=newVersion];
          }
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, next] != null;
        Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume Heap[this, next] != null;
        Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] + perm];
        assume state(Heap, Mask);
        if (Heap[Heap[this, next], next] != null) {
          havoc wildcard;
          perm := wildcard;
          Mask := Mask[null, p_14(Heap[Heap[this, next], next]):=Mask[null, p_14(Heap[Heap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(q_18(Heap[this, next]), Heap[null, q_18(Heap[this, next])], p_14(Heap[Heap[this, next], next]), Heap[null, p_14(Heap[Heap[this, next], next])]);
          assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@57.7--57.47
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this.next != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@57.15--57.46) [146828]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@57.15--57.46) [146829]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@57.15--57.46) [146830]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@57.15--57.46) [146831]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@58.7--58.42
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != this.next.next
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@58.15--58.41) [146832]"}
            HasDirectPerm(ExhaleWellDef0Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@58.15--58.41) [146833]"}
            HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
        assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@58.15--58.41) [146834]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.next, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@63.14--63.43) [146835]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.value, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@64.14--64.44) [146836]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@65.14--65.69) [146837]"}
        HasDirectPerm(Mask, this, next);
    assume Heap[this, next] != null;
    
    // -- Check definedness of this.next.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@65.14--65.69) [146838]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@65.14--65.69) [146839]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    assume Heap[Heap[this, next], next] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p(this.next.next), wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@66.14--66.46) [146840]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@66.14--66.46) [146841]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_14(Heap[Heap[this, next], next]):=Mask[null, p_14(Heap[Heap[this, next], next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(q(this.next), wildcard) -- nestedPredicates.vpr@68.5--68.37
    
    // -- Check definedness of acc(q(this.next), wildcard)
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@68.5--68.37) [146842]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@68.5--68.37) [146844]"}
      Mask[Heap[this, next], next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], next];
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - wildcard];
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.value (nestedPredicates.vpr@68.5--68.37) [146845]"}
      Mask[Heap[this, next], value] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], value];
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] - wildcard];
    if (Heap[Heap[this, next], next] != null) {
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access p(this.next.next) (nestedPredicates.vpr@68.5--68.37) [146846]"}
        Mask[null, p_14(Heap[Heap[this, next], next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, p_14(Heap[Heap[this, next], next])];
      Mask := Mask[null, p_14(Heap[Heap[this, next], next]):=Mask[null, p_14(Heap[Heap[this, next], next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(q_18(Heap[this, next]), Heap[null, q_18(Heap[this, next])], p_14(Heap[Heap[this, next], next]), Heap[null, p_14(Heap[Heap[this, next], next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, q_18(Heap[this, next]):=Mask[null, q_18(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume q#trigger(Heap, q_18(Heap[this, next]));
    assume Heap[null, q_18(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, p_14(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, q_18(Heap[this, next]))) {
      Heap := Heap[null, q#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, q_18(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_29: Ref, f_81: (Field A B) ::
        { newPMask[o_29, f_81] }
        Heap[null, q#sm(Heap[this, next])][o_29, f_81] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_29, f_81] ==> newPMask[o_29, f_81]
      );
      Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@70.5--70.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@70.13--70.34) [146847]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@70.13--70.34) [146848]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@72.5--72.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.next != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@72.13--72.44) [146849]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@72.13--72.44) [146850]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@72.13--72.44) [146851]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@72.13--72.44) [146852]"}
      Heap[this, next] != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@74.5--74.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@74.13--74.39) [146853]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@74.13--74.39) [146854]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@74.13--74.39) [146855]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.next, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@78.14--78.43) [146856]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.next.value, wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@79.14--79.44) [146857]"}
        HasDirectPerm(Mask, this, next);
    havoc wildcard;
    perm := wildcard;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@80.14--80.69) [146858]"}
        HasDirectPerm(Mask, this, next);
    assume Heap[this, next] != null;
    
    // -- Check definedness of this.next.next != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@80.14--80.69) [146859]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@80.14--80.69) [146860]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    assume Heap[Heap[this, next], next] != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p(this.next.next), wildcard)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@81.14--81.46) [146861]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@81.14--81.46) [146862]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_14(Heap[Heap[this, next], next]):=Mask[null, p_14(Heap[Heap[this, next], next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(q(this.next), wildcard) -- nestedPredicates.vpr@83.5--83.37
    
    // -- Check definedness of acc(q(this.next), wildcard)
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@83.5--83.37) [146863]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@83.5--83.37) [146865]"}
      Mask[Heap[this, next], next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], next];
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - wildcard];
    assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access this.next.value (nestedPredicates.vpr@83.5--83.37) [146866]"}
      Mask[Heap[this, next], value] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[Heap[this, next], value];
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] - wildcard];
    if (Heap[Heap[this, next], next] != null) {
      assert {:msg "  Folding q(this.next) might fail. There might be insufficient permission to access p(this.next.next) (nestedPredicates.vpr@83.5--83.37) [146867]"}
        Mask[null, p_14(Heap[Heap[this, next], next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, p_14(Heap[Heap[this, next], next])];
      Mask := Mask[null, p_14(Heap[Heap[this, next], next]):=Mask[null, p_14(Heap[Heap[this, next], next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(q_18(Heap[this, next]), Heap[null, q_18(Heap[this, next])], p_14(Heap[Heap[this, next], next]), Heap[null, p_14(Heap[Heap[this, next], next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, q_18(Heap[this, next]):=Mask[null, q_18(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume q#trigger(Heap, q_18(Heap[this, next]));
    assume Heap[null, q_18(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), CombineFrames(FrameFragment(Heap[Heap[this, next], value]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, p_14(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, q_18(Heap[this, next]))) {
      Heap := Heap[null, q#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, q_18(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
    Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_77: Ref, f_52: (Field A B) ::
        { newPMask[o_77, f_52] }
        Heap[null, q#sm(Heap[this, next])][o_77, f_52] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_77, f_52] ==> newPMask[o_77, f_52]
      );
      Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p(this), wildcard) -- nestedPredicates.vpr@84.5--84.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding p(this) might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@84.5--84.32) [146869]"}
      Mask[this, next] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, next];
    Mask := Mask[this, next:=Mask[this, next] - wildcard];
    assert {:msg "  Folding p(this) might fail. There might be insufficient permission to access this.value (nestedPredicates.vpr@84.5--84.32) [146870]"}
      Mask[this, value] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[this, value];
    Mask := Mask[this, value:=Mask[this, value] - wildcard];
    if (Heap[this, next] != null) {
      assert {:msg "  Folding p(this) might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@84.5--84.32) [146871]"}
        Mask[null, q_18(Heap[this, next])] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[null, q_18(Heap[this, next])];
      Mask := Mask[null, q_18(Heap[this, next]):=Mask[null, q_18(Heap[this, next])] - wildcard];
      
      // -- Record predicate instance information
        assume InsidePredicate(p_14(this), Heap[null, p_14(this)], q_18(Heap[this, next]), Heap[null, q_18(Heap[this, next])]);
    }
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p#trigger(Heap, p_14(this));
    assume Heap[null, p_14(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value]), FrameFragment((if Heap[this, next] != null then Heap[null, q_18(Heap[this, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, p_14(this))) {
      Heap := Heap[null, p#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p_14(this):=freshVersion];
    }
    Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
    Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_78: Ref, f_49: (Field A B) ::
        { newPMask[o_78, f_49] }
        Heap[null, p#sm(this)][o_78, f_49] || Heap[null, q#sm(Heap[this, next])][o_78, f_49] ==> newPMask[o_78, f_49]
      );
      Heap := Heap[null, p#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next -- nestedPredicates.vpr@85.5--85.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@85.13--85.34) [146872]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this != this.next might not hold. (nestedPredicates.vpr@85.13--85.34) [146873]"}
      this != Heap[this, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next != this.next.next -- nestedPredicates.vpr@87.5--87.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.next != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@87.13--87.44) [146874]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@87.13--87.44) [146875]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@87.13--87.44) [146876]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this.next != this.next.next might not hold. (nestedPredicates.vpr@87.13--87.44) [146877]"}
      Heap[this, next] != Heap[Heap[this, next], next];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this != this.next.next -- nestedPredicates.vpr@88.5--88.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != this.next.next
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@88.13--88.39) [146878]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@88.13--88.39) [146879]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this != this.next.next might not hold. (nestedPredicates.vpr@88.13--88.39) [146880]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert this != (unfolding acc(p(this), wildcard) in this.next) -- nestedPredicates.vpr@94.5--94.73
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this != (unfolding acc(p(this), wildcard) in this.next)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume p#trigger(UnfoldingHeap, p_14(this));
      assume UnfoldingHeap[null, p_14(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@94.13--94.72) [146881]"}
        UnfoldingMask[null, p_14(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, p_14(this)];
      UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, q_18(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_18(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(p_14(this), UnfoldingHeap[null, p_14(this)], q_18(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@94.13--94.72) [146882]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_63: Ref, f_86: (Field A B) ::
            { newPMask[o_63, f_86] }
            Heap[null, p#sm(this)][o_63, f_86] || Heap[null, q#sm(Heap[this, next])][o_63, f_86] ==> newPMask[o_63, f_86]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_79: Ref, f_87: (Field A B) ::
            { newPMask[o_79, f_87] }
            Heap[null, p#sm(this)][o_79, f_87] || Heap[null, q#sm(Heap[this, next])][o_79, f_87] ==> newPMask[o_79, f_87]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this != (unfolding acc(p(this), wildcard) in this.next) might not hold. (nestedPredicates.vpr@94.13--94.72) [146883]"}
      this != Heap[this, next];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
      Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
          { newPMask[o_80, f_88] }
          Heap[null, p#sm(this)][o_80, f_88] || Heap[null, q#sm(Heap[this, next])][o_80, f_88] ==> newPMask[o_80, f_88]
        );
        Heap := Heap[null, p#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((unfolding acc(p(this), wildcard) in this.next) != null) -- nestedPredicates.vpr@95.5--99.6
    
    // -- Check definedness of (unfolding acc(p(this), wildcard) in this.next) != null
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_14(this));
      assume UnfoldingHeap[null, p_14(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@95.10--95.69) [146884]"}
        UnfoldingMask[null, p_14(this)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, p_14(this)];
      UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, q_18(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_18(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(p_14(this), UnfoldingHeap[null, p_14(this)], q_18(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@95.10--95.69) [146885]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_81: Ref, f_57: (Field A B) ::
            { newPMask[o_81, f_57] }
            Heap[null, p#sm(this)][o_81, f_57] || Heap[null, q#sm(Heap[this, next])][o_81, f_57] ==> newPMask[o_81, f_57]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_82: Ref, f_70: (Field A B) ::
            { newPMask[o_82, f_70] }
            Heap[null, p#sm(this)][o_82, f_70] || Heap[null, q#sm(Heap[this, next])][o_82, f_70] ==> newPMask[o_82, f_70]
          );
          Heap := Heap[null, p#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: assert (unfolding acc(p(this), wildcard) in this.next) !=
  //   (unfolding acc(p(this), wildcard) in
  //     (unfolding acc(q(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@97.7--97.166
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of (unfolding acc(p(this), wildcard) in this.next) != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p#trigger(UnfoldingHeap, p_14(this));
          assume UnfoldingHeap[null, p_14(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@97.15--97.165) [146886]"}
            UnfoldingMask[null, p_14(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, p_14(this)];
          UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, q_18(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_18(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(p_14(this), UnfoldingHeap[null, p_14(this)], q_18(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@97.15--97.165) [146887]"}
            HasDirectPerm(UnfoldingMask, this, next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_83: Ref, f_89: (Field A B) ::
                { newPMask[o_83, f_89] }
                Heap[null, p#sm(this)][o_83, f_89] || Heap[null, q#sm(Heap[this, next])][o_83, f_89] ==> newPMask[o_83, f_89]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p#trigger(UnfoldingHeap, p_14(this));
          assume UnfoldingHeap[null, p_14(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@97.15--97.165) [146888]"}
            UnfoldingMask[null, p_14(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, p_14(this)];
          UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, q_18(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_18(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(p_14(this), UnfoldingHeap[null, p_14(this)], q_18(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume q#trigger(Unfolding1Heap, q_18(Unfolding1Heap[this, next]));
          assume Unfolding1Heap[null, q_18(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@97.15--97.165) [146889]"}
            Unfolding1Mask[null, q_18(Unfolding1Heap[this, next])] > NoPerm;
          havoc wildcard;
          assume wildcard < Unfolding1Mask[null, q_18(Unfolding1Heap[this, next])];
          Unfolding1Mask := Unfolding1Mask[null, q_18(Unfolding1Heap[this, next]):=Unfolding1Mask[null, q_18(Unfolding1Heap[this, next])] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value:=Unfolding1Mask[Unfolding1Heap[this, next], value] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
            havoc wildcard;
            perm := wildcard;
            Unfolding1Mask := Unfolding1Mask[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(q_18(Unfolding1Heap[this, next]), Unfolding1Heap[null, q_18(Unfolding1Heap[this, next])], p_14(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@97.15--97.165) [146890]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@97.15--97.165) [146891]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@97.15--97.165) [146892]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_68: Ref, f_58: (Field A B) ::
                { newPMask[o_68, f_58] }
                Heap[null, q#sm(Heap[this, next])][o_68, f_58] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_68, f_58] ==> newPMask[o_68, f_58]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_84: Ref, f_71: (Field A B) ::
                { newPMask[o_84, f_71] }
                Heap[null, p#sm(this)][o_84, f_71] || Heap[null, q#sm(Heap[this, next])][o_84, f_71] ==> newPMask[o_84, f_71]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_85: Ref, f_60: (Field A B) ::
                { newPMask[o_85, f_60] }
                Heap[null, q#sm(Heap[this, next])][o_85, f_60] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_85, f_60] ==> newPMask[o_85, f_60]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_69: Ref, f_90: (Field A B) ::
                { newPMask[o_69, f_90] }
                Heap[null, p#sm(this)][o_69, f_90] || Heap[null, q#sm(Heap[this, next])][o_69, f_90] ==> newPMask[o_69, f_90]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_86: Ref, f_91: (Field A B) ::
                { newPMask[o_86, f_91] }
                Heap[null, p#sm(this)][o_86, f_91] || Heap[null, q#sm(Heap[this, next])][o_86, f_91] ==> newPMask[o_86, f_91]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_87: Ref, f_61: (Field A B) ::
                { newPMask[o_87, f_61] }
                Heap[null, q#sm(Heap[this, next])][o_87, f_61] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_87, f_61] ==> newPMask[o_87, f_61]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion (unfolding acc(p(this), wildcard) in this.next) != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@97.15--97.165) [146893]"}
          Heap[this, next] != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_88: Ref, f_78: (Field A B) ::
              { newPMask[o_88, f_78] }
              Heap[null, p#sm(this)][o_88, f_78] || Heap[null, q#sm(Heap[this, next])][o_88, f_78] ==> newPMask[o_88, f_78]
            );
            Heap := Heap[null, p#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_89: Ref, f_92: (Field A B) ::
              { newPMask[o_89, f_92] }
              Heap[null, p#sm(this)][o_89, f_92] || Heap[null, q#sm(Heap[this, next])][o_89, f_92] ==> newPMask[o_89, f_92]
            );
            Heap := Heap[null, p#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_90: Ref, f_93: (Field A B) ::
              { newPMask[o_90, f_93] }
              Heap[null, q#sm(Heap[this, next])][o_90, f_93] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_90, f_93] ==> newPMask[o_90, f_93]
            );
            Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert this !=
  //   (unfolding acc(p(this), wildcard) in
  //     (unfolding acc(q(this.next), wildcard) in this.next.next)) -- nestedPredicates.vpr@98.7--98.123
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of this != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next))
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume p#trigger(UnfoldingHeap, p_14(this));
          assume UnfoldingHeap[null, p_14(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])] else EmptyFrame))));
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access p(this) (nestedPredicates.vpr@98.15--98.122) [146894]"}
            UnfoldingMask[null, p_14(this)] > NoPerm;
          havoc wildcard;
          assume wildcard < UnfoldingMask[null, p_14(this)];
          UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc wildcard;
          perm := wildcard;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[this, next] != null) {
            havoc wildcard;
            perm := wildcard;
            UnfoldingMask := UnfoldingMask[null, q_18(UnfoldingHeap[this, next]):=UnfoldingMask[null, q_18(UnfoldingHeap[this, next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(p_14(this), UnfoldingHeap[null, p_14(this)], q_18(UnfoldingHeap[this, next]), UnfoldingHeap[null, q_18(UnfoldingHeap[this, next])]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume q#trigger(Unfolding1Heap, q_18(Unfolding1Heap[this, next]));
          assume Unfolding1Heap[null, q_18(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], value]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame))));
          ExhaleWellDef1Mask := Unfolding1Mask;
          ExhaleWellDef1Heap := Unfolding1Heap;
          assert {:msg "  Assert might fail. There might be insufficient permission to access q(this.next) (nestedPredicates.vpr@98.15--98.122) [146895]"}
            Unfolding1Mask[null, q_18(Unfolding1Heap[this, next])] > NoPerm;
          havoc wildcard;
          assume wildcard < Unfolding1Mask[null, q_18(Unfolding1Heap[this, next])];
          Unfolding1Mask := Unfolding1Mask[null, q_18(Unfolding1Heap[this, next]):=Unfolding1Mask[null, q_18(Unfolding1Heap[this, next])] - wildcard];
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          havoc wildcard;
          perm := wildcard;
          assume Unfolding1Heap[this, next] != null;
          Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], value:=Unfolding1Mask[Unfolding1Heap[this, next], value] + perm];
          assume state(Unfolding1Heap, Unfolding1Mask);
          if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
            havoc wildcard;
            perm := wildcard;
            Unfolding1Mask := Unfolding1Mask[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(q_18(Unfolding1Heap[this, next]), Unfolding1Heap[null, q_18(Unfolding1Heap[this, next])], p_14(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, p_14(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
            assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@98.15--98.122) [146896]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (nestedPredicates.vpr@98.15--98.122) [146897]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (nestedPredicates.vpr@98.15--98.122) [146898]"}
            HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_91: Ref, f_79: (Field A B) ::
                { newPMask[o_91, f_79] }
                Heap[null, q#sm(Heap[this, next])][o_91, f_79] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_91, f_79] ==> newPMask[o_91, f_79]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_64: Ref, f_94: (Field A B) ::
                { newPMask[o_64, f_94] }
                Heap[null, p#sm(this)][o_64, f_94] || Heap[null, q#sm(Heap[this, next])][o_64, f_94] ==> newPMask[o_64, f_94]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_92: Ref, f_68: (Field A B) ::
                { newPMask[o_92, f_68] }
                Heap[null, q#sm(Heap[this, next])][o_92, f_68] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_92, f_68] ==> newPMask[o_92, f_68]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
            Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
            if (Heap[this, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_93: Ref, f_95: (Field A B) ::
                { newPMask[o_93, f_95] }
                Heap[null, p#sm(this)][o_93, f_95] || Heap[null, q#sm(Heap[this, next])][o_93, f_95] ==> newPMask[o_93, f_95]
              );
              Heap := Heap[null, p#sm(this):=newPMask];
            }
            assume state(Heap, Mask);
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
            Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
            if (Heap[Heap[this, next], next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_65: Ref, f_96: (Field A B) ::
                { newPMask[o_65, f_96] }
                Heap[null, q#sm(Heap[this, next])][o_65, f_96] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_65, f_96] ==> newPMask[o_65, f_96]
              );
              Heap := Heap[null, q#sm(Heap[this, next]):=newPMask];
            }
            assume state(Heap, Mask);
        assert {:msg "  Assert might fail. Assertion this != (unfolding acc(p(this), wildcard) in (unfolding acc(q(this.next), wildcard) in this.next.next)) might not hold. (nestedPredicates.vpr@98.15--98.122) [146899]"}
          this != Heap[Heap[this, next], next];
        
        // -- Free assumptions (exhale module)
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, next:=true]];
          Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, value:=true]];
          if (Heap[this, next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_94: Ref, f_97: (Field A B) ::
              { newPMask[o_94, f_97] }
              Heap[null, p#sm(this)][o_94, f_97] || Heap[null, q#sm(Heap[this, next])][o_94, f_97] ==> newPMask[o_94, f_97]
            );
            Heap := Heap[null, p#sm(this):=newPMask];
          }
          assume state(Heap, Mask);
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], next:=true]];
          Heap := Heap[null, q#sm(Heap[this, next]):=Heap[null, q#sm(Heap[this, next])][Heap[this, next], value:=true]];
          if (Heap[Heap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_95: Ref, f_98: (Field A B) ::
              { newPMask[o_95, f_98] }
              Heap[null, q#sm(Heap[this, next])][o_95, f_98] || Heap[null, p#sm(Heap[Heap[this, next], next])][o_95, f_98] ==> newPMask[o_95, f_98]
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
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
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@102.14--102.106) [146900]"}
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
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (nestedPredicates.vpr@102.14--102.106) [146901]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_96: Ref, f_99: (Field A B) ::
            { newPMask[o_96, f_99] }
            Heap[null, valid#sm(this)][o_96, f_99] || Heap[null, valid#sm(Heap[this, next])][o_96, f_99] ==> newPMask[o_96, f_99]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
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
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert this != x -- nestedPredicates.vpr@104.5--104.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion this != x might not hold. (nestedPredicates.vpr@104.13--104.26) [146902]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
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
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@111.13--111.89) [146903]"}
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
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
        PostHeap := PostHeap[null, valid#sm(this):=PostHeap[null, valid#sm(this)][this, value:=true]];
        if (PostHeap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_97: Ref, f_100: (Field A B) ::
            { newPMask[o_97, f_100] }
            PostHeap[null, valid#sm(this)][o_97, f_100] || PostHeap[null, valid#sm(PostHeap[this, next])][o_97, f_100] ==> newPMask[o_97, f_100]
          );
          PostHeap := PostHeap[null, valid#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
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
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of testNestingUnfoldingPostcondition might not hold. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@111.13--111.89) [146904]"}
      Mask[null, valid(this)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, valid(this)];
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - wildcard];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      assert {:msg "  Postcondition of testNestingUnfoldingPostcondition might not hold. There might be insufficient permission to access valid(this) (nestedPredicates.vpr@111.13--111.89) [146905]"}
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
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_98: Ref, f_101: (Field A B) ::
          { newPMask[o_98, f_101] }
          Heap[null, valid#sm(this)][o_98, f_101] || Heap[null, valid#sm(Heap[this, next])][o_98, f_101] ==> newPMask[o_98, f_101]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}