// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:38:25
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/cyclic-list.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/chalice/cyclic-list-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
// - height 1: length
// - height 0: itemAt
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
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length(Heap, this) }
  length(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length(Heap, this) == (if Heap[this, next] == null then 1 else 1 + length'(Heap, Heap[this, next]))
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, valid(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || length#trigger(Heap[null, valid(this)], this)) ==> length'(Heap, this) > 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
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
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, valid(this):=Mask[null, valid(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), write) in (this.next == null ? 1 : 1 + length(this.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (cyclic-list.vpr@15.1--18.97) [146392]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
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
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (cyclic-list.vpr@15.1--18.97) [146393]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (UnfoldingHeap[this, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (cyclic-list.vpr@15.1--18.97) [146394]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access valid(this.next) (cyclic-list.vpr@18.76--18.93) [146395]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(UnfoldingHeap[this, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, valid(UnfoldingHeap[this, next])], UnfoldingHeap[this, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
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
    Result := (if Heap[this, next] == null then 1 else 1 + length(Heap, Heap[this, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of length might not hold. Assertion result > 0 might not hold. (cyclic-list.vpr@17.11--17.21) [146396]"}
      Result > 0;
}

// ==================================================
// Translation of function itemAt
// ==================================================

// Uninterpreted function definitions
function  itemAt(Heap: HeapType, this: Ref, i: int): int;
function  itemAt'(Heap: HeapType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { itemAt(Heap, this, i) }
  itemAt(Heap, this, i) == itemAt'(Heap, this, i) && dummyFunction(itemAt#triggerStateless(this, i))
);
axiom (forall Heap: HeapType, this: Ref, i: int ::
  { itemAt'(Heap, this, i) }
  dummyFunction(itemAt#triggerStateless(this, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), itemAt(Heap, this, i) } { state(Heap, Mask), itemAt#triggerStateless(this, i), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < length(Heap, this) ==> itemAt(Heap, this, i) == (if i == 0 || Heap[this, next] == null then Heap[this, value] else itemAt'(Heap, Heap[this, next], i - 1))
);

// Framing axioms
function  itemAt#frame(frame: FrameType, this: Ref, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int ::
  { state(Heap, Mask), itemAt'(Heap, this, i) } { state(Heap, Mask), itemAt#triggerStateless(this, i), valid#trigger(Heap, valid(this)) }
  state(Heap, Mask) ==> itemAt'(Heap, this, i) == itemAt#frame(Heap[null, valid(this)], this, i)
);

// Trigger function (controlling recursive postconditions)
function  itemAt#trigger(frame: FrameType, this: Ref, i: int): bool;

// State-independent trigger function
function  itemAt#triggerStateless(this: Ref, i: int): int;

// Check contract well-formedness and postcondition
procedure itemAt#definedness(this: Ref, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
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
    assume 0 <= i;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of i < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access valid(this) (cyclic-list.vpr@23.16--23.28) [146397]"}
          NoPerm < perm ==> NoPerm < Mask[null, valid(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume i < length(Heap, this);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(this), write) in (i == 0 || this.next == null ? this.value : itemAt(this.next, i - 1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this));
      assume UnfoldingHeap[null, valid(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[this, next])] else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(this) (cyclic-list.vpr@20.1--24.125) [146398]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(this)];
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
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[this, next]):=UnfoldingMask[null, valid(UnfoldingHeap[this, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(this), UnfoldingHeap[null, valid(this)], valid(UnfoldingHeap[this, next]), UnfoldingHeap[null, valid(UnfoldingHeap[this, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (!(i == 0)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (cyclic-list.vpr@20.1--24.125) [146399]"}
          HasDirectPerm(UnfoldingMask, this, next);
      }
      if (i == 0 || UnfoldingHeap[this, next] == null) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (cyclic-list.vpr@20.1--24.125) [146400]"}
          HasDirectPerm(UnfoldingMask, this, value);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (cyclic-list.vpr@20.1--24.125) [146401]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function itemAt might not hold. There might be insufficient permission to access valid(this.next) (cyclic-list.vpr@24.97--24.121) [146402]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(UnfoldingHeap[this, next])];
          assert {:msg "  Precondition of function itemAt might not hold. Assertion 0 <= i - 1 might not hold. (cyclic-list.vpr@24.97--24.121) [146403]"}
            0 <= i - 1;
          assert {:msg "  Precondition of function itemAt might not hold. Assertion i - 1 < length(this.next) might not hold. (cyclic-list.vpr@24.97--24.121) [146404]"}
            i - 1 < length(UnfoldingHeap, UnfoldingHeap[this, next]);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume itemAt#trigger(UnfoldingHeap[null, valid(UnfoldingHeap[this, next])], UnfoldingHeap[this, next], i - 1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, value:=true]];
        Heap := Heap[null, valid#sm(this):=Heap[null, valid#sm(this)][this, next:=true]];
        if (Heap[this, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, valid#sm(this)][o_16, f_21] || Heap[null, valid#sm(Heap[this, next])][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, valid#sm(this):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if i == 0 || Heap[this, next] == null then Heap[this, value] else itemAt(Heap, Heap[this, next], i - 1));
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (cyclic-list.vpr@9.1--13.2) [146405]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(valid(this.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (cyclic-list.vpr@9.1--13.2) [146406]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[this, next]):=Mask[null, valid(Heap[this, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(value, next) -- cyclic-list.vpr@30.3--30.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, value:=Mask[x, value] + FullPerm];
    Mask := Mask[x, next:=Mask[x, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next := x -- cyclic-list.vpr@31.3--31.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (cyclic-list.vpr@31.3--31.14) [146407]"}
      FullPerm == Mask[x, next];
    Heap := Heap[x, next:=x];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(x), write) -- cyclic-list.vpr@34.3--34.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x) might fail. There might be insufficient permission to access x.value (cyclic-list.vpr@34.3--34.28) [146410]"}
        perm <= Mask[x, value];
    }
    Mask := Mask[x, value:=Mask[x, value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x) might fail. There might be insufficient permission to access x.next (cyclic-list.vpr@34.3--34.28) [146412]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    if (Heap[x, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(x) might fail. There might be insufficient permission to access valid(x.next) (cyclic-list.vpr@34.3--34.28) [146414]"}
          perm <= Mask[null, valid(Heap[x, next])];
      }
      Mask := Mask[null, valid(Heap[x, next]):=Mask[null, valid(Heap[x, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(valid(x), Heap[null, valid(x)], valid(Heap[x, next]), Heap[null, valid(Heap[x, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, valid(x):=Mask[null, valid(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(x));
    assume Heap[null, valid(x)] == CombineFrames(FrameFragment(Heap[x, value]), CombineFrames(FrameFragment(Heap[x, next]), FrameFragment((if Heap[x, next] != null then Heap[null, valid(Heap[x, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, valid(x))) {
      Heap := Heap[null, valid#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(x):=freshVersion];
    }
    Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, value:=true]];
    Heap := Heap[null, valid#sm(x):=Heap[null, valid#sm(x)][x, next:=true]];
    if (Heap[x, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, valid#sm(x)][o_52, f_55] || Heap[null, valid#sm(Heap[x, next])][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, valid#sm(x):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(value, next) -- cyclic-list.vpr@41.3--41.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, value:=Mask[x, value] + FullPerm];
    Mask := Mask[x, next:=Mask[x, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next := x -- cyclic-list.vpr@42.3--42.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (cyclic-list.vpr@42.3--42.14) [146416]"}
      FullPerm == Mask[x, next];
    Heap := Heap[x, next:=x];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert length(x) == length(x.next) + 1 -- cyclic-list.vpr@45.3--45.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of length(x) == length(x.next) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access valid(x) (cyclic-list.vpr@45.12--45.21) [146417]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (cyclic-list.vpr@45.11--45.46) [146418]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, next);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access valid(x.next) (cyclic-list.vpr@45.27--45.41) [146419]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(ExhaleWellDef0Heap[x, next])];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion length(x) == length(x.next) + 1 might not hold. (cyclic-list.vpr@45.11--45.46) [146420]"}
      length(Heap, x) == length(Heap, Heap[x, next]) + 1;
    assume state(Heap, Mask);
}