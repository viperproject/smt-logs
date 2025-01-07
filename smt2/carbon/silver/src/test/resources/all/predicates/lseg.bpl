// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:20:11
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
axiom (forall o_24: Ref, f_26: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_24, f_26] }
  Heap[o_24, $allocated] ==> Heap[Heap[o_24, f_26], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref, f_41: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, f_41] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_36, f_41) ==> Heap[o_36, f_41] == ExhaleHeap[o_36, f_41]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32), ExhaleHeap[null, PredicateMaskField(pm_f_32)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> Heap[null, PredicateMaskField(pm_f_32)] == ExhaleHeap[null, PredicateMaskField(pm_f_32)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_32) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsPredicateField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_41: (Field A B) ::
    { ExhaleHeap[o2_32, f_41] }
    Heap[null, PredicateMaskField(pm_f_32)][o2_32, f_41] ==> Heap[o2_32, f_41] == ExhaleHeap[o2_32, f_41]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_32), ExhaleHeap[null, WandMaskField(pm_f_32)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsWandField(pm_f_32) ==> Heap[null, WandMaskField(pm_f_32)] == ExhaleHeap[null, WandMaskField(pm_f_32)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_32: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_32) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_32) && IsWandField(pm_f_32) ==> (forall <A, B> o2_32: Ref, f_41: (Field A B) ::
    { ExhaleHeap[o2_32, f_41] }
    Heap[null, WandMaskField(pm_f_32)][o2_32, f_41] ==> Heap[o2_32, f_41] == ExhaleHeap[o2_32, f_41]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_36: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_36, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_36, $allocated] ==> ExhaleHeap[o_36, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_24: Ref, f_48: (Field A B), v: B ::
  { Heap[o_24, f_48:=v] }
  succHeap(Heap, Heap[o_24, f_48:=v])
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
const unique value: Field NormalField int;
axiom !IsPredicateField(value);
axiom !IsWandField(value);

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, this: Ref, i: int, end: Ref): int;
function  get'(Heap: HeapType, this: Ref, i: int, end: Ref): int;
axiom (forall Heap: HeapType, this: Ref, i: int, end: Ref ::
  { get(Heap, this, i, end) }
  get(Heap, this, i, end) == get'(Heap, this, i, end) && dummyFunction(get#triggerStateless(this, i, end))
);
axiom (forall Heap: HeapType, this: Ref, i: int, end: Ref ::
  { get'(Heap, this, i, end) }
  dummyFunction(get#triggerStateless(this, i, end))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int, end: Ref ::
  { state(Heap, Mask), get(Heap, this, i, end) } { state(Heap, Mask), get#triggerStateless(this, i, end), lseg#trigger(Heap, lseg(this, end)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < length(Heap, this, end) ==> get(Heap, this, i, end) == (if i == 0 then Heap[this, value] else get'(Heap, Heap[this, next], i - 1, end))
);

// Framing axioms
function  get#frame(frame: FrameType, this: Ref, i: int, end: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, i: int, end: Ref ::
  { state(Heap, Mask), get'(Heap, this, i, end) } { state(Heap, Mask), get#triggerStateless(this, i, end), lseg#trigger(Heap, lseg(this, end)) }
  state(Heap, Mask) ==> get'(Heap, this, i, end) == get#frame(Heap[null, lseg(this, end)], this, i, end)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, this: Ref, i: int, end: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(this: Ref, i: int, end: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(this: Ref, i: int, end: Ref) returns (Result: int)
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
    assume Heap[end, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end):=Mask[null, lseg(this, end)] + perm];
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@14.28--14.45) [151808]"}
          NoPerm < perm ==> NoPerm < Mask[null, lseg(this, end)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume i < length(Heap, this, end);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(lseg(this, end), write) in (i == 0 ? this.value : get(this.next, i - 1, end)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, end));
      assume UnfoldingHeap[null, lseg(this, end)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != end then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (lseg.vpr@12.1--17.2) [151809]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, end)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != end) {
        assume UnfoldingHeap[this, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, end), UnfoldingHeap[null, lseg(this, end)], lseg(UnfoldingHeap[this, next], end), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (i == 0) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.value (lseg.vpr@12.1--17.2) [151810]"}
          HasDirectPerm(UnfoldingMask, this, value);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@12.1--17.2) [151811]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@16.69--16.93) [151812]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end)];
          assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i - 1 might not hold. (lseg.vpr@16.69--16.93) [151813]"}
            0 <= i - 1;
          assert {:msg "  Precondition of function get might not hold. Assertion i - 1 < length(this.next, end) might not hold. (lseg.vpr@16.69--16.93) [151814]"}
            i - 1 < length(UnfoldingHeap, UnfoldingHeap[this, next], end);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume get#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end)], UnfoldingHeap[this, next], i - 1, end);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, lseg#sm(this, end):=Heap[null, lseg#sm(this, end)][this, value:=true]];
        Heap := Heap[null, lseg#sm(this, end):=Heap[null, lseg#sm(this, end)][this, next:=true]];
        if (Heap[this, next] != end) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, lseg#sm(this, end)][o_15, f_20] || Heap[null, lseg#sm(Heap[this, next], end)][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, lseg#sm(this, end):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if i == 0 then Heap[this, value] else get(Heap, Heap[this, next], i - 1, end));
}

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length(Heap: HeapType, this: Ref, end: Ref): int;
function  length'(Heap: HeapType, this: Ref, end: Ref): int;
axiom (forall Heap: HeapType, this: Ref, end: Ref ::
  { length(Heap, this, end) }
  length(Heap, this, end) == length'(Heap, this, end) && dummyFunction(length#triggerStateless(this, end))
);
axiom (forall Heap: HeapType, this: Ref, end: Ref ::
  { length'(Heap, this, end) }
  dummyFunction(length#triggerStateless(this, end))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), length(Heap, this, end) } { state(Heap, Mask), length#triggerStateless(this, end), lseg#trigger(Heap, lseg(this, end)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length(Heap, this, end) == (if Heap[this, next] == end then 1 else 1 + length'(Heap, Heap[this, next], end))
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref, end: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), length'(Heap, this, end) } { state(Heap, Mask), length#triggerStateless(this, end), lseg#trigger(Heap, lseg(this, end)) }
  state(Heap, Mask) ==> length'(Heap, this, end) == length#frame(Heap[null, lseg(this, end)], this, end)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end: Ref ::
  { state(Heap, Mask), length'(Heap, this, end) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || length#trigger(Heap[null, lseg(this, end)], this, end)) ==> length'(Heap, this, end) > 0
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref, end: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref, end: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref, end: Ref) returns (Result: int)
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
    assume Heap[end, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end):=Mask[null, lseg(this, end)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(lseg(this, end), write) in (this.next == end ? 1 : 1 + length(this.next, end)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, end));
      assume UnfoldingHeap[null, lseg(this, end)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != end then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (lseg.vpr@19.1--24.2) [151815]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, end)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[this, next] != end) {
        assume UnfoldingHeap[this, next] != null;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, end), UnfoldingHeap[null, lseg(this, end)], lseg(UnfoldingHeap[this, next], end), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end)]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@19.1--24.2) [151816]"}
        HasDirectPerm(UnfoldingMask, this, next);
      if (UnfoldingHeap[this, next] == end) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@19.1--24.2) [151817]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@23.74--23.96) [151818]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume length#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end)], UnfoldingHeap[this, next], end);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, lseg#sm(this, end):=Heap[null, lseg#sm(this, end)][this, value:=true]];
        Heap := Heap[null, lseg#sm(this, end):=Heap[null, lseg#sm(this, end)][this, next:=true]];
        if (Heap[this, next] != end) {
          havoc newPMask;
          assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
            { newPMask[o_16, f_21] }
            Heap[null, lseg#sm(this, end)][o_16, f_21] || Heap[null, lseg#sm(Heap[this, next], end)][o_16, f_21] ==> newPMask[o_16, f_21]
          );
          Heap := Heap[null, lseg#sm(this, end):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[this, next] == end then 1 else 1 + length(Heap, Heap[this, next], end));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of length might not hold. Assertion result > 0 might not hold. (lseg.vpr@21.13--21.23) [151819]"}
      Result > 0;
}

// ==================================================
// Translation of predicate lseg
// ==================================================

type PredicateType_lseg;
function  lseg(this: Ref, end: Ref): Field PredicateType_lseg FrameType;
function  lseg#sm(this: Ref, end: Ref): Field PredicateType_lseg PMaskType;
axiom (forall this: Ref, end: Ref ::
  { PredicateMaskField(lseg(this, end)) }
  PredicateMaskField(lseg(this, end)) == lseg#sm(this, end)
);
axiom (forall this: Ref, end: Ref ::
  { lseg(this, end) }
  IsPredicateField(lseg(this, end))
);
axiom (forall this: Ref, end: Ref ::
  { lseg(this, end) }
  getPredWandId(lseg(this, end)) == 0
);
function  lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, end: Ref, this2: Ref, end2: Ref ::
  { lseg(this, end), lseg(this2, end2) }
  lseg(this, end) == lseg(this2, end2) ==> this == this2 && end == end2
);
axiom (forall this: Ref, end: Ref, this2: Ref, end2: Ref ::
  { lseg#sm(this, end), lseg#sm(this2, end2) }
  lseg#sm(this, end) == lseg#sm(this2, end2) ==> this == this2 && end == end2
);

axiom (forall Heap: HeapType, this: Ref, end: Ref ::
  { lseg#trigger(Heap, lseg(this, end)) }
  lseg#everUsed(lseg(this, end))
);

procedure lseg#definedness(this: Ref, end: Ref) returns ()
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
      assume Heap[end, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != end
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@7.1--10.2) [151820]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != end) {
      
      // -- Check definedness of this.next != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@7.1--10.2) [151821]"}
          HasDirectPerm(Mask, this, next);
      assume Heap[this, next] != null;
      
      // -- Check definedness of acc(lseg(this.next, end), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@7.1--10.2) [151822]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[this, next], end):=Mask[null, lseg(Heap[this, next], end)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method init
// ==================================================

procedure init(this: Ref, val_1: int) returns ()
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, null) (lseg.vpr@30.13--30.31) [151823]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, null)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length(PostHeap, this, null) == 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this, 0, null) == val
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, null) (lseg.vpr@31.13--31.31) [151824]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(this, null) might not hold. (lseg.vpr@31.13--31.31) [151825]"}
          0 < length(PostHeap, this, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this, 0, null) == val_1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this.next := null -- lseg.vpr@33.5--33.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (lseg.vpr@33.5--33.22) [151826]"}
      FullPerm == Mask[this, next];
    Heap := Heap[this, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.value := val -- lseg.vpr@34.5--34.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (lseg.vpr@34.5--34.22) [151827]"}
      FullPerm == Mask[this, value];
    Heap := Heap[this, value:=val_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this, null), write) -- lseg.vpr@35.5--35.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, null) might fail. There might be insufficient permission to access this.value (lseg.vpr@35.5--35.38) [151830]"}
        perm <= Mask[this, value];
    }
    Mask := Mask[this, value:=Mask[this, value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, null) might fail. There might be insufficient permission to access this.next (lseg.vpr@35.5--35.38) [151832]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != null) {
      assert {:msg "  Folding lseg(this, null) might fail. Assertion this.next != null might not hold. (lseg.vpr@35.5--35.38) [151833]"}
        Heap[this, next] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this, null) might fail. There might be insufficient permission to access lseg(this.next, null) (lseg.vpr@35.5--35.38) [151835]"}
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
    assume Heap[null, lseg(this, null)] == CombineFrames(FrameFragment(Heap[this, value]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != null then Heap[null, lseg(Heap[this, next], null)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(this, null))) {
      Heap := Heap[null, lseg#sm(this, null):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(this, null):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(this, null):=Heap[null, lseg#sm(this, null)][this, value:=true]];
    Heap := Heap[null, lseg#sm(this, null):=Heap[null, lseg#sm(this, null)][this, next:=true]];
    if (Heap[this, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, lseg#sm(this, null)][o_52, f_55] || Heap[null, lseg#sm(Heap[this, next], null)][o_52, f_55] ==> newPMask[o_52, f_55]
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
      assert {:msg "  Postcondition of init might not hold. There might be insufficient permission to access lseg(this, null) (lseg.vpr@29.13--29.41) [151837]"}
        perm <= Mask[null, lseg(this, null)];
    }
    Mask := Mask[null, lseg(this, null):=Mask[null, lseg(this, null)] - perm];
    assert {:msg "  Postcondition of init might not hold. Assertion length(this, null) == 1 might not hold. (lseg.vpr@30.13--30.36) [151838]"}
      length(Heap, this, null) == 1;
    assert {:msg "  Postcondition of init might not hold. Assertion get(this, 0, null) == val might not hold. (lseg.vpr@31.13--31.38) [151839]"}
      get(Heap, this, 0, null) == val_1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method initUnitCycle
// ==================================================

procedure initUnitCycle(this: Ref, val_1: int) returns ()
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
    Mask := Mask[this, value:=Mask[this, value] + perm];
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@42.13--42.31) [151840]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume length(PostHeap, this, this) == 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this, 0, this) == val
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@43.13--43.31) [151841]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, this)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(this, this) might not hold. (lseg.vpr@43.13--43.31) [151842]"}
          0 < length(PostHeap, this, this);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this, 0, this) == val_1;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(lseg(this, this), write) in this.next == this)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, this));
      assume UnfoldingHeap[null, lseg(this, this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != this then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access lseg(this, this) (lseg.vpr@44.13--44.72) [151843]"}
          perm <= UnfoldingMask[null, lseg(this, this)];
      }
      UnfoldingMask := UnfoldingMask[null, lseg(this, this):=UnfoldingMask[null, lseg(this, this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.next (lseg.vpr@44.13--44.72) [151844]"}
        HasDirectPerm(UnfoldingMask, this, next);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, lseg#sm(this, this):=PostHeap[null, lseg#sm(this, this)][this, value:=true]];
        PostHeap := PostHeap[null, lseg#sm(this, this):=PostHeap[null, lseg#sm(this, this)][this, next:=true]];
        if (PostHeap[this, next] != this) {
          havoc newPMask;
          assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
            { newPMask[o_53, f_56] }
            PostHeap[null, lseg#sm(this, this)][o_53, f_56] || PostHeap[null, lseg#sm(PostHeap[this, next], this)][o_53, f_56] ==> newPMask[o_53, f_56]
          );
          PostHeap := PostHeap[null, lseg#sm(this, this):=newPMask];
        }
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, this));
      assume UnfoldingHeap[null, lseg(this, this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != this then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)] else EmptyFrame))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, lseg(this, this):=UnfoldingMask[null, lseg(this, this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (lseg.vpr@46.5--46.22) [151845]"}
      FullPerm == Mask[this, next];
    Heap := Heap[this, next:=this];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.value := val -- lseg.vpr@47.5--47.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.value (lseg.vpr@47.5--47.22) [151846]"}
      FullPerm == Mask[this, value];
    Heap := Heap[this, value:=val_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this, this), write) -- lseg.vpr@48.5--48.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, this) might fail. There might be insufficient permission to access this.value (lseg.vpr@48.5--48.38) [151849]"}
        perm <= Mask[this, value];
    }
    Mask := Mask[this, value:=Mask[this, value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, this) might fail. There might be insufficient permission to access this.next (lseg.vpr@48.5--48.38) [151851]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != this) {
      assert {:msg "  Folding lseg(this, this) might fail. Assertion this.next != null might not hold. (lseg.vpr@48.5--48.38) [151852]"}
        Heap[this, next] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this, this) might fail. There might be insufficient permission to access lseg(this.next, this) (lseg.vpr@48.5--48.38) [151854]"}
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
    assume Heap[null, lseg(this, this)] == CombineFrames(FrameFragment(Heap[this, value]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != this then Heap[null, lseg(Heap[this, next], this)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(this, this))) {
      Heap := Heap[null, lseg#sm(this, this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(this, this):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, value:=true]];
    Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, next:=true]];
    if (Heap[this, next] != this) {
      havoc newPMask;
      assume (forall <A, B> o: Ref, f_85: (Field A B) ::
        { newPMask[o, f_85] }
        Heap[null, lseg#sm(this, this)][o, f_85] || Heap[null, lseg#sm(Heap[this, next], this)][o, f_85] ==> newPMask[o, f_85]
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
      assert {:msg "  Postcondition of initUnitCycle might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@41.13--41.41) [151856]"}
        perm <= Mask[null, lseg(this, this)];
    }
    Mask := Mask[null, lseg(this, this):=Mask[null, lseg(this, this)] - perm];
    assert {:msg "  Postcondition of initUnitCycle might not hold. Assertion length(this, this) == 1 might not hold. (lseg.vpr@42.13--42.36) [151857]"}
      length(Heap, this, this) == 1;
    assert {:msg "  Postcondition of initUnitCycle might not hold. Assertion get(this, 0, this) == val might not hold. (lseg.vpr@43.13--43.38) [151858]"}
      get(Heap, this, 0, this) == val_1;
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, this));
      assume UnfoldingHeap[null, lseg(this, this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, value]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), FrameFragment((if UnfoldingHeap[this, next] != this then UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], this)] else EmptyFrame))));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of initUnitCycle might not hold. There might be insufficient permission to access lseg(this, this) (lseg.vpr@44.13--44.72) [151859]"}
          perm <= UnfoldingMask[null, lseg(this, this)];
      }
      UnfoldingMask := UnfoldingMask[null, lseg(this, this):=UnfoldingMask[null, lseg(this, this)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, value:=UnfoldingMask[this, value] + perm];
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
    assert {:msg "  Postcondition of initUnitCycle might not hold. Assertion this.next == this might not hold. (lseg.vpr@44.13--44.72) [151860]"}
      Heap[this, next] == this;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, value:=true]];
      Heap := Heap[null, lseg#sm(this, this):=Heap[null, lseg#sm(this, this)][this, next:=true]];
      if (Heap[this, next] != this) {
        havoc newPMask;
        assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
          { newPMask[o_26, f_29] }
          Heap[null, lseg#sm(this, this)][o_26, f_29] || Heap[null, lseg#sm(Heap[this, next], this)][o_26, f_29] ==> newPMask[o_26, f_29]
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

procedure addAtEnd(this: Ref, end: Ref, val_1: int) returns ()
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
  var i_13: int;
  var n: Ref;
  var newVersion: FrameType;
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var i_2_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[end, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end):=Mask[null, lseg(this, end)] + perm];
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
    PostMask := PostMask[null, lseg(this, end):=PostMask[null, lseg(this, end)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of length(this, end) == old(length(this, end)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@54.13--54.30) [151861]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end)];
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@54.39--54.56) [151862]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(this, end)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume length(PostHeap, this, end) == length(oldHeap, this, end) + 1;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(get(this, i, end)) } 0 <= i && i < old(length(this, end)) ==> get(this, i, end) == old(get(this, i, end)))
      if (*) {
        if (0 <= i_13) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := oldMask;
            ExhaleWellDef0Heap := oldHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@55.50--55.67) [151863]"}
              NoPerm < perm ==> NoPerm < oldMask[null, lseg(this, end)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        if (0 <= i_13 && i_13 < length(oldHeap, this, end)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := PostMask;
            ExhaleWellDef0Heap := PostHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@55.75--55.92) [151864]"}
              NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end)];
            assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i might not hold. (lseg.vpr@55.75--55.92) [151865]"}
              0 <= i_13;
            assert {:msg "  Precondition of function get might not hold. Assertion i < length(this, end) might not hold. (lseg.vpr@55.75--55.92) [151866]"}
              i_13 < length(PostHeap, this, end);
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
            assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@55.100--55.117) [151867]"}
              NoPerm < perm ==> NoPerm < oldMask[null, lseg(this, end)];
            assert {:msg "  Precondition of function get might not hold. Assertion 0 <= i might not hold. (lseg.vpr@55.100--55.117) [151868]"}
              0 <= i_13;
            assert {:msg "  Precondition of function get might not hold. Assertion i < length(this, end) might not hold. (lseg.vpr@55.100--55.117) [151869]"}
              i_13 < length(oldHeap, this, end);
            // Finish exhale
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall i_1: int ::
      { get#frame(oldHeap[null, lseg(this, end)], this, i_1, end) }
      0 <= i_1 && i_1 < length(oldHeap, this, end) ==> get(PostHeap, this, i_1, end) == get(oldHeap, this, i_1, end)
    );
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of get(this, length(this, end) - 1, end) == val
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@56.23--56.40) [151870]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end)];
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
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@56.13--56.50) [151871]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 <= length(this, end) - 1 might not hold. (lseg.vpr@56.13--56.50) [151872]"}
          0 <= length(PostHeap, this, end) - 1;
        assert {:msg "  Precondition of function get might not hold. Assertion length(this, end) - 1 < length(this, end) might not hold. (lseg.vpr@56.13--56.50) [151873]"}
          length(PostHeap, this, end) - 1 < length(PostHeap, this, end);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(PostHeap, this, length(PostHeap, this, end) - 1, end) == val_1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[n, $allocated];
  
  // -- Translating statement: unfold acc(lseg(this, end), write) -- lseg.vpr@60.5--60.39
    assume lseg#trigger(Heap, lseg(this, end));
    assume Heap[null, lseg(this, end)] == CombineFrames(FrameFragment(Heap[this, value]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != end then Heap[null, lseg(Heap[this, next], end)] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(this, end) might fail. There might be insufficient permission to access lseg(this, end) (lseg.vpr@60.5--60.39) [151876]"}
        perm <= Mask[null, lseg(this, end)];
    }
    Mask := Mask[null, lseg(this, end):=Mask[null, lseg(this, end)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, lseg(this, end))) {
        havoc newVersion;
        Heap := Heap[null, lseg(this, end):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, value:=Mask[this, value] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    if (Heap[this, next] != end) {
      assume Heap[this, next] != null;
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[this, next], end):=Mask[null, lseg(Heap[this, next], end)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lseg(this, end), Heap[null, lseg(this, end)], lseg(Heap[this, next], end), Heap[null, lseg(Heap[this, next], end)]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.next == end) -- lseg.vpr@62.5--70.6
    
    // -- Check definedness of this.next == end
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.next (lseg.vpr@62.9--62.25) [151880]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] == end) {
      
      // -- Translating statement: n := new(next, value) -- lseg.vpr@63.9--63.20
        havoc freshObj;
        assume freshObj != null && !Heap[freshObj, $allocated];
        Heap := Heap[freshObj, $allocated:=true];
        n := freshObj;
        Mask := Mask[n, next:=Mask[n, next] + FullPerm];
        Mask := Mask[n, value:=Mask[n, value] + FullPerm];
        assume state(Heap, Mask);
      
      // -- Translating statement: n.next := end -- lseg.vpr@64.9--64.22
        assert {:msg "  Assignment might fail. There might be insufficient permission to access n.next (lseg.vpr@64.9--64.22) [151881]"}
          FullPerm == Mask[n, next];
        Heap := Heap[n, next:=end];
        assume state(Heap, Mask);
      
      // -- Translating statement: n.value := val -- lseg.vpr@65.9--65.23
        assert {:msg "  Assignment might fail. There might be insufficient permission to access n.value (lseg.vpr@65.9--65.23) [151882]"}
          FullPerm == Mask[n, value];
        Heap := Heap[n, value:=val_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: this.next := n -- lseg.vpr@66.9--66.23
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.next (lseg.vpr@66.9--66.23) [151883]"}
          FullPerm == Mask[this, next];
        Heap := Heap[this, next:=n];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(n, end), write) -- lseg.vpr@67.9--67.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding lseg(n, end) might fail. There might be insufficient permission to access n.value (lseg.vpr@67.9--67.38) [151886]"}
            perm <= Mask[n, value];
        }
        Mask := Mask[n, value:=Mask[n, value] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding lseg(n, end) might fail. There might be insufficient permission to access n.next (lseg.vpr@67.9--67.38) [151888]"}
            perm <= Mask[n, next];
        }
        Mask := Mask[n, next:=Mask[n, next] - perm];
        if (Heap[n, next] != end) {
          assert {:msg "  Folding lseg(n, end) might fail. Assertion n.next != null might not hold. (lseg.vpr@67.9--67.38) [151889]"}
            Heap[n, next] != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(n, end) might fail. There might be insufficient permission to access lseg(n.next, end) (lseg.vpr@67.9--67.38) [151891]"}
              perm <= Mask[null, lseg(Heap[n, next], end)];
          }
          Mask := Mask[null, lseg(Heap[n, next], end):=Mask[null, lseg(Heap[n, next], end)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(n, end), Heap[null, lseg(n, end)], lseg(Heap[n, next], end), Heap[null, lseg(Heap[n, next], end)]);
        }
        perm := FullPerm;
        Mask := Mask[null, lseg(n, end):=Mask[null, lseg(n, end)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(n, end));
        assume Heap[null, lseg(n, end)] == CombineFrames(FrameFragment(Heap[n, value]), CombineFrames(FrameFragment(Heap[n, next]), FrameFragment((if Heap[n, next] != end then Heap[null, lseg(Heap[n, next], end)] else EmptyFrame))));
        if (!HasDirectPerm(Mask, null, lseg(n, end))) {
          Heap := Heap[null, lseg#sm(n, end):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(n, end):=freshVersion];
        }
        Heap := Heap[null, lseg#sm(n, end):=Heap[null, lseg#sm(n, end)][n, value:=true]];
        Heap := Heap[null, lseg#sm(n, end):=Heap[null, lseg#sm(n, end)][n, next:=true]];
        if (Heap[n, next] != end) {
          havoc newPMask;
          assume (forall <A, B> o_20: Ref, f_10: (Field A B) ::
            { newPMask[o_20, f_10] }
            Heap[null, lseg#sm(n, end)][o_20, f_10] || Heap[null, lseg#sm(Heap[n, next], end)][o_20, f_10] ==> newPMask[o_20, f_10]
          );
          Heap := Heap[null, lseg#sm(n, end):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: addAtEnd(this.next, end, val) -- lseg.vpr@69.9--69.38
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next (lseg.vpr@69.9--69.38) [151893]"}
            HasDirectPerm(Mask, this, next);
        arg_this := Heap[this, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method addAtEnd might not hold. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@69.9--69.38) [151894]"}
              perm <= Mask[null, lseg(arg_this, end)];
          }
          Mask := Mask[null, lseg(arg_this, end):=Mask[null, lseg(arg_this, end)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, lseg(arg_this, end):=Mask[null, lseg(arg_this, end)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume length(Heap, arg_this, end) == length(PreCallHeap, arg_this, end) + 1;
          assume state(Heap, Mask);
          assume (forall i_4_1: int ::
            { get#frame(PreCallHeap[null, lseg(arg_this, end)], arg_this, i_4_1, end) }
            0 <= i_4_1 && i_4_1 < length(PreCallHeap, arg_this, end) ==> get(Heap, arg_this, i_4_1, end) == get(PreCallHeap, arg_this, i_4_1, end)
          );
          assume state(Heap, Mask);
          assume get(Heap, arg_this, length(Heap, arg_this, end) - 1, end) == val_1;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this, end), write) -- lseg.vpr@72.5--72.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access this.value (lseg.vpr@72.5--72.37) [151897]"}
        perm <= Mask[this, value];
    }
    Mask := Mask[this, value:=Mask[this, value] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access this.next (lseg.vpr@72.5--72.37) [151899]"}
        perm <= Mask[this, next];
    }
    Mask := Mask[this, next:=Mask[this, next] - perm];
    if (Heap[this, next] != end) {
      assert {:msg "  Folding lseg(this, end) might fail. Assertion this.next != null might not hold. (lseg.vpr@72.5--72.37) [151900]"}
        Heap[this, next] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access lseg(this.next, end) (lseg.vpr@72.5--72.37) [151902]"}
          perm <= Mask[null, lseg(Heap[this, next], end)];
      }
      Mask := Mask[null, lseg(Heap[this, next], end):=Mask[null, lseg(Heap[this, next], end)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(this, end), Heap[null, lseg(this, end)], lseg(Heap[this, next], end), Heap[null, lseg(Heap[this, next], end)]);
    }
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end):=Mask[null, lseg(this, end)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(this, end));
    assume Heap[null, lseg(this, end)] == CombineFrames(FrameFragment(Heap[this, value]), CombineFrames(FrameFragment(Heap[this, next]), FrameFragment((if Heap[this, next] != end then Heap[null, lseg(Heap[this, next], end)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, lseg(this, end))) {
      Heap := Heap[null, lseg#sm(this, end):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(this, end):=freshVersion];
    }
    Heap := Heap[null, lseg#sm(this, end):=Heap[null, lseg#sm(this, end)][this, value:=true]];
    Heap := Heap[null, lseg#sm(this, end):=Heap[null, lseg#sm(this, end)][this, next:=true]];
    if (Heap[this, next] != end) {
      havoc newPMask;
      assume (forall <A, B> o_7: Ref, f_31: (Field A B) ::
        { newPMask[o_7, f_31] }
        Heap[null, lseg#sm(this, end)][o_7, f_31] || Heap[null, lseg#sm(Heap[this, next], end)][o_7, f_31] ==> newPMask[o_7, f_31]
      );
      Heap := Heap[null, lseg#sm(this, end):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of addAtEnd might not hold. There might be insufficient permission to access lseg(this, end) (lseg.vpr@53.13--53.40) [151904]"}
        perm <= Mask[null, lseg(this, end)];
    }
    Mask := Mask[null, lseg(this, end):=Mask[null, lseg(this, end)] - perm];
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion length(this, end) == old(length(this, end)) + 1 might not hold. (lseg.vpr@54.13--54.62) [151905]"}
      length(Heap, this, end) == length(oldHeap, this, end) + 1;
    if (*) {
      if (0 <= i_2_1 && i_2_1 < length(oldHeap, this, end)) {
        assert {:msg "  Postcondition of addAtEnd might not hold. Assertion get(this, i, end) == old(get(this, i, end)) might not hold. (lseg.vpr@55.14--55.119) [151906]"}
          get(Heap, this, i_2_1, end) == get(oldHeap, this, i_2_1, end);
      }
      assume false;
    }
    assume (forall i_3_1_1: int ::
      { get#frame(oldHeap[null, lseg(this, end)], this, i_3_1_1, end) }
      0 <= i_3_1_1 && i_3_1_1 < length(oldHeap, this, end) ==> get(Heap, this, i_3_1_1, end) == get(oldHeap, this, i_3_1_1, end)
    );
    assert {:msg "  Postcondition of addAtEnd might not hold. Assertion get(this, length(this, end) - 1, end) == val might not hold. (lseg.vpr@56.13--56.57) [151907]"}
      get(Heap, this, length(Heap, this, end) - 1, end) == val_1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1() returns ()
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
    Mask := Mask[n, value:=Mask[n, value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: init(n, 0) -- lseg.vpr@79.5--79.15
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method init might not hold. There might be insufficient permission to access n.next (lseg.vpr@79.5--79.15) [151908]"}
          perm <= Mask[n, next];
      }
      Mask := Mask[n, next:=Mask[n, next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method init might not hold. There might be insufficient permission to access n.value (lseg.vpr@79.5--79.15) [151909]"}
          perm <= Mask[n, value];
      }
      Mask := Mask[n, value:=Mask[n, value] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, lseg(n, null):=Mask[null, lseg(n, null)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume length(Heap, n, null) == 1;
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
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@80.12--80.27) [151910]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, null) might not hold. (lseg.vpr@80.12--80.27) [151911]"}
          0 < length(ExhaleWellDef0Heap, n, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, null) == 0 might not hold. (lseg.vpr@80.12--80.32) [151912]"}
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
        assert {:msg "  The precondition of method addAtEnd might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@81.5--81.25) [151913]"}
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
      assume length(Heap, n, null) == length(PreCallHeap, n, null) + 1;
      assume state(Heap, Mask);
      assume (forall i: int ::
        { get#frame(PreCallHeap[null, lseg(n, null)], n, i, null) }
        0 <= i && i < length(PreCallHeap, n, null) ==> get(Heap, n, i, null) == get(PreCallHeap, n, i, null)
      );
      assume state(Heap, Mask);
      assume get(Heap, n, length(Heap, n, null) - 1, null) == 1;
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
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@82.12--82.27) [151914]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, null) might not hold. (lseg.vpr@82.12--82.27) [151915]"}
          0 < length(ExhaleWellDef0Heap, n, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, null) == 0 might not hold. (lseg.vpr@82.12--82.32) [151916]"}
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
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, null) (lseg.vpr@83.12--83.27) [151917]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, null)];
        assert {:msg "  Precondition of function get might not hold. Assertion 1 < length(n, null) might not hold. (lseg.vpr@83.12--83.27) [151918]"}
          1 < length(ExhaleWellDef0Heap, n, null);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 1, null) == 1 might not hold. (lseg.vpr@83.12--83.32) [151919]"}
      get(Heap, n, 1, null) == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2() returns ()
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
    Mask := Mask[n, value:=Mask[n, value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: initUnitCycle(n, 0) -- lseg.vpr@90.5--90.24
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method initUnitCycle might not hold. There might be insufficient permission to access n.next (lseg.vpr@90.5--90.24) [151920]"}
          perm <= Mask[n, next];
      }
      Mask := Mask[n, next:=Mask[n, next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method initUnitCycle might not hold. There might be insufficient permission to access n.value (lseg.vpr@90.5--90.24) [151921]"}
          perm <= Mask[n, value];
      }
      Mask := Mask[n, value:=Mask[n, value] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, lseg(n, n):=Mask[null, lseg(n, n)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume length(Heap, n, n) == 1;
      assume state(Heap, Mask);
      assume get(Heap, n, 0, n) == 0;
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(n, n));
        assume UnfoldingHeap[null, lseg(n, n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, value]), CombineFrames(FrameFragment(UnfoldingHeap[n, next]), FrameFragment((if UnfoldingHeap[n, next] != n then UnfoldingHeap[null, lseg(UnfoldingHeap[n, next], n)] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(n, n):=UnfoldingMask[null, lseg(n, n)] - perm];
        perm := FullPerm;
        assume n != null;
        UnfoldingMask := UnfoldingMask[n, value:=UnfoldingMask[n, value] + perm];
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
        Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, value:=true]];
        Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, next:=true]];
        if (Heap[n, next] != n) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_2: (Field A B) ::
            { newPMask[o_6, f_2] }
            Heap[null, lseg#sm(n, n)][o_6, f_2] || Heap[null, lseg#sm(Heap[n, next], n)][o_6, f_2] ==> newPMask[o_6, f_2]
          );
          Heap := Heap[null, lseg#sm(n, n):=newPMask];
        }
        assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Execute definedness check of (unfolding acc(lseg(n, n), write) in n.next == n) without enforcing the checks (e.g., to gain more information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(n, n));
        assume UnfoldingHeap[null, lseg(n, n)] == CombineFrames(FrameFragment(UnfoldingHeap[n, value]), CombineFrames(FrameFragment(UnfoldingHeap[n, next]), FrameFragment((if UnfoldingHeap[n, next] != n then UnfoldingHeap[null, lseg(UnfoldingHeap[n, next], n)] else EmptyFrame))));
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  An internal error occurred. There might be insufficient permission to access lseg(n, n) (lseg.vpr@44.13--44.72) [151922]"}
            perm <= UnfoldingMask[null, lseg(n, n)];
        }
        UnfoldingMask := UnfoldingMask[null, lseg(n, n):=UnfoldingMask[null, lseg(n, n)] - perm];
        perm := FullPerm;
        assume n != null;
        UnfoldingMask := UnfoldingMask[n, value:=UnfoldingMask[n, value] + perm];
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
          Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, value:=true]];
          Heap := Heap[null, lseg#sm(n, n):=Heap[null, lseg#sm(n, n)][n, next:=true]];
          if (Heap[n, next] != n) {
            havoc newPMask;
            assume (forall <A, B> o_27: Ref, f_16: (Field A B) ::
              { newPMask[o_27, f_16] }
              Heap[null, lseg#sm(n, n)][o_27, f_16] || Heap[null, lseg#sm(Heap[n, next], n)][o_27, f_16] ==> newPMask[o_27, f_16]
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
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@91.12--91.24) [151923]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, n)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, n) might not hold. (lseg.vpr@91.12--91.24) [151924]"}
          0 < length(ExhaleWellDef0Heap, n, n);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, n) == 0 might not hold. (lseg.vpr@91.12--91.29) [151925]"}
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
        assert {:msg "  The precondition of method addAtEnd might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@92.5--92.22) [151926]"}
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
      assume length(Heap, n, n) == length(PreCallHeap, n, n) + 1;
      assume state(Heap, Mask);
      assume (forall i: int ::
        { get#frame(PreCallHeap[null, lseg(n, n)], n, i, n) }
        0 <= i && i < length(PreCallHeap, n, n) ==> get(Heap, n, i, n) == get(PreCallHeap, n, i, n)
      );
      assume state(Heap, Mask);
      assume get(Heap, n, length(Heap, n, n) - 1, n) == 1;
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
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@93.12--93.24) [151927]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, n)];
        assert {:msg "  Precondition of function get might not hold. Assertion 0 < length(n, n) might not hold. (lseg.vpr@93.12--93.24) [151928]"}
          0 < length(ExhaleWellDef0Heap, n, n);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 0, n) == 0 might not hold. (lseg.vpr@93.12--93.29) [151929]"}
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
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access lseg(n, n) (lseg.vpr@94.12--94.24) [151930]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(n, n)];
        assert {:msg "  Precondition of function get might not hold. Assertion 1 < length(n, n) might not hold. (lseg.vpr@94.12--94.24) [151931]"}
          1 < length(ExhaleWellDef0Heap, n, n);
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(n, 1, n) == 1 might not hold. (lseg.vpr@94.12--94.29) [151932]"}
      get(Heap, n, 1, n) == 1;
    assume state(Heap, Mask);
}