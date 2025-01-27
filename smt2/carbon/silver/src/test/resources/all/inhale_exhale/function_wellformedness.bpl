// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:13:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/inhale_exhale/function_wellformedness.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/inhale_exhale/function_wellformedness-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 28: t3
// - height 27: t6
// - height 26: t4Abstract
// - height 25: s0
// - height 24: s1
// - height 23: i1
// - height 22: e0Abstract
// - height 21: s2
// - height 20: ie0
// - height 19: s1Abstract
// - height 18: t1
// - height 17: t3Abstract
// - height 16: t6Abstract
// - height 15: i0
// - height 14: e1Abstract
// - height 13: t4
// - height 12: e1
// - height 11: t2Abstract
// - height 10: t5Abstract
// - height 9: t5
// - height 8: ie0Abstract
// - height 7: t2
// - height 6: e0
// - height 5: ie1
// - height 4: t1Abstract
// - height 3: s0Abstract
// - height 2: ie1Abstract
// - height 1: i1Abstract
// - height 0: i0Abstract
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
// Translation of function s0
// ==================================================

// Uninterpreted function definitions
function  s0_1(Heap: HeapType, this: Ref): int;
function  s0'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { s0_1(Heap, this) }
  s0_1(Heap, this) == s0'(Heap, this) && dummyFunction(s0#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { s0'(Heap, this) }
  dummyFunction(s0#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s0_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 25 ==> this != null && Heap[this, x_42] == 0 ==> s0_1(Heap, this) == 0
);

// Framing axioms
function  s0#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s0'(Heap, this) }
  state(Heap, Mask) ==> s0'(Heap, this) == s0#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  s0#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  s0#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure s0#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 25;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@13.12--13.39) [52023]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function s0Abstract
// ==================================================

// Uninterpreted function definitions
function  s0Abstract(Heap: HeapType, this: Ref): int;
function  s0Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { s0Abstract(Heap, this) }
  s0Abstract(Heap, this) == s0Abstract'(Heap, this) && dummyFunction(s0Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { s0Abstract'(Heap, this) }
  dummyFunction(s0Abstract#triggerStateless(this))
);

// Framing axioms
function  s0Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s0Abstract'(Heap, this) }
  state(Heap, Mask) ==> s0Abstract'(Heap, this) == s0Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  s0Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  s0Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure s0Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@20.12--20.39) [52024]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function s1
// ==================================================

// Uninterpreted function definitions
function  s1_1(Heap: HeapType, this: Ref): int;
function  s1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { s1_1(Heap, this) }
  s1_1(Heap, this) == s1'(Heap, this) && dummyFunction(s1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { s1'(Heap, this) }
  dummyFunction(s1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s1_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 24 ==> s1_1(Heap, this) == 0
);

// Framing axioms
function  s1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s1'(Heap, this) }
  state(Heap, Mask) ==> s1'(Heap, this) == s1#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s1'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 24 || s1#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  s1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  s1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure s1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 24;
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of s1 might not hold. Assertion this != null might not hold. (function_wellformedness.vpr@27.11--27.38) [52025]"}
      this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@27.11--27.38) [52026]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_42);
    assert {:msg "  Postcondition of s1 might not hold. Assertion this.x == 0 might not hold. (function_wellformedness.vpr@27.11--27.38) [52027]"}
      Heap[this, x_42] == 0;
}

// ==================================================
// Translation of function s1Abstract
// ==================================================

// Uninterpreted function definitions
function  s1Abstract(Heap: HeapType, this: Ref): int;
function  s1Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { s1Abstract(Heap, this) }
  s1Abstract(Heap, this) == s1Abstract'(Heap, this) && dummyFunction(s1Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { s1Abstract'(Heap, this) }
  dummyFunction(s1Abstract#triggerStateless(this))
);

// Framing axioms
function  s1Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s1Abstract'(Heap, this) }
  state(Heap, Mask) ==> s1Abstract'(Heap, this) == s1Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s1Abstract'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 19 || s1Abstract#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  s1Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  s1Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure s1Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 19;
  
  // -- Checking definedness of postcondition (no body)
    assume this != null;
    
    // -- Check definedness of this.x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@34.11--34.38) [52028]"}
        HasDirectPerm(Mask, this, x_42);
    assume Heap[this, x_42] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function s2
// ==================================================

// Uninterpreted function definitions
function  s2_1(Heap: HeapType, this: Ref): int;
function  s2'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { s2_1(Heap, this) }
  s2_1(Heap, this) == s2'(Heap, this) && dummyFunction(s2#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { s2'(Heap, this) }
  dummyFunction(s2#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s2_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 21 ==> this != null ==> s2_1(Heap, this) == Heap[this, x_42]
);

// Framing axioms
function  s2#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), s2'(Heap, this) }
  state(Heap, Mask) ==> s2'(Heap, this) == s2#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  s2#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  s2#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure s2#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 21;
  
  // -- Inhaling precondition (with checking)
    assume this != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@37.1--41.2) [52029]"}
        HasDirectPerm(Mask, this, x_42);
  
  // -- Translate function body
    Result := Heap[this, x_42];
}

// ==================================================
// Translation of function i0
// ==================================================

// Uninterpreted function definitions
function  i0_1(Heap: HeapType, this: Ref): int;
function  i0'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { i0_1(Heap, this) }
  i0_1(Heap, this) == i0'(Heap, this) && dummyFunction(i0#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { i0'(Heap, this) }
  dummyFunction(i0#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i0_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 15 ==> i0_1(Heap, this) == 0
);

// Framing axioms
function  i0#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i0'(Heap, this) }
  state(Heap, Mask) ==> i0'(Heap, this) == i0#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  i0#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  i0#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure i0#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 15;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@49.12--49.47) [52030]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function i0Abstract
// ==================================================

// Uninterpreted function definitions
function  i0Abstract(Heap: HeapType, this: Ref): int;
function  i0Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { i0Abstract(Heap, this) }
  i0Abstract(Heap, this) == i0Abstract'(Heap, this) && dummyFunction(i0Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { i0Abstract'(Heap, this) }
  dummyFunction(i0Abstract#triggerStateless(this))
);

// Framing axioms
function  i0Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i0Abstract'(Heap, this) }
  state(Heap, Mask) ==> i0Abstract'(Heap, this) == i0Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  i0Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  i0Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure i0Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@56.12--56.47) [52031]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function i1
// ==================================================

// Uninterpreted function definitions
function  i1_7(Heap: HeapType, this: Ref): int;
function  i1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { i1_7(Heap, this) }
  i1_7(Heap, this) == i1'(Heap, this) && dummyFunction(i1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { i1'(Heap, this) }
  dummyFunction(i1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i1_7(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 23 ==> i1_7(Heap, this) == 0
);

// Framing axioms
function  i1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i1'(Heap, this) }
  state(Heap, Mask) ==> i1'(Heap, this) == i1#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i1'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 23 || i1#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  i1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  i1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure i1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 23;
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@60.11--60.46) [52032]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
}

// ==================================================
// Translation of function i1Abstract
// ==================================================

// Uninterpreted function definitions
function  i1Abstract(Heap: HeapType, this: Ref): int;
function  i1Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { i1Abstract(Heap, this) }
  i1Abstract(Heap, this) == i1Abstract'(Heap, this) && dummyFunction(i1Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { i1Abstract'(Heap, this) }
  dummyFunction(i1Abstract#triggerStateless(this))
);

// Framing axioms
function  i1Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i1Abstract'(Heap, this) }
  state(Heap, Mask) ==> i1Abstract'(Heap, this) == i1Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), i1Abstract'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || i1Abstract#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  i1Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  i1Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure i1Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@67.11--67.46) [52033]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function e0
// ==================================================

// Uninterpreted function definitions
function  e0_1(Heap: HeapType, this: Ref): int;
function  e0'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { e0_1(Heap, this) }
  e0_1(Heap, this) == e0'(Heap, this) && dummyFunction(e0#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { e0'(Heap, this) }
  dummyFunction(e0#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), e0_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> this != null && Heap[this, x_42] == 0 ==> e0_1(Heap, this) == 0
);

// Framing axioms
function  e0#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), e0'(Heap, this) }
  state(Heap, Mask) ==> e0'(Heap, this) == e0#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  e0#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  e0#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure e0#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@75.12--75.47) [52034]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function e0Abstract
// ==================================================

// Uninterpreted function definitions
function  e0Abstract(Heap: HeapType, this: Ref): int;
function  e0Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { e0Abstract(Heap, this) }
  e0Abstract(Heap, this) == e0Abstract'(Heap, this) && dummyFunction(e0Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { e0Abstract'(Heap, this) }
  dummyFunction(e0Abstract#triggerStateless(this))
);

// Framing axioms
function  e0Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), e0Abstract'(Heap, this) }
  state(Heap, Mask) ==> e0Abstract'(Heap, this) == e0Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  e0Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  e0Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure e0Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 22;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@82.12--82.47) [52035]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function e1
// ==================================================

// Uninterpreted function definitions
function  e1_1(Heap: HeapType, this: Ref): int;
function  e1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { e1_1(Heap, this) }
  e1_1(Heap, this) == e1'(Heap, this) && dummyFunction(e1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { e1'(Heap, this) }
  dummyFunction(e1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), e1_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 12 ==> e1_1(Heap, this) == 0
);

// Framing axioms
function  e1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), e1'(Heap, this) }
  state(Heap, Mask) ==> e1'(Heap, this) == e1#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  e1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  e1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure e1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 12;
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Postcondition of e1 might not hold. Assertion this != null might not hold. (function_wellformedness.vpr@89.11--89.46) [52036]"}
        this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@89.11--89.46) [52037]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, x_42);
      assert {:msg "  Postcondition of e1 might not hold. Assertion this.x == 0 might not hold. (function_wellformedness.vpr@89.11--89.46) [52038]"}
        Heap[this, x_42] == 0;
}

// ==================================================
// Translation of function e1Abstract
// ==================================================

// Uninterpreted function definitions
function  e1Abstract(Heap: HeapType, this: Ref): int;
function  e1Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { e1Abstract(Heap, this) }
  e1Abstract(Heap, this) == e1Abstract'(Heap, this) && dummyFunction(e1Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { e1Abstract'(Heap, this) }
  dummyFunction(e1Abstract#triggerStateless(this))
);

// Framing axioms
function  e1Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), e1Abstract'(Heap, this) }
  state(Heap, Mask) ==> e1Abstract'(Heap, this) == e1Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  e1Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  e1Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure e1Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 14;
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@96.11--96.46) [52039]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function ie0
// ==================================================

// Uninterpreted function definitions
function  ie0_1(Heap: HeapType, this: Ref): int;
function  ie0'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { ie0_1(Heap, this) }
  ie0_1(Heap, this) == ie0'(Heap, this) && dummyFunction(ie0#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { ie0'(Heap, this) }
  dummyFunction(ie0#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie0_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 20 ==> this != null && Heap[this, x_42] == 0 ==> ie0_1(Heap, this) == 0
);

// Framing axioms
function  ie0#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie0'(Heap, this) }
  state(Heap, Mask) ==> ie0'(Heap, this) == ie0#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  ie0#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  ie0#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure ie0#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 20;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@104.12--104.70) [52040]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@104.12--104.70) [52041]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function ie0Abstract
// ==================================================

// Uninterpreted function definitions
function  ie0Abstract(Heap: HeapType, this: Ref): int;
function  ie0Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { ie0Abstract(Heap, this) }
  ie0Abstract(Heap, this) == ie0Abstract'(Heap, this) && dummyFunction(ie0Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { ie0Abstract'(Heap, this) }
  dummyFunction(ie0Abstract#triggerStateless(this))
);

// Framing axioms
function  ie0Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie0Abstract'(Heap, this) }
  state(Heap, Mask) ==> ie0Abstract'(Heap, this) == ie0Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  ie0Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  ie0Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure ie0Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@111.12--111.70) [52042]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@111.12--111.70) [52043]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function ie1
// ==================================================

// Uninterpreted function definitions
function  ie1_1(Heap: HeapType, this: Ref): int;
function  ie1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { ie1_1(Heap, this) }
  ie1_1(Heap, this) == ie1'(Heap, this) && dummyFunction(ie1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { ie1'(Heap, this) }
  dummyFunction(ie1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie1_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> ie1_1(Heap, this) == 0
);

// Framing axioms
function  ie1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie1'(Heap, this) }
  state(Heap, Mask) ==> ie1'(Heap, this) == ie1#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie1'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 5 || ie1#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  ie1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  ie1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure ie1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@118.11--118.69) [52044]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Postcondition of ie1 might not hold. Assertion this != null might not hold. (function_wellformedness.vpr@118.11--118.69) [52045]"}
        this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@118.11--118.69) [52046]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, x_42);
      assert {:msg "  Postcondition of ie1 might not hold. Assertion this.x == 0 might not hold. (function_wellformedness.vpr@118.11--118.69) [52047]"}
        Heap[this, x_42] == 0;
}

// ==================================================
// Translation of function ie1Abstract
// ==================================================

// Uninterpreted function definitions
function  ie1Abstract(Heap: HeapType, this: Ref): int;
function  ie1Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { ie1Abstract(Heap, this) }
  ie1Abstract(Heap, this) == ie1Abstract'(Heap, this) && dummyFunction(ie1Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { ie1Abstract'(Heap, this) }
  dummyFunction(ie1Abstract#triggerStateless(this))
);

// Framing axioms
function  ie1Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie1Abstract'(Heap, this) }
  state(Heap, Mask) ==> ie1Abstract'(Heap, this) == ie1Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), ie1Abstract'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || ie1Abstract#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  ie1Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  ie1Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure ie1Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@125.11--125.69) [52048]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@125.11--125.69) [52049]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function t1
// ==================================================

// Uninterpreted function definitions
function  t1_3(Heap: HeapType, this: Ref): int;
function  t1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t1_3(Heap, this) }
  t1_3(Heap, this) == t1'(Heap, this) && dummyFunction(t1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t1'(Heap, this) }
  dummyFunction(t1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t1_3(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 18 ==> this != null && Heap[this, x_42] == 0 ==> t1_3(Heap, this) == 0
);

// Framing axioms
function  t1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t1'(Heap, this) }
  state(Heap, Mask) ==> t1'(Heap, this) == t1#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  t1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 18;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@140.12--140.47) [52050]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function t1Abstract
// ==================================================

// Uninterpreted function definitions
function  t1Abstract(Heap: HeapType, this: Ref): int;
function  t1Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t1Abstract(Heap, this) }
  t1Abstract(Heap, this) == t1Abstract'(Heap, this) && dummyFunction(t1Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t1Abstract'(Heap, this) }
  dummyFunction(t1Abstract#triggerStateless(this))
);

// Framing axioms
function  t1Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t1Abstract'(Heap, this) }
  state(Heap, Mask) ==> t1Abstract'(Heap, this) == t1Abstract#frame(EmptyFrame, this)
);

// Trigger function (controlling recursive postconditions)
function  t1Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t1Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t1Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@148.12--148.47) [52051]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function t2
// ==================================================

// Uninterpreted function definitions
function  t2_3(Heap: HeapType, this: Ref): int;
function  t2'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t2_3(Heap, this) }
  t2_3(Heap, this) == t2'(Heap, this) && dummyFunction(t2#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t2'(Heap, this) }
  dummyFunction(t2#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t2_3(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> t2_3(Heap, this) == 0
);

// Framing axioms
function  t2#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t2'(Heap, this) }
  state(Heap, Mask) ==> t2'(Heap, this) == t2#frame(FrameFragment(Heap[this, x_42]), this)
);

// Trigger function (controlling recursive postconditions)
function  t2#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t2#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t2#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@159.12--159.47) [52052]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function t2Abstract
// ==================================================

// Uninterpreted function definitions
function  t2Abstract(Heap: HeapType, this: Ref): int;
function  t2Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t2Abstract(Heap, this) }
  t2Abstract(Heap, this) == t2Abstract'(Heap, this) && dummyFunction(t2Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t2Abstract'(Heap, this) }
  dummyFunction(t2Abstract#triggerStateless(this))
);

// Framing axioms
function  t2Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t2Abstract'(Heap, this) }
  state(Heap, Mask) ==> t2Abstract'(Heap, this) == t2Abstract#frame(FrameFragment(Heap[this, x_42]), this)
);

// Trigger function (controlling recursive postconditions)
function  t2Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t2Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t2Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 11;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@167.12--167.47) [52053]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function t3
// ==================================================

// Uninterpreted function definitions
function  t3_1(Heap: HeapType, this: Ref): int;
function  t3'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t3_1(Heap, this) }
  t3_1(Heap, this) == t3'(Heap, this) && dummyFunction(t3#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t3'(Heap, this) }
  dummyFunction(t3#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t3_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 28 ==> t3_1(Heap, this) == 0
);

// Framing axioms
function  t3#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t3'(Heap, this) }
  state(Heap, Mask) ==> t3'(Heap, this) == t3#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  t3#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t3#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t3#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 28;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@178.12--178.46) [52054]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Postcondition of t3 might not hold. Assertion this != null might not hold. (function_wellformedness.vpr@179.11--179.46) [52055]"}
        this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@179.11--179.46) [52056]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, x_42);
      assert {:msg "  Postcondition of t3 might not hold. Assertion this.x == 0 might not hold. (function_wellformedness.vpr@179.11--179.46) [52057]"}
        Heap[this, x_42] == 0;
}

// ==================================================
// Translation of function t3Abstract
// ==================================================

// Uninterpreted function definitions
function  t3Abstract(Heap: HeapType, this: Ref): int;
function  t3Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t3Abstract(Heap, this) }
  t3Abstract(Heap, this) == t3Abstract'(Heap, this) && dummyFunction(t3Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t3Abstract'(Heap, this) }
  dummyFunction(t3Abstract#triggerStateless(this))
);

// Framing axioms
function  t3Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t3Abstract'(Heap, this) }
  state(Heap, Mask) ==> t3Abstract'(Heap, this) == t3Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  t3Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t3Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t3Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 17;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@185.12--185.46) [52058]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@186.11--186.46) [52059]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function t4
// ==================================================

// Uninterpreted function definitions
function  t4_1(Heap: HeapType, this: Ref): int;
function  t4'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t4_1(Heap, this) }
  t4_1(Heap, this) == t4'(Heap, this) && dummyFunction(t4#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t4'(Heap, this) }
  dummyFunction(t4#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t4_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 13 ==> Heap[this, x_42] == 0 ==> t4_1(Heap, this) == 0
);

// Framing axioms
function  t4#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t4'(Heap, this) }
  state(Heap, Mask) ==> t4'(Heap, this) == t4#frame(FrameFragment(Heap[this, x_42]), this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  t4#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t4#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t4#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 13;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@197.12--197.46) [52060]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  Postcondition of t4 might not hold. Assertion this != null might not hold. (function_wellformedness.vpr@200.11--200.46) [52061]"}
        this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@200.11--200.46) [52062]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, x_42);
      assert {:msg "  Postcondition of t4 might not hold. Assertion this.x == 0 might not hold. (function_wellformedness.vpr@200.11--200.46) [52063]"}
        Heap[this, x_42] == 0;
}

// ==================================================
// Translation of function t4Abstract
// ==================================================

// Uninterpreted function definitions
function  t4Abstract(Heap: HeapType, this: Ref): int;
function  t4Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t4Abstract(Heap, this) }
  t4Abstract(Heap, this) == t4Abstract'(Heap, this) && dummyFunction(t4Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t4Abstract'(Heap, this) }
  dummyFunction(t4Abstract#triggerStateless(this))
);

// Framing axioms
function  t4Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t4Abstract'(Heap, this) }
  state(Heap, Mask) ==> t4Abstract'(Heap, this) == t4Abstract#frame(FrameFragment(Heap[this, x_42]), this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  t4Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t4Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t4Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 26;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@206.12--206.46) [52064]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume this != null;
      
      // -- Check definedness of this.x == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@208.11--208.46) [52065]"}
          HasDirectPerm(Mask, this, x_42);
      assume Heap[this, x_42] == 0;
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function t5
// ==================================================

// Uninterpreted function definitions
function  t5_1(Heap: HeapType, this: Ref): int;
function  t5'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t5_1(Heap, this) }
  t5_1(Heap, this) == t5'(Heap, this) && dummyFunction(t5#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t5'(Heap, this) }
  dummyFunction(t5#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t5_1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 9 ==> t5_1(Heap, this) == 0
);

// Framing axioms
function  t5#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t5'(Heap, this) }
  state(Heap, Mask) ==> t5'(Heap, this) == t5#frame(FrameFragment(Heap[this, x_42]), this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t5'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 9 || t5#trigger(FrameFragment(Heap[this, x_42]), this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  t5#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t5#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t5#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 9;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@221.11--221.46) [52066]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
}

// ==================================================
// Translation of function t5Abstract
// ==================================================

// Uninterpreted function definitions
function  t5Abstract(Heap: HeapType, this: Ref): int;
function  t5Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t5Abstract(Heap, this) }
  t5Abstract(Heap, this) == t5Abstract'(Heap, this) && dummyFunction(t5Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t5Abstract'(Heap, this) }
  dummyFunction(t5Abstract#triggerStateless(this))
);

// Framing axioms
function  t5Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t5Abstract'(Heap, this) }
  state(Heap, Mask) ==> t5Abstract'(Heap, this) == t5Abstract#frame(FrameFragment(Heap[this, x_42]), this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t5Abstract'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 10 || t5Abstract#trigger(FrameFragment(Heap[this, x_42]), this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  t5Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t5Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t5Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 10;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@229.11--229.46) [52067]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function t6
// ==================================================

// Uninterpreted function definitions
function  t6(Heap: HeapType, this: Ref): int;
function  t6'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t6(Heap, this) }
  t6(Heap, this) == t6'(Heap, this) && dummyFunction(t6#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t6'(Heap, this) }
  dummyFunction(t6#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t6(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 27 ==> t6(Heap, this) == 0
);

// Framing axioms
function  t6#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t6'(Heap, this) }
  state(Heap, Mask) ==> t6'(Heap, this) == t6#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t6'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 27 || t6#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  t6#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t6#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t6#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 27;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@241.11--241.46) [52068]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
}

// ==================================================
// Translation of function t6Abstract
// ==================================================

// Uninterpreted function definitions
function  t6Abstract(Heap: HeapType, this: Ref): int;
function  t6Abstract'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { t6Abstract(Heap, this) }
  t6Abstract(Heap, this) == t6Abstract'(Heap, this) && dummyFunction(t6Abstract#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { t6Abstract'(Heap, this) }
  dummyFunction(t6Abstract#triggerStateless(this))
);

// Framing axioms
function  t6Abstract#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t6Abstract'(Heap, this) }
  state(Heap, Mask) ==> t6Abstract'(Heap, this) == t6Abstract#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), t6Abstract'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 16 || t6Abstract#trigger(EmptyFrame, this)) ==> this != null && Heap[this, x_42] == 0
);

// Trigger function (controlling recursive postconditions)
function  t6Abstract#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  t6Abstract#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure t6Abstract#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 16;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_42:=Mask[this, x_42] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (function_wellformedness.vpr@248.11--248.46) [52069]"}
            HasDirectPerm(Mask, this, x_42);
        assume Heap[this, x_42] == 0;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Do welldefinedness check of the exhale part.
      assume state(Heap, Mask);
}