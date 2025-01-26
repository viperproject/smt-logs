// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0163.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0163-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 9: otherRef
// - height 8: helper
// - height 7: postInhale
// - height 6: onlyWorksWithInhale
// - height 5: onlyWorksWithInhale2
// - height 4: main
// - height 3: inhaleTrue
// - height 2: onlyWorksWithPreExhale
// - height 1: onlyWorksWithPreExhale2
// - height 0: main2
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

const unique x_42: Field NormalField int;
axiom !IsPredicateField(x_42);
axiom !IsWandField(x_42);

// ==================================================
// Translation of function inhaleTrue
// ==================================================

// Uninterpreted function definitions
function  inhaleTrue(Heap: HeapType, this: Ref): int;
function  inhaleTrue'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue(Heap, this) }
  inhaleTrue(Heap, this) == inhaleTrue'(Heap, this) && dummyFunction(inhaleTrue#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue'(Heap, this) }
  dummyFunction(inhaleTrue#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> inhaleTrue(Heap, this) == 0
);

// Framing axioms
function  inhaleTrue#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue'(Heap, this) }
  state(Heap, Mask) ==> inhaleTrue'(Heap, this) == inhaleTrue#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  inhaleTrue#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  inhaleTrue#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure inhaleTrue#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function onlyWorksWithInhale
// ==================================================

// Uninterpreted function definitions
function  onlyWorksWithInhale(Heap: HeapType, i: int): int;
function  onlyWorksWithInhale'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { onlyWorksWithInhale(Heap, i) }
  onlyWorksWithInhale(Heap, i) == onlyWorksWithInhale'(Heap, i) && dummyFunction(onlyWorksWithInhale#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { onlyWorksWithInhale'(Heap, i) }
  dummyFunction(onlyWorksWithInhale#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), onlyWorksWithInhale(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> onlyWorksWithInhale(Heap, i) == i
);

// Framing axioms
function  onlyWorksWithInhale#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), onlyWorksWithInhale'(Heap, i) }
  state(Heap, Mask) ==> onlyWorksWithInhale'(Heap, i) == onlyWorksWithInhale#frame(EmptyFrame, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), onlyWorksWithInhale'(Heap, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 6 || onlyWorksWithInhale#trigger(EmptyFrame, i)) ==> onlyWorksWithInhale'(Heap, i) > 17
);

// Trigger function (controlling recursive postconditions)
function  onlyWorksWithInhale#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  onlyWorksWithInhale#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure onlyWorksWithInhale#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume i > 17;
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := i;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of onlyWorksWithInhale might not hold. Assertion result > 17 might not hold. (0163.vpr@14.13--14.24) [64260]"}
      Result > 17;
}

// ==================================================
// Translation of function onlyWorksWithPreExhale
// ==================================================

// Uninterpreted function definitions
function  onlyWorksWithPreExhale(Heap: HeapType, i2: int): int;
function  onlyWorksWithPreExhale'(Heap: HeapType, i2: int): int;
axiom (forall Heap: HeapType, i2: int ::
  { onlyWorksWithPreExhale(Heap, i2) }
  onlyWorksWithPreExhale(Heap, i2) == onlyWorksWithPreExhale'(Heap, i2) && dummyFunction(onlyWorksWithPreExhale#triggerStateless(i2))
);
axiom (forall Heap: HeapType, i2: int ::
  { onlyWorksWithPreExhale'(Heap, i2) }
  dummyFunction(onlyWorksWithPreExhale#triggerStateless(i2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i2: int ::
  { state(Heap, Mask), onlyWorksWithPreExhale(Heap, i2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> onlyWorksWithPreExhale(Heap, i2) == onlyWorksWithInhale(Heap, i2)
);

// Framing axioms
function  onlyWorksWithPreExhale#frame(frame: FrameType, i2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i2: int ::
  { state(Heap, Mask), onlyWorksWithPreExhale'(Heap, i2) }
  state(Heap, Mask) ==> onlyWorksWithPreExhale'(Heap, i2) == onlyWorksWithPreExhale#frame(EmptyFrame, i2)
);

// Trigger function (controlling recursive postconditions)
function  onlyWorksWithPreExhale#trigger(frame: FrameType, i2: int): bool;

// State-independent trigger function
function  onlyWorksWithPreExhale#triggerStateless(i2: int): int;

// Check contract well-formedness and postcondition
procedure onlyWorksWithPreExhale#definedness(i2: int) returns (Result: int)
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
    
    // -- Check definedness of onlyWorksWithInhale(i2)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := onlyWorksWithInhale(Heap, i2);
}

// ==================================================
// Translation of function onlyWorksWithInhale2
// ==================================================

// Uninterpreted function definitions
function  onlyWorksWithInhale2(Heap: HeapType, i: int): int;
function  onlyWorksWithInhale2'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { onlyWorksWithInhale2(Heap, i) }
  onlyWorksWithInhale2(Heap, i) == onlyWorksWithInhale2'(Heap, i) && dummyFunction(onlyWorksWithInhale2#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { onlyWorksWithInhale2'(Heap, i) }
  dummyFunction(onlyWorksWithInhale2#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), onlyWorksWithInhale2(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> i > 17 ==> onlyWorksWithInhale2(Heap, i) == i
);

// Framing axioms
function  onlyWorksWithInhale2#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), onlyWorksWithInhale2'(Heap, i) }
  state(Heap, Mask) ==> onlyWorksWithInhale2'(Heap, i) == onlyWorksWithInhale2#frame(EmptyFrame, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), onlyWorksWithInhale2'(Heap, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 5 || onlyWorksWithInhale2#trigger(EmptyFrame, i)) ==> i > 17 ==> onlyWorksWithInhale2'(Heap, i) > 17
);

// Trigger function (controlling recursive postconditions)
function  onlyWorksWithInhale2#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  onlyWorksWithInhale2#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure onlyWorksWithInhale2#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume i > 17;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := i;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of onlyWorksWithInhale2 might not hold. Assertion result > 17 might not hold. (0163.vpr@27.13--27.24) [64261]"}
      Result > 17;
}

// ==================================================
// Translation of function onlyWorksWithPreExhale2
// ==================================================

// Uninterpreted function definitions
function  onlyWorksWithPreExhale2(Heap: HeapType, i2: int): int;
function  onlyWorksWithPreExhale2'(Heap: HeapType, i2: int): int;
axiom (forall Heap: HeapType, i2: int ::
  { onlyWorksWithPreExhale2(Heap, i2) }
  onlyWorksWithPreExhale2(Heap, i2) == onlyWorksWithPreExhale2'(Heap, i2) && dummyFunction(onlyWorksWithPreExhale2#triggerStateless(i2))
);
axiom (forall Heap: HeapType, i2: int ::
  { onlyWorksWithPreExhale2'(Heap, i2) }
  dummyFunction(onlyWorksWithPreExhale2#triggerStateless(i2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i2: int ::
  { state(Heap, Mask), onlyWorksWithPreExhale2(Heap, i2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> onlyWorksWithPreExhale2(Heap, i2) == onlyWorksWithInhale2(Heap, i2)
);

// Framing axioms
function  onlyWorksWithPreExhale2#frame(frame: FrameType, i2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i2: int ::
  { state(Heap, Mask), onlyWorksWithPreExhale2'(Heap, i2) }
  state(Heap, Mask) ==> onlyWorksWithPreExhale2'(Heap, i2) == onlyWorksWithPreExhale2#frame(EmptyFrame, i2)
);

// Trigger function (controlling recursive postconditions)
function  onlyWorksWithPreExhale2#trigger(frame: FrameType, i2: int): bool;

// State-independent trigger function
function  onlyWorksWithPreExhale2#triggerStateless(i2: int): int;

// Check contract well-formedness and postcondition
procedure onlyWorksWithPreExhale2#definedness(i2: int) returns (Result: int)
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
    
    // -- Check definedness of onlyWorksWithInhale2(i2)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function onlyWorksWithInhale2 might not hold. Assertion i2 > 17 might not hold. (0163.vpr@35.5--35.29) [64262]"}
          i2 > 17;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := onlyWorksWithInhale2(Heap, i2);
}

// ==================================================
// Translation of function helper
// ==================================================

// Uninterpreted function definitions
function  helper_1(Heap: HeapType, r_1: Ref): int;
function  helper'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { helper_1(Heap, r_1) }
  helper_1(Heap, r_1) == helper'(Heap, r_1) && dummyFunction(helper#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { helper'(Heap, r_1) }
  dummyFunction(helper#triggerStateless(r_1))
);

// Framing axioms
function  helper#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), helper'(Heap, r_1) }
  state(Heap, Mask) ==> helper'(Heap, r_1) == helper#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  helper#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  helper#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure helper#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 8;
}

// ==================================================
// Translation of function otherRef
// ==================================================

// Uninterpreted function definitions
function  otherRef(Heap: HeapType): Ref;
function  otherRef'(Heap: HeapType): Ref;
axiom (forall Heap: HeapType ::
  { otherRef(Heap) }
  otherRef(Heap) == otherRef'(Heap) && dummyFunction(otherRef#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { otherRef'(Heap) }
  dummyFunction(otherRef#triggerStateless())
);

// Framing axioms
function  otherRef#frame(frame: FrameType): Ref;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), otherRef'(Heap) }
  state(Heap, Mask) ==> otherRef'(Heap) == otherRef#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  otherRef#trigger(frame: FrameType): bool;

// State-independent trigger function
function  otherRef#triggerStateless(): Ref;

// Check contract well-formedness and postcondition
procedure otherRef#definedness() returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 9;
}

// ==================================================
// Translation of function postInhale
// ==================================================

// Uninterpreted function definitions
function  postInhale(Heap: HeapType, r_1: Ref): Ref;
function  postInhale'(Heap: HeapType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, r_1: Ref ::
  { postInhale(Heap, r_1) }
  postInhale(Heap, r_1) == postInhale'(Heap, r_1) && dummyFunction(postInhale#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { postInhale'(Heap, r_1) }
  dummyFunction(postInhale#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), postInhale(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> postInhale(Heap, r_1) == otherRef(Heap)
);

// Framing axioms
function  postInhale#frame(frame: FrameType, r_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), postInhale'(Heap, r_1) }
  state(Heap, Mask) ==> postInhale'(Heap, r_1) == postInhale#frame(EmptyFrame, r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), postInhale'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 7 || postInhale#trigger(EmptyFrame, r_1)) ==> helper_1(Heap, postInhale'(Heap, r_1)) == 2
);

// Trigger function (controlling recursive postconditions)
function  postInhale#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  postInhale#triggerStateless(r_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure postInhale#definedness(r_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Check definedness of function body
    
    // -- Check definedness of otherRef()
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := otherRef(Heap);
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of helper(result) == 2
          if (*) {
            // Stop execution
            assume false;
          }
        assume helper_1(Heap, Result) == 2;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
}

// ==================================================
// Translation of function main
// ==================================================

// Uninterpreted function definitions
function  main_1(Heap: HeapType, r2: Ref): Ref;
function  main'(Heap: HeapType, r2: Ref): Ref;
axiom (forall Heap: HeapType, r2: Ref ::
  { main_1(Heap, r2) }
  main_1(Heap, r2) == main'(Heap, r2) && dummyFunction(main#triggerStateless(r2))
);
axiom (forall Heap: HeapType, r2: Ref ::
  { main'(Heap, r2) }
  dummyFunction(main#triggerStateless(r2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r2: Ref ::
  { state(Heap, Mask), main_1(Heap, r2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> main_1(Heap, r2) == postInhale(Heap, r2)
);

// Framing axioms
function  main#frame(frame: FrameType, r2: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, r2: Ref ::
  { state(Heap, Mask), main'(Heap, r2) }
  state(Heap, Mask) ==> main'(Heap, r2) == main#frame(EmptyFrame, r2)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r2: Ref ::
  { state(Heap, Mask), main'(Heap, r2) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || main#trigger(EmptyFrame, r2)) ==> helper_1(Heap, main'(Heap, r2)) == 2
);

// Trigger function (controlling recursive postconditions)
function  main#trigger(frame: FrameType, r2: Ref): bool;

// State-independent trigger function
function  main#triggerStateless(r2: Ref): Ref;

// Check contract well-formedness and postcondition
procedure main#definedness(r2: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r2, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Check definedness of function body
    
    // -- Check definedness of postInhale(r2)
      if (*) {
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := postInhale(Heap, r2);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of helper(result) == 2
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Postcondition of main might not hold. Assertion helper(result) == 2 might not hold. (0163.vpr@49.13--49.32) [64263]"}
      helper_1(Heap, Result) == 2;
}

// ==================================================
// Translation of function main2
// ==================================================

// Uninterpreted function definitions
function  main2_1(Heap: HeapType, i3_1: int): int;
function  main2'(Heap: HeapType, i3_1: int): int;
axiom (forall Heap: HeapType, i3_1: int ::
  { main2_1(Heap, i3_1) }
  main2_1(Heap, i3_1) == main2'(Heap, i3_1) && dummyFunction(main2#triggerStateless(i3_1))
);
axiom (forall Heap: HeapType, i3_1: int ::
  { main2'(Heap, i3_1) }
  dummyFunction(main2#triggerStateless(i3_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i3_1: int ::
  { state(Heap, Mask), main2_1(Heap, i3_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> main2_1(Heap, i3_1) == onlyWorksWithInhale(Heap, i3_1)
);

// Framing axioms
function  main2#frame(frame: FrameType, i3_1: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i3_1: int ::
  { state(Heap, Mask), main2'(Heap, i3_1) }
  state(Heap, Mask) ==> main2'(Heap, i3_1) == main2#frame(EmptyFrame, i3_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, i3_1: int ::
  { state(Heap, Mask), main2'(Heap, i3_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || main2#trigger(EmptyFrame, i3_1)) ==> main2'(Heap, i3_1) > 17
);

// Trigger function (controlling recursive postconditions)
function  main2#trigger(frame: FrameType, i3_1: int): bool;

// State-independent trigger function
function  main2#triggerStateless(i3_1: int): int;

// Check contract well-formedness and postcondition
procedure main2#definedness(i3_1: int) returns (Result: int)
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
    
    // -- Check definedness of onlyWorksWithInhale(i3)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := onlyWorksWithInhale(Heap, i3_1);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of main2 might not hold. Assertion result > 17 might not hold. (0163.vpr@55.13--55.24) [64264]"}
      Result > 17;
}