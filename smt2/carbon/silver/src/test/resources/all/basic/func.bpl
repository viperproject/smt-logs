// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:34:43
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/func.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/func-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 6: f1
// - height 5: f3
// - height 4: f2
// - height 3: f8
// - height 2: f4
// - height 1: f7, f6
// - height 0: f5
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
// Translation of function f1
// ==================================================

// Uninterpreted function definitions
function  f1_3(Heap: HeapType): int;
function  f1'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { f1_3(Heap) }
  f1_3(Heap) == f1'(Heap) && dummyFunction(f1#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { f1'(Heap) }
  dummyFunction(f1#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f1_3(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> f1_3(Heap) == 1
);

// Framing axioms
function  f1#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f1'(Heap) }
  state(Heap, Mask) ==> f1'(Heap) == f1#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  f1#trigger(frame: FrameType): bool;

// State-independent trigger function
function  f1#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure f1#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function f2
// ==================================================

// Uninterpreted function definitions
function  f2_3(Heap: HeapType): int;
function  f2'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { f2_3(Heap) }
  f2_3(Heap) == f2'(Heap) && dummyFunction(f2#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { f2'(Heap) }
  dummyFunction(f2#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f2_3(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> f1_3(Heap) > 0 ==> f2_3(Heap) == 2
);

// Framing axioms
function  f2#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f2'(Heap) }
  state(Heap, Mask) ==> f2'(Heap) == f2#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  f2#trigger(frame: FrameType): bool;

// State-independent trigger function
function  f2#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure f2#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume state(Heap, Mask);
    
    // -- Check definedness of f1() > 0
      if (*) {
        // Stop execution
        assume false;
      }
    assume f1_3(Heap) > 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 2;
}

// ==================================================
// Translation of function f3
// ==================================================

// Uninterpreted function definitions
function  f3_2(Heap: HeapType, i: int): int;
function  f3'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { f3_2(Heap, i) }
  f3_2(Heap, i) == f3'(Heap, i) && dummyFunction(f3#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { f3'(Heap, i) }
  dummyFunction(f3#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f3_2(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> f3_2(Heap, i) == i
);

// Framing axioms
function  f3#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), f3'(Heap, i) }
  state(Heap, Mask) ==> f3'(Heap, i) == f3#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  f3#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  f3#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure f3#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Translate function body
    Result := i;
}

// ==================================================
// Translation of function f4
// ==================================================

// Uninterpreted function definitions
function  f4_1(Heap: HeapType): int;
function  f4'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { f4_1(Heap) }
  f4_1(Heap) == f4'(Heap) && dummyFunction(f4#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { f4'(Heap) }
  dummyFunction(f4#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f4_1(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> f4_1(Heap) == f1_3(Heap) + f2_3(Heap)
);

// Framing axioms
function  f4#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f4'(Heap) }
  state(Heap, Mask) ==> f4'(Heap) == f4#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  f4#trigger(frame: FrameType): bool;

// State-independent trigger function
function  f4#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure f4#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of f1() + f2()
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function f2 might not hold. Assertion f1() > 0 might not hold. (func.vpr@14.29--14.33) [188195]"}
          f1_3(Heap) > 0;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := f1_3(Heap) + f2_3(Heap);
}

// ==================================================
// Translation of function f5
// ==================================================

// Uninterpreted function definitions
function  f5_1(Heap: HeapType, i: int, b_24: bool): int;
function  f5'(Heap: HeapType, i: int, b_24: bool): int;
axiom (forall Heap: HeapType, i: int, b_24: bool ::
  { f5_1(Heap, i, b_24) }
  f5_1(Heap, i, b_24) == f5'(Heap, i, b_24) && dummyFunction(f5#triggerStateless(i, b_24))
);
axiom (forall Heap: HeapType, i: int, b_24: bool ::
  { f5'(Heap, i, b_24) }
  dummyFunction(f5#triggerStateless(i, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, b_24: bool ::
  { state(Heap, Mask), f5_1(Heap, i, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> f5_1(Heap, i, b_24) == (if b_24 then f5'(Heap, 2 * i, false) else i)
);

// Framing axioms
function  f5#frame(frame: FrameType, i: int, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, b_24: bool ::
  { state(Heap, Mask), f5'(Heap, i, b_24) }
  state(Heap, Mask) ==> f5'(Heap, i, b_24) == f5#frame(EmptyFrame, i, b_24)
);

// Trigger function (controlling recursive postconditions)
function  f5#trigger(frame: FrameType, i: int, b_24: bool): bool;

// State-independent trigger function
function  f5#triggerStateless(i: int, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure f5#definedness(i: int, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (b ? f5(2 * i, false) : i)
      if (b_24) {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume f5#trigger(EmptyFrame, 2 * i, false);
        }
      }
  
  // -- Translate function body
    Result := (if b_24 then f5_1(Heap, 2 * i, false) else i);
}

// ==================================================
// Translation of function f6
// ==================================================

// Uninterpreted function definitions
function  f6_1(Heap: HeapType): int;
function  f6'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { f6_1(Heap) }
  f6_1(Heap) == f6'(Heap) && dummyFunction(f6#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { f6'(Heap) }
  dummyFunction(f6#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f6_1(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> f6_1(Heap) == f7'(Heap)
);

// Framing axioms
function  f6#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f6'(Heap) }
  state(Heap, Mask) ==> f6'(Heap) == f6#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  f6#trigger(frame: FrameType): bool;

// State-independent trigger function
function  f6#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure f6#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of f7()
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := f7(Heap);
}

// ==================================================
// Translation of function f7
// ==================================================

// Uninterpreted function definitions
function  f7(Heap: HeapType): int;
function  f7'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { f7(Heap) }
  f7(Heap) == f7'(Heap) && dummyFunction(f7#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { f7'(Heap) }
  dummyFunction(f7#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f7(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> f7(Heap) == f6'(Heap)
);

// Framing axioms
function  f7#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f7'(Heap) }
  state(Heap, Mask) ==> f7'(Heap) == f7#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  f7#trigger(frame: FrameType): bool;

// State-independent trigger function
function  f7#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure f7#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Check definedness of function body
    
    // -- Check definedness of f6()
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := f6_1(Heap);
}

// ==================================================
// Translation of function f8
// ==================================================

// Uninterpreted function definitions
function  f8(Heap: HeapType): int;
function  f8'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { f8(Heap) }
  f8(Heap) == f8'(Heap) && dummyFunction(f8#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { f8'(Heap) }
  dummyFunction(f8#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f8(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> f8(Heap) == f3_2(Heap, f1_3(Heap))
);

// Framing axioms
function  f8#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), f8'(Heap) }
  state(Heap, Mask) ==> f8'(Heap) == f8#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  f8#trigger(frame: FrameType): bool;

// State-independent trigger function
function  f8#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure f8#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Check definedness of function body
    
    // -- Check definedness of f3(f1())
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := f3_2(Heap, f1_3(Heap));
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(b_24: bool, d: int, r_1: Ref) returns ()
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
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert f1() == 1 -- func.vpr@25.5--25.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of f1() == 1
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion f1() == 1 might not hold. (func.vpr@25.12--25.21) [188196]"}
      f1_3(Heap) == 1;
    assume state(Heap, Mask);
}