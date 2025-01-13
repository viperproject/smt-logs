// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:28:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0033.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0033-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_34: Ref, f_40: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_34, f_40] }
  Heap[o_34, $allocated] ==> Heap[Heap[o_34, f_40], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref, f_18: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, f_18] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_13, f_18) ==> Heap[o_13, f_18] == ExhaleHeap[o_13, f_18]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12), ExhaleHeap[null, PredicateMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> Heap[null, PredicateMaskField(pm_f_12)] == ExhaleHeap[null, PredicateMaskField(pm_f_12)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsPredicateField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, PredicateMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12), ExhaleHeap[null, WandMaskField(pm_f_12)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> Heap[null, WandMaskField(pm_f_12)] == ExhaleHeap[null, WandMaskField(pm_f_12)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_12: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_12) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_12) && IsWandField(pm_f_12) ==> (forall <A, B> o2_12: Ref, f_18: (Field A B) ::
    { ExhaleHeap[o2_12, f_18] }
    Heap[null, WandMaskField(pm_f_12)][o2_12, f_18] ==> Heap[o2_12, f_18] == ExhaleHeap[o2_12, f_18]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_13: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_13, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_13, $allocated] ==> ExhaleHeap[o_13, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_34: Ref, f_36: (Field A B), v: B ::
  { Heap[o_34, f_36:=v] }
  succHeap(Heap, Heap[o_34, f_36:=v])
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
// - height 1: size_0
// - height 0: size
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

// ==================================================
// Translation of function size
// ==================================================

// Uninterpreted function definitions
function  size_2(Heap: HeapType, this: Ref): int;
function  size'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { size_2(Heap, this) }
  size_2(Heap, this) == size'(Heap, this) && dummyFunction(size#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { size'(Heap, this) }
  dummyFunction(size#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), size_2(Heap, this) } { state(Heap, Mask), size#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> this != null ==> size_2(Heap, this) == (if Heap[this, next] == null then 1 else 1 + size'(Heap, Heap[this, next]))
);

// Framing axioms
function  size#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), size'(Heap, this) } { state(Heap, Mask), size#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) ==> size'(Heap, this) == size#frame(Heap[null, valid(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), size'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || size#trigger(Heap[null, valid(this)], this)) ==> this != null ==> size'(Heap, this) >= 1
);

// Trigger function (controlling recursive postconditions)
function  size#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  size#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure size#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), write) in (this.next == null ? 1 : 1 + size(this.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (0033.vpr@11.1--15.87) [210932]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@11.1--15.87) [210933]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (UnfoldingHeap[this, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@11.1--15.87) [210934]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          assert {:msg "  Precondition of function size might not hold. Assertion this.next != null might not hold. (0033.vpr@15.69--15.84) [210935]"}
            UnfoldingHeap[this, next] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function size might not hold. There might be insufficient permission to access valid(this.next) (0033.vpr@15.69--15.84) [210936]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(UnfoldingHeap[this, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume size#trigger(UnfoldingHeap[null, valid(UnfoldingHeap[this, next])], UnfoldingHeap[this, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
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
    Result := (if Heap[this, next] == null then 1 else 1 + size_2(Heap, Heap[this, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of size might not hold. Assertion result >= 1 might not hold. (0033.vpr@14.11--14.22) [210937]"}
      Result >= 1;
}

// ==================================================
// Translation of function size_0
// ==================================================

// Uninterpreted function definitions
function  size_0(Heap: HeapType, this: Ref): int;
function  size_0'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { size_0(Heap, this) }
  size_0(Heap, this) == size_0'(Heap, this) && dummyFunction(size_0#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { size_0'(Heap, this) }
  dummyFunction(size_0#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), size_0(Heap, this) } { state(Heap, Mask), size_0#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> this != null ==> size_0(Heap, this) == (if Heap[this, next] == null then 1 else (if Heap[Heap[this, next], next] == null then 2 else 2 + size_0'(Heap, Heap[Heap[this, next], next])))
);

// Framing axioms
function  size_0#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), size_0'(Heap, this) } { state(Heap, Mask), size_0#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) ==> size_0'(Heap, this) == size_0#frame(Heap[null, valid(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), size_0'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || size_0#trigger(Heap[null, valid(this)], this)) ==> this != null ==> size_0'(Heap, this) >= 1
);

// Trigger function (controlling recursive postconditions)
function  size_0#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  size_0#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure size_0#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), write) in (this.next == null ? 1 : (unfolding acc(valid(this.next), write) in (this.next.next == null ? 2 : 2 + size_0(this.next.next)))))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (0033.vpr@53.1--62.2) [210938]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@53.1--62.2) [210939]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (UnfoldingHeap[this, next] == null) {
      } else {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[this, next]));
        assume Unfolding1Heap[null, valid(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame)));
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this.next) (0033.vpr@53.1--62.2) [210940]"}
          NoPerm < perm ==> NoPerm < Unfolding1Mask[null, valid(Unfolding1Heap[this, next])];
        perm := FullPerm;
        assume Unfolding1Heap[this, next] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
          perm := FullPerm;
          Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(valid(Unfolding1Heap[this, next]), Unfolding1Heap[null, valid(Unfolding1Heap[this, next])], valid(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
          assume state(Unfolding1Heap, Unfolding1Mask);
        }
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@53.1--62.2) [210941]"}
          HasDirectPerm(Unfolding1Mask, this, next);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@53.1--62.2) [210942]"}
          HasDirectPerm(Unfolding1Mask, this, next);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next.next (0033.vpr@53.1--62.2) [210943]"}
          HasDirectPerm(Unfolding1Mask, Unfolding1Heap[this, next], next);
        if (Unfolding1Heap[Unfolding1Heap[this, next], next] == null) {
        } else {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@53.1--62.2) [210944]"}
            HasDirectPerm(Unfolding1Mask, this, next);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next.next (0033.vpr@53.1--62.2) [210945]"}
            HasDirectPerm(Unfolding1Mask, Unfolding1Heap[this, next], next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Unfolding1Mask;
            ExhaleWellDef0Heap := Unfolding1Heap;
            assert {:msg "  Precondition of function size_0 might not hold. Assertion this.next.next != null might not hold. (0033.vpr@61.85--61.107) [210946]"}
              Unfolding1Heap[Unfolding1Heap[this, next], next] != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function size_0 might not hold. There might be insufficient permission to access valid(this.next.next) (0033.vpr@61.85--61.107) [210947]"}
              NoPerm < perm ==> NoPerm < Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Unfolding1Heap, ExhaleHeap, Unfolding1Mask);
            Unfolding1Heap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume size_0#trigger(Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])], Unfolding1Heap[Unfolding1Heap[this, next], next]);
          }
        }
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[this, next]):=UnfoldingHeap[null, valid#sm(UnfoldingHeap[this, next])][UnfoldingHeap[this, next], next:=true]];
          if (UnfoldingHeap[UnfoldingHeap[this, next], next] != null) {
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              UnfoldingHeap[null, valid#sm(UnfoldingHeap[this, next])][o_16, f_21] || UnfoldingHeap[null, valid#sm(UnfoldingHeap[UnfoldingHeap[this, next], next])][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            UnfoldingHeap := UnfoldingHeap[null, valid#sm(UnfoldingHeap[this, next]):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
            { newPMask[o_52, f_55] }
            Heap[null, valid#sm(this)][o_52, f_55] || Heap[null, valid#sm(Heap[this, next])][o_52, f_55] ==> newPMask[o_52, f_55]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
        if (Heap[Heap[this, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            Heap[null, valid#sm(Heap[this, next])][o_53, f_56] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this, next] == null then 1 else (if Heap[Heap[this, next], next] == null then 2 else 2 + size_0(Heap, Heap[Heap[this, next], next])));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of size_0 might not hold. Assertion result >= 1 might not hold. (0033.vpr@56.11--56.22) [210948]"}
      Result >= 1;
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
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@6.1--9.2) [210949]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0033.vpr@6.1--9.2) [210950]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method unfoldOnce
// ==================================================

procedure unfoldOnce(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  
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
    assume state(Heap, Mask);
    
    // -- Check definedness of size(this) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function size might not hold. Assertion this != null might not hold. (0033.vpr@20.12--20.22) [210951]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function size might not hold. There might be insufficient permission to access valid(this) (0033.vpr@20.12--20.22) [210952]"}
          NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume size_2(Heap, this) == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0033.vpr@22.3--22.33
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0033.vpr@22.3--22.33) [210955]"}
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
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next == null -- 0033.vpr@24.3--24.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (0033.vpr@24.10--24.27) [210958]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this.next == null might not hold. (0033.vpr@24.10--24.27) [210959]"}
      Heap[this, next] == null;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next != null -- 0033.vpr@27.3--27.27
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.next != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (0033.vpr@27.10--27.27) [210960]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
    assert {:msg "  Assert might fail. Assertion this.next != null might not hold. (0033.vpr@27.10--27.27) [210961]"}
      Heap[this, next] != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method unfoldTwice
// ==================================================

procedure unfoldTwice(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  
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
    assume state(Heap, Mask);
    
    // -- Check definedness of size(this) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function size might not hold. Assertion this != null might not hold. (0033.vpr@33.12--33.22) [210962]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function size might not hold. There might be insufficient permission to access valid(this) (0033.vpr@33.12--33.22) [210963]"}
          NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume size_2(Heap, this) == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0033.vpr@35.3--35.33
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0033.vpr@35.3--35.33) [210966]"}
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
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(this.next), write) -- 0033.vpr@36.3--36.38
    
    // -- Check definedness of acc(valid(this.next), write)
      assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access this.next (0033.vpr@36.3--36.38) [210969]"}
        HasDirectPerm(Mask, this, next);
    assume valid#trigger(Heap, valid(Heap[this, next]));
    assume Heap[null, valid(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, valid(Heap[Heap[this, next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access valid(this.next) (0033.vpr@36.3--36.38) [210972]"}
        perm <= Mask[null, valid(Heap[this, next])];
    }
    Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, next]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, next]), Heap[null, valid(Heap[this, next])], valid(Heap[Heap[this, next], next]), Heap[null, valid(Heap[Heap[this, next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next.next == null -- 0033.vpr@38.3--38.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.next.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (0033.vpr@38.10--38.32) [210975]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (0033.vpr@38.10--38.32) [210976]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
    assert {:msg "  Assert might fail. Assertion this.next.next == null might not hold. (0033.vpr@38.10--38.32) [210977]"}
      Heap[Heap[this, next], next] == null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method unfoldThrice
// ==================================================

procedure unfoldThrice(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var newVersion: FrameType;
  
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
    assume state(Heap, Mask);
    
    // -- Check definedness of size(this) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function size might not hold. Assertion this != null might not hold. (0033.vpr@44.12--44.22) [210978]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function size might not hold. There might be insufficient permission to access valid(this) (0033.vpr@44.12--44.22) [210979]"}
          NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume size_2(Heap, this) == 3;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(valid(this), write) -- 0033.vpr@46.3--46.33
    assume valid#trigger(Heap, valid(this));
    assume Heap[null, valid(this)] == CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, valid(Heap[this, next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this) might fail. There might be insufficient permission to access valid(this) (0033.vpr@46.3--46.33) [210982]"}
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
    if (Heap[this, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(this), Heap[null, valid(this)], valid(Heap[this, next]), Heap[null, valid(Heap[this, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(this.next), write) -- 0033.vpr@47.3--47.38
    
    // -- Check definedness of acc(valid(this.next), write)
      assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access this.next (0033.vpr@47.3--47.38) [210985]"}
        HasDirectPerm(Mask, this, next);
    assume valid#trigger(Heap, valid(Heap[this, next]));
    assume Heap[null, valid(Heap[this, next])] == CombineFrames(FrameFragment(Heap[Heap[this, next], next]), FrameFragment((if Heap[Heap[this, next], next] != null then Heap[null, valid(Heap[Heap[this, next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.next) might fail. There might be insufficient permission to access valid(this.next) (0033.vpr@47.3--47.38) [210988]"}
        perm <= Mask[null, valid(Heap[this, next])];
    }
    Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[this, next]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[this, next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[this, next] != null;
    Mask := Mask[Heap[this, next], next:=Mask[Heap[this, next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[this, next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[this, next]), Heap[null, valid(Heap[this, next])], valid(Heap[Heap[this, next], next]), Heap[null, valid(Heap[Heap[this, next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(this.next.next), write) -- 0033.vpr@48.3--48.43
    
    // -- Check definedness of acc(valid(this.next.next), write)
      assert {:msg "  Unfolding valid(this.next.next) might fail. There might be insufficient permission to access this.next (0033.vpr@48.3--48.43) [210991]"}
        HasDirectPerm(Mask, this, next);
      assert {:msg "  Unfolding valid(this.next.next) might fail. There might be insufficient permission to access this.next.next (0033.vpr@48.3--48.43) [210992]"}
        HasDirectPerm(Mask, Heap[this, next], next);
    assume valid#trigger(Heap, valid(Heap[Heap[this, next], next]));
    assume Heap[null, valid(Heap[Heap[this, next], next])] == CombineFrames(FrameFragment(Heap[Heap[Heap[this, next], next], next]), FrameFragment((if Heap[Heap[Heap[this, next], next], next] != null then Heap[null, valid(Heap[Heap[Heap[this, next], next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this.next.next) might fail. There might be insufficient permission to access valid(this.next.next) (0033.vpr@48.3--48.43) [210995]"}
        perm <= Mask[null, valid(Heap[Heap[this, next], next])];
    }
    Mask := Mask[null, valid(Heap[Heap[this, next], next]):=Mask[null, valid(Heap[Heap[this, next], next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(Heap[Heap[this, next], next]))) {
        havoc newVersion;
        Heap := Heap[null, valid(Heap[Heap[this, next], next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[Heap[this, next], next] != null;
    Mask := Mask[Heap[Heap[this, next], next], next:=Mask[Heap[Heap[this, next], next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[Heap[this, next], next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[Heap[Heap[this, next], next], next]):=Mask[null, valid(Heap[Heap[Heap[this, next], next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(Heap[Heap[this, next], next]), Heap[null, valid(Heap[Heap[this, next], next])], valid(Heap[Heap[Heap[this, next], next], next]), Heap[null, valid(Heap[Heap[Heap[this, next], next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.next.next.next == null -- 0033.vpr@50.3--50.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.next.next.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (0033.vpr@50.10--50.37) [210998]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (0033.vpr@50.10--50.37) [210999]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[this, next], next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next.next (0033.vpr@50.10--50.37) [211000]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[Heap[this, next], next], next);
    assert {:msg "  Assert might fail. Assertion this.next.next.next == null might not hold. (0033.vpr@50.10--50.37) [211001]"}
      Heap[Heap[Heap[this, next], next], next] == null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method unrollExpression
// ==================================================

procedure unrollExpression(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
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
    assume state(Heap, Mask);
    
    // -- Check definedness of size_0(this) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function size_0 might not hold. Assertion this != null might not hold. (0033.vpr@67.12--67.24) [211002]"}
          this != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function size_0 might not hold. There might be insufficient permission to access valid(this) (0033.vpr@67.12--67.24) [211003]"}
          NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume size_0(Heap, this) == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (unfolding acc(valid(this), write) in
  //     (unfolding acc(valid(this.next), write) in this.next.next == null)) -- 0033.vpr@69.3--72.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(valid(this), write) in (unfolding acc(valid(this.next), write) in this.next.next == null))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame)));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this) (0033.vpr@70.5--72.31) [211004]"}
          perm <= UnfoldingMask[null, valid(this)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this):=UnfoldingMask[null, valid(this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume valid#trigger(Unfolding1Heap, valid(Unfolding1Heap[this, next]));
      assume Unfolding1Heap[null, valid(Unfolding1Heap[this, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != null then Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] else EmptyFrame)));
      ExhaleWellDef1Mask := Unfolding1Mask;
      ExhaleWellDef1Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access valid(this.next) (0033.vpr@70.5--72.31) [211005]"}
          perm <= Unfolding1Mask[null, valid(Unfolding1Heap[this, next])];
      }
      Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[this, next]):=Unfolding1Mask[null, valid(Unfolding1Heap[this, next])] - perm];
      perm := FullPerm;
      assume Unfolding1Heap[this, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[Unfolding1Heap[this, next], next] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next]):=Unfolding1Mask[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(Unfolding1Heap[this, next]), Unfolding1Heap[null, valid(Unfolding1Heap[this, next])], valid(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, valid(Unfolding1Heap[Unfolding1Heap[this, next], next])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (0033.vpr@70.5--72.31) [211006]"}
        HasDirectPerm(Unfolding1Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next (0033.vpr@70.5--72.31) [211007]"}
        HasDirectPerm(Unfolding1Mask, this, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.next.next (0033.vpr@70.5--72.31) [211008]"}
        HasDirectPerm(Unfolding1Mask, Heap[this, next], next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
        if (Heap[Heap[this, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
            { newPMask[o_26, f_29] }
            Heap[null, valid#sm(Heap[this, next])][o_26, f_29] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_26, f_29] ==> newPMask[o_26, f_29]
          );
          Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_85: (Field A B) ::
            { newPMask[o, f_85] }
            Heap[null, valid#sm(this)][o, f_85] || Heap[null, valid#sm(Heap[this, next])][o, f_85] ==> newPMask[o, f_85]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
        if (Heap[Heap[this, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_11: Ref, f_3: (Field A B) ::
            { newPMask[o_11, f_3] }
            Heap[null, valid#sm(Heap[this, next])][o_11, f_3] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_11, f_3] ==> newPMask[o_11, f_3]
          );
          Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion this.next.next == null might not hold. (0033.vpr@70.5--72.31) [211009]"}
      Heap[Heap[this, next], next] == null;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
      if (Heap[this, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_35: Ref, f_17: (Field A B) ::
          { newPMask[o_35, f_17] }
          Heap[null, valid#sm(this)][o_35, f_17] || Heap[null, valid#sm(Heap[this, next])][o_35, f_17] ==> newPMask[o_35, f_17]
        );
        Heap := Heap[null, valid#sm(this):=newPMask];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, valid#sm(Heap[this, next]):=Heap[null, valid#sm(Heap[this, next])][Heap[this, next], next:=true]];
      if (Heap[Heap[this, next], next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_11: (Field A B) ::
          { newPMask[o_1, f_11] }
          Heap[null, valid#sm(Heap[this, next])][o_1, f_11] || Heap[null, valid#sm(Heap[Heap[this, next], next])][o_1, f_11] ==> newPMask[o_1, f_11]
        );
        Heap := Heap[null, valid#sm(Heap[this, next]):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}