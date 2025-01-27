// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:19:17
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0113.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0113-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_38: Ref, f_51: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_38, f_51] }
  Heap[o_38, $allocated] ==> Heap[Heap[o_38, f_51], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref, f_21: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, f_21] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_39, f_21) ==> Heap[o_39, f_21] == ExhaleHeap[o_39, f_21]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_39, $allocated] ==> ExhaleHeap[o_39, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_38: Ref, f_23: (Field A B), v: B ::
  { Heap[o_38, f_23:=v] }
  succHeap(Heap, Heap[o_38, f_23:=v])
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
// - height 0: contains
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
// Translation of function contains
// ==================================================

// Uninterpreted function definitions
function  contains(Heap: HeapType, this: Ref, i: int): bool;
function  contains'(Heap: HeapType, this: Ref, i: int): bool;
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { contains(Heap, this, i) }
  contains(Heap, this, i) == contains'(Heap, this, i) && dummyFunction(contains#triggerStateless(this, i))
);
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { contains'(Heap, this, i) }
  dummyFunction(contains#triggerStateless(this, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), contains(Heap, this, i) } { state(Heap, Mask), contains#triggerStateless(this, i), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this != null ==> contains(Heap, this, i) == (i == Heap[this, value_1] || (Heap[this, next] != null && contains'(Heap, Heap[this, next], i)))
);

// Framing axioms
function  contains#frame(frame: FrameType, this: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), contains'(Heap, this, i) } { state(Heap, Mask), contains#triggerStateless(this, i), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) ==> contains'(Heap, this, i) == contains#frame(Heap[null, valid(this)], this, i)
);

// Trigger function (controlling recursive postconditions)
function  contains#trigger(frame: FrameType, this: Ref, i: int): bool;

// State-independent trigger function
function  contains#triggerStateless(this: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure contains#definedness(this: Ref, i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), wildcard) in i == this.value || this.next != null && contains(this.next, i))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (0113.vpr@7.1--12.2) [69553]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (0113.vpr@7.1--12.2) [69554]"}
        HasDirectPerm(UnfoldingMask, this, value_1);
      if (!(i == UnfoldingHeap[this, value_1])) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0113.vpr@7.1--12.2) [69555]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (UnfoldingHeap[this, next] != null) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0113.vpr@7.1--12.2) [69556]"}
            HasDirectPerm(UnfoldingMask, this, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            assert {:msg "  Precondition of function contains might not hold. Assertion this.next != null might not hold. (0113.vpr@11.88--11.110) [69557]"}
              UnfoldingHeap[this, next] != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function contains might not hold. There might be insufficient permission to access valid(this.next) (0113.vpr@11.88--11.110) [69558]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(UnfoldingHeap[this, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume contains#trigger(UnfoldingHeap[null, valid(UnfoldingHeap[this, next])], UnfoldingHeap[this, next], i);
          }
        }
      }
      
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
    Result := i == Heap[this, value_1] || (Heap[this, next] != null && contains(Heap, Heap[this, next], i));
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
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0113.vpr@14.1--16.2) [69559]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0113.vpr@14.1--16.2) [69560]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method addother
// ==================================================

procedure addother(this: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n: Ref;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var x_2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
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
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall x: Int :: { old(contains(this, x)) } contains(this, x) == old(contains(this, x)) || x == i)
      if (*) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          assert {:msg "  Precondition of function contains might not hold. Assertion this != null might not hold. (0113.vpr@22.29--22.46) [69561]"}
            this != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function contains might not hold. There might be insufficient permission to access valid(this) (0113.vpr@22.29--22.46) [69562]"}
            NoPerm < perm ==> NoPerm < PostMask[null, valid(this)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
          PostHeap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := oldHeap;
          ExhaleWellDef0Mask := oldMask;
          assert {:msg "  Precondition of function contains might not hold. Assertion this != null might not hold. (0113.vpr@22.54--22.71) [69563]"}
            this != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function contains might not hold. There might be insufficient permission to access valid(this) (0113.vpr@22.54--22.71) [69564]"}
            NoPerm < perm ==> NoPerm < oldMask[null, valid(this)];
          // Finish exhale
          // Stop execution
          assume false;
        }
        assume false;
      }
    assume (forall x_1: int ::
      { contains#frame(oldHeap[null, valid(this)], this, x_1) }
      contains(PostHeap, this, x_1) == contains(oldHeap, this, x_1) || x_1 == i
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n, $allocated];
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0113.vpr@26.3--26.26
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), CombineFrames(FrameFragment(Heap[this, value_1]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0113.vpr@26.3--26.26) [69567]"}
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
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next != null) -- 0113.vpr@28.3--42.4
    
    // -- Check definedness of this.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (0113.vpr@28.7--28.24) [69571]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Translating statement: addother(this.next, i) -- 0113.vpr@30.5--30.27
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next (0113.vpr@30.5--30.27) [69572]"}
            HasDirectPerm(Mask, this, next);
        arg_this := Heap[this, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method addother might not hold. Assertion this.next != null might not hold. (0113.vpr@30.5--30.27) [69573]"}
            arg_this != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method addother might not hold. There might be insufficient permission to access valid(this.next) (0113.vpr@30.5--30.27) [69574]"}
              perm <= Mask[null, valid(arg_this)];
          }
          Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, valid(arg_this):=Mask[null, valid(arg_this)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume (forall x_4_2: int ::
            { contains#frame(PreCallHeap[null, valid(arg_this)], arg_this, x_4_2) }
            contains(Heap, arg_this, x_4_2) == contains(PreCallHeap, arg_this, x_4_2) || x_4_2 == i
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: n := new(next, value) -- 0113.vpr@36.5--36.17
        havoc freshObj;
        assume freshObj != null && !Heap[freshObj, $allocated];
        Heap := Heap[freshObj, $allocated:=true];
        n := freshObj;
        Mask := Mask[n, next:=Mask[n, next] + FullPerm];
        Mask := Mask[n, value_1:=Mask[n, value_1] + FullPerm];
        assume state(Heap, Mask);
      
      // -- Translating statement: this.next := n -- 0113.vpr@37.5--37.19
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (0113.vpr@37.5--37.19) [69575]"}
          FullPerm == Mask[this, next];
        Heap := Heap[this, next:=n];
        assume state(Heap, Mask);
      
      // -- Translating statement: this.next.value := i -- 0113.vpr@38.5--38.25
        
        // -- Check definedness of this.next
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (0113.vpr@38.5--38.25) [69576]"}
            HasDirectPerm(Mask, this, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next.value (0113.vpr@38.5--38.25) [69577]"}
          FullPerm == Mask[Heap[this, next], value_1];
        Heap := Heap[Heap[this, next], value_1:=i];
        assume state(Heap, Mask);
      
      // -- Translating statement: this.next.next := null -- 0113.vpr@39.5--39.27
        
        // -- Check definedness of this.next
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (0113.vpr@39.5--39.27) [69578]"}
            HasDirectPerm(Mask, this, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next.next (0113.vpr@39.5--39.27) [69579]"}
          FullPerm == Mask[Heap[this, next], next];
        Heap := Heap[Heap[this, next], next:=null];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(valid(this.next), write) -- 0113.vpr@40.5--40.31
        
        // -- Check definedness of acc(valid(this.next), write)
          assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next (0113.vpr@40.5--40.31) [69580]"}
            HasDirectPerm(Mask, this, next);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next.next (0113.vpr@40.5--40.31) [69583]"}
            perm <= Mask[Heap[this, next], next];
        }
        Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access this.next.value (0113.vpr@40.5--40.31) [69585]"}
            perm <= Mask[Heap[this, next], value_1];
        }
        Mask := Mask[Heap[this, next], value_1:=Mask[Heap[this, next], value_1] - perm];
        if (Heap[Heap[this, next], next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding valid(this.next) might fail. There might be insufficient permission to access valid(this.next.next) (0113.vpr@40.5--40.31) [69587]"}
              perm <= Mask[null, valid(Heap[Heap[this, next], next])];
          }
          Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(valid(Heap[this, next]), Heap[null, valid(Heap[this, next])], valid(Heap[Heap[this, next], next]), Heap[null, valid(Heap[Heap[this, next], next])]);
        }
        perm := FullPerm;
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
          assume (forall <A, B> o_64: Ref, f_73: (Field A B) ::
            { newPMask[o_64, f_73] }
            Heap[null, valid#sm(Heap[this, next])][o_64, f_73] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_64, f_73] ==> newPMask[o_64, f_73]
          );
          Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this), write) -- 0113.vpr@44.3--44.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.next (0113.vpr@44.3--44.24) [69591]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access this.value (0113.vpr@44.3--44.24) [69593]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    if (Heap[this, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this) might fail. There might be insufficient permission to access valid(this.next) (0113.vpr@44.3--44.24) [69595]"}
          perm <= Mask[null, valid(Heap[this, next])];
      }
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
    }
    perm := FullPerm;
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
      assume (forall <A, B> o_75: Ref, f_84: (Field A B) ::
        { newPMask[o_75, f_84] }
        Heap[null, valid#sm(this)][o_75, f_84] || Heap[null, valid#sm(Heap[this, next])][o_75, f_84] ==> newPMask[o_75, f_84]
      );
      Heap := Heap[null, valid#sm(this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addother might not hold. There might be insufficient permission to access valid(this) (0113.vpr@21.11--21.27) [69597]"}
        perm <= Mask[null, valid(this)];
    }
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] - perm];
    if (*) {
      assert {:msg "  Postcondition of addother might not hold. Assertion contains(this, x) == old(contains(this, x)) || x == i might not hold. (0113.vpr@22.11--22.85) [69598]"}
        contains(Heap, this, x_2_2) == contains(oldHeap, this, x_2_2) || x_2_2 == i;
      assume false;
    }
    assume (forall x_3_1_1: int ::
      { contains#frame(oldHeap[null, valid(this)], this, x_3_1_1) }
      contains(Heap, this, x_3_1_1) == contains(oldHeap, this, x_3_1_1) || x_3_1_1 == i
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}