// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:15:10
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0267a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0267a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 6: int___unbox__
// - height 5: bool___unbox__
// - height 4: __prim__bool___box__
// - height 3: __prim__int___box__
// - height 2: OTHER_GLOBAL_VAR
// - height 1: ANOTHER_GLOBAL_VAR
// - height 0: SO_MANY_GLOBAL_VARS
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
// Translation of domain PyType
// ==================================================

// The type for domain PyType
type PyTypeDomainType;

// Translation of domain function issubtype
function  issubtype(sub: PyTypeDomainType, super: PyTypeDomainType): bool;

// Translation of domain function typeof
function  typeof(obj: Ref): PyTypeDomainType;

// Translation of domain unique function bool
const unique vbool: PyTypeDomainType;

// Translation of domain unique function int
const unique vint: PyTypeDomainType;

// ==================================================
// Translation of function OTHER_GLOBAL_VAR
// ==================================================

// Uninterpreted function definitions
function  OTHER_GLOBAL_VAR(Heap: HeapType): Ref;
function  OTHER_GLOBAL_VAR'(Heap: HeapType): Ref;
axiom (forall Heap: HeapType ::
  { OTHER_GLOBAL_VAR(Heap) }
  OTHER_GLOBAL_VAR(Heap) == OTHER_GLOBAL_VAR'(Heap) && dummyFunction(OTHER_GLOBAL_VAR#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { OTHER_GLOBAL_VAR'(Heap) }
  dummyFunction(OTHER_GLOBAL_VAR#triggerStateless())
);

// Framing axioms
function  OTHER_GLOBAL_VAR#frame(frame: FrameType): Ref;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), OTHER_GLOBAL_VAR'(Heap) }
  state(Heap, Mask) ==> OTHER_GLOBAL_VAR'(Heap) == OTHER_GLOBAL_VAR#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  OTHER_GLOBAL_VAR#trigger(frame: FrameType): bool;

// State-independent trigger function
function  OTHER_GLOBAL_VAR#triggerStateless(): Ref;

// Check contract well-formedness and postcondition
procedure OTHER_GLOBAL_VAR#definedness() returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
}

// ==================================================
// Translation of function ANOTHER_GLOBAL_VAR
// ==================================================

// Uninterpreted function definitions
function  ANOTHER_GLOBAL_VAR(Heap: HeapType): Ref;
function  ANOTHER_GLOBAL_VAR'(Heap: HeapType): Ref;
axiom (forall Heap: HeapType ::
  { ANOTHER_GLOBAL_VAR(Heap) }
  ANOTHER_GLOBAL_VAR(Heap) == ANOTHER_GLOBAL_VAR'(Heap) && dummyFunction(ANOTHER_GLOBAL_VAR#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { ANOTHER_GLOBAL_VAR'(Heap) }
  dummyFunction(ANOTHER_GLOBAL_VAR#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), ANOTHER_GLOBAL_VAR(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ANOTHER_GLOBAL_VAR(Heap) == __prim__bool___box__(Heap, true)
);

// Framing axioms
function  ANOTHER_GLOBAL_VAR#frame(frame: FrameType): Ref;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), ANOTHER_GLOBAL_VAR'(Heap) }
  state(Heap, Mask) ==> ANOTHER_GLOBAL_VAR'(Heap) == ANOTHER_GLOBAL_VAR#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), ANOTHER_GLOBAL_VAR'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || ANOTHER_GLOBAL_VAR#trigger(EmptyFrame)) ==> (issubtype((typeof(ANOTHER_GLOBAL_VAR'(Heap)): PyTypeDomainType), vbool): bool)
);
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), ANOTHER_GLOBAL_VAR'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || ANOTHER_GLOBAL_VAR#trigger(EmptyFrame)) ==> ANOTHER_GLOBAL_VAR'(Heap) == __prim__bool___box__(Heap, true)
);

// Trigger function (controlling recursive postconditions)
function  ANOTHER_GLOBAL_VAR#trigger(frame: FrameType): bool;

// State-independent trigger function
function  ANOTHER_GLOBAL_VAR#triggerStateless(): Ref;

// Check contract well-formedness and postcondition
procedure ANOTHER_GLOBAL_VAR#definedness() returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of __prim__bool___box__(true)
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := __prim__bool___box__(Heap, true);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of ANOTHER_GLOBAL_VAR might not hold. Assertion issubtype(typeof(result), bool()) might not hold. (0267a.vpr@15.11--15.44) [202097]"}
      (issubtype((typeof(Result): PyTypeDomainType), vbool): bool);
    
    // -- Check definedness of result == __prim__bool___box__(true)
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Postcondition of ANOTHER_GLOBAL_VAR might not hold. Assertion result == __prim__bool___box__(true) might not hold. (0267a.vpr@16.11--16.47) [202098]"}
      Result == __prim__bool___box__(Heap, true);
}

// ==================================================
// Translation of function SO_MANY_GLOBAL_VARS
// ==================================================

// Uninterpreted function definitions
function  SO_MANY_GLOBAL_VARS(Heap: HeapType): Ref;
function  SO_MANY_GLOBAL_VARS'(Heap: HeapType): Ref;
axiom (forall Heap: HeapType ::
  { SO_MANY_GLOBAL_VARS(Heap) }
  SO_MANY_GLOBAL_VARS(Heap) == SO_MANY_GLOBAL_VARS'(Heap) && dummyFunction(SO_MANY_GLOBAL_VARS#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { SO_MANY_GLOBAL_VARS'(Heap) }
  dummyFunction(SO_MANY_GLOBAL_VARS#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), SO_MANY_GLOBAL_VARS(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> SO_MANY_GLOBAL_VARS(Heap) == (if bool___unbox__(Heap, ANOTHER_GLOBAL_VAR(Heap)) then OTHER_GLOBAL_VAR(Heap) else __prim__int___box__(Heap, 44))
);

// Framing axioms
function  SO_MANY_GLOBAL_VARS#frame(frame: FrameType): Ref;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), SO_MANY_GLOBAL_VARS'(Heap) }
  state(Heap, Mask) ==> SO_MANY_GLOBAL_VARS'(Heap) == SO_MANY_GLOBAL_VARS#frame(EmptyFrame)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), SO_MANY_GLOBAL_VARS'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || SO_MANY_GLOBAL_VARS#trigger(EmptyFrame)) ==> (issubtype((typeof(SO_MANY_GLOBAL_VARS'(Heap)): PyTypeDomainType), vint): bool)
);
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), SO_MANY_GLOBAL_VARS'(Heap) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || SO_MANY_GLOBAL_VARS#trigger(EmptyFrame)) ==> SO_MANY_GLOBAL_VARS'(Heap) == (if bool___unbox__(Heap, ANOTHER_GLOBAL_VAR(Heap)) then OTHER_GLOBAL_VAR(Heap) else __prim__int___box__(Heap, 44))
);

// Trigger function (controlling recursive postconditions)
function  SO_MANY_GLOBAL_VARS#trigger(frame: FrameType): bool;

// State-independent trigger function
function  SO_MANY_GLOBAL_VARS#triggerStateless(): Ref;

// Check contract well-formedness and postcondition
procedure SO_MANY_GLOBAL_VARS#definedness() returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (bool___unbox__(ANOTHER_GLOBAL_VAR()) ? OTHER_GLOBAL_VAR() : __prim__int___box__(44))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
      if (bool___unbox__(Heap, ANOTHER_GLOBAL_VAR(Heap))) {
        if (*) {
          // Stop execution
          assume false;
        }
      } else {
        if (*) {
          // Stop execution
          assume false;
        }
      }
  
  // -- Translate function body
    Result := (if bool___unbox__(Heap, ANOTHER_GLOBAL_VAR(Heap)) then OTHER_GLOBAL_VAR(Heap) else __prim__int___box__(Heap, 44));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of SO_MANY_GLOBAL_VARS might not hold. Assertion issubtype(typeof(result), int()) might not hold. (0267a.vpr@23.11--23.43) [202099]"}
      (issubtype((typeof(Result): PyTypeDomainType), vint): bool);
    
    // -- Check definedness of result == (bool___unbox__(ANOTHER_GLOBAL_VAR()) ? OTHER_GLOBAL_VAR() : __prim__int___box__(44))
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
      if (bool___unbox__(Heap, ANOTHER_GLOBAL_VAR(Heap))) {
        if (*) {
          // Stop execution
          assume false;
        }
      } else {
        if (*) {
          // Stop execution
          assume false;
        }
      }
    assert {:msg "  Postcondition of SO_MANY_GLOBAL_VARS might not hold. Assertion result == (bool___unbox__(ANOTHER_GLOBAL_VAR()) ? OTHER_GLOBAL_VAR() : __prim__int___box__(44)) might not hold. (0267a.vpr@24.11--24.106) [202100]"}
      Result == (if bool___unbox__(Heap, ANOTHER_GLOBAL_VAR(Heap)) then OTHER_GLOBAL_VAR(Heap) else __prim__int___box__(Heap, 44));
}

// ==================================================
// Translation of function __prim__int___box__
// ==================================================

// Uninterpreted function definitions
function  __prim__int___box__(Heap: HeapType, prim: int): Ref;
function  __prim__int___box__'(Heap: HeapType, prim: int): Ref;
axiom (forall Heap: HeapType, prim: int ::
  { __prim__int___box__(Heap, prim) }
  __prim__int___box__(Heap, prim) == __prim__int___box__'(Heap, prim) && dummyFunction(__prim__int___box__#triggerStateless(prim))
);
axiom (forall Heap: HeapType, prim: int ::
  { __prim__int___box__'(Heap, prim) }
  dummyFunction(__prim__int___box__#triggerStateless(prim))
);

// Framing axioms
function  __prim__int___box__#frame(frame: FrameType, prim: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, prim: int ::
  { state(Heap, Mask), __prim__int___box__'(Heap, prim) }
  state(Heap, Mask) ==> __prim__int___box__'(Heap, prim) == __prim__int___box__#frame(EmptyFrame, prim)
);

// Trigger function (controlling recursive postconditions)
function  __prim__int___box__#trigger(frame: FrameType, prim: int): bool;

// State-independent trigger function
function  __prim__int___box__#triggerStateless(prim: int): Ref;

// Check contract well-formedness and postcondition
procedure __prim__int___box__#definedness(prim: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
}

// ==================================================
// Translation of function int___unbox__
// ==================================================

// Uninterpreted function definitions
function  int___unbox__(Heap: HeapType, box_1: Ref): int;
function  int___unbox__'(Heap: HeapType, box_1: Ref): int;
axiom (forall Heap: HeapType, box_1: Ref ::
  { int___unbox__(Heap, box_1) }
  int___unbox__(Heap, box_1) == int___unbox__'(Heap, box_1) && dummyFunction(int___unbox__#triggerStateless(box_1))
);
axiom (forall Heap: HeapType, box_1: Ref ::
  { int___unbox__'(Heap, box_1) }
  dummyFunction(int___unbox__#triggerStateless(box_1))
);

// Framing axioms
function  int___unbox__#frame(frame: FrameType, box_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, box_1: Ref ::
  { state(Heap, Mask), int___unbox__'(Heap, box_1) }
  state(Heap, Mask) ==> int___unbox__'(Heap, box_1) == int___unbox__#frame(EmptyFrame, box_1)
);

// Trigger function (controlling recursive postconditions)
function  int___unbox__#trigger(frame: FrameType, box_1: Ref): bool;

// State-independent trigger function
function  int___unbox__#triggerStateless(box_1: Ref): int;

// Check contract well-formedness and postcondition
procedure int___unbox__#definedness(box_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[box_1, $allocated];
    assume AssumeFunctionsAbove == 6;
}

// ==================================================
// Translation of function __prim__bool___box__
// ==================================================

// Uninterpreted function definitions
function  __prim__bool___box__(Heap: HeapType, prim: bool): Ref;
function  __prim__bool___box__'(Heap: HeapType, prim: bool): Ref;
axiom (forall Heap: HeapType, prim: bool ::
  { __prim__bool___box__(Heap, prim) }
  __prim__bool___box__(Heap, prim) == __prim__bool___box__'(Heap, prim) && dummyFunction(__prim__bool___box__#triggerStateless(prim))
);
axiom (forall Heap: HeapType, prim: bool ::
  { __prim__bool___box__'(Heap, prim) }
  dummyFunction(__prim__bool___box__#triggerStateless(prim))
);

// Framing axioms
function  __prim__bool___box__#frame(frame: FrameType, prim: bool): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) ==> __prim__bool___box__'(Heap, prim) == __prim__bool___box__#frame(EmptyFrame, prim)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || __prim__bool___box__#trigger(EmptyFrame, prim)) ==> (typeof(__prim__bool___box__'(Heap, prim)): PyTypeDomainType) == vbool
);
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || __prim__bool___box__#trigger(EmptyFrame, prim)) ==> bool___unbox__(Heap, __prim__bool___box__'(Heap, prim)) == prim
);
axiom (forall Heap: HeapType, Mask: MaskType, prim: bool ::
  { state(Heap, Mask), __prim__bool___box__'(Heap, prim) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || __prim__bool___box__#trigger(EmptyFrame, prim)) ==> int___unbox__(Heap, __prim__bool___box__'(Heap, prim)) == (if prim then 1 else 0)
);

// Trigger function (controlling recursive postconditions)
function  __prim__bool___box__#trigger(frame: FrameType, prim: bool): bool;

// State-independent trigger function
function  __prim__bool___box__#triggerStateless(prim: bool): Ref;

// Check contract well-formedness and postcondition
procedure __prim__bool___box__#definedness(prim: bool) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Checking definedness of postcondition (no body)
    assume (typeof(Result): PyTypeDomainType) == vbool;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of bool___unbox__(result) == prim
      if (*) {
        // Stop execution
        assume false;
      }
    assume bool___unbox__(Heap, Result) == prim;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of int___unbox__(result) == (prim ? 1 : 0)
      if (*) {
        // Stop execution
        assume false;
      }
    assume int___unbox__(Heap, Result) == (if prim then 1 else 0);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function bool___unbox__
// ==================================================

// Uninterpreted function definitions
function  bool___unbox__(Heap: HeapType, box_1: Ref): bool;
function  bool___unbox__'(Heap: HeapType, box_1: Ref): bool;
axiom (forall Heap: HeapType, box_1: Ref ::
  { bool___unbox__(Heap, box_1) }
  bool___unbox__(Heap, box_1) == bool___unbox__'(Heap, box_1) && dummyFunction(bool___unbox__#triggerStateless(box_1))
);
axiom (forall Heap: HeapType, box_1: Ref ::
  { bool___unbox__'(Heap, box_1) }
  dummyFunction(bool___unbox__#triggerStateless(box_1))
);

// Framing axioms
function  bool___unbox__#frame(frame: FrameType, box_1: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, box_1: Ref ::
  { state(Heap, Mask), bool___unbox__'(Heap, box_1) }
  state(Heap, Mask) ==> bool___unbox__'(Heap, box_1) == bool___unbox__#frame(EmptyFrame, box_1)
);

// Trigger function (controlling recursive postconditions)
function  bool___unbox__#trigger(frame: FrameType, box_1: Ref): bool;

// State-independent trigger function
function  bool___unbox__#triggerStateless(box_1: Ref): bool;

// Check contract well-formedness and postcondition
procedure bool___unbox__#definedness(box_1: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[box_1, $allocated];
    assume AssumeFunctionsAbove == 5;
}