// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:02:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0200.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0200-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 3: isBool
// - height 2: box
// - height 1: unbox
// - height 0: SCIONPath_get_hof
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

const unique whatever: Field NormalField int;
axiom !IsPredicateField(whatever);
axiom !IsWandField(whatever);

// ==================================================
// Translation of function SCIONPath_get_hof
// ==================================================

// Uninterpreted function definitions
function  SCIONPath_get_hof(Heap: HeapType, self: Ref): Ref;
function  SCIONPath_get_hof'(Heap: HeapType, self: Ref): Ref;
axiom (forall Heap: HeapType, self: Ref ::
  { SCIONPath_get_hof(Heap, self) }
  SCIONPath_get_hof(Heap, self) == SCIONPath_get_hof'(Heap, self) && dummyFunction(SCIONPath_get_hof#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { SCIONPath_get_hof'(Heap, self) }
  dummyFunction(SCIONPath_get_hof#triggerStateless(self))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), SCIONPath_get_hof(Heap, self) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> SCIONPath_get_hof(Heap, self) == (if unbox(Heap, box(Heap, false)) then null else null)
);

// Framing axioms
function  SCIONPath_get_hof#frame(frame: FrameType, self: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), SCIONPath_get_hof'(Heap, self) }
  state(Heap, Mask) ==> SCIONPath_get_hof'(Heap, self) == SCIONPath_get_hof#frame(Heap[null, outer(self)], self)
);

// Trigger function (controlling recursive postconditions)
function  SCIONPath_get_hof#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  SCIONPath_get_hof#triggerStateless(self: Ref): Ref;

// Check contract well-formedness and postcondition
procedure SCIONPath_get_hof#definedness(self: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var idx_0_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, outer(self):=Mask[null, outer(self)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (let idx_0 == ((unfolding acc(outer(self), wildcard) in self.whatever)) in (unbox(box(false)) ? null : null))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume outer#trigger(UnfoldingHeap, outer(self));
      assume UnfoldingHeap[null, outer(self)] == FrameFragment(UnfoldingHeap[self, whatever]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access outer(self) (0200.vpr@4.1--12.2) [195306]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, outer(self)];
      havoc wildcard;
      perm := wildcard;
      assume self != null;
      UnfoldingMask := UnfoldingMask[self, whatever:=UnfoldingMask[self, whatever] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.whatever (0200.vpr@4.1--12.2) [195307]"}
        HasDirectPerm(UnfoldingMask, self, whatever);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, outer#sm(self):=Heap[null, outer#sm(self)][self, whatever:=true]];
        assume state(Heap, Mask);
      idx_0_1 := Heap[self, whatever];
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function unbox might not hold. Assertion isBool(box(false)) might not hold. (0200.vpr@11.4--11.21) [195308]"}
          isBool(Heap, box(Heap, false));
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := (if unbox(Heap, box(Heap, false)) then null else null);
}

// ==================================================
// Translation of function isBool
// ==================================================

// Uninterpreted function definitions
function  isBool(Heap: HeapType, r_1: Ref): bool;
function  isBool'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isBool(Heap, r_1) }
  isBool(Heap, r_1) == isBool'(Heap, r_1) && dummyFunction(isBool#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isBool'(Heap, r_1) }
  dummyFunction(isBool#triggerStateless(r_1))
);

// Framing axioms
function  isBool#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isBool'(Heap, r_1) }
  state(Heap, Mask) ==> isBool'(Heap, r_1) == isBool#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  isBool#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isBool#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isBool#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 3;
}

// ==================================================
// Translation of function box
// ==================================================

// Uninterpreted function definitions
function  box(Heap: HeapType, b_24: bool): Ref;
function  box'(Heap: HeapType, b_24: bool): Ref;
axiom (forall Heap: HeapType, b_24: bool ::
  { box(Heap, b_24) }
  box(Heap, b_24) == box'(Heap, b_24) && dummyFunction(box#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { box'(Heap, b_24) }
  dummyFunction(box#triggerStateless(b_24))
);

// Framing axioms
function  box#frame(frame: FrameType, b_24: bool): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), box'(Heap, b_24) }
  state(Heap, Mask) ==> box'(Heap, b_24) == box#frame(EmptyFrame, b_24)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), box'(Heap, b_24) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || box#trigger(EmptyFrame, b_24)) ==> isBool(Heap, box'(Heap, b_24))
);

// Trigger function (controlling recursive postconditions)
function  box#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  box#triggerStateless(b_24: bool): Ref;

// Check contract well-formedness and postcondition
procedure box#definedness(b_24: bool) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of isBool(result)
      if (*) {
        // Stop execution
        assume false;
      }
    assume isBool(Heap, Result);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function unbox
// ==================================================

// Uninterpreted function definitions
function  unbox(Heap: HeapType, r_1: Ref): bool;
function  unbox'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { unbox(Heap, r_1) }
  unbox(Heap, r_1) == unbox'(Heap, r_1) && dummyFunction(unbox#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { unbox'(Heap, r_1) }
  dummyFunction(unbox#triggerStateless(r_1))
);

// Framing axioms
function  unbox#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), unbox'(Heap, r_1) }
  state(Heap, Mask) ==> unbox'(Heap, r_1) == unbox#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  unbox#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  unbox#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure unbox#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of isBool(r)
      if (*) {
        // Stop execution
        assume false;
      }
    assume isBool(Heap, r_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate outer
// ==================================================

type PredicateType_outer;
function  outer(r_1: Ref): Field PredicateType_outer FrameType;
function  outer#sm(r_1: Ref): Field PredicateType_outer PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(outer(r_1)) }
  PredicateMaskField(outer(r_1)) == outer#sm(r_1)
);
axiom (forall r_1: Ref ::
  { outer(r_1) }
  IsPredicateField(outer(r_1))
);
axiom (forall r_1: Ref ::
  { outer(r_1) }
  getPredWandId(outer(r_1)) == 0
);
function  outer#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  outer#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { outer(r_1), outer(r2) }
  outer(r_1) == outer(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { outer#sm(r_1), outer#sm(r2) }
  outer#sm(r_1) == outer#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { outer#trigger(Heap, outer(r_1)) }
  outer#everUsed(outer(r_1))
);

procedure outer#definedness(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of outer
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[r_1, $allocated];
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, whatever:=Mask[r_1, whatever] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}