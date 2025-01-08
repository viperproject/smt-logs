// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:59:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/abstract_funcs_and_preds.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/abstract_funcs_and_preds-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: fun02
// - height 1: fun01
// - height 0: fun03
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

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, x: Ref): int;
function  fun01'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun01(Heap, x) }
  fun01(Heap, x) == fun01'(Heap, x) && dummyFunction(fun01#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun01'(Heap, x) }
  dummyFunction(fun01#triggerStateless(x))
);

// Framing axioms
function  fun01#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun01'(Heap, x) }
  state(Heap, Mask) ==> fun01'(Heap, x) == fun01#frame(EmptyFrame, x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun01'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || fun01#trigger(EmptyFrame, x)) ==> 0 < fun01'(Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun01#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Checking definedness of postcondition (no body)
    assume 0 < Result;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType, x: Ref): bool;
function  fun02'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { fun02(Heap, x) }
  fun02(Heap, x) == fun02'(Heap, x) && dummyFunction(fun02#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun02'(Heap, x) }
  dummyFunction(fun02#triggerStateless(x))
);

// Framing axioms
function  fun02#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun02'(Heap, x) }
  state(Heap, Mask) ==> fun02'(Heap, x) == fun02#frame(FrameFragment(Heap[x, f_7]), x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun02'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || fun02#trigger(FrameFragment(Heap[x, f_7]), x)) ==> x == Heap[x, f_7] ==> fun02'(Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun02#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure fun02#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of x == x.f
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@26.11--26.30) [186525]"}
        HasDirectPerm(Mask, x, f_7);
    if (x == Heap[x, f_7]) {
      assume Result;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun03
// ==================================================

// Uninterpreted function definitions
function  fun03(Heap: HeapType, x: Ref): bool;
function  fun03'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { fun03(Heap, x) }
  fun03(Heap, x) == fun03'(Heap, x) && dummyFunction(fun03#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun03'(Heap, x) }
  dummyFunction(fun03#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun03(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun03(Heap, x) == !fun02(Heap, x)
);

// Framing axioms
function  fun03#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun03'(Heap, x) }
  state(Heap, Mask) ==> fun03'(Heap, x) == fun03#frame(FrameFragment(Heap[x, f_7]), x)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun03'(Heap, x) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || fun03#trigger(FrameFragment(Heap[x, f_7]), x)) ==> x == Heap[x, f_7] ==> !fun03'(Heap, x)
);

// Trigger function (controlling recursive postconditions)
function  fun03#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun03#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure fun03#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of !fun02(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@41.4--41.12) [186526]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := !fun02(Heap, x);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x == x.f
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@40.11--40.31) [186527]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    if (x == Heap[x, f_7]) {
      assert {:msg "  Postcondition of fun03 might not hold. Assertion !result might not hold. (abstract_funcs_and_preds.vpr@40.11--40.31) [186528]"}
        !Result;
    }
}

// ==================================================
// Translation of predicate file
// ==================================================

type PredicateType_file;
function  file(id_2: int): Field PredicateType_file FrameType;
function  file#sm(id_2: int): Field PredicateType_file PMaskType;
axiom (forall id_2: int ::
  { PredicateMaskField(file(id_2)) }
  PredicateMaskField(file(id_2)) == file#sm(id_2)
);
axiom (forall id_2: int ::
  { file(id_2) }
  IsPredicateField(file(id_2))
);
axiom (forall id_2: int ::
  { file(id_2) }
  getPredWandId(file(id_2)) == 0
);
function  file#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  file#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall id_2: int, id2: int ::
  { file(id_2), file(id2) }
  file(id_2) == file(id2) ==> id_2 == id2
);
axiom (forall id_2: int, id2: int ::
  { file#sm(id_2), file#sm(id2) }
  file#sm(id_2) == file#sm(id2) ==> id_2 == id2
);

axiom (forall Heap: HeapType, id_2: int ::
  { file#trigger(Heap, file(id_2)) }
  file#everUsed(file(id_2))
);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
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
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert fun01(x) >= 0 -- abstract_funcs_and_preds.vpr@10.3--10.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(x) >= 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x) >= 0 might not hold. (abstract_funcs_and_preds.vpr@10.10--10.23) [186529]"}
      fun01(Heap, x) >= 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(x) == 0 -- abstract_funcs_and_preds.vpr@13.3--13.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(x) == 0
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x) == 0 might not hold. (abstract_funcs_and_preds.vpr@13.10--13.23) [186530]"}
      fun01(Heap, x) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_1: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: r := fun01(x) -- abstract_funcs_and_preds.vpr@17.3--17.25
    
    // -- Check definedness of fun01(x)
      if (*) {
        // Stop execution
        assume false;
      }
    r_1 := fun01(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(x) == r -- abstract_funcs_and_preds.vpr@18.3--18.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(x) == r
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x) == r might not hold. (abstract_funcs_and_preds.vpr@18.10--18.23) [186531]"}
      fun01(Heap, x) == r_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(x) == fun01(y) -- abstract_funcs_and_preds.vpr@21.3--21.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun01(x) == fun01(y)
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x) == fun01(y) might not hold. (abstract_funcs_and_preds.vpr@21.10--21.30) [186532]"}
      fun01(Heap, x) == fun01(Heap, y);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, write) -- abstract_funcs_and_preds.vpr@29.3--29.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x == x.f -- abstract_funcs_and_preds.vpr@30.3--30.18
    
    // -- Check definedness of x == x.f
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@30.10--30.18) [186534]"}
        HasDirectPerm(Mask, x, f_7);
    assume x == Heap[x, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x) -- abstract_funcs_and_preds.vpr@31.3--31.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@31.10--31.18) [186535]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(x) might not hold. (abstract_funcs_and_preds.vpr@31.10--31.18) [186536]"}
      fun02(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := y -- abstract_funcs_and_preds.vpr@32.3--32.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@32.3--32.11) [186537]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=y];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x) -- abstract_funcs_and_preds.vpr@35.3--35.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@35.10--35.18) [186538]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun02(x) might not hold. (abstract_funcs_and_preds.vpr@35.10--35.18) [186539]"}
      fun02(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, write) -- abstract_funcs_and_preds.vpr@44.3--44.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x == x.f -- abstract_funcs_and_preds.vpr@45.3--45.18
    
    // -- Check definedness of x == x.f
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@45.10--45.18) [186541]"}
        HasDirectPerm(Mask, x, f_7);
    assume x == Heap[x, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !fun03(x) -- abstract_funcs_and_preds.vpr@46.3--46.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of !fun03(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@46.11--46.19) [186542]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion !fun03(x) might not hold. (abstract_funcs_and_preds.vpr@46.10--46.19) [186543]"}
      !fun03(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun03(x) == !fun02(x) -- abstract_funcs_and_preds.vpr@47.3--47.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun03(x) == !fun02(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@47.10--47.18) [186544]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@47.23--47.31) [186545]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun03(x) == !fun02(x) might not hold. (abstract_funcs_and_preds.vpr@47.10--47.31) [186546]"}
      fun03(Heap, x) == !fun02(Heap, x);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := y -- abstract_funcs_and_preds.vpr@48.3--48.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@48.3--48.11) [186547]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=y];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !fun03(x) -- abstract_funcs_and_preds.vpr@51.3--51.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of !fun03(x)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun03 might not hold. There might be insufficient permission to access x.f (abstract_funcs_and_preds.vpr@51.11--51.19) [186548]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion !fun03(x) might not hold. (abstract_funcs_and_preds.vpr@51.10--51.19) [186549]"}
      !fun03(Heap, x);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method file_open
// ==================================================

procedure file_open(id_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
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
    PostMask := PostMask[null, file(id_2):=PostMask[null, file(id_2)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- abstract_funcs_and_preds.vpr@58.10--58.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of file_open might not hold. There might be insufficient permission to access file(id) (abstract_funcs_and_preds.vpr@57.11--57.24) [186550]"}
        perm <= Mask[null, file(id_2)];
    }
    Mask := Mask[null, file(id_2):=Mask[null, file(id_2)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method file_close
// ==================================================

procedure file_close(id_2: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, file(id_2):=Mask[null, file(id_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
}

// ==================================================
// Translation of method client
// ==================================================

procedure client(id_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: file_open(id) -- abstract_funcs_and_preds.vpr@65.3--65.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, file(id_2):=Mask[null, file(id_2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: file_close(id) -- abstract_funcs_and_preds.vpr@66.3--66.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method file_close might not hold. There might be insufficient permission to access file(id) (abstract_funcs_and_preds.vpr@66.3--66.17) [186551]"}
          perm <= Mask[null, file(id_2)];
      }
      Mask := Mask[null, file(id_2):=Mask[null, file(id_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: file_close(id) -- abstract_funcs_and_preds.vpr@69.3--69.17
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method file_close might not hold. There might be insufficient permission to access file(id) (abstract_funcs_and_preds.vpr@69.3--69.17) [186552]"}
          perm <= Mask[null, file(id_2)];
      }
      Mask := Mask[null, file(id_2):=Mask[null, file(id_2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}