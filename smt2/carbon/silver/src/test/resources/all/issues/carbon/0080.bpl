// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:18:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0080.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0080-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// - height 0: readValid
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function readValid
// ==================================================

// Uninterpreted function definitions
function  readValid(Heap: HeapType, self: Ref): int;
function  readValid'(Heap: HeapType, self: Ref): int;
axiom (forall Heap: HeapType, self: Ref ::
  { readValid(Heap, self) }
  readValid(Heap, self) == readValid'(Heap, self) && dummyFunction(readValid#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { readValid'(Heap, self) }
  dummyFunction(readValid#triggerStateless(self))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), readValid(Heap, self) } { state(Heap, Mask), readValid#triggerStateless(self), valid#trigger(Heap, valid(self)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> readValid(Heap, self) == Heap[self, f_7]
);

// Framing axioms
function  readValid#frame(frame: FrameType, self: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), readValid'(Heap, self) }
  state(Heap, Mask) ==> readValid'(Heap, self) == readValid#frame(Heap[null, valid(self)], self)
);

// Trigger function (controlling recursive postconditions)
function  readValid#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  readValid#triggerStateless(self: Ref): int;

// Check contract well-formedness and postcondition
procedure readValid#definedness(self: Ref) returns (Result: int)
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
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := 1 / 4;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 4 might be negative. (0080.vpr@11.12--11.32) [192188]"}
      perm >= NoPerm;
    Mask := Mask[null, valid(self):=Mask[null, valid(self)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid(self), 1 / 4) in self.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(self));
      assume UnfoldingHeap[null, valid(self)] == FrameFragment(UnfoldingHeap[self, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 4;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 4 might be negative. (0080.vpr@10.1--14.2) [192189]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid(self) (0080.vpr@10.1--14.2) [192190]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid(self)];
      perm := 1 / 4;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 4 might be negative. (0080.vpr@10.1--14.2) [192191]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> self != null;
      UnfoldingMask := UnfoldingMask[self, f_7:=UnfoldingMask[self, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.f (0080.vpr@10.1--14.2) [192192]"}
        HasDirectPerm(UnfoldingMask, self, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(self):=Heap[null, valid#sm(self)][self, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[self, f_7];
}

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(self: Ref): Field PredicateType_valid FrameType;
function  valid#sm(self: Ref): Field PredicateType_valid PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(valid(self)) }
  PredicateMaskField(valid(self)) == valid#sm(self)
);
axiom (forall self: Ref ::
  { valid(self) }
  IsPredicateField(valid(self))
);
axiom (forall self: Ref ::
  { valid(self) }
  getPredWandId(valid(self)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { valid(self), valid(self2) }
  valid(self) == valid(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { valid#sm(self), valid#sm(self2) }
  valid#sm(self) == valid#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { valid#trigger(Heap, valid(self)) }
  valid#everUsed(valid(self))
);

procedure valid#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, f_7:=Mask[self, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method read
// ==================================================

procedure read(a_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[a_2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid(a_2):=Mask[null, valid(a_2)] + perm];
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
    PostMask := PostMask[null, valid(a_2):=PostMask[null, valid(a_2)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert readValid(a) >= readValid(a) -- 0080.vpr@20.5--20.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of readValid(a) >= readValid(a)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@20.12--20.24) [192193]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@20.12--20.24) [192194]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(a_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@20.28--20.40) [192195]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@20.28--20.40) [192196]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(a_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion readValid(a) >= readValid(a) might not hold. (0080.vpr@20.12--20.40) [192197]"}
      readValid(Heap, a_2) >= readValid(Heap, a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(valid(a)) == write -- 0080.vpr@21.5--21.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(valid(a)) == write might not hold. (0080.vpr@21.12--21.35) [192198]"}
      Mask[null, valid(a_2)] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a != null ==> perm(a.f) == none -- 0080.vpr@22.5--22.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (a_2 != null) {
      assert {:msg "  Assert might fail. Assertion perm(a.f) == none might not hold. (0080.vpr@22.12--22.41) [192199]"}
        Mask[a_2, f_7] == NoPerm;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(a), 1 / 3) -- 0080.vpr@24.5--24.30
    assume valid#trigger(Heap, valid(a_2));
    assume Heap[null, valid(a_2)] == FrameFragment(Heap[a_2, f_7]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 3;
    assert {:msg "  Unfolding valid(a) might fail. Fraction 1 / 3 might be negative. (0080.vpr@24.5--24.30) [192201]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(a) might fail. There might be insufficient permission to access valid(a) (0080.vpr@24.5--24.30) [192202]"}
        perm <= Mask[null, valid(a_2)];
    }
    Mask := Mask[null, valid(a_2):=Mask[null, valid(a_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(a_2))) {
        havoc newVersion;
        Heap := Heap[null, valid(a_2):=newVersion];
      }
    perm := 1 / 3;
    assert {:msg "  Unfolding valid(a) might fail. Fraction 1 / 3 might be negative. (0080.vpr@24.5--24.30) [192203]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> a_2 != null;
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(valid(a)) == 2 / 3 -- 0080.vpr@26.5--26.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(valid(a)) == 2 / 3 might not hold. (0080.vpr@26.12--26.33) [192204]"}
      Mask[null, valid(a_2)] == 2 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(a.f) == 1 / 3 -- 0080.vpr@27.5--27.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(a.f) == 1 / 3 might not hold. (0080.vpr@27.12--27.28) [192205]"}
      Mask[a_2, f_7] == 1 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a.f == readValid(a) -- 0080.vpr@28.5--28.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a.f == readValid(a)
      assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (0080.vpr@28.12--28.31) [192206]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@28.19--28.31) [192207]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@28.19--28.31) [192208]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(a_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a.f == readValid(a) might not hold. (0080.vpr@28.12--28.31) [192209]"}
      Heap[a_2, f_7] == readValid(Heap, a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(valid(a), 2 / 3) -- 0080.vpr@30.5--30.30
    assume valid#trigger(Heap, valid(a_2));
    assume Heap[null, valid(a_2)] == FrameFragment(Heap[a_2, f_7]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 2 / 3;
    assert {:msg "  Unfolding valid(a) might fail. Fraction 2 / 3 might be negative. (0080.vpr@30.5--30.30) [192211]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(a) might fail. There might be insufficient permission to access valid(a) (0080.vpr@30.5--30.30) [192212]"}
        perm <= Mask[null, valid(a_2)];
    }
    Mask := Mask[null, valid(a_2):=Mask[null, valid(a_2)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(a_2))) {
        havoc newVersion;
        Heap := Heap[null, valid(a_2):=newVersion];
      }
    perm := 2 / 3;
    assert {:msg "  Unfolding valid(a) might fail. Fraction 2 / 3 might be negative. (0080.vpr@30.5--30.30) [192213]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> a_2 != null;
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(valid(a)) == none -- 0080.vpr@32.5--32.34
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(valid(a)) == none might not hold. (0080.vpr@32.12--32.34) [192214]"}
      Mask[null, valid(a_2)] == NoPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(a.f) == write -- 0080.vpr@33.5--33.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(a.f) == write might not hold. (0080.vpr@33.12--33.30) [192215]"}
      Mask[a_2, f_7] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: a.f := a.f + 1 -- 0080.vpr@34.5--34.19
    
    // -- Check definedness of a.f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access a.f (0080.vpr@34.5--34.19) [192216]"}
        HasDirectPerm(Mask, a_2, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access a.f (0080.vpr@34.5--34.19) [192217]"}
      FullPerm == Mask[a_2, f_7];
    Heap := Heap[a_2, f_7:=Heap[a_2, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a.f == old(readValid(a)) + 1 -- 0080.vpr@35.5--35.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a.f == old(readValid(a)) + 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (0080.vpr@35.12--35.40) [192218]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@35.23--35.35) [192219]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@35.23--35.35) [192220]"}
          NoPerm < perm ==> NoPerm < oldMask[null, valid(a_2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a.f == old(readValid(a)) + 1 might not hold. (0080.vpr@35.12--35.40) [192221]"}
      Heap[a_2, f_7] == readValid(oldHeap, a_2) + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(a), 1 / 3) -- 0080.vpr@37.5--37.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 3;
    assert {:msg "  Folding valid(a) might fail. Fraction 1 / 3 might be negative. (0080.vpr@37.5--37.28) [192223]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(a) might fail. There might be insufficient permission to access a.f (0080.vpr@37.5--37.28) [192224]"}
        perm <= Mask[a_2, f_7];
    }
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] - perm];
    perm := 1 / 3;
    assert {:msg "  Folding valid(a) might fail. Fraction 1 / 3 might be negative. (0080.vpr@37.5--37.28) [192225]"}
      perm >= NoPerm;
    Mask := Mask[null, valid(a_2):=Mask[null, valid(a_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(a_2));
    assume Heap[null, valid(a_2)] == FrameFragment(Heap[a_2, f_7]);
    if (!HasDirectPerm(Mask, null, valid(a_2))) {
      Heap := Heap[null, valid#sm(a_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(a_2):=freshVersion];
    }
    Heap := Heap[null, valid#sm(a_2):=Heap[null, valid#sm(a_2)][a_2, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(valid(a)) == 1 / 3 -- 0080.vpr@39.5--39.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(valid(a)) == 1 / 3 might not hold. (0080.vpr@39.12--39.33) [192226]"}
      Mask[null, valid(a_2)] == 1 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(a.f) == 2 / 3 -- 0080.vpr@40.5--40.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(a.f) == 2 / 3 might not hold. (0080.vpr@40.12--40.28) [192227]"}
      Mask[a_2, f_7] == 2 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a.f == readValid(a) -- 0080.vpr@41.5--41.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a.f == readValid(a)
      assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (0080.vpr@41.12--41.31) [192228]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@41.19--41.31) [192229]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@41.19--41.31) [192230]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(a_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a.f == readValid(a) might not hold. (0080.vpr@41.12--41.31) [192231]"}
      Heap[a_2, f_7] == readValid(Heap, a_2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert readValid(a) == old(readValid(a)) + 1 -- 0080.vpr@42.5--42.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of readValid(a) == old(readValid(a)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@42.12--42.24) [192232]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@42.12--42.24) [192233]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(a_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@42.32--42.44) [192234]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@42.32--42.44) [192235]"}
          NoPerm < perm ==> NoPerm < oldMask[null, valid(a_2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion readValid(a) == old(readValid(a)) + 1 might not hold. (0080.vpr@42.12--42.49) [192236]"}
      readValid(Heap, a_2) == readValid(oldHeap, a_2) + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(a), 2 / 3) -- 0080.vpr@44.5--44.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 2 / 3;
    assert {:msg "  Folding valid(a) might fail. Fraction 2 / 3 might be negative. (0080.vpr@44.5--44.28) [192238]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(a) might fail. There might be insufficient permission to access a.f (0080.vpr@44.5--44.28) [192239]"}
        perm <= Mask[a_2, f_7];
    }
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] - perm];
    perm := 2 / 3;
    assert {:msg "  Folding valid(a) might fail. Fraction 2 / 3 might be negative. (0080.vpr@44.5--44.28) [192240]"}
      perm >= NoPerm;
    Mask := Mask[null, valid(a_2):=Mask[null, valid(a_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(a_2));
    assume Heap[null, valid(a_2)] == FrameFragment(Heap[a_2, f_7]);
    if (!HasDirectPerm(Mask, null, valid(a_2))) {
      Heap := Heap[null, valid#sm(a_2):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(a_2):=freshVersion];
    }
    Heap := Heap[null, valid#sm(a_2):=Heap[null, valid#sm(a_2)][a_2, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(valid(a)) == write -- 0080.vpr@46.5--46.35
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(valid(a)) == write might not hold. (0080.vpr@46.12--46.35) [192241]"}
      Mask[null, valid(a_2)] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(a.f) == none -- 0080.vpr@47.5--47.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(a.f) == none might not hold. (0080.vpr@47.12--47.29) [192242]"}
      Mask[a_2, f_7] == NoPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert readValid(a) == old(readValid(a)) + 1 -- 0080.vpr@48.5--48.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of readValid(a) == old(readValid(a)) + 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@48.12--48.24) [192243]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@48.12--48.24) [192244]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(a_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := oldMask;
        ExhaleWellDef1Heap := oldHeap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@48.32--48.44) [192245]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@48.32--48.44) [192246]"}
          NoPerm < perm ==> NoPerm < oldMask[null, valid(a_2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion readValid(a) == old(readValid(a)) + 1 might not hold. (0080.vpr@48.12--48.49) [192247]"}
      readValid(Heap, a_2) == readValid(oldHeap, a_2) + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(perm(a.f)) == none -- 0080.vpr@49.5--49.34
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion old(perm(a.f)) == none might not hold. (0080.vpr@49.12--49.34) [192248]"}
      oldMask[a_2, f_7] == NoPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert a.f == readValid(a) -- 0080.vpr@52.5--52.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of a.f == readValid(a)
      assert {:msg "  Assert might fail. There might be insufficient permission to access a.f (0080.vpr@52.12--52.31) [192249]"}
        HasDirectPerm(ExhaleWellDef0Mask, a_2, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 4;
        assert {:msg "  Precondition of function readValid might not hold. Fraction 1 / 4 might be negative. (0080.vpr@52.19--52.31) [192250]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function readValid might not hold. There might be insufficient permission to access valid(a) (0080.vpr@52.19--52.31) [192251]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, valid(a_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion a.f == readValid(a) might not hold. (0080.vpr@52.12--52.31) [192252]"}
      Heap[a_2, f_7] == readValid(Heap, a_2);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of read might not hold. There might be insufficient permission to access valid(a) (0080.vpr@18.13--18.33) [192253]"}
        perm <= Mask[null, valid(a_2)];
    }
    Mask := Mask[null, valid(a_2):=Mask[null, valid(a_2)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}