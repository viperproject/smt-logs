// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:57
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0041.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0041-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_13: Ref, f_20: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_13, f_20] }
  Heap[o_13, $allocated] ==> Heap[Heap[o_13, f_20], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref, f_29: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, f_29] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_20, f_29) ==> Heap[o_20, f_29] == ExhaleHeap[o_20, f_29]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37), ExhaleHeap[null, PredicateMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> Heap[null, PredicateMaskField(pm_f_37)] == ExhaleHeap[null, PredicateMaskField(pm_f_37)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsPredicateField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, PredicateMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37), ExhaleHeap[null, WandMaskField(pm_f_37)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> Heap[null, WandMaskField(pm_f_37)] == ExhaleHeap[null, WandMaskField(pm_f_37)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_37: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_37) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_37) && IsWandField(pm_f_37) ==> (forall <A, B> o2_37: Ref, f_29: (Field A B) ::
    { ExhaleHeap[o2_37, f_29] }
    Heap[null, WandMaskField(pm_f_37)][o2_37, f_29] ==> Heap[o2_37, f_29] == ExhaleHeap[o2_37, f_29]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_20: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_20, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_20, $allocated] ==> ExhaleHeap[o_20, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_13: Ref, f_66: (Field A B), v: B ::
  { Heap[o_13, f_66:=v] }
  succHeap(Heap, Heap[o_13, f_66:=v])
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
// - height 0: SL_length
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
// Translation of function SL_length
// ==================================================

// Uninterpreted function definitions
function  SL_length(Heap: HeapType, x: Ref): int;
function  SL_length'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { SL_length(Heap, x) }
  SL_length(Heap, x) == SL_length'(Heap, x) && dummyFunction(SL_length#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { SL_length'(Heap, x) }
  dummyFunction(SL_length#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), SL_length(Heap, x) } { state(Heap, Mask), SL_length#triggerStateless(x), SL#trigger(Heap, SL(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> SL_length(Heap, x) == 1 + (if Heap[x, next] == null then 0 else SL_length'(Heap, Heap[x, next]))
);

// Framing axioms
function  SL_length#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), SL_length'(Heap, x) } { state(Heap, Mask), SL_length#triggerStateless(x), SL#trigger(Heap, SL(x)) }
  state(Heap, Mask) ==> SL_length'(Heap, x) == SL_length#frame(Heap[null, SL(x)], x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), SL_length'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || SL_length#trigger(Heap[null, SL(x)], x)) ==> SL_length'(Heap, x) > 0
);

// Trigger function (controlling recursive postconditions)
function  SL_length#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  SL_length#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure SL_length#definedness(x: Ref) returns (Result: int)
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
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, SL(x):=Mask[null, SL(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of 1 + (unfolding acc(SL(x), write) in (x.next == null ? 0 : SL_length(x.next)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume SL#trigger(UnfoldingHeap, SL(x));
      assume UnfoldingHeap[null, SL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, SL(UnfoldingHeap[x, next])] else EmptyFrame)));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access SL(x) (0041.vpr@11.1--19.2) [77627]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, SL(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, SL(UnfoldingHeap[x, next]):=UnfoldingMask[null, SL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(SL(x), UnfoldingHeap[null, SL(x)], SL(UnfoldingHeap[x, next]), UnfoldingHeap[null, SL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0041.vpr@11.1--19.2) [77628]"}
        HasDirectPerm(UnfoldingMask, x, next);
      if (UnfoldingHeap[x, next] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.next (0041.vpr@11.1--19.2) [77629]"}
          HasDirectPerm(UnfoldingMask, x, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Precondition of function SL_length might not hold. There might be insufficient permission to access SL(x.next) (0041.vpr@18.13--18.30) [77630]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, SL(UnfoldingHeap[x, next])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume SL_length#trigger(UnfoldingHeap[null, SL(UnfoldingHeap[x, next])], UnfoldingHeap[x, next]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SL#sm(x):=Heap[null, SL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            Heap[null, SL#sm(x)][o_5, f_11] || Heap[null, SL#sm(Heap[x, next])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          Heap := Heap[null, SL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SL#sm(x):=Heap[null, SL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
            { newPMask[o_6, f_12] }
            Heap[null, SL#sm(x)][o_6, f_12] || Heap[null, SL#sm(Heap[x, next])][o_6, f_12] ==> newPMask[o_6, f_12]
          );
          Heap := Heap[null, SL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 1 + (if Heap[x, next] == null then 0 else SL_length(Heap, Heap[x, next]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of SL_length might not hold. Assertion result > 0 might not hold. (0041.vpr@13.11--13.21) [77631]"}
      Result > 0;
}

// ==================================================
// Translation of predicate SL
// ==================================================

type PredicateType_SL;
function  SL(x: Ref): Field PredicateType_SL FrameType;
function  SL#sm(x: Ref): Field PredicateType_SL PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(SL(x)) }
  PredicateMaskField(SL(x)) == SL#sm(x)
);
axiom (forall x: Ref ::
  { SL(x) }
  IsPredicateField(SL(x))
);
axiom (forall x: Ref ::
  { SL(x) }
  getPredWandId(SL(x)) == 0
);
function  SL#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SL#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { SL(x), SL(x2) }
  SL(x) == SL(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { SL#sm(x), SL#sm(x2) }
  SL#sm(x) == SL#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { SL#trigger(Heap, SL(x)) }
  SL#everUsed(SL(x))
);

procedure SL#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of SL
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0041.vpr@6.1--9.2) [77632]"}
        HasDirectPerm(Mask, x, next);
    if (Heap[x, next] != null) {
      
      // -- Check definedness of acc(SL(x.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0041.vpr@6.1--9.2) [77633]"}
          HasDirectPerm(Mask, x, next);
      perm := FullPerm;
      Mask := Mask[null, SL(Heap[x, next]):=Mask[null, SL(Heap[x, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, SL(x):=Mask[null, SL(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of SL_length(x) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function SL_length might not hold. There might be insufficient permission to access SL(x) (0041.vpr@23.12--23.24) [77634]"}
          NoPerm < perm ==> NoPerm < Mask[null, SL(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume SL_length(Heap, x) == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(SL(x), write) -- 0041.vpr@25.3--25.20
    assume SL#trigger(Heap, SL(x));
    assume Heap[null, SL(x)] == CombineFrames(FrameFragment(Heap[x, next]), FrameFragment((if Heap[x, next] != null then Heap[null, SL(Heap[x, next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding SL(x) might fail. There might be insufficient permission to access SL(x) (0041.vpr@25.3--25.20) [77637]"}
        perm <= Mask[null, SL(x)];
    }
    Mask := Mask[null, SL(x):=Mask[null, SL(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, SL(x))) {
        havoc newVersion;
        Heap := Heap[null, SL(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    if (Heap[x, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, SL(Heap[x, next]):=Mask[null, SL(Heap[x, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(SL(x), Heap[null, SL(x)], SL(Heap[x, next]), Heap[null, SL(Heap[x, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(SL(x.next), write) -- 0041.vpr@26.3--26.25
    
    // -- Check definedness of acc(SL(x.next), write)
      assert {:msg "  Unfolding SL(x.next) might fail. There might be insufficient permission to access x.next (0041.vpr@26.3--26.25) [77640]"}
        HasDirectPerm(Mask, x, next);
    assume SL#trigger(Heap, SL(Heap[x, next]));
    assume Heap[null, SL(Heap[x, next])] == CombineFrames(FrameFragment(Heap[Heap[x, next], next]), FrameFragment((if Heap[Heap[x, next], next] != null then Heap[null, SL(Heap[Heap[x, next], next])] else EmptyFrame)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding SL(x.next) might fail. There might be insufficient permission to access SL(x.next) (0041.vpr@26.3--26.25) [77643]"}
        perm <= Mask[null, SL(Heap[x, next])];
    }
    Mask := Mask[null, SL(Heap[x, next]):=Mask[null, SL(Heap[x, next])] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, SL(Heap[x, next]))) {
        havoc newVersion;
        Heap := Heap[null, SL(Heap[x, next]):=newVersion];
      }
    perm := FullPerm;
    assume Heap[x, next] != null;
    Mask := Mask[Heap[x, next], next:=Mask[Heap[x, next], next] + perm];
    assume state(Heap, Mask);
    if (Heap[Heap[x, next], next] != null) {
      perm := FullPerm;
      Mask := Mask[null, SL(Heap[Heap[x, next], next]):=Mask[null, SL(Heap[Heap[x, next], next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(SL(Heap[x, next]), Heap[null, SL(Heap[x, next])], SL(Heap[Heap[x, next], next]), Heap[null, SL(Heap[Heap[x, next], next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.next.next == null -- 0041.vpr@27.3--27.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.next.next == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (0041.vpr@27.10--27.29) [77646]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next.next (0041.vpr@27.10--27.29) [77647]"}
        HasDirectPerm(ExhaleWellDef0Mask, Heap[x, next], next);
    assert {:msg "  Assert might fail. Assertion x.next.next == null might not hold. (0041.vpr@27.10--27.29) [77648]"}
      Heap[Heap[x, next], next] == null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02() returns (head_1: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var x: Ref;
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
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
    PostMask := PostMask[null, SL(head_1):=PostMask[null, SL(head_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of SL_length(head) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        perm := FullPerm;
        assert {:msg "  Precondition of function SL_length might not hold. There might be insufficient permission to access SL(head) (0041.vpr@32.11--32.26) [77649]"}
          NoPerm < perm ==> NoPerm < PostMask[null, SL(head_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume SL_length(PostHeap, head_1) == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: x := new(next) -- 0041.vpr@35.3--35.17
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, next:=Mask[x, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next := null -- 0041.vpr@36.3--36.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (0041.vpr@36.3--36.17) [77650]"}
      FullPerm == Mask[x, next];
    Heap := Heap[x, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: head := x -- 0041.vpr@38.3--38.12
    head_1 := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(SL(head), write) -- 0041.vpr@39.3--39.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding SL(head) might fail. There might be insufficient permission to access head.next (0041.vpr@39.3--39.21) [77653]"}
        perm <= Mask[head_1, next];
    }
    Mask := Mask[head_1, next:=Mask[head_1, next] - perm];
    if (Heap[head_1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding SL(head) might fail. There might be insufficient permission to access SL(head.next) (0041.vpr@39.3--39.21) [77655]"}
          perm <= Mask[null, SL(Heap[head_1, next])];
      }
      Mask := Mask[null, SL(Heap[head_1, next]):=Mask[null, SL(Heap[head_1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(SL(head_1), Heap[null, SL(head_1)], SL(Heap[head_1, next]), Heap[null, SL(Heap[head_1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, SL(head_1):=Mask[null, SL(head_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume SL#trigger(Heap, SL(head_1));
    assume Heap[null, SL(head_1)] == CombineFrames(FrameFragment(Heap[head_1, next]), FrameFragment((if Heap[head_1, next] != null then Heap[null, SL(Heap[head_1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, SL(head_1))) {
      Heap := Heap[null, SL#sm(head_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, SL(head_1):=freshVersion];
    }
    Heap := Heap[null, SL#sm(head_1):=Heap[null, SL#sm(head_1)][head_1, next:=true]];
    if (Heap[head_1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
        { newPMask[o_40, f_52] }
        Heap[null, SL#sm(head_1)][o_40, f_52] || Heap[null, SL#sm(Heap[head_1, next])][o_40, f_52] ==> newPMask[o_40, f_52]
      );
      Heap := Heap[null, SL#sm(head_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x := new(next) -- 0041.vpr@41.3--41.17
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, next:=Mask[x, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.next := head -- 0041.vpr@42.3--42.17
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (0041.vpr@42.3--42.17) [77657]"}
      FullPerm == Mask[x, next];
    Heap := Heap[x, next:=head_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: head := x -- 0041.vpr@44.3--44.12
    head_1 := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(SL(head), write) -- 0041.vpr@45.3--45.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding SL(head) might fail. There might be insufficient permission to access head.next (0041.vpr@45.3--45.21) [77660]"}
        perm <= Mask[head_1, next];
    }
    Mask := Mask[head_1, next:=Mask[head_1, next] - perm];
    if (Heap[head_1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding SL(head) might fail. There might be insufficient permission to access SL(head.next) (0041.vpr@45.3--45.21) [77662]"}
          perm <= Mask[null, SL(Heap[head_1, next])];
      }
      Mask := Mask[null, SL(Heap[head_1, next]):=Mask[null, SL(Heap[head_1, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(SL(head_1), Heap[null, SL(head_1)], SL(Heap[head_1, next]), Heap[null, SL(Heap[head_1, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, SL(head_1):=Mask[null, SL(head_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume SL#trigger(Heap, SL(head_1));
    assume Heap[null, SL(head_1)] == CombineFrames(FrameFragment(Heap[head_1, next]), FrameFragment((if Heap[head_1, next] != null then Heap[null, SL(Heap[head_1, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, SL(head_1))) {
      Heap := Heap[null, SL#sm(head_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, SL(head_1):=freshVersion];
    }
    Heap := Heap[null, SL#sm(head_1):=Heap[null, SL#sm(head_1)][head_1, next:=true]];
    if (Heap[head_1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
        { newPMask[o_42, f_55] }
        Heap[null, SL#sm(head_1)][o_42, f_55] || Heap[null, SL#sm(Heap[head_1, next])][o_42, f_55] ==> newPMask[o_42, f_55]
      );
      Heap := Heap[null, SL#sm(head_1):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access SL(head) (0041.vpr@31.11--31.24) [77664]"}
        perm <= Mask[null, SL(head_1)];
    }
    Mask := Mask[null, SL(head_1):=Mask[null, SL(head_1)] - perm];
    assert {:msg "  Postcondition of test02 might not hold. Assertion SL_length(head) == 2 might not hold. (0041.vpr@32.11--32.31) [77665]"}
      SL_length(Heap, head_1) == 2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, SL(x):=Mask[null, SL(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of SL_length(x) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function SL_length might not hold. There might be insufficient permission to access SL(x) (0041.vpr@50.12--50.24) [77666]"}
          NoPerm < perm ==> NoPerm < Mask[null, SL(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume SL_length(Heap, x) == 2;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (unfolding acc(SL(x), write) in
  //     (unfolding acc(SL(x.next), write) in x.next.next == null)) -- 0041.vpr@52.3--54.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(SL(x), write) in (unfolding acc(SL(x.next), write) in x.next.next == null))
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume SL#trigger(UnfoldingHeap, SL(x));
      assume UnfoldingHeap[null, SL(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, next]), FrameFragment((if UnfoldingHeap[x, next] != null then UnfoldingHeap[null, SL(UnfoldingHeap[x, next])] else EmptyFrame)));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access SL(x) (0041.vpr@52.10--54.29) [77667]"}
          perm <= UnfoldingMask[null, SL(x)];
      }
      UnfoldingMask := UnfoldingMask[null, SL(x):=UnfoldingMask[null, SL(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, next:=UnfoldingMask[x, next] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, next] != null) {
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, SL(UnfoldingHeap[x, next]):=UnfoldingMask[null, SL(UnfoldingHeap[x, next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(SL(x), UnfoldingHeap[null, SL(x)], SL(UnfoldingHeap[x, next]), UnfoldingHeap[null, SL(UnfoldingHeap[x, next])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume SL#trigger(Unfolding1Heap, SL(Unfolding1Heap[x, next]));
      assume Unfolding1Heap[null, SL(Unfolding1Heap[x, next])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[x, next], next]), FrameFragment((if Unfolding1Heap[Unfolding1Heap[x, next], next] != null then Unfolding1Heap[null, SL(Unfolding1Heap[Unfolding1Heap[x, next], next])] else EmptyFrame)));
      ExhaleWellDef1Mask := Unfolding1Mask;
      ExhaleWellDef1Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access SL(x.next) (0041.vpr@52.10--54.29) [77668]"}
          perm <= Unfolding1Mask[null, SL(Unfolding1Heap[x, next])];
      }
      Unfolding1Mask := Unfolding1Mask[null, SL(Unfolding1Heap[x, next]):=Unfolding1Mask[null, SL(Unfolding1Heap[x, next])] - perm];
      perm := FullPerm;
      assume Unfolding1Heap[x, next] != null;
      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[x, next], next:=Unfolding1Mask[Unfolding1Heap[x, next], next] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      if (Unfolding1Heap[Unfolding1Heap[x, next], next] != null) {
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, SL(Unfolding1Heap[Unfolding1Heap[x, next], next]):=Unfolding1Mask[null, SL(Unfolding1Heap[Unfolding1Heap[x, next], next])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(SL(Unfolding1Heap[x, next]), Unfolding1Heap[null, SL(Unfolding1Heap[x, next])], SL(Unfolding1Heap[Unfolding1Heap[x, next], next]), Unfolding1Heap[null, SL(Unfolding1Heap[Unfolding1Heap[x, next], next])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (0041.vpr@52.10--54.29) [77669]"}
        HasDirectPerm(Unfolding1Mask, x, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (0041.vpr@52.10--54.29) [77670]"}
        HasDirectPerm(Unfolding1Mask, x, next);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.next.next (0041.vpr@52.10--54.29) [77671]"}
        HasDirectPerm(Unfolding1Mask, Heap[x, next], next);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SL#sm(Heap[x, next]):=Heap[null, SL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
            { newPMask[o_46, f_60] }
            Heap[null, SL#sm(Heap[x, next])][o_46, f_60] || Heap[null, SL#sm(Heap[Heap[x, next], next])][o_46, f_60] ==> newPMask[o_46, f_60]
          );
          Heap := Heap[null, SL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, SL#sm(x):=Heap[null, SL#sm(x)][x, next:=true]];
        if (Heap[x, next] != null) {
          havoc newPMask;
          assume (forall <A, B> o: Ref, f_61: (Field A B) ::
            { newPMask[o, f_61] }
            Heap[null, SL#sm(x)][o, f_61] || Heap[null, SL#sm(Heap[x, next])][o, f_61] ==> newPMask[o, f_61]
          );
          Heap := Heap[null, SL#sm(x):=newPMask];
        }
        assume state(Heap, Mask);
        Heap := Heap[null, SL#sm(Heap[x, next]):=Heap[null, SL#sm(Heap[x, next])][Heap[x, next], next:=true]];
        if (Heap[Heap[x, next], next] != null) {
          havoc newPMask;
          assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
            { newPMask[o_14, f_3] }
            Heap[null, SL#sm(Heap[x, next])][o_14, f_3] || Heap[null, SL#sm(Heap[Heap[x, next], next])][o_14, f_3] ==> newPMask[o_14, f_3]
          );
          Heap := Heap[null, SL#sm(Heap[x, next]):=newPMask];
        }
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion x.next.next == null might not hold. (0041.vpr@52.10--54.29) [77672]"}
      Heap[Heap[x, next], next] == null;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, SL#sm(x):=Heap[null, SL#sm(x)][x, next:=true]];
      if (Heap[x, next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_3: Ref, f_24: (Field A B) ::
          { newPMask[o_3, f_24] }
          Heap[null, SL#sm(x)][o_3, f_24] || Heap[null, SL#sm(Heap[x, next])][o_3, f_24] ==> newPMask[o_3, f_24]
        );
        Heap := Heap[null, SL#sm(x):=newPMask];
      }
      assume state(Heap, Mask);
      Heap := Heap[null, SL#sm(Heap[x, next]):=Heap[null, SL#sm(Heap[x, next])][Heap[x, next], next:=true]];
      if (Heap[Heap[x, next], next] != null) {
        havoc newPMask;
        assume (forall <A, B> o_1: Ref, f_10: (Field A B) ::
          { newPMask[o_1, f_10] }
          Heap[null, SL#sm(Heap[x, next])][o_1, f_10] || Heap[null, SL#sm(Heap[Heap[x, next], next])][o_1, f_10] ==> newPMask[o_1, f_10]
        );
        Heap := Heap[null, SL#sm(Heap[x, next]):=newPMask];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}