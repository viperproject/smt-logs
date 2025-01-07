// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:19:16
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/test1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_42: Ref, f_48: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_42, f_48] }
  Heap[o_42, $allocated] ==> Heap[Heap[o_42, f_48], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref, f_43: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, f_43] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_47, f_43) ==> Heap[o_47, f_43] == ExhaleHeap[o_47, f_43]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52), ExhaleHeap[null, PredicateMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> Heap[null, PredicateMaskField(pm_f_52)] == ExhaleHeap[null, PredicateMaskField(pm_f_52)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsPredicateField(pm_f_52) ==> (forall <A, B> o2_52: Ref, f_43: (Field A B) ::
    { ExhaleHeap[o2_52, f_43] }
    Heap[null, PredicateMaskField(pm_f_52)][o2_52, f_43] ==> Heap[o2_52, f_43] == ExhaleHeap[o2_52, f_43]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52), ExhaleHeap[null, WandMaskField(pm_f_52)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> Heap[null, WandMaskField(pm_f_52)] == ExhaleHeap[null, WandMaskField(pm_f_52)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_52: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_52) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_52) && IsWandField(pm_f_52) ==> (forall <A, B> o2_52: Ref, f_43: (Field A B) ::
    { ExhaleHeap[o2_52, f_43] }
    Heap[null, WandMaskField(pm_f_52)][o2_52, f_43] ==> Heap[o2_52, f_43] == ExhaleHeap[o2_52, f_43]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_47: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_47, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_47, $allocated] ==> ExhaleHeap[o_47, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_42: Ref, f_45: (Field A B), v: B ::
  { Heap[o_42, f_45:=v] }
  succHeap(Heap, Heap[o_42, f_45:=v])
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
// - height 0: get
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
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, this: Ref): int;
function  get'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { get(Heap, this) }
  get(Heap, this) == get'(Heap, this) && dummyFunction(get#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { get'(Heap, this) }
  dummyFunction(get#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), get(Heap, this) } { state(Heap, Mask), get#triggerStateless(this), inv#trigger(Heap, inv(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, this) == Heap[this, value]
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), get'(Heap, this) }
  state(Heap, Mask) ==> get'(Heap, this) == get#frame(Heap[null, inv(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
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
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(inv(this), write) in this.value)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access inv(this) (test1.vpr@7.3--9.54) [147435]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (test1.vpr@7.3--9.54) [147436]"}
        HasDirectPerm(UnfoldingMask, this, value);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, inv#sm(this)][o_15, f_20] || Heap[null, inv#sm(Heap[this, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, inv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[this, value];
}

// ==================================================
// Translation of predicate inv
// ==================================================

type PredicateType_inv;
function  inv(this: Ref): Field PredicateType_inv FrameType;
function  inv#sm(this: Ref): Field PredicateType_inv PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(inv(this)) }
  PredicateMaskField(inv(this)) == inv#sm(this)
);
axiom (forall this: Ref ::
  { inv(this) }
  IsPredicateField(inv(this))
);
axiom (forall this: Ref ::
  { inv(this) }
  getPredWandId(inv(this)) == 0
);
function  inv#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  inv#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { inv(this), inv(this2) }
  inv(this) == inv(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { inv#sm(this), inv#sm(this2) }
  inv#sm(this) == inv#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { inv#trigger(Heap, inv(this)) }
  inv#everUsed(inv(this))
);

procedure inv#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of inv
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (test1.vpr@6.3--6.139) [147437]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(inv(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (test1.vpr@6.3--6.139) [147438]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, inv(Heap[this, next]):=Mask[null, inv(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newPMask: PMaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
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
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(inv(this), write) in this.next != null)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inv(this) (test1.vpr@11.14--11.99) [147439]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (test1.vpr@11.14--11.99) [147440]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, inv#sm(this)][o_16, f_21] || Heap[null, inv#sm(Heap[this, next])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, inv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, next] != null;
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
    PostMask := PostMask[null, inv(this):=PostMask[null, inv(this)] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(inv(this), write) in this.next != null)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access inv(this) (test1.vpr@12.13--12.98) [147441]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (test1.vpr@12.13--12.98) [147442]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, inv#sm(this):=PostHeap[null, inv#sm(this)][this, value:=true]];
        PostHeap := PostHeap[null, inv#sm(this):=PostHeap[null, inv#sm(this)][this, next:=true]];
        if (PostHeap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            PostHeap[null, inv#sm(this)][o_52, f_55] || PostHeap[null, inv#sm(PostHeap[this, next])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          PostHeap := PostHeap[null, inv#sm(this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, next] != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(inv(this), write) -- test1.vpr@14.5--14.33
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, value]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, inv(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this) might fail. There might be insufficient permission to access inv(this) (test1.vpr@14.5--14.33) [147445]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(this))) {
        havoc newVersion;
        Heap := Heap[null, inv(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, inv(Heap[this, next]):=Mask[null, inv(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(inv(this), Heap[null, inv(this)], inv(Heap[this, next]), Heap[null, inv(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.value := 0 -- test1.vpr@15.5--15.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (test1.vpr@15.5--15.20) [147449]"}
      FullPerm == Mask[this, value];
    Heap := Heap[this, value:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(this.next), write) -- test1.vpr@16.5--16.38
    
    // -- Check definedness of acc(inv(this.next), write)
      assert {:msg "  Unfolding inv(this.next) might fail. There might be insufficient permission to access this.next (test1.vpr@16.5--16.38) [147450]"}
        HasDirectPerm(Mask, this, next);
    assume inv#trigger(Heap, inv(Heap[this, next]));
    assume Heap[null, inv(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], value]), CombineFrames(FrameFragment(Heap[Heap[this, next], next]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, inv(Heap[Heap[this, next], next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(this.next) might fail. There might be insufficient permission to access inv(this.next) (test1.vpr@16.5--16.38) [147453]"}
        perm <= Mask[null, inv(Heap[this, next])];
    }
    Mask := Mask[null, inv(Heap[this, next]):=Mask[null, inv(Heap[this, next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(Heap[this, next]))) {
        havoc newVersion;
        Heap := Heap[null, inv(Heap[this, next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, inv(Heap[Heap[this, next], next]):=Mask[null, inv(Heap[Heap[this, next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(inv(Heap[this, next]), Heap[null, inv(Heap[this, next])], inv(Heap[Heap[this, next], next]), Heap[null, inv(Heap[Heap[this, next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.next.value := 1 -- test1.vpr@17.5--17.25
    
    // -- Check definedness of this.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (test1.vpr@17.5--17.25) [147457]"}
        HasDirectPerm(Mask, this, next);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next.value (test1.vpr@17.5--17.25) [147458]"}
      FullPerm == Mask[Heap[this, next], value];
    Heap := Heap[Heap[this, next], value:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this.next), write) -- test1.vpr@18.5--18.36
    
    // -- Check definedness of acc(inv(this.next), write)
      assert {:msg "  Folding inv(this.next) might fail. There might be insufficient permission to access this.next (test1.vpr@18.5--18.36) [147459]"}
        HasDirectPerm(Mask, this, next);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this.next) might fail. There might be insufficient permission to access this.next.value (test1.vpr@18.5--18.36) [147462]"}
        perm <= Mask[Heap[this, next], value];
    }
    Mask := Mask[Heap[this, next], value:=Mask[Heap[this, next], value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this.next) might fail. There might be insufficient permission to access this.next.next (test1.vpr@18.5--18.36) [147464]"}
        perm <= Mask[Heap[this, next], next];
    }
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - perm];
    if (Heap[Heap[this, next], next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding inv(this.next) might fail. There might be insufficient permission to access inv(this.next.next) (test1.vpr@18.5--18.36) [147466]"}
          perm <= Mask[null, inv(Heap[Heap[this, next], next])];
      }
      Mask := Mask[null, inv(Heap[Heap[this, next], next]):=Mask[null, inv(Heap[Heap[this, next], next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(inv(Heap[this, next]), Heap[null, inv(Heap[this, next])], inv(Heap[Heap[this, next], next]), Heap[null, inv(Heap[Heap[this, next], next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, inv(Heap[this, next]):=Mask[null, inv(Heap[this, next])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(Heap[this, next]));
    assume Heap[null, inv(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], value]), CombineFrames(FrameFragment(Heap[Heap[this, next], next]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, inv(Heap[Heap[this, next], next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, inv(Heap[this, next]))) {
      Heap := Heap[null, inv#sm(Heap[this, next]):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(Heap[this, next]):=freshVersion];
    }
    Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], value:=true]];
    Heap := Heap[null, inv#sm(Heap[this, next]):=Heap[null, inv#sm(Heap[this, next])][Heap[this, next], next:=true]];
    if (Heap[Heap[this, next], next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
        { newPMask[o_26, f_29] }
        Heap[null, inv#sm(Heap[this, next])][o_26, f_29] || Heap[null, inv#sm(Heap[Heap[this, next], next])][o_26, f_29] ==> newPMask[o_26, f_29]
      );
      Heap := Heap[null, inv#sm(Heap[this, next]):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(this.next) == 1 -- test1.vpr@19.5--19.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of get(this.next) == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (test1.vpr@19.13--19.36) [147468]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this.next) (test1.vpr@19.14--19.28) [147469]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, inv(ExhaleWellDef0Heap[this, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(this.next) == 1 might not hold. (test1.vpr@19.13--19.36) [147470]"}
      get(Heap, Heap[this, next]) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.value == 0 -- test1.vpr@20.5--20.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of this.value == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.value (test1.vpr@20.13--20.32) [147471]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, value);
    assert {:msg "  Assert might fail. Assertion this.value == 0 might not hold. (test1.vpr@20.13--20.32) [147472]"}
      Heap[this, value] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(this), write) -- test1.vpr@21.5--21.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.value (test1.vpr@21.5--21.31) [147475]"}
        perm <= Mask[this, value];
    }
    Mask := Mask[this, value:=Mask[this, value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access this.next (test1.vpr@21.5--21.31) [147477]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding inv(this) might fail. There might be insufficient permission to access inv(this.next) (test1.vpr@21.5--21.31) [147479]"}
          perm <= Mask[null, inv(Heap[this, next])];
      }
      Mask := Mask[null, inv(Heap[this, next]):=Mask[null, inv(Heap[this, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(inv(this), Heap[null, inv(this)], inv(Heap[this, next]), Heap[null, inv(Heap[this, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(this));
    assume Heap[null, inv(this)] == CombineFrames(FrameFragment(Heap[this, value]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, inv(Heap[this, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, inv(this))) {
      Heap := Heap[null, inv#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(this):=freshVersion];
    }
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
    Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_85: (Field A B) ::
        { newPMask[o, f_85] }
        Heap[null, inv#sm(this)][o, f_85] || Heap[null, inv#sm(Heap[this, next])][o, f_85] ==> newPMask[o, f_85]
      );
      Heap := Heap[null, inv#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(this) == 0 -- test1.vpr@22.5--22.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of get(this) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this) (test1.vpr@22.14--22.23) [147481]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, inv(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(this) == 0 might not hold. (test1.vpr@22.13--22.31) [147482]"}
      get(Heap, this) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(inv(this), write) in
  //     this.next != null && get(this.next) == 1) -- test1.vpr@23.5--23.101
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(inv(this), write) in this.next != null && get(this.next) == 1)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this) (test1.vpr@23.13--23.100) [147483]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (test1.vpr@23.13--23.100) [147484]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (Heap[this, next] != null) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (test1.vpr@23.13--23.100) [147485]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := UnfoldingHeap;
          ExhaleWellDef1Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this.next) (test1.vpr@23.77--23.91) [147486]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(UnfoldingHeap[this, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
            { newPMask[o_11, f_3] }
            Heap[null, inv#sm(this)][o_11, f_3] || Heap[null, inv#sm(Heap[this, next])][o_11, f_3] ==> newPMask[o_11, f_3]
          );
          Heap := Heap[null, inv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this.next != null might not hold. (test1.vpr@23.13--23.100) [147487]"}
      Heap[this, next] != null;
    assert {:msg "  Assert might fail. Assertion get(this.next) == 1 might not hold. (test1.vpr@23.13--23.100) [147488]"}
      get(Heap, Heap[this, next]) == 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
          { newPMask[o_35, f_17] }
          Heap[null, inv#sm(this)][o_35, f_17] || Heap[null, inv#sm(Heap[this, next])][o_35, f_17] ==> newPMask[o_35, f_17]
        );
        Heap := Heap[null, inv#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(inv(this), write) in get(this.next) == 1) -- test1.vpr@24.5--24.74
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(inv(this), write) in get(this.next) == 1)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access inv(this) (test1.vpr@24.13--24.73) [147489]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (test1.vpr@24.13--24.73) [147490]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(this.next) (test1.vpr@24.50--24.64) [147491]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, inv(UnfoldingHeap[this, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
        Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
            { newPMask[o_1, f_11] }
            Heap[null, inv#sm(this)][o_1, f_11] || Heap[null, inv#sm(Heap[this, next])][o_1, f_11] ==> newPMask[o_1, f_11]
          );
          Heap := Heap[null, inv#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion get(this.next) == 1 might not hold. (test1.vpr@24.13--24.73) [147492]"}
      get(Heap, Heap[this, next]) == 1;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_12: Ref, f_9: (Field A B) ::
          { newPMask[o_12, f_9] }
          Heap[null, inv#sm(this)][o_12, f_9] || Heap[null, inv#sm(Heap[this, next])][o_12, f_9] ==> newPMask[o_12, f_9]
        );
        Heap := Heap[null, inv#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access inv(this) (test1.vpr@12.13--12.98) [147493]"}
        perm <= Mask[null, inv(this)];
    }
    Mask := Mask[null, inv(this):=Mask[null, inv(this)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume inv#trigger(UnfoldingHeap, inv(this));
      assume UnfoldingHeap[null, inv(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, inv(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of foo might not hold. There might be insufficient permission to access inv(this) (test1.vpr@12.13--12.98) [147494]"}
          perm <= UnfoldingMask[null, inv(this)];
      }
      UnfoldingMask := UnfoldingMask[null, inv(this):=UnfoldingMask[null, inv(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, inv(UnfoldingHeap[this, next]):=UnfoldingMask[null, inv(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(inv(this), UnfoldingHeap[null, inv(this)], inv(UnfoldingHeap[this, next]), UnfoldingHeap[null, inv(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of foo might not hold. Assertion this.next != null might not hold. (test1.vpr@12.13--12.98) [147495]"}
      Heap[this, next] != null;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, value:=true]];
      Heap := Heap[null, inv#sm(this):=Heap[null, inv#sm(this)][this, next:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
          { newPMask[o_53, f_56] }
          Heap[null, inv#sm(this)][o_53, f_56] || Heap[null, inv#sm(Heap[this, next])][o_53, f_56] ==> newPMask[o_53, f_56]
        );
        Heap := Heap[null, inv#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method goo
// ==================================================

procedure goo(this: Ref, a_2: Ref, b_24: Ref, c: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var z: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
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
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
  
  // -- Checked inhaling of precondition
    assume a_2 != null;
    assume b_24 != null;
    perm := FullPerm;
    Mask := Mask[null, inv(a_2):=Mask[null, inv(a_2)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, inv(b_24):=Mask[null, inv(b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[z, $allocated];
  
  // -- Translating statement: unfold acc(inv(a), write) -- test1.vpr@30.5--30.30
    assume inv#trigger(Heap, inv(a_2));
    assume Heap[null, inv(a_2)] == CombineFrames(FrameFragment(Heap[a_2, value]), CombineFrames(FrameFragment(Heap[a_2, next]), FrameFragment((if Heap[a_2, next] != null then Heap[null, inv(Heap[a_2, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(a) might fail. There might be insufficient permission to access inv(a) (test1.vpr@30.5--30.30) [147498]"}
        perm <= Mask[null, inv(a_2)];
    }
    Mask := Mask[null, inv(a_2):=Mask[null, inv(a_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(a_2))) {
        havoc newVersion;
        Heap := Heap[null, inv(a_2):=newVersion];
      }
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, value:=Mask[a_2, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, next:=Mask[a_2, next] + perm];
    assume state(Heap, Mask);
    if (Heap[a_2, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, inv(Heap[a_2, next]):=Mask[null, inv(Heap[a_2, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(inv(a_2), Heap[null, inv(a_2)], inv(Heap[a_2, next]), Heap[null, inv(Heap[a_2, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(b), write) -- test1.vpr@31.5--31.30
    assume inv#trigger(Heap, inv(b_24));
    assume Heap[null, inv(b_24)] == CombineFrames(FrameFragment(Heap[b_24, value]), CombineFrames(FrameFragment(Heap[b_24, next]), FrameFragment((if Heap[b_24, next] != null then Heap[null, inv(Heap[b_24, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(b) might fail. There might be insufficient permission to access inv(b) (test1.vpr@31.5--31.30) [147504]"}
        perm <= Mask[null, inv(b_24)];
    }
    Mask := Mask[null, inv(b_24):=Mask[null, inv(b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(b_24))) {
        havoc newVersion;
        Heap := Heap[null, inv(b_24):=newVersion];
      }
    perm := FullPerm;
    assume b_24 != null;
    Mask := Mask[b_24, value:=Mask[b_24, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume b_24 != null;
    Mask := Mask[b_24, next:=Mask[b_24, next] + perm];
    assume state(Heap, Mask);
    if (Heap[b_24, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, inv(Heap[b_24, next]):=Mask[null, inv(Heap[b_24, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(inv(b_24), Heap[null, inv(b_24)], inv(Heap[b_24, next]), Heap[null, inv(Heap[b_24, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: a.value := 0 -- test1.vpr@32.5--32.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.value (test1.vpr@32.5--32.17) [147508]"}
      FullPerm == Mask[a_2, value];
    Heap := Heap[a_2, value:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: b.value := 1 -- test1.vpr@33.5--33.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access b.value (test1.vpr@33.5--33.17) [147509]"}
      FullPerm == Mask[b_24, value];
    Heap := Heap[b_24, value:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (c) -- test1.vpr@34.5--38.6
    if (c) {
      
      // -- Translating statement: z := a -- test1.vpr@35.7--35.13
        z := a_2;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: z := b -- test1.vpr@37.7--37.13
        z := b_24;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(inv(z), write) -- test1.vpr@39.5--39.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(z) might fail. There might be insufficient permission to access z.value (test1.vpr@39.5--39.28) [147512]"}
        perm <= Mask[z, value];
    }
    Mask := Mask[z, value:=Mask[z, value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding inv(z) might fail. There might be insufficient permission to access z.next (test1.vpr@39.5--39.28) [147514]"}
        perm <= Mask[z, next];
    }
    Mask := Mask[z, next:=Mask[z, next] - perm];
    if (Heap[z, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding inv(z) might fail. There might be insufficient permission to access inv(z.next) (test1.vpr@39.5--39.28) [147516]"}
          perm <= Mask[null, inv(Heap[z, next])];
      }
      Mask := Mask[null, inv(Heap[z, next]):=Mask[null, inv(Heap[z, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(inv(z), Heap[null, inv(z)], inv(Heap[z, next]), Heap[null, inv(Heap[z, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, inv(z):=Mask[null, inv(z)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume inv#trigger(Heap, inv(z));
    assume Heap[null, inv(z)] == CombineFrames(FrameFragment(Heap[z, value]), CombineFrames(FrameFragment(Heap[z, next]), FrameFragment((if Heap[z, next] != null then Heap[null, inv(Heap[z, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, inv(z))) {
      Heap := Heap[null, inv#sm(z):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, inv(z):=freshVersion];
    }
    Heap := Heap[null, inv#sm(z):=Heap[null, inv#sm(z)][z, value:=true]];
    Heap := Heap[null, inv#sm(z):=Heap[null, inv#sm(z)][z, next:=true]];
    if (Heap[z, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
        { newPMask[o_22, f_24] }
        Heap[null, inv#sm(z)][o_22, f_24] || Heap[null, inv#sm(Heap[z, next])][o_22, f_24] ==> newPMask[o_22, f_24]
      );
      Heap := Heap[null, inv#sm(z):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c ==> acc(inv(a), write) && get(a) == 0 -- test1.vpr@40.5--40.57
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (c) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access inv(a) (test1.vpr@40.12--40.57) [147519]"}
          perm <= AssertMask[null, inv(a_2)];
      }
      AssertMask := AssertMask[null, inv(a_2):=AssertMask[null, inv(a_2)] - perm];
      
      // -- Check definedness of get(a) == 0
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(a) (test1.vpr@40.42--40.48) [147520]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, inv(a_2)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assert {:msg "  Assert might fail. Assertion get(a) == 0 might not hold. (test1.vpr@40.12--40.57) [147521]"}
        get(AssertHeap, a_2) == 0;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !c ==> acc(inv(b), write) && get(b) == 1 -- test1.vpr@41.5--41.58
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    if (!c) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access inv(b) (test1.vpr@41.12--41.58) [147523]"}
          perm <= AssertMask[null, inv(b_24)];
      }
      AssertMask := AssertMask[null, inv(b_24):=AssertMask[null, inv(b_24)] - perm];
      
      // -- Check definedness of get(b) == 1
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access inv(b) (test1.vpr@41.43--41.49) [147524]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, inv(b_24)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      assert {:msg "  Assert might fail. Assertion get(b) == 1 might not hold. (test1.vpr@41.12--41.58) [147525]"}
        get(AssertHeap, b_24) == 1;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(inv(z), write) -- test1.vpr@42.5--42.30
    assume inv#trigger(Heap, inv(z));
    assume Heap[null, inv(z)] == CombineFrames(FrameFragment(Heap[z, value]), CombineFrames(FrameFragment(Heap[z, next]), FrameFragment((if Heap[z, next] != null then Heap[null, inv(Heap[z, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding inv(z) might fail. There might be insufficient permission to access inv(z) (test1.vpr@42.5--42.30) [147528]"}
        perm <= Mask[null, inv(z)];
    }
    Mask := Mask[null, inv(z):=Mask[null, inv(z)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, inv(z))) {
        havoc newVersion;
        Heap := Heap[null, inv(z):=newVersion];
      }
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, value:=Mask[z, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, next:=Mask[z, next] + perm];
    assume state(Heap, Mask);
    if (Heap[z, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, inv(Heap[z, next]):=Mask[null, inv(Heap[z, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(inv(z), Heap[null, inv(z)], inv(Heap[z, next]), Heap[null, inv(Heap[z, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a.value == 0 -- test1.vpr@43.5--43.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of a.value == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access a.value (test1.vpr@43.13--43.29) [147532]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, value);
    assert {:msg "  Assert might fail. Assertion a.value == 0 might not hold. (test1.vpr@43.13--43.29) [147533]"}
      Heap[a_2, value] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b.value == 1 -- test1.vpr@44.5--44.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of b.value == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access b.value (test1.vpr@44.13--44.29) [147534]"}
        HasDirectPerm(ExhaleWellDef0Mask, b_24, value);
    assert {:msg "  Assert might fail. Assertion b.value == 1 might not hold. (test1.vpr@44.13--44.29) [147535]"}
      Heap[b_24, value] == 1;
    assume state(Heap, Mask);
}