// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:20:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0042.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0042-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
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
function  size_2(Heap: HeapType, list_2: Ref): int;
function  size'(Heap: HeapType, list_2: Ref): int;
axiom (forall Heap: HeapType, list_2: Ref ::
  { size_2(Heap, list_2) }
  size_2(Heap, list_2) == size'(Heap, list_2) && dummyFunction(size#triggerStateless(list_2))
);
axiom (forall Heap: HeapType, list_2: Ref ::
  { size'(Heap, list_2) }
  dummyFunction(size#triggerStateless(list_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, list_2: Ref ::
  { state(Heap, Mask), size_2(Heap, list_2) } { state(Heap, Mask), size#triggerStateless(list_2), valid#trigger(Heap, valid(list_2)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> size_2(Heap, list_2) == (if Heap[list_2, next] == null then 1 else 1 + size'(Heap, Heap[list_2, next]))
);

// Framing axioms
function  size#frame(frame: FrameType, list_2: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, list_2: Ref ::
  { state(Heap, Mask), size'(Heap, list_2) } { state(Heap, Mask), size#triggerStateless(list_2), valid#trigger(Heap, valid(list_2)) }
  state(Heap, Mask) ==> size'(Heap, list_2) == size#frame(Heap[null, valid(list_2)], list_2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, list_2: Ref ::
  { state(Heap, Mask), size'(Heap, list_2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || size#trigger(Heap[null, valid(list_2)], list_2)) ==> size'(Heap, list_2) >= 1
);

// Trigger function (controlling recursive postconditions)
function  size#trigger(frame: FrameType, list_2: Ref): bool;

// State-independent trigger function
function  size#triggerStateless(list_2: Ref): int;

// Check contract well-formedness and postcondition
procedure size#definedness(list_2: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
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
    assume Heap[list_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(list_2):=Mask[null, valid(list_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(list), wildcard) in (list.next == null ? 1 : 1 + size(list.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(list_2));
      assume UnfoldingHeap[null, valid(list_2)] == CombineFrames(FrameFragment(UnfoldingHeap[list_2, next]), FrameFragment((if UnfoldingHeap[list_2, next] != null then UnfoldingHeap[null, valid(UnfoldingHeap[list_2, next])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(list) (0042.vpr@11.1--16.2) [203132]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(list_2)];
      havoc wildcard;
      perm := wildcard;
      assume list_2 != null;
      UnfoldingMask := UnfoldingMask[list_2, next:=UnfoldingMask[list_2, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[list_2, next] != null) {
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid(UnfoldingHeap[list_2, next]):=UnfoldingMask[null, valid(UnfoldingHeap[list_2, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid(list_2), UnfoldingHeap[null, valid(list_2)], valid(UnfoldingHeap[list_2, next]), UnfoldingHeap[null, valid(UnfoldingHeap[list_2, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list.next (0042.vpr@11.1--16.2) [203133]"}
        HasDirectPerm(UnfoldingMask, list_2, next);
      if (UnfoldingHeap[list_2, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list.next (0042.vpr@11.1--16.2) [203134]"}
          HasDirectPerm(UnfoldingMask, list_2, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function size might not hold. There might be insufficient permission to access valid(list.next) (0042.vpr@15.71--15.86) [203135]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(UnfoldingHeap[list_2, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume size#trigger(UnfoldingHeap[null, valid(UnfoldingHeap[list_2, next])], UnfoldingHeap[list_2, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(list_2):=Heap[null, valid#sm(list_2)][list_2, next:=true]];
        if (Heap[list_2, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, valid#sm(list_2)][o_15, f_20] || Heap[null, valid#sm(Heap[list_2, next])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, valid#sm(list_2):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[list_2, next] == null then 1 else 1 + size_2(Heap, Heap[list_2, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of size might not hold. Assertion result >= 1 might not hold. (0042.vpr@13.11--13.22) [203136]"}
      Result >= 1;
}

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(list_2: Ref): Field PredicateType_valid FrameType;
function  valid#sm(list_2: Ref): Field PredicateType_valid PMaskType;
axiom (forall list_2: Ref ::
  { PredicateMaskField(valid(list_2)) }
  PredicateMaskField(valid(list_2)) == valid#sm(list_2)
);
axiom (forall list_2: Ref ::
  { valid(list_2) }
  IsPredicateField(valid(list_2))
);
axiom (forall list_2: Ref ::
  { valid(list_2) }
  getPredWandId(valid(list_2)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall list_2: Ref, list2_1: Ref ::
  { valid(list_2), valid(list2_1) }
  valid(list_2) == valid(list2_1) ==> list_2 == list2_1
);
axiom (forall list_2: Ref, list2_1: Ref ::
  { valid#sm(list_2), valid#sm(list2_1) }
  valid#sm(list_2) == valid#sm(list2_1) ==> list_2 == list2_1
);

axiom (forall Heap: HeapType, list_2: Ref ::
  { valid#trigger(Heap, valid(list_2)) }
  valid#everUsed(valid(list_2))
);

procedure valid#definedness(list_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[list_2, $allocated];
    perm := FullPerm;
    assume list_2 != null;
    Mask := Mask[list_2, next:=Mask[list_2, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of list.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access list.next (0042.vpr@6.1--9.2) [203137]"}
        HasDirectPerm(Mask, list_2, next);
    if (Heap[list_2, next] != null) {
      
      // -- Check definedness of acc(valid(list.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access list.next (0042.vpr@6.1--9.2) [203138]"}
          HasDirectPerm(Mask, list_2, next);
      perm := FullPerm;
      Mask := Mask[null, valid(Heap[list_2, next]):=Mask[null, valid(Heap[list_2, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testFails1
// ==================================================

procedure testFails1(list_2: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[list_2, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert list != null -- 0042.vpr@20.2--20.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion list != null might not hold. (0042.vpr@20.9--20.21) [203139]"}
      list_2 != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testFails2
// ==================================================

procedure testFails2(list_2: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[list_2, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(list_2):=Mask[null, valid(list_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert list != null -- 0042.vpr@27.3--27.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion list != null might not hold. (0042.vpr@27.10--27.22) [203140]"}
      list_2 != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testSuccess1
// ==================================================

procedure testSuccess1(list_2: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[list_2, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    assume list_2 != null;
    Mask := Mask[list_2, next:=Mask[list_2, next] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert list != null -- 0042.vpr@33.2--33.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion list != null might not hold. (0042.vpr@33.9--33.21) [203141]"}
      list_2 != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testSuccess2
// ==================================================

procedure testSuccess2(list_2: Ref) returns ()
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
    assume Heap[list_2, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid(list_2):=Mask[null, valid(list_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(valid(list), wildcard) -- 0042.vpr@39.2--39.35
    assume valid#trigger(Heap, valid(list_2));
    assume Heap[null, valid(list_2)] == CombineFrames(FrameFragment(Heap[list_2, next]), FrameFragment((if Heap[list_2, next] != null then Heap[null, valid(Heap[list_2, next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Unfolding valid(list) might fail. There might be insufficient permission to access valid(list) (0042.vpr@39.2--39.35) [203143]"}
      Mask[null, valid(list_2)] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[null, valid(list_2)];
    Mask := Mask[null, valid(list_2):=Mask[null, valid(list_2)] - wildcard];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(list_2))) {
        havoc newVersion;
        Heap := Heap[null, valid(list_2):=newVersion];
      }
    havoc wildcard;
    perm := wildcard;
    assume list_2 != null;
    Mask := Mask[list_2, next:=Mask[list_2, next] + perm];
    assume state(Heap, Mask);
    if (Heap[list_2, next] != null) {
      havoc wildcard;
      perm := wildcard;
      Mask := Mask[null, valid(Heap[list_2, next]):=Mask[null, valid(Heap[list_2, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(valid(list_2), Heap[null, valid(list_2)], valid(Heap[list_2, next]), Heap[null, valid(Heap[list_2, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert list != null -- 0042.vpr@40.2--40.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion list != null might not hold. (0042.vpr@40.9--40.21) [203144]"}
      list_2 != null;
    assume state(Heap, Mask);
}