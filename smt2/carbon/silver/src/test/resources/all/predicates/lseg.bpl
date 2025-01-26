// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/lseg.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/lseg-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_8: Ref, f_14: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_8, f_14] }
  Heap[o_8, $allocated] ==> Heap[Heap[o_8, f_14], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_53: Ref, f_67: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_53, f_67] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_53, f_67) ==> Heap[o_53, f_67] == ExhaleHeap[o_53, f_67]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25), ExhaleHeap[null, PredicateMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> Heap[null, PredicateMaskField(pm_f_25)] == ExhaleHeap[null, PredicateMaskField(pm_f_25)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsPredicateField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_25, f_67] }
    Heap[null, PredicateMaskField(pm_f_25)][o2_25, f_67] ==> Heap[o2_25, f_67] == ExhaleHeap[o2_25, f_67]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25), ExhaleHeap[null, WandMaskField(pm_f_25)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> Heap[null, WandMaskField(pm_f_25)] == ExhaleHeap[null, WandMaskField(pm_f_25)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_25: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_25) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_25) && IsWandField(pm_f_25) ==> (forall <A, B> o2_25: Ref, f_67: (Field A B) ::
    { ExhaleHeap[o2_25, f_67] }
    Heap[null, WandMaskField(pm_f_25)][o2_25, f_67] ==> Heap[o2_25, f_67] == ExhaleHeap[o2_25, f_67]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_53: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_53, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_53, $allocated] ==> ExhaleHeap[o_53, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_8: Ref, f_63: (Field A B), v: B ::
  { Heap[o_8, f_63:=v] }
  succHeap(Heap, Heap[o_8, f_63:=v])
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

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique value_1: Field NormalField int;
axiom !IsPredicateField(value_1);
axiom !IsWandField(value_1);

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, this: Ref, i: int, end_1: Ref): int;
function  get'(Heap: HeapType, this: Ref, i: int, end_1: Ref): int;
axiom (forall Heap: HeapType, this: Ref, i: int, end_1: Ref ::
  { get(Heap, this, i, end_1) }
  get(Heap, this, i, end_1) == get'(Heap, this, i, end_1) && dummyFunction(get#triggerStateless(this, i, end_1))
);
axiom (forall Heap: HeapType, this: Ref, i: int, end_1: Ref ::
  { get'(Heap, this, i, end_1) }
  dummyFunction(get#triggerStateless(this, i, end_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int, end_1: Ref ::
  { state(Heap, Mask), get(Heap, this, i, end_1) } { state(Heap, Mask), get#triggerStateless(this, i, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < length_1(Heap, this, end_1) ==> get(Heap, this, i, end_1) == (if i == 0 then Heap[this, value_1] else get'(Heap, Heap[this, next], i - 1, end_1))
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref, i: int, end_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int, end_1: Ref ::
  { state(Heap, Mask), get'(Heap, this, i, end_1) } { state(Heap, Mask), get#triggerStateless(this, i, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) ==> get'(Heap, this, i, end_1) == get#frame(Heap[null, lseg(this, end_1)], this, i, end_1)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, this: Ref, i: int, end_1: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(this: Ref, i: int, end_1: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(this: Ref, i: int, end_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume Heap[end_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume 0 <= i;
    assume state(Heap, Mask);
    
    // -- Check definedness of i < length(this, end)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@14.28--14.45) [46688]"}
          NoPerm < perm ==> NoPerm < Mask[null, lseg(this, end_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume i < length_1(Heap, this, end_1);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(lseg(this, end), write) in (i == 0 ? this.value : get(this.next, i - 1, end)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, end_1));
      assume UnfoldingHeap[null, lseg(this, end_1)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != end_1 then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (lseg.vpr@12.1--17.2) [46689]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, end_1)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != end_1) {
        assume UnfoldingHeap[this, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, end_1), UnfoldingHeap[null, lseg(this, end_1)], lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (i == 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (lseg.vpr@12.1--17.2) [46690]"}
          HasDirectPerm(UnfoldingMask, this, value_1);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@12.1--17.2) [46691]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@16.69--16.93) [46692]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)];
          assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i - 1 might not hold. (lseg.vpr@16.69--16.93) [46693]"}
            0 <= i - 1;
          assert {:msg "  Precondition of function get might not hold. Assertion i - 1 < length(this.next, end) might not hold. (lseg.vpr@16.69--16.93) [46694]"}
            i - 1 < length_1(UnfoldingHeap, UnfoldingHeap[this, next], end_1);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume get#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)], UnfoldingHeap[this, next], i - 1, end_1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, value_1:=true]];
        Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
        if (Heap[this, next] != end_1) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, lseg#sm(this, end_1)][o_5, f_11] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if i == 0 then Heap[this, value_1] else get(Heap, Heap[this, next], i - 1, end_1));
}

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length_1(Heap: HeapType, this: Ref, end_1: Ref): int;
function  length'(Heap: HeapType, this: Ref, end_1: Ref): int;
axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { length_1(Heap, this, end_1) }
  length_1(Heap, this, end_1) == length'(Heap, this, end_1) && dummyFunction(length#triggerStateless(this, end_1))
);
axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { length'(Heap, this, end_1) }
  dummyFunction(length#triggerStateless(this, end_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), length_1(Heap, this, end_1) } { state(Heap, Mask), length#triggerStateless(this, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length_1(Heap, this, end_1) == (if Heap[this, next] == end_1 then 1 else 1 + length'(Heap, Heap[this, next], end_1))
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref, end_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), length'(Heap, this, end_1) } { state(Heap, Mask), length#triggerStateless(this, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) ==> length'(Heap, this, end_1) == length#frame(Heap[null, lseg(this, end_1)], this, end_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), length'(Heap, this, end_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || length#trigger(Heap[null, lseg(this, end_1)], this, end_1)) ==> length'(Heap, this, end_1) > 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref, end_1: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref, end_1: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref, end_1: Ref) returns (Result: int)
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
    assume Heap[end_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(lseg(this, end), write) in (this.next == end ? 1 : 1 + length(this.next, end)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, end_1));
      assume UnfoldingHeap[null, lseg(this, end_1)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != end_1 then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (lseg.vpr@19.1--24.2) [46695]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, end_1)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != end_1) {
        assume UnfoldingHeap[this, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, end_1), UnfoldingHeap[null, lseg(this, end_1)], lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@19.1--24.2) [46696]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (UnfoldingHeap[this, next] == end_1) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@19.1--24.2) [46697]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@23.74--23.96) [46698]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)], UnfoldingHeap[this, next], end_1);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, value_1:=true]];
        Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
        if (Heap[this, next] != end_1) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, lseg#sm(this, end_1)][o_6, f_12] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this, next] == end_1 then 1 else 1 + length_1(Heap, Heap[this, next], end_1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of length might not hold. Assertion result > 0 might not hold. (lseg.vpr@21.13--21.23) [46699]"}
      Result > 0;
}

// ==================================================
// Translation of predicate lseg
// ==================================================

type PredicateType_lseg;
function  lseg(this: Ref, end_1: Ref): Field PredicateType_lseg FrameType;
function  lseg#sm(this: Ref, end_1: Ref): Field PredicateType_lseg PMaskType;
axiom (forall this: Ref, end_1: Ref ::
  { PredicateMaskField(lseg(this, end_1)) }
  PredicateMaskField(lseg(this, end_1)) == lseg#sm(this, end_1)
);
axiom (forall this: Ref, end_1: Ref ::
  { lseg(this, end_1) }
  IsPredicateField(lseg(this, end_1))
);
axiom (forall this: Ref, end_1: Ref ::
  { lseg(this, end_1) }
  getPredWandId(lseg(this, end_1)) == 0
);
function  lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, end_1: Ref, this2: Ref, end2: Ref ::
  { lseg(this, end_1), lseg(this2, end2) }
  lseg(this, end_1) == lseg(this2, end2) ==> this == this2 && end_1 == end2
);
axiom (forall this: Ref, end_1: Ref, this2: Ref, end2: Ref ::
  { lseg#sm(this, end_1), lseg#sm(this2, end2) }
  lseg#sm(this, end_1) == lseg#sm(this2, end2) ==> this == this2 && end_1 == end2
);

axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { lseg#trigger(Heap, lseg(this, end_1)) }
  lseg#everUsed(lseg(this, end_1))
);

procedure lseg#definedness(this: Ref, end_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of lseg
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
      assume Heap[end_1, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != end
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@7.1--10.2) [46700]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != end_1) {
      
      // -- Check definedness of this.next != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@7.1--10.2) [46701]"}
          HasDirectPerm(Mask, this, next);
      assume Heap[this, next] != null;
      
      // -- Check definedness of acc(lseg(this.next, end), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@7.1--10.2) [46702]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[this, next], end_1):=Mask[null, lseg(Heap[this, next], end_1)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method init
// ==================================================

procedure init(this: Ref, val_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
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
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
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
    PostMask := PostMask[null, lseg(this, null):=PostMask[null, lseg(this, null)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this, null) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, null) (lseg.vpr@30.13--30.31) [46703]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, null)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, this, null) == 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this, 0, null) == val
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, null) (lseg.vpr@31.13--31.31) [46704]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(this, null) might not hold. (lseg.vpr@31.13--31.31) [46705]"}
          0 < length_1(PostHeap, this, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this, 0, null) == val_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.next := null -- lseg.vpr@33.5--33.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (lseg.vpr@33.5--33.22) [46706]"}
      FullPerm == Mask[this, next];
    Heap := Heap[this, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.value := val -- lseg.vpr@34.5--34.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (lseg.vpr@34.5--34.22) [46707]"}
      FullPerm == Mask[this, value_1];
    Heap := Heap[this, value_1:=val_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this, null), write) -- lseg.vpr@35.5--35.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, null) might fail. There might be insufficient permission to access this.value (lseg.vpr@35.5--35.38) [46710]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, null) might fail. There might be insufficient permission to access this.next (lseg.vpr@35.5--35.38) [46712]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != null) {
      assert {:msg "  Folding lseg(this, null) might fail. Assertion this.next != null might not hold. (lseg.vpr@35.5--35.38) [46713]"}
        Heap[this, next] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this, null) might fail. There might be insufficient permission to access lseg(this.next, null) (lseg.vpr@35.5--35.38) [46715]"}
          perm <= Mask[null, lseg(Heap[this, next], null)];
      }
      Mask := Mask[null, lseg(Heap[this, next], null):=Mask[null, lseg(Heap[this, next], null)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(this, null), Heap[null, lseg(this, null)], lseg(Heap[this, next], null), Heap[null, lseg(Heap[this, next], null)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(this, null):=Mask[null, lseg(this, null)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(this, null));
    assume Heap[null, lseg(this, null)] == CombineFrames(FrameFragment(Heap[this, value_1]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, lseg(Heap[this, next], null)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(this, null))) {
      Heap := Heap[null, lseg#sm(this, null):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(this, null):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(this, null):=Heap[null, lseg#sm(this, null)][this, value_1:=true]];
    Heap := Heap[null, lseg#sm(this, null):=Heap[null, lseg#sm(this, null)][this, next:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, lseg#sm(this, null)][o_40, f_52] || Heap[null, lseg#sm(Heap[this, next], null)][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, lseg#sm(this, null):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access lseg(this, null) (lseg.vpr@29.13--29.41) [46717]"}
        perm <= Mask[null, lseg(this, null)];
    }
    Mask := Mask[null, lseg(this, null):=Mask[null, lseg(this, null)] - perm];
    assert {:msg "  Postcondition of init might not hold. Assertion length(this, null) == 1 might not hold. (lseg.vpr@30.13--30.36) [46718]"}
      length_1(Heap, this, null) == 1;
    assert {:msg "  Postcondition of init might not hold. Assertion get(this, 0, null) == val might not hold. (lseg.vpr@31.13--31.38) [46719]"}
      get(Heap, this, 0, null) == val_2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method initUnitCycle
// ==================================================

procedure initUnitCycle(this: Ref, val_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
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
    PostMask := PostMask[null, lseg(this, this):=PostMask[null, lseg(this, this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this, this) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@42.13--42.31) [46720]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, this, this) == 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this, 0, this) == val
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@43.13--43.31) [46721]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, this)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(this, this) might not hold. (lseg.vpr@43.13--43.31) [46722]"}
          0 < length_1(PostHeap, this, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this, 0, this) == val_2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(lseg(this, this), write) in this.next == this)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, this));
      assume UnfoldingHeap[null, lseg(this, this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != this then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access lseg(this, this) (lseg.vpr@44.13--44.72) [46723]"}
          perm <= UnfoldingMask[null, lseg(this, this)];
      }
      UnfoldingMask := UnfoldingMask[null, lseg(this, this):=UnfoldingMask[null, lseg(this, this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != this) {
        assume UnfoldingHeap[this, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], this):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], this)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, this), UnfoldingHeap[null, lseg(this, this)], lseg(UnfoldingHeap[this, next], this), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@44.13--44.72) [46724]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, lseg#sm(this, this):=PostHeap[null, lseg#sm(this, this)][this, value_1:=true]];
        PostHeap := PostHeap[null, lseg#sm(this, this):=PostHeap[null, lseg#sm(this, this)][this, next:=true]];
        if (PostHeap[this, next] != this) {
          havoc newPMask;
          assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
            { newPMask[o_42, f_55] }
            PostHeap[null, lseg#sm(this, this)][o_42, f_55] || PostHeap[null, lseg#sm(PostHeap[this, next], this)][o_42, f_55] ==> newPMask[o_42, f_55]
          );
          PostHeap := PostHeap[null, lseg#sm(this, this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, this));
      assume UnfoldingHeap[null, lseg(this, this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != this then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, lseg(this, this):=UnfoldingMask[null, lseg(this, this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != this) {
        assume UnfoldingHeap[this, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], this):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], this)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, this), UnfoldingHeap[null, lseg(this, this)], lseg(UnfoldingHeap[this, next], this), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, next] == this;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.next := this -- lseg.vpr@46.5--46.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (lseg.vpr@46.5--46.22) [46725]"}
      FullPerm == Mask[this, next];
    Heap := Heap[this, next:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.value := val -- lseg.vpr@47.5--47.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (lseg.vpr@47.5--47.22) [46726]"}
      FullPerm == Mask[this, value_1];
    Heap := Heap[this, value_1:=val_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this, this), write) -- lseg.vpr@48.5--48.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, this) might fail. There might be insufficient permission to access this.value (lseg.vpr@48.5--48.38) [46729]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, this) might fail. There might be insufficient permission to access this.next (lseg.vpr@48.5--48.38) [46731]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != this) {
      assert {:msg "  Folding lseg(this, this) might fail. Assertion this.next != null might not hold. (lseg.vpr@48.5--48.38) [46732]"}
        Heap[this, next] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this, this) might fail. There might be insufficient permission to access lseg(this.next, this) (lseg.vpr@48.5--48.38) [46734]"}
          perm <= Mask[null, lseg(Heap[this, next], this)];
      }
      Mask := Mask[null, lseg(Heap[this, next], this):=Mask[null, lseg(Heap[this, next], this)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(this, this), Heap[null, lseg(this, this)], lseg(Heap[this, next], this), Heap[null, lseg(Heap[this, next], this)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(this, this):=Mask[null, lseg(this, this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(this, this));
    assume Heap[null, lseg(this, this)] == CombineFrames(FrameFragment(Heap[this, value_1]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != this then Heap[null, lseg(Heap[this, next], this)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(this, this))) {
      Heap := Heap[null, lseg#sm(this, this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(this, this):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, value_1:=true]];
    Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, next:=true]];
    if (Heap[this, next] != this) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_61: (Field A B) ::
        { newPMask[o, f_61] }
        Heap[null, lseg#sm(this, this)][o, f_61] || Heap[null, lseg#sm(Heap[this, next], this)][o, f_61] ==> newPMask[o, f_61]
      );
      Heap := Heap[null, lseg#sm(this, this):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of initUnitCycle might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@41.13--41.41) [46736]"}
        perm <= Mask[null, lseg(this, this)];
    }
    Mask := Mask[null, lseg(this, this):=Mask[null, lseg(this, this)] - perm];
    assert {:msg "  Postcondition of initUnitCycle might not hold. Assertion length(this, this) == 1 might not hold. (lseg.vpr@42.13--42.36) [46737]"}
      length_1(Heap, this, this) == 1;
    assert {:msg "  Postcondition of initUnitCycle might not hold. Assertion get(this, 0, this) == val might not hold. (lseg.vpr@43.13--43.38) [46738]"}
      get(Heap, this, 0, this) == val_2;
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, this));
      assume UnfoldingHeap[null, lseg(this, this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != this then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of initUnitCycle might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@44.13--44.72) [46739]"}
          perm <= UnfoldingMask[null, lseg(this, this)];
      }
      UnfoldingMask := UnfoldingMask[null, lseg(this, this):=UnfoldingMask[null, lseg(this, this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value_1:=UnfoldingMask[this, value_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != this) {
        assume UnfoldingHeap[this, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], this):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], this)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, this), UnfoldingHeap[null, lseg(this, this)], lseg(UnfoldingHeap[this, next], this), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of initUnitCycle might not hold. Assertion this.next == this might not hold. (lseg.vpr@44.13--44.72) [46740]"}
      Heap[this, next] == this;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, value_1:=true]];
      Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, next:=true]];
      if (Heap[this, next] != this) {
        havoc newPMask;
        assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
          { newPMask[o_46, f_60] }
          Heap[null, lseg#sm(this, this)][o_46, f_60] || Heap[null, lseg#sm(Heap[this, next], this)][o_46, f_60] ==> newPMask[o_46, f_60]
        );
        Heap := Heap[null, lseg#sm(this, this):=newPMask];
      }
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method addAtEnd
// ==================================================

procedure addAtEnd(this: Ref, end_1: Ref, val_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var i_17: int;
  var n: Ref;
  var newVersion: FrameType;
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var i_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[end_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] + perm];
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
    PostMask := PostMask[null, lseg(this, end_1):=PostMask[null, lseg(this, end_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this, end) == old(length(this, end)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@54.13--54.30) [46741]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@54.39--54.56) [46742]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(this, end_1)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length_1(PostHeap, this, end_1) == length_1(oldHeap, this, end_1) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(get(this, i, end)) } 0 <= i && i < old(length(this, end)) ==> get(this, i, end) == old(get(this, i, end)))
      if (*) {
        if (0 <= i_17) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@55.50--55.67) [46743]"}
              NoPerm < perm ==> NoPerm < oldMask[null, lseg(this, end_1)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        if (0 <= i_17 && i_17 < length_1(oldHeap, this, end_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@55.75--55.92) [46744]"}
              NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end_1)];
            assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i might not hold. (lseg.vpr@55.75--55.92) [46745]"}
              0 <= i_17;
            assert {:msg "  Precondition of function get might not hold. Assertion i < length(this, end) might not hold. (lseg.vpr@55.75--55.92) [46746]"}
              i_17 < length_1(PostHeap, this, end_1);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
            PostHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@55.100--55.117) [46747]"}
              NoPerm < perm ==> NoPerm < oldMask[null, lseg(this, end_1)];
            assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i might not hold. (lseg.vpr@55.100--55.117) [46748]"}
              0 <= i_17;
            assert {:msg "  Precondition of function get might not hold. Assertion i < length(this, end) might not hold. (lseg.vpr@55.100--55.117) [46749]"}
              i_17 < length_1(oldHeap, this, end_1);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { get#frame(oldHeap[null, lseg(this, end_1)], this, i_1, end_1) }
      0 <= i_1 && i_1 < length_1(oldHeap, this, end_1) ==> get(PostHeap, this, i_1, end_1) == get(oldHeap, this, i_1, end_1)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this, length(this, end) - 1, end) == val
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@56.23--56.40) [46750]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@56.13--56.50) [46751]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end_1)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 <= length(this, end) - 1 might not hold. (lseg.vpr@56.13--56.50) [46752]"}
          0 <= length_1(PostHeap, this, end_1) - 1;
        assert {:msg "  Precondition of function get might not hold. Assertion length(this, end) - 1 < length(this, end) might not hold. (lseg.vpr@56.13--56.50) [46753]"}
          length_1(PostHeap, this, end_1) - 1 < length_1(PostHeap, this, end_1);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this, length_1(PostHeap, this, end_1) - 1, end_1) == val_2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n, $allocated];
  
  // -- Translating statement: unfold acc(lseg(this, end), write) -- lseg.vpr@60.5--60.39
    assume lseg#trigger(Heap, lseg(this, end_1));
    assume Heap[null, lseg(this, end_1)] == CombineFrames(FrameFragment(Heap[this, value_1]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != end_1 then Heap[null, lseg(Heap[this, next], end_1)] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(this, end) might fail. There might be insufficient permission to access lseg(this, end) (lseg.vpr@60.5--60.39) [46756]"}
        perm <= Mask[null, lseg(this, end_1)];
    }
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, lseg(this, end_1))) {
        havoc newVersion;
        Heap := Heap[null, lseg(this, end_1):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value_1:=Mask[this, value_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != end_1) {
      assume Heap[this, next] != null;
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[this, next], end_1):=Mask[null, lseg(Heap[this, next], end_1)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lseg(this, end_1), Heap[null, lseg(this, end_1)], lseg(Heap[this, next], end_1), Heap[null, lseg(Heap[this, next], end_1)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next == end) -- lseg.vpr@62.5--70.6
    
    // -- Check definedness of this.next == end
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (lseg.vpr@62.9--62.25) [46760]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] == end_1) {
      
      // -- Translating statement: n := new(next, value) -- lseg.vpr@63.9--63.20
        havoc freshObj;
        assume freshObj != null && !Heap[freshObj, $allocated];
        Heap := Heap[freshObj, $allocated:=true];
        n := freshObj;
        Mask := Mask[n, next:=Mask[n, next] + FullPerm];
        Mask := Mask[n, value_1:=Mask[n, value_1] + FullPerm];
        assume state(Heap, Mask);
      
      // -- Translating statement: n.next := end -- lseg.vpr@64.9--64.22
        assert {:msg "  Assignment might fail. There might be insufficient permission to access n.next (lseg.vpr@64.9--64.22) [46761]"}
          FullPerm == Mask[n, next];
        Heap := Heap[n, next:=end_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: n.value := val -- lseg.vpr@65.9--65.23
        assert {:msg "  Assignment might fail. There might be insufficient permission to access n.value (lseg.vpr@65.9--65.23) [46762]"}
          FullPerm == Mask[n, value_1];
        Heap := Heap[n, value_1:=val_2];
        assume state(Heap, Mask);
      
      // -- Translating statement: this.next := n -- lseg.vpr@66.9--66.23
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (lseg.vpr@66.9--66.23) [46763]"}
          FullPerm == Mask[this, next];
        Heap := Heap[this, next:=n];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(n, end), write) -- lseg.vpr@67.9--67.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding lseg(n, end) might fail. There might be insufficient permission to access n.value (lseg.vpr@67.9--67.38) [46766]"}
            perm <= Mask[n, value_1];
        }
        Mask := Mask[n, value_1:=Mask[n, value_1] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding lseg(n, end) might fail. There might be insufficient permission to access n.next (lseg.vpr@67.9--67.38) [46768]"}
            perm <= Mask[n, next];
        }
        Mask := Mask[n, next:=Mask[n, next] - perm];
        if (Heap[n, next] != end_1) {
          assert {:msg "  Folding lseg(n, end) might fail. Assertion n.next != null might not hold. (lseg.vpr@67.9--67.38) [46769]"}
            Heap[n, next] != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(n, end) might fail. There might be insufficient permission to access lseg(n.next, end) (lseg.vpr@67.9--67.38) [46771]"}
              perm <= Mask[null, lseg(Heap[n, next], end_1)];
          }
          Mask := Mask[null, lseg(Heap[n, next], end_1):=Mask[null, lseg(Heap[n, next], end_1)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(n, end_1), Heap[null, lseg(n, end_1)], lseg(Heap[n, next], end_1), Heap[null, lseg(Heap[n, next], end_1)]);
        }
        perm := FullPerm;
        Mask := Mask[null, lseg(n, end_1):=Mask[null, lseg(n, end_1)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(n, end_1));
        assume Heap[null, lseg(n, end_1)] == CombineFrames(FrameFragment(Heap[n, value_1]), CombineFrames(FrameFragment(Heap[n, next]), FrameFragment((if Heap[n, next] != end_1 then Heap[null, lseg(Heap[n, next], end_1)] else EmptyFrame))));
        if (!HasDirectPerm(Mask, null, lseg(n, end_1))) {
          Heap := Heap[null, lseg#sm(n, end_1):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(n, end_1):=freshVersion];
        }
        Heap := Heap[null, lseg#sm(n, end_1):=Heap[null, lseg#sm(n, end_1)][n, value_1:=true]];
        Heap := Heap[null, lseg#sm(n, end_1):=Heap[null, lseg#sm(n, end_1)][n, next:=true]];
        if (Heap[n, next] != end_1) {
          havoc newPMask;
          assume (forall <A, B> o_54: Ref, f_22: (Field A B) ::
            { newPMask[o_54, f_22] }
            Heap[null, lseg#sm(n, end_1)][o_54, f_22] || Heap[null, lseg#sm(Heap[n, next], end_1)][o_54, f_22] ==> newPMask[o_54, f_22]
          );
          Heap := Heap[null, lseg#sm(n, end_1):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: addAtEnd(this.next, end, val) -- lseg.vpr@69.9--69.38
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next (lseg.vpr@69.9--69.38) [46773]"}
            HasDirectPerm(Mask, this, next);
        arg_this := Heap[this, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method addAtEnd might not hold. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@69.9--69.38) [46774]"}
              perm <= Mask[null, lseg(arg_this, end_1)];
          }
          Mask := Mask[null, lseg(arg_this, end_1):=Mask[null, lseg(arg_this, end_1)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, lseg(arg_this, end_1):=Mask[null, lseg(arg_this, end_1)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume length_1(Heap, arg_this, end_1) == length_1(PreCallHeap, arg_this, end_1) + 1;
          assume state(Heap, Mask);
          assume (forall i_4_1: int ::
            { get#frame(PreCallHeap[null, lseg(arg_this, end_1)], arg_this, i_4_1, end_1) }
            0 <= i_4_1 && i_4_1 < length_1(PreCallHeap, arg_this, end_1) ==> get(Heap, arg_this, i_4_1, end_1) == get(PreCallHeap, arg_this, i_4_1, end_1)
          );
          assume state(Heap, Mask);
          assume get(Heap, arg_this, length_1(Heap, arg_this, end_1) - 1, end_1) == val_2;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this, end), write) -- lseg.vpr@72.5--72.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access this.value (lseg.vpr@72.5--72.37) [46777]"}
        perm <= Mask[this, value_1];
    }
    Mask := Mask[this, value_1:=Mask[this, value_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access this.next (lseg.vpr@72.5--72.37) [46779]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != end_1) {
      assert {:msg "  Folding lseg(this, end) might fail. Assertion this.next != null might not hold. (lseg.vpr@72.5--72.37) [46780]"}
        Heap[this, next] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@72.5--72.37) [46782]"}
          perm <= Mask[null, lseg(Heap[this, next], end_1)];
      }
      Mask := Mask[null, lseg(Heap[this, next], end_1):=Mask[null, lseg(Heap[this, next], end_1)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(this, end_1), Heap[null, lseg(this, end_1)], lseg(Heap[this, next], end_1), Heap[null, lseg(Heap[this, next], end_1)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(this, end_1));
    assume Heap[null, lseg(this, end_1)] == CombineFrames(FrameFragment(Heap[this, value_1]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != end_1 then Heap[null, lseg(Heap[this, next], end_1)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(this, end_1))) {
      Heap := Heap[null, lseg#sm(this, end_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(this, end_1):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, value_1:=true]];
    Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
    if (Heap[this, next] != end_1) {
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_8: (Field A B) ::
        { newPMask[o_16, f_8] }
        Heap[null, lseg#sm(this, end_1)][o_16, f_8] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_16, f_8] ==> newPMask[o_16, f_8]
      );
      Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@53.13--53.40) [46784]"}
        perm <= Mask[null, lseg(this, end_1)];
    }
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] - perm];
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion length(this, end) == old(length(this, end)) + 1 might not hold. (lseg.vpr@54.13--54.62) [46785]"}
      length_1(Heap, this, end_1) == length_1(oldHeap, this, end_1) + 1;
    if (*) {
      if (0 <= i_2 && i_2 < length_1(oldHeap, this, end_1)) {
        assert {:msg "  Postcondition of addAtEnd might not hold. Assertion get(this, i, end) == old(get(this, i, end)) might not hold. (lseg.vpr@55.14--55.119) [46786]"}
          get(Heap, this, i_2, end_1) == get(oldHeap, this, i_2, end_1);
      }
      assume false;
    }
    assume (forall i_3_1: int ::
      { get#frame(oldHeap[null, lseg(this, end_1)], this, i_3_1, end_1) }
      0 <= i_3_1 && i_3_1 < length_1(oldHeap, this, end_1) ==> get(Heap, this, i_3_1, end_1) == get(oldHeap, this, i_3_1, end_1)
    );
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion get(this, length(this, end) - 1, end) == val might not hold. (lseg.vpr@56.13--56.57) [46787]"}
      get(Heap, this, length_1(Heap, this, end_1) - 1, end_1) == val_2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1_2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var n: Ref;
  var freshObj: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[n, $allocated];
  
  // -- Translating statement: n := new(next, value) -- lseg.vpr@78.5--78.26
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n := freshObj;
    Mask := Mask[n, next:=Mask[n, next] + FullPerm];
    Mask := Mask[n, value_1:=Mask[n, value_1] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: init(n, 0) -- lseg.vpr@79.5--79.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method init might not hold. There might be insufficient permission to access n.next (lseg.vpr@79.5--79.15) [46788]"}
          perm <= Mask[n, next];
      }
      Mask := Mask[n, next:=Mask[n, next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method init might not hold. There might be insufficient permission to access n.value (lseg.vpr@79.5--79.15) [46789]"}
          perm <= Mask[n, value_1];
      }
      Mask := Mask[n, value_1:=Mask[n, value_1] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, lseg(n, null):=Mask[null, lseg(n, null)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume length_1(Heap, n, null) == 1;
      assume state(Heap, Mask);
      assume get(Heap, n, 0, null) == 0;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(n, 0, null) == 0 -- lseg.vpr@80.5--80.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(n, 0, null) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@80.12--80.27) [46790]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, null) might not hold. (lseg.vpr@80.12--80.27) [46791]"}
          0 < length_1(ExhaleWellDef0Heap, n, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, null) == 0 might not hold. (lseg.vpr@80.12--80.32) [46792]"}
      get(Heap, n, 0, null) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: addAtEnd(n, null, 1) -- lseg.vpr@81.5--81.25
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method addAtEnd might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@81.5--81.25) [46793]"}
          perm <= Mask[null, lseg(n, null)];
      }
      Mask := Mask[null, lseg(n, null):=Mask[null, lseg(n, null)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, lseg(n, null):=Mask[null, lseg(n, null)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume length_1(Heap, n, null) == length_1(PreCallHeap, n, null) + 1;
      assume state(Heap, Mask);
      assume (forall i: int ::
        { get#frame(PreCallHeap[null, lseg(n, null)], n, i, null) }
        0 <= i && i < length_1(PreCallHeap, n, null) ==> get(Heap, n, i, null) == get(PreCallHeap, n, i, null)
      );
      assume state(Heap, Mask);
      assume get(Heap, n, length_1(Heap, n, null) - 1, null) == 1;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(n, 0, null) == 0 -- lseg.vpr@82.5--82.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(n, 0, null) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@82.12--82.27) [46794]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, null) might not hold. (lseg.vpr@82.12--82.27) [46795]"}
          0 < length_1(ExhaleWellDef0Heap, n, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, null) == 0 might not hold. (lseg.vpr@82.12--82.32) [46796]"}
      get(Heap, n, 0, null) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(n, 1, null) == 1 -- lseg.vpr@83.5--83.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(n, 1, null) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@83.12--83.27) [46797]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 1 < length(n, null) might not hold. (lseg.vpr@83.12--83.27) [46798]"}
          1 < length_1(ExhaleWellDef0Heap, n, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 1, null) == 1 might not hold. (lseg.vpr@83.12--83.32) [46799]"}
      get(Heap, n, 1, null) == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2_2() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var n: Ref;
  var freshObj: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[n, $allocated];
  
  // -- Translating statement: n := new(next, value) -- lseg.vpr@89.5--89.16
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    n := freshObj;
    Mask := Mask[n, next:=Mask[n, next] + FullPerm];
    Mask := Mask[n, value_1:=Mask[n, value_1] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: initUnitCycle(n, 0) -- lseg.vpr@90.5--90.24
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method initUnitCycle might not hold. There might be insufficient permission to access n.next (lseg.vpr@90.5--90.24) [46800]"}
          perm <= Mask[n, next];
      }
      Mask := Mask[n, next:=Mask[n, next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method initUnitCycle might not hold. There might be insufficient permission to access n.value (lseg.vpr@90.5--90.24) [46801]"}
          perm <= Mask[n, value_1];
      }
      Mask := Mask[n, value_1:=Mask[n, value_1] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, lseg(n, n):=Mask[null, lseg(n, n)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume length_1(Heap, n, n) == 1;
      assume state(Heap, Mask);
      assume get(Heap, n, 0, n) == 0;
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(n, n));
        assume UnfoldingHeap[null, lseg(n, n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[n, next]), FrameFragment((if UnfoldingHeap[n, next] != n then UnfoldingHeap[null, lseg(UnfoldingHeap[n, next], n)] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(n, n):=UnfoldingMask[null, lseg(n, n)] - perm];
        perm := FullPerm;
        assume n != null;
        UnfoldingMask := UnfoldingMask[n, value_1:=UnfoldingMask[n, value_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume n != null;
        UnfoldingMask := UnfoldingMask[n, next:=UnfoldingMask[n, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[n, next] != n) {
          assume UnfoldingHeap[n, next] != null;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[n, next], n):=UnfoldingMask[null, lseg(UnfoldingHeap[n, next], n)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(n, n), UnfoldingHeap[null, lseg(n, n)], lseg(UnfoldingHeap[n, next], n), UnfoldingHeap[null, lseg(UnfoldingHeap[n, next], n)]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[n, next] == n;
      
      // -- Free assumptions (inhale module)
        Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, value_1:=true]];
        Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, next:=true]];
        if (Heap[n, next] != n) {
          havoc newPMask;
          assume (forall <A, B> o_38: Ref, f_2: (Field A B) ::
            { newPMask[o_38, f_2] }
            Heap[null, lseg#sm(n, n)][o_38, f_2] || Heap[null, lseg#sm(Heap[n, next], n)][o_38, f_2] ==> newPMask[o_38, f_2]
          );
          Heap := Heap[null, lseg#sm(n, n):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of (unfolding acc(lseg(n, n), write) in n.next == n) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(n, n));
        assume UnfoldingHeap[null, lseg(n, n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, value_1]), CombineFrames(FrameFragment(UnfoldingHeap[n, next]), FrameFragment((if UnfoldingHeap[n, next] != n then UnfoldingHeap[null, lseg(UnfoldingHeap[n, next], n)] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access lseg(n, n) (lseg.vpr@44.13--44.72) [46802]"}
            perm <= UnfoldingMask[null, lseg(n, n)];
        }
        UnfoldingMask := UnfoldingMask[null, lseg(n, n):=UnfoldingMask[null, lseg(n, n)] - perm];
        perm := FullPerm;
        assume n != null;
        UnfoldingMask := UnfoldingMask[n, value_1:=UnfoldingMask[n, value_1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume n != null;
        UnfoldingMask := UnfoldingMask[n, next:=UnfoldingMask[n, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        if (UnfoldingHeap[n, next] != n) {
          assume UnfoldingHeap[n, next] != null;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[n, next], n):=UnfoldingMask[null, lseg(UnfoldingHeap[n, next], n)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(n, n), UnfoldingHeap[null, lseg(n, n)], lseg(UnfoldingHeap[n, next], n), UnfoldingHeap[null, lseg(UnfoldingHeap[n, next], n)]);
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, value_1:=true]];
          Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, next:=true]];
          if (Heap[n, next] != n) {
            havoc newPMask;
            assume (forall <A, B> o_55: Ref, f_23: (Field A B) ::
              { newPMask[o_55, f_23] }
              Heap[null, lseg#sm(n, n)][o_55, f_23] || Heap[null, lseg#sm(Heap[n, next], n)][o_55, f_23] ==> newPMask[o_55, f_23]
            );
            Heap := Heap[null, lseg#sm(n, n):=newPMask];
          }
          assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(n, 0, n) == 0 -- lseg.vpr@91.5--91.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(n, 0, n) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@91.12--91.24) [46803]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, n)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, n) might not hold. (lseg.vpr@91.12--91.24) [46804]"}
          0 < length_1(ExhaleWellDef0Heap, n, n);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, n) == 0 might not hold. (lseg.vpr@91.12--91.29) [46805]"}
      get(Heap, n, 0, n) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: addAtEnd(n, n, 1) -- lseg.vpr@92.5--92.22
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method addAtEnd might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@92.5--92.22) [46806]"}
          perm <= Mask[null, lseg(n, n)];
      }
      Mask := Mask[null, lseg(n, n):=Mask[null, lseg(n, n)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, lseg(n, n):=Mask[null, lseg(n, n)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume length_1(Heap, n, n) == length_1(PreCallHeap, n, n) + 1;
      assume state(Heap, Mask);
      assume (forall i: int ::
        { get#frame(PreCallHeap[null, lseg(n, n)], n, i, n) }
        0 <= i && i < length_1(PreCallHeap, n, n) ==> get(Heap, n, i, n) == get(PreCallHeap, n, i, n)
      );
      assume state(Heap, Mask);
      assume get(Heap, n, length_1(Heap, n, n) - 1, n) == 1;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(n, 0, n) == 0 -- lseg.vpr@93.5--93.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(n, 0, n) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@93.12--93.24) [46807]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, n)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, n) might not hold. (lseg.vpr@93.12--93.24) [46808]"}
          0 < length_1(ExhaleWellDef0Heap, n, n);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, n) == 0 might not hold. (lseg.vpr@93.12--93.29) [46809]"}
      get(Heap, n, 0, n) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(n, 1, n) == 1 -- lseg.vpr@94.5--94.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(n, 1, n) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@94.12--94.24) [46810]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, n)];
        assert {:msg "  Precondition of function get might not hold. Assertion 1 < length(n, n) might not hold. (lseg.vpr@94.12--94.24) [46811]"}
          1 < length_1(ExhaleWellDef0Heap, n, n);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 1, n) == 1 might not hold. (lseg.vpr@94.12--94.29) [46812]"}
      get(Heap, n, 1, n) == 1;
    assume state(Heap, Mask);
}