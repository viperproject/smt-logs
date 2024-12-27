// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:40:17
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/recursion.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/recursion-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 1: fac
// - height 0: err1
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
// Translation of function fac
// ==================================================

// Uninterpreted function definitions
function  fac(Heap: HeapType, n: int): int;
function  fac'(Heap: HeapType, n: int): int;
axiom (forall Heap: HeapType, n: int ::
  { fac(Heap, n) }
  fac(Heap, n) == fac'(Heap, n) && dummyFunction(fac#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: int ::
  { fac'(Heap, n) }
  dummyFunction(fac#triggerStateless(n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), fac(Heap, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> n >= 0 ==> fac(Heap, n) == (if n < 2 then n else n * fac'(Heap, n - 1))
);

// Framing axioms
function  fac#frame(frame: FrameType, n: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), fac'(Heap, n) }
  state(Heap, Mask) ==> fac'(Heap, n) == fac#frame(EmptyFrame, n)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), fac'(Heap, n) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || fac#trigger(EmptyFrame, n)) ==> n >= 0 ==> fac'(Heap, n) >= 0
);

// Trigger function (controlling recursive postconditions)
function  fac#trigger(frame: FrameType, n: int): bool;

// State-independent trigger function
function  fac#triggerStateless(n: int): int;

// Check contract well-formedness and postcondition
procedure fac#definedness(n: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (n < 2 ? n : n * fac(n - 1))
      if (n < 2) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function fac might not hold. Assertion n - 1 >= 0 might not hold. (recursion.vpr@9.19--9.29) [155689]"}
            n - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume fac#trigger(EmptyFrame, n - 1);
        }
      }
  
  // -- Translate function body
    Result := (if n < 2 then n else n * fac(Heap, n - 1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of fac might not hold. Assertion result >= 0 might not hold. (recursion.vpr@8.11--8.22) [155690]"}
      Result >= 0;
}

// ==================================================
// Translation of function err1
// ==================================================

// Uninterpreted function definitions
function  err1(Heap: HeapType, n: int): int;
function  err1'(Heap: HeapType, n: int): int;
axiom (forall Heap: HeapType, n: int ::
  { err1(Heap, n) }
  err1(Heap, n) == err1'(Heap, n) && dummyFunction(err1#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: int ::
  { err1'(Heap, n) }
  dummyFunction(err1#triggerStateless(n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), err1(Heap, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> n >= 0 ==> err1(Heap, n) == (if n <= 1 then 1 else err1'(Heap, n - 1) - n)
);

// Framing axioms
function  err1#frame(frame: FrameType, n: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), err1'(Heap, n) }
  state(Heap, Mask) ==> err1'(Heap, n) == err1#frame(EmptyFrame, n)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), err1'(Heap, n) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || err1#trigger(EmptyFrame, n)) ==> n >= 0 ==> err1'(Heap, n) >= 0
);

// Trigger function (controlling recursive postconditions)
function  err1#trigger(frame: FrameType, n: int): bool;

// State-independent trigger function
function  err1#triggerStateless(n: int): int;

// Check contract well-formedness and postcondition
procedure err1#definedness(n: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (n <= 1 ? 1 : err1(n - 1) - n)
      if (n <= 1) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function err1 might not hold. Assertion n - 1 >= 0 might not hold. (recursion.vpr@27.16--27.27) [155691]"}
            n - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume err1#trigger(EmptyFrame, n - 1);
        }
      }
  
  // -- Translate function body
    Result := (if n <= 1 then 1 else err1(Heap, n - 1) - n);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of err1 might not hold. Assertion result >= 0 might not hold. (recursion.vpr@26.11--26.22) [155692]"}
      Result >= 0;
}

// ==================================================
// Translation of method test
// ==================================================

procedure test() returns ()
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert fac(0) == 0 -- recursion.vpr@12.3--12.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fac(0) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fac(0) == 0 might not hold. (recursion.vpr@12.10--12.21) [155693]"}
      fac(Heap, 0) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fac(1) == 1 -- recursion.vpr@13.3--13.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fac(1) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fac(1) == 1 might not hold. (recursion.vpr@13.10--13.21) [155694]"}
      fac(Heap, 1) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fac(2) == 2 -- recursion.vpr@14.3--14.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fac(2) == 2
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fac(2) == 2 might not hold. (recursion.vpr@14.10--14.21) [155695]"}
      fac(Heap, 2) == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fac(3) == 6 -- recursion.vpr@15.3--15.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fac(3) == 6
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fac(3) == 6 might not hold. (recursion.vpr@15.10--15.21) [155696]"}
      fac(Heap, 3) == 6;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fac(4) == 24 -- recursion.vpr@16.3--16.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fac(4) == 24
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fac(4) == 24 might not hold. (recursion.vpr@16.10--16.22) [155697]"}
      fac(Heap, 4) == 24;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fac(7) >= 0 -- recursion.vpr@18.3--18.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fac(7) >= 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fac(7) >= 0 might not hold. (recursion.vpr@18.10--18.21) [155698]"}
      fac(Heap, 7) >= 0;
    assume state(Heap, Mask);
}