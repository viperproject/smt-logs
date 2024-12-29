// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:30:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/annotation/opaque.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/annotation/opaque-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 12: isGreaterOne
// - height 11: fac1
// - height 10: fac3
// - height 9: funP2
// - height 8: isGreaterOne35
// - height 7: isGreaterOne32
// - height 6: isGreaterOne34
// - height 5: funP
// - height 4: isGreaterOne22
// - height 3: isGreaterOne2
// - height 2: fac2
// - height 1: isGreaterOne33
// - height 0: isGreaterOne3
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
// Translation of function isGreaterOne
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne(Heap: HeapType, i: int): bool;
function  isGreaterOne'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { isGreaterOne(Heap, i) }
  isGreaterOne(Heap, i) == isGreaterOne'(Heap, i) && dummyFunction(isGreaterOne#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { isGreaterOne'(Heap, i) }
  dummyFunction(isGreaterOne#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), isGreaterOne(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 12 ==> i > -60 ==> isGreaterOne(Heap, i) == (i > 1)
);

// Framing axioms
function  isGreaterOne#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), isGreaterOne'(Heap, i) }
  state(Heap, Mask) ==> isGreaterOne'(Heap, i) == isGreaterOne#frame(EmptyFrame, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), isGreaterOne'(Heap, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 12 || isGreaterOne#trigger(EmptyFrame, i)) ==> i > -60 ==> i > 60 ==> isGreaterOne'(Heap, i)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  isGreaterOne#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 12;
  
  // -- Inhaling precondition (with checking)
    assume i > -60;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := i > 1;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (i > 60) {
      assert {:msg "  Postcondition of isGreaterOne might not hold. Assertion result might not hold. (opaque.vpr@9.13--9.32) [152706]"}
        Result;
    }
}

// ==================================================
// Translation of function isGreaterOne2
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne2(Heap: HeapType, r_1: Ref): bool;
function  isGreaterOne2'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne2(Heap, r_1) }
  isGreaterOne2(Heap, r_1) == isGreaterOne2'(Heap, r_1) && dummyFunction(isGreaterOne2#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne2'(Heap, r_1) }
  dummyFunction(isGreaterOne2#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne2(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> Heap[r_1, f_7] > -38 ==> isGreaterOne2(Heap, r_1) == isGreaterOne'(Heap, Heap[r_1, f_7])
);

// Framing axioms
function  isGreaterOne2#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne2'(Heap, r_1) }
  state(Heap, Mask) ==> isGreaterOne2'(Heap, r_1) == isGreaterOne2#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne2'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || isGreaterOne2#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> Heap[r_1, f_7] > 60 ==> isGreaterOne2'(Heap, r_1)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne2#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isGreaterOne2#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne2#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -38
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@14.14--14.35) [152707]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -38;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of isGreaterOne(r.f)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@12.1--16.22) [152708]"}
        HasDirectPerm(Mask, r_1, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion r.f > -60 might not hold. (opaque.vpr@16.3--16.20) [152709]"}
          Heap[r_1, f_7] > -60;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := isGreaterOne'(Heap, Heap[r_1, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 60
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@15.13--15.34) [152710]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    if (Heap[r_1, f_7] > 60) {
      assert {:msg "  Postcondition of isGreaterOne2 might not hold. Assertion result might not hold. (opaque.vpr@15.13--15.34) [152711]"}
        Result;
    }
}

// ==================================================
// Translation of function isGreaterOne22
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne22(Heap: HeapType, r_1: Ref): bool;
function  isGreaterOne22'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne22(Heap, r_1) }
  isGreaterOne22(Heap, r_1) == isGreaterOne22'(Heap, r_1) && dummyFunction(isGreaterOne22#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne22'(Heap, r_1) }
  dummyFunction(isGreaterOne22#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne22(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> Heap[r_1, f_7] > -38 ==> isGreaterOne22(Heap, r_1) == isGreaterOne'(Heap, Heap[r_1, f_7])
);

// Framing axioms
function  isGreaterOne22#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne22'(Heap, r_1) }
  state(Heap, Mask) ==> isGreaterOne22'(Heap, r_1) == isGreaterOne22#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne22'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || isGreaterOne22#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> Heap[r_1, f_7] > 60 ==> isGreaterOne22'(Heap, r_1)
);
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne22'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || isGreaterOne22#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> isGreaterOne22'(Heap, r_1) == (Heap[r_1, f_7] > 1)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne22#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isGreaterOne22#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne22#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -38
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@20.14--20.35) [152712]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -38;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of isGreaterOne(r.f)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@18.1--24.22) [152713]"}
        HasDirectPerm(Mask, r_1, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion r.f > -60 might not hold. (opaque.vpr@24.3--24.20) [152714]"}
          Heap[r_1, f_7] > -60;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := isGreaterOne'(Heap, Heap[r_1, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 60
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@21.13--21.34) [152715]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    if (Heap[r_1, f_7] > 60) {
      assert {:msg "  Postcondition of isGreaterOne22 might not hold. Assertion result might not hold. (opaque.vpr@21.13--21.34) [152716]"}
        Result;
    }
    
    // -- Check definedness of result == r.f > 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@23.13--23.30) [152717]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Postcondition of isGreaterOne22 might not hold. Assertion result == r.f > 1 might not hold. (opaque.vpr@23.13--23.30) [152718]"}
      Result == (Heap[r_1, f_7] > 1);
}

// ==================================================
// Translation of function isGreaterOne3
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne3(Heap: HeapType, r_1: Ref): bool;
function  isGreaterOne3'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne3(Heap, r_1) }
  isGreaterOne3(Heap, r_1) == isGreaterOne3'(Heap, r_1) && dummyFunction(isGreaterOne3#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne3'(Heap, r_1) }
  dummyFunction(isGreaterOne3#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne3(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Heap[r_1, f_7] > -38 ==> isGreaterOne3(Heap, r_1) == isGreaterOne(Heap, Heap[r_1, f_7])
);

// Framing axioms
function  isGreaterOne3#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne3'(Heap, r_1) }
  state(Heap, Mask) ==> isGreaterOne3'(Heap, r_1) == isGreaterOne3#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne3'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || isGreaterOne3#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> Heap[r_1, f_7] > 60 ==> isGreaterOne3'(Heap, r_1)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne3#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isGreaterOne3#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne3#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -38
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@28.14--28.35) [152719]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -38;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of @reveal() (isGreaterOne(r.f))
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@26.1--30.32) [152720]"}
        HasDirectPerm(Mask, r_1, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion r.f > -60 might not hold. (opaque.vpr@30.3--30.30) [152721]"}
          Heap[r_1, f_7] > -60;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := isGreaterOne(Heap, Heap[r_1, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 60
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@29.13--29.34) [152722]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    if (Heap[r_1, f_7] > 60) {
      assert {:msg "  Postcondition of isGreaterOne3 might not hold. Assertion result might not hold. (opaque.vpr@29.13--29.34) [152723]"}
        Result;
    }
}

// ==================================================
// Translation of function isGreaterOne32
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne32(Heap: HeapType, r_1: Ref): bool;
function  isGreaterOne32'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne32(Heap, r_1) }
  isGreaterOne32(Heap, r_1) == isGreaterOne32'(Heap, r_1) && dummyFunction(isGreaterOne32#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne32'(Heap, r_1) }
  dummyFunction(isGreaterOne32#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne32(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> Heap[r_1, f_7] > -38 ==> isGreaterOne32(Heap, r_1) == isGreaterOne(Heap, Heap[r_1, f_7])
);

// Framing axioms
function  isGreaterOne32#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne32'(Heap, r_1) }
  state(Heap, Mask) ==> isGreaterOne32'(Heap, r_1) == isGreaterOne32#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne32'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 7 || isGreaterOne32#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> Heap[r_1, f_7] > 60 ==> isGreaterOne32'(Heap, r_1)
);
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne32'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 7 || isGreaterOne32#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> isGreaterOne32'(Heap, r_1) == (Heap[r_1, f_7] > 1)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne32#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isGreaterOne32#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne32#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -38
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@34.14--34.35) [152724]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -38;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of @reveal() (isGreaterOne(r.f))
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@32.1--37.32) [152725]"}
        HasDirectPerm(Mask, r_1, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion r.f > -60 might not hold. (opaque.vpr@37.3--37.30) [152726]"}
          Heap[r_1, f_7] > -60;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := isGreaterOne(Heap, Heap[r_1, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 60
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@35.13--35.34) [152727]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    if (Heap[r_1, f_7] > 60) {
      assert {:msg "  Postcondition of isGreaterOne32 might not hold. Assertion result might not hold. (opaque.vpr@35.13--35.34) [152728]"}
        Result;
    }
    
    // -- Check definedness of result == r.f > 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@36.13--36.30) [152729]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Postcondition of isGreaterOne32 might not hold. Assertion result == r.f > 1 might not hold. (opaque.vpr@36.13--36.30) [152730]"}
      Result == (Heap[r_1, f_7] > 1);
}

// ==================================================
// Translation of function isGreaterOne33
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne33(Heap: HeapType, r_1: Ref): bool;
function  isGreaterOne33'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne33(Heap, r_1) }
  isGreaterOne33(Heap, r_1) == isGreaterOne33'(Heap, r_1) && dummyFunction(isGreaterOne33#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne33'(Heap, r_1) }
  dummyFunction(isGreaterOne33#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne33(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> isGreaterOne33(Heap, r_1) == isGreaterOne(Heap, Heap[r_1, f_7])
);

// Framing axioms
function  isGreaterOne33#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne33'(Heap, r_1) }
  state(Heap, Mask) ==> isGreaterOne33'(Heap, r_1) == isGreaterOne33#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne33'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || isGreaterOne33#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > 60 ==> isGreaterOne33'(Heap, r_1)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne33#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isGreaterOne33#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne33#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of @reveal() (isGreaterOne(r.f))
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@39.1--44.32) [152731]"}
        HasDirectPerm(Mask, r_1, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion r.f > -60 might not hold. (opaque.vpr@44.3--44.30) [152732]"}
          Heap[r_1, f_7] > -60;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := isGreaterOne(Heap, Heap[r_1, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 60
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@42.13--42.34) [152733]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    if (Heap[r_1, f_7] > 60) {
      assert {:msg "  Postcondition of isGreaterOne33 might not hold. Assertion result might not hold. (opaque.vpr@42.13--42.34) [152734]"}
        Result;
    }
}

// ==================================================
// Translation of function isGreaterOne34
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne34(Heap: HeapType, r_1: Ref): bool;
function  isGreaterOne34'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne34(Heap, r_1) }
  isGreaterOne34(Heap, r_1) == isGreaterOne34'(Heap, r_1) && dummyFunction(isGreaterOne34#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne34'(Heap, r_1) }
  dummyFunction(isGreaterOne34#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne34(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> Heap[r_1, f_7] > -38 ==> isGreaterOne34(Heap, r_1) == isGreaterOne(Heap, Heap[r_1, f_7])
);

// Framing axioms
function  isGreaterOne34#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne34'(Heap, r_1) }
  state(Heap, Mask) ==> isGreaterOne34'(Heap, r_1) == isGreaterOne34#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne34'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 6 || isGreaterOne34#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> Heap[r_1, f_7] > 60 ==> isGreaterOne34'(Heap, r_1)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne34#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isGreaterOne34#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne34#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -38
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@47.14--47.35) [152735]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -38;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of @reveal() (isGreaterOne(r.f))
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@46.1--49.32) [152736]"}
        HasDirectPerm(Mask, r_1, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion r.f > -60 might not hold. (opaque.vpr@49.3--49.30) [152737]"}
          Heap[r_1, f_7] > -60;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := isGreaterOne(Heap, Heap[r_1, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 60
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@48.13--48.34) [152738]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    if (Heap[r_1, f_7] > 60) {
      assert {:msg "  Postcondition of isGreaterOne34 might not hold. Assertion result might not hold. (opaque.vpr@48.13--48.34) [152739]"}
        Result;
    }
}

// ==================================================
// Translation of function isGreaterOne35
// ==================================================

// Uninterpreted function definitions
function  isGreaterOne35(Heap: HeapType, r_1: Ref): bool;
function  isGreaterOne35'(Heap: HeapType, r_1: Ref): bool;
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne35(Heap, r_1) }
  isGreaterOne35(Heap, r_1) == isGreaterOne35'(Heap, r_1) && dummyFunction(isGreaterOne35#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { isGreaterOne35'(Heap, r_1) }
  dummyFunction(isGreaterOne35#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne35(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> Heap[r_1, f_7] > -38 ==> isGreaterOne35(Heap, r_1) == isGreaterOne'(Heap, Heap[r_1, f_7])
);

// Framing axioms
function  isGreaterOne35#frame(frame: FrameType, r_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne35'(Heap, r_1) }
  state(Heap, Mask) ==> isGreaterOne35'(Heap, r_1) == isGreaterOne35#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), isGreaterOne35'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 8 || isGreaterOne35#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> Heap[r_1, f_7] > -38 ==> Heap[r_1, f_7] > 60 ==> isGreaterOne35'(Heap, r_1)
);

// Trigger function (controlling recursive postconditions)
function  isGreaterOne35#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  isGreaterOne35#triggerStateless(r_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure isGreaterOne35#definedness(r_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -38
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@52.14--52.35) [152740]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -38;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of isGreaterOne(r.f)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@51.1--54.22) [152741]"}
        HasDirectPerm(Mask, r_1, f_7);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion r.f > -60 might not hold. (opaque.vpr@54.3--54.20) [152742]"}
          Heap[r_1, f_7] > -60;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := isGreaterOne'(Heap, Heap[r_1, f_7]);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 60
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@53.13--53.34) [152743]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    if (Heap[r_1, f_7] > 60) {
      assert {:msg "  Postcondition of isGreaterOne35 might not hold. Assertion result might not hold. (opaque.vpr@53.13--53.34) [152744]"}
        Result;
    }
}

// ==================================================
// Translation of function fac1
// ==================================================

// Uninterpreted function definitions
function  fac1(Heap: HeapType, i: int): int;
function  fac1'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { fac1(Heap, i) }
  fac1(Heap, i) == fac1'(Heap, i) && dummyFunction(fac1#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { fac1'(Heap, i) }
  dummyFunction(fac1#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), fac1(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 11 ==> fac1(Heap, i) == (if i <= 1 then 1 else i * fac1'(Heap, i - 1))
);

// Framing axioms
function  fac1#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), fac1'(Heap, i) }
  state(Heap, Mask) ==> fac1'(Heap, i) == fac1#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  fac1#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  fac1#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure fac1#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 11;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i <= 1 ? 1 : i * fac1(i - 1))
      if (i <= 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fac1#trigger(EmptyFrame, i - 1);
        }
      }
  
  // -- Translate function body
    Result := (if i <= 1 then 1 else i * fac1(Heap, i - 1));
}

// ==================================================
// Translation of function fac2
// ==================================================

// Uninterpreted function definitions
function  fac2(Heap: HeapType, i: int): int;
function  fac2'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { fac2(Heap, i) }
  fac2(Heap, i) == fac2'(Heap, i) && dummyFunction(fac2#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { fac2'(Heap, i) }
  dummyFunction(fac2#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), fac2(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fac2(Heap, i) == (if i <= 1 then 1 else i * fac2'(Heap, i - 1))
);

// Framing axioms
function  fac2#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), fac2'(Heap, i) }
  state(Heap, Mask) ==> fac2'(Heap, i) == fac2#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  fac2#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  fac2#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure fac2#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i <= 1 ? 1 : i * fac2(i - 1))
      if (i <= 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fac2#trigger(EmptyFrame, i - 1);
        }
      }
  
  // -- Translate function body
    Result := (if i <= 1 then 1 else i * fac2'(Heap, i - 1));
}

// ==================================================
// Translation of function fac3
// ==================================================

// Uninterpreted function definitions
function  fac3(Heap: HeapType, i: int): int;
function  fac3'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { fac3(Heap, i) }
  fac3(Heap, i) == fac3'(Heap, i) && dummyFunction(fac3#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { fac3'(Heap, i) }
  dummyFunction(fac3#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), fac3(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 10 ==> fac3(Heap, i) == (if i <= 1 then 1 else i * fac3'(Heap, i - 1))
);

// Framing axioms
function  fac3#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), fac3'(Heap, i) }
  state(Heap, Mask) ==> fac3'(Heap, i) == fac3#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  fac3#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  fac3#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure fac3#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 10;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i <= 1 ? 1 : i * @reveal() (fac3(i - 1)))
      if (i <= 1) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fac3#trigger(EmptyFrame, i - 1);
        }
      }
  
  // -- Translate function body
    Result := (if i <= 1 then 1 else i * fac3(Heap, i - 1));
}

// ==================================================
// Translation of function funP
// ==================================================

// Uninterpreted function definitions
function  funP(Heap: HeapType, x: Ref): int;
function  funP'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { funP(Heap, x) }
  funP(Heap, x) == funP'(Heap, x) && dummyFunction(funP#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { funP'(Heap, x) }
  dummyFunction(funP#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), funP(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> funP(Heap, x) == Heap[x, f_7]
);

// Framing axioms
function  funP#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), funP'(Heap, x) }
  state(Heap, Mask) ==> funP'(Heap, x) == funP#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  funP#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  funP#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure funP#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (opaque.vpr@298.1--303.2) [152745]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (opaque.vpr@298.1--303.2) [152746]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of function funP2
// ==================================================

// Uninterpreted function definitions
function  funP2(Heap: HeapType, x: Ref): int;
function  funP2'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { funP2(Heap, x) }
  funP2(Heap, x) == funP2'(Heap, x) && dummyFunction(funP2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { funP2'(Heap, x) }
  dummyFunction(funP2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), funP2(Heap, x) } { state(Heap, Mask), funP2#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 9 ==> funP2(Heap, x) == Heap[x, f_7]
);

// Framing axioms
function  funP2#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), funP2'(Heap, x) }
  state(Heap, Mask) ==> funP2'(Heap, x) == funP2#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  funP2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  funP2#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure funP2#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 9;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (opaque.vpr@305.1--309.2) [152747]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (opaque.vpr@305.1--309.2) [152748]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mPre
// ==================================================

procedure mPre(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var tmp: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := isGreaterOne(j) -- opaque.vpr@61.5--61.27
    
    // -- Check definedness of isGreaterOne(j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@61.12--61.27) [152749]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    tmp := isGreaterOne'(Heap, j_9);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mPre2
// ==================================================

procedure mPre2(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var tmp: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := @reveal()
  //   (isGreaterOne(j)) -- opaque.vpr@68.5--68.37
    
    // -- Check definedness of @reveal() (isGreaterOne(j))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@68.12--68.37) [152750]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    tmp := isGreaterOne(Heap, j_9);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mPost
// ==================================================

procedure mPost() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var tmp: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := isGreaterOne(70) -- opaque.vpr@74.5--74.28
    
    // -- Check definedness of isGreaterOne(70)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        // Stop execution
        assume false;
      }
    tmp := isGreaterOne'(Heap, 70);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp -- opaque.vpr@75.5--75.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp might not hold. (opaque.vpr@75.12--75.15) [152751]"}
      tmp;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mPost2
// ==================================================

procedure mPost2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var tmp: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := @reveal()
  //   (isGreaterOne(70)) -- opaque.vpr@81.5--81.38
    
    // -- Check definedness of @reveal() (isGreaterOne(70))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        // Stop execution
        assume false;
      }
    tmp := isGreaterOne(Heap, 70);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp -- opaque.vpr@82.5--82.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp might not hold. (opaque.vpr@82.12--82.15) [152752]"}
      tmp;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mDef
// ==================================================

procedure mDef(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume j_9 > -50;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale isGreaterOne(j) -- opaque.vpr@88.12--88.27
    assume state(Heap, Mask);
    
    // -- Check definedness of isGreaterOne(j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@88.12--88.27) [152753]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assume isGreaterOne'(Heap, j_9);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j > 1 -- opaque.vpr@90.5--90.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion j > 1 might not hold. (opaque.vpr@90.12--90.17) [152754]"}
      j_9 > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mDef2
// ==================================================

procedure mDef2(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume j_9 > -50;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: @reveal()
  // inhale @reveal()
  //   (isGreaterOne(j)) -- opaque.vpr@96.12--96.37
    assume state(Heap, Mask);
    
    // -- Check definedness of @reveal() (isGreaterOne(j))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@96.12--96.37) [152755]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assume isGreaterOne(Heap, j_9);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j > 1 -- opaque.vpr@97.5--97.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion j > 1 might not hold. (opaque.vpr@97.12--97.17) [152756]"}
      j_9 > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mProveFun
// ==================================================

procedure mProveFun(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume j_9 > 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert isGreaterOne(j) -- opaque.vpr@104.5--104.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of isGreaterOne(j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@104.12--104.27) [152757]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion isGreaterOne(j) might not hold. (opaque.vpr@104.12--104.27) [152758]"}
      isGreaterOne'(Heap, j_9);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mProveFun2
// ==================================================

procedure mProveFun2(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume j_9 > 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert @reveal()
  //   (isGreaterOne(j)) -- opaque.vpr@110.5--110.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of @reveal() (isGreaterOne(j))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@110.12--110.37) [152759]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion @reveal() (isGreaterOne(j)) might not hold. (opaque.vpr@110.12--110.37) [152760]"}
      isGreaterOne(Heap, j_9);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mProveRevealed
// ==================================================

procedure mProveRevealed(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume j_9 > -40;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale isGreaterOne(j) -- opaque.vpr@116.12--116.27
    assume state(Heap, Mask);
    
    // -- Check definedness of isGreaterOne(j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@116.12--116.27) [152761]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assume isGreaterOne'(Heap, j_9);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert @reveal()
  //   (isGreaterOne(j)) -- opaque.vpr@117.5--117.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of @reveal() (isGreaterOne(j))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@117.12--117.37) [152762]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion @reveal() (isGreaterOne(j)) might not hold. (opaque.vpr@117.12--117.37) [152763]"}
      isGreaterOne(Heap, j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j > 1 -- opaque.vpr@118.5--118.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion j > 1 might not hold. (opaque.vpr@118.12--118.17) [152764]"}
      j_9 > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mProveRevealed2
// ==================================================

procedure mProveRevealed2(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume j_9 > -40;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale isGreaterOne(j) -- opaque.vpr@124.12--124.27
    assume state(Heap, Mask);
    
    // -- Check definedness of isGreaterOne(j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@124.12--124.27) [152765]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assume isGreaterOne'(Heap, j_9);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j > 1 -- opaque.vpr@126.5--126.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion j > 1 might not hold. (opaque.vpr@126.12--126.17) [152766]"}
      j_9 > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mProveOpaque
// ==================================================

procedure mProveOpaque(j_9: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume j_9 > -40;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: @reveal()
  // inhale @reveal()
  //   (isGreaterOne(j)) -- opaque.vpr@132.12--132.37
    assume state(Heap, Mask);
    
    // -- Check definedness of @reveal() (isGreaterOne(j))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@132.12--132.37) [152767]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assume isGreaterOne(Heap, j_9);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert isGreaterOne(j) -- opaque.vpr@133.5--133.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of isGreaterOne(j)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function isGreaterOne might not hold. Assertion j > -60 might not hold. (opaque.vpr@133.12--133.27) [152768]"}
          j_9 > -60;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion isGreaterOne(j) might not hold. (opaque.vpr@133.12--133.27) [152769]"}
      isGreaterOne'(Heap, j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- opaque.vpr@135.5--135.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (opaque.vpr@135.12--135.17) [152770]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mNestedFunc
// ==================================================

procedure mNestedFunc(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -20
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@139.14--139.35) [152771]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -20;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale isGreaterOne2(r) -- opaque.vpr@141.12--141.28
    assume state(Heap, Mask);
    
    // -- Check definedness of isGreaterOne2(r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function isGreaterOne2 might not hold. There might be insufficient permission to access r.f (opaque.vpr@141.12--141.28) [152772]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        assert {:msg "  Precondition of function isGreaterOne2 might not hold. Assertion r.f > -38 might not hold. (opaque.vpr@141.12--141.28) [152773]"}
          Heap[r_1, f_7] > -38;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume isGreaterOne2'(Heap, r_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f > 1 -- opaque.vpr@143.5--143.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (opaque.vpr@143.12--143.19) [152774]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f > 1 might not hold. (opaque.vpr@143.12--143.19) [152775]"}
      Heap[r_1, f_7] > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mNestedFunc2
// ==================================================

procedure mNestedFunc2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -20
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@147.14--147.35) [152776]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -20;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: @reveal()
  // inhale @reveal()
  //   (isGreaterOne2(r)) -- opaque.vpr@149.12--149.38
    assume state(Heap, Mask);
    
    // -- Check definedness of @reveal() (isGreaterOne2(r))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function isGreaterOne2 might not hold. There might be insufficient permission to access r.f (opaque.vpr@149.12--149.38) [152777]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        assert {:msg "  Precondition of function isGreaterOne2 might not hold. Assertion r.f > -38 might not hold. (opaque.vpr@149.12--149.38) [152778]"}
          Heap[r_1, f_7] > -38;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume isGreaterOne2(Heap, r_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f > 1 -- opaque.vpr@151.5--151.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (opaque.vpr@151.12--151.19) [152779]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f > 1 might not hold. (opaque.vpr@151.12--151.19) [152780]"}
      Heap[r_1, f_7] > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mNestedFunc3
// ==================================================

procedure mNestedFunc3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -20
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@155.14--155.35) [152781]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -20;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale isGreaterOne3(r) -- opaque.vpr@157.12--157.28
    assume state(Heap, Mask);
    
    // -- Check definedness of isGreaterOne3(r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function isGreaterOne3 might not hold. There might be insufficient permission to access r.f (opaque.vpr@157.12--157.28) [152782]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        assert {:msg "  Precondition of function isGreaterOne3 might not hold. Assertion r.f > -38 might not hold. (opaque.vpr@157.12--157.28) [152783]"}
          Heap[r_1, f_7] > -38;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume isGreaterOne3'(Heap, r_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f > 1 -- opaque.vpr@159.5--159.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (opaque.vpr@159.12--159.19) [152784]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f > 1 might not hold. (opaque.vpr@159.12--159.19) [152785]"}
      Heap[r_1, f_7] > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mNestedFunc4
// ==================================================

procedure mNestedFunc4(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -20
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@163.14--163.35) [152786]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -20;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: @reveal()
  // inhale @reveal()
  //   (isGreaterOne3(r)) -- opaque.vpr@165.12--165.38
    assume state(Heap, Mask);
    
    // -- Check definedness of @reveal() (isGreaterOne3(r))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function isGreaterOne3 might not hold. There might be insufficient permission to access r.f (opaque.vpr@165.12--165.38) [152787]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        assert {:msg "  Precondition of function isGreaterOne3 might not hold. Assertion r.f > -38 might not hold. (opaque.vpr@165.12--165.38) [152788]"}
          Heap[r_1, f_7] > -38;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume isGreaterOne3(Heap, r_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f > 1 -- opaque.vpr@166.5--166.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (opaque.vpr@166.12--166.19) [152789]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f > 1 might not hold. (opaque.vpr@166.12--166.19) [152790]"}
      Heap[r_1, f_7] > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mNestedFunc5
// ==================================================

procedure mNestedFunc5(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -20
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@170.14--170.35) [152791]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -20;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale isGreaterOne34(r) -- opaque.vpr@172.12--172.29
    assume state(Heap, Mask);
    
    // -- Check definedness of isGreaterOne34(r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function isGreaterOne34 might not hold. There might be insufficient permission to access r.f (opaque.vpr@172.12--172.29) [152792]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        assert {:msg "  Precondition of function isGreaterOne34 might not hold. Assertion r.f > -38 might not hold. (opaque.vpr@172.12--172.29) [152793]"}
          Heap[r_1, f_7] > -38;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume isGreaterOne34(Heap, r_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f > 1 -- opaque.vpr@173.5--173.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (opaque.vpr@173.12--173.19) [152794]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f > 1 might not hold. (opaque.vpr@173.12--173.19) [152795]"}
      Heap[r_1, f_7] > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mNestedFunc6
// ==================================================

procedure mNestedFunc6(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f > -20
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (opaque.vpr@177.14--177.35) [152796]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] > -20;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale isGreaterOne35(r) -- opaque.vpr@179.12--179.29
    assume state(Heap, Mask);
    
    // -- Check definedness of isGreaterOne35(r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function isGreaterOne35 might not hold. There might be insufficient permission to access r.f (opaque.vpr@179.12--179.29) [152797]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        assert {:msg "  Precondition of function isGreaterOne35 might not hold. Assertion r.f > -38 might not hold. (opaque.vpr@179.12--179.29) [152798]"}
          Heap[r_1, f_7] > -38;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume isGreaterOne35(Heap, r_1);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.f > 1 -- opaque.vpr@181.5--181.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.f > 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (opaque.vpr@181.12--181.19) [152799]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion r.f > 1 might not hold. (opaque.vpr@181.12--181.19) [152800]"}
      Heap[r_1, f_7] > 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac1_1
// ==================================================

procedure mFac1_1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := fac1(3) -- opaque.vpr@204.5--204.19
    
    // -- Check definedness of fac1(3)
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac1(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 6 -- opaque.vpr@206.5--206.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp == 6 might not hold. (opaque.vpr@206.12--206.20) [152801]"}
      tmp == 6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac1_2
// ==================================================

procedure mFac1_2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := fac1(3) -- opaque.vpr@212.5--212.19
    
    // -- Check definedness of fac1(3)
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac1(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * fac1(2) -- opaque.vpr@213.5--213.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * fac1(2)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * fac1(2) might not hold. (opaque.vpr@213.12--213.30) [152802]"}
      tmp == 3 * fac1(Heap, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * 2 * fac1(1) -- opaque.vpr@214.5--214.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * 2 * fac1(1)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * 2 * fac1(1) might not hold. (opaque.vpr@214.12--214.34) [152803]"}
      tmp == 6 * fac1(Heap, 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 6 -- opaque.vpr@215.5--215.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp == 6 might not hold. (opaque.vpr@215.12--215.20) [152804]"}
      tmp == 6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac2_1
// ==================================================

procedure mFac2_1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := fac2(3) -- opaque.vpr@221.5--221.19
    
    // -- Check definedness of fac2(3)
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac2'(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 6 -- opaque.vpr@223.5--223.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp == 6 might not hold. (opaque.vpr@223.12--223.20) [152805]"}
      tmp == 6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac2_2
// ==================================================

procedure mFac2_2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := fac2(3) -- opaque.vpr@229.5--229.19
    
    // -- Check definedness of fac2(3)
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac2'(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * fac2(2) -- opaque.vpr@231.5--231.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * fac2(2)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * fac2(2) might not hold. (opaque.vpr@231.12--231.30) [152806]"}
      tmp == 3 * fac2'(Heap, 2);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac2_3
// ==================================================

procedure mFac2_3() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := @reveal()
  //   (fac2(3)) -- opaque.vpr@237.5--237.29
    
    // -- Check definedness of @reveal() (fac2(3))
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac2(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * @reveal() (fac2(2)) -- opaque.vpr@238.5--238.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * @reveal() (fac2(2))
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * @reveal() (fac2(2)) might not hold. (opaque.vpr@238.12--238.40) [152807]"}
      tmp == 3 * fac2(Heap, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * 2 * @reveal() (fac2(1)) -- opaque.vpr@239.5--239.44
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * 2 * @reveal() (fac2(1))
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * 2 * @reveal() (fac2(1)) might not hold. (opaque.vpr@239.12--239.44) [152808]"}
      tmp == 6 * fac2(Heap, 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 6 -- opaque.vpr@240.5--240.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp == 6 might not hold. (opaque.vpr@240.12--240.20) [152809]"}
      tmp == 6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac2_4
// ==================================================

procedure mFac2_4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := @reveal()
  //   (fac2(3)) -- opaque.vpr@246.5--246.29
    
    // -- Check definedness of @reveal() (fac2(3))
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac2(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * fac2(2) -- opaque.vpr@247.5--247.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * fac2(2)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * fac2(2) might not hold. (opaque.vpr@247.12--247.30) [152810]"}
      tmp == 3 * fac2'(Heap, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * 2 * fac2(1) -- opaque.vpr@249.5--249.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * 2 * fac2(1)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * 2 * fac2(1) might not hold. (opaque.vpr@249.12--249.34) [152811]"}
      tmp == 6 * fac2'(Heap, 1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac3_1
// ==================================================

procedure mFac3_1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := fac3(3) -- opaque.vpr@255.5--255.19
    
    // -- Check definedness of fac3(3)
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac3'(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 6 -- opaque.vpr@257.5--257.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp == 6 might not hold. (opaque.vpr@257.12--257.20) [152812]"}
      tmp == 6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac3_2
// ==================================================

procedure mFac3_2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := fac3(3) -- opaque.vpr@263.5--263.19
    
    // -- Check definedness of fac3(3)
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac3'(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * fac3(2) -- opaque.vpr@265.5--265.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * fac3(2)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * fac3(2) might not hold. (opaque.vpr@265.12--265.30) [152813]"}
      tmp == 3 * fac3'(Heap, 2);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac3_3
// ==================================================

procedure mFac3_3() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := @reveal()
  //   (fac3(3)) -- opaque.vpr@271.5--271.29
    
    // -- Check definedness of @reveal() (fac3(3))
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac3(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * @reveal() (fac3(2)) -- opaque.vpr@272.5--272.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * @reveal() (fac3(2))
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * @reveal() (fac3(2)) might not hold. (opaque.vpr@272.12--272.40) [152814]"}
      tmp == 3 * fac3(Heap, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * 2 * @reveal() (fac3(1)) -- opaque.vpr@273.5--273.44
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * 2 * @reveal() (fac3(1))
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * 2 * @reveal() (fac3(1)) might not hold. (opaque.vpr@273.12--273.44) [152815]"}
      tmp == 6 * fac3(Heap, 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 6 -- opaque.vpr@274.5--274.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp == 6 might not hold. (opaque.vpr@274.12--274.20) [152816]"}
      tmp == 6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac3_4
// ==================================================

procedure mFac3_4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := @reveal()
  //   (fac3(3)) -- opaque.vpr@280.5--280.29
    
    // -- Check definedness of @reveal() (fac3(3))
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac3(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * fac3(2) -- opaque.vpr@281.5--281.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * fac3(2)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * fac3(2) might not hold. (opaque.vpr@281.12--281.30) [152817]"}
      tmp == 3 * fac3'(Heap, 2);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 3 * 2 * fac3(1) -- opaque.vpr@283.5--283.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of tmp == 3 * 2 * fac3(1)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion tmp == 3 * 2 * fac3(1) might not hold. (opaque.vpr@283.12--283.34) [152818]"}
      tmp == 6 * fac3'(Heap, 1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFac3_5
// ==================================================

procedure mFac3_5() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := @reveal()
  //   (fac3(3)) -- opaque.vpr@289.5--289.29
    
    // -- Check definedness of @reveal() (fac3(3))
      if (*) {
        // Stop execution
        assume false;
      }
    tmp := fac3(Heap, 3);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp == 6 -- opaque.vpr@291.5--291.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion tmp == 6 might not hold. (opaque.vpr@291.12--291.20) [152819]"}
      tmp == 6;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFold
// ==================================================

procedure mFold(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := r.f -- opaque.vpr@315.5--315.15
    
    // -- Check definedness of r.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (opaque.vpr@315.5--315.15) [152820]"}
        HasDirectPerm(Mask, r_1, f_7);
    tmp := Heap[r_1, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(r), write) -- opaque.vpr@316.5--316.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access r.f (opaque.vpr@316.5--316.14) [152823]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(Heap[r_1, f_7]);
    if (!HasDirectPerm(Mask, null, P(r_1))) {
      Heap := Heap[null, P#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(r_1):=freshVersion];
    }
    Heap := Heap[null, P#sm(r_1):=Heap[null, P#sm(r_1)][r_1, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert funP(r) == tmp -- opaque.vpr@318.5--318.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of funP(r) == tmp
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function funP might not hold. There might be insufficient permission to access P(r) (opaque.vpr@318.12--318.19) [152825]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(r_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion funP(r) == tmp might not hold. (opaque.vpr@318.12--318.26) [152826]"}
      funP'(Heap, r_1) == tmp;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFold2
// ==================================================

procedure mFold2(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := r.f -- opaque.vpr@325.5--325.15
    
    // -- Check definedness of r.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (opaque.vpr@325.5--325.15) [152827]"}
        HasDirectPerm(Mask, r_1, f_7);
    tmp := Heap[r_1, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(r), write) -- opaque.vpr@326.5--326.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access r.f (opaque.vpr@326.5--326.14) [152830]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(Heap[r_1, f_7]);
    if (!HasDirectPerm(Mask, null, P(r_1))) {
      Heap := Heap[null, P#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(r_1):=freshVersion];
    }
    Heap := Heap[null, P#sm(r_1):=Heap[null, P#sm(r_1)][r_1, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert @reveal() (funP(r)) == tmp -- opaque.vpr@327.5--327.36
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of @reveal() (funP(r)) == tmp
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function funP might not hold. There might be insufficient permission to access P(r) (opaque.vpr@327.12--327.29) [152832]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(r_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion @reveal() (funP(r)) == tmp might not hold. (opaque.vpr@327.12--327.36) [152833]"}
      funP(Heap, r_1) == tmp;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method mFold3
// ==================================================

procedure mFold3(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var tmp: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: tmp := r.f -- opaque.vpr@334.5--334.15
    
    // -- Check definedness of r.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (opaque.vpr@334.5--334.15) [152834]"}
        HasDirectPerm(Mask, r_1, f_7);
    tmp := Heap[r_1, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(r), write) -- opaque.vpr@335.5--335.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding P(r) might fail. There might be insufficient permission to access r.f (opaque.vpr@335.5--335.14) [152837]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, P(r_1):=Mask[null, P(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(r_1));
    assume Heap[null, P(r_1)] == FrameFragment(Heap[r_1, f_7]);
    if (!HasDirectPerm(Mask, null, P(r_1))) {
      Heap := Heap[null, P#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(r_1):=freshVersion];
    }
    Heap := Heap[null, P#sm(r_1):=Heap[null, P#sm(r_1)][r_1, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert funP2(r) == tmp -- opaque.vpr@336.5--336.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of funP2(r) == tmp
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function funP2 might not hold. There might be insufficient permission to access P(r) (opaque.vpr@336.12--336.20) [152839]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, P(r_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion funP2(r) == tmp might not hold. (opaque.vpr@336.12--336.27) [152840]"}
      funP2(Heap, r_1) == tmp;
    assume state(Heap, Mask);
}