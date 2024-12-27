// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:35:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/inhale_exhale/functions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/inhale_exhale/functions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 11: exhaleTrue2
// - height 10: inhaleTrue1
// - height 9: exhaleTrue3
// - height 8: inhaleExpression2
// - height 7: inhaleExpression1
// - height 6: inhaleTrue2
// - height 5: exhaleExpression3WithRequires
// - height 4: inhaleTrue3
// - height 3: exhaleTrue1
// - height 2: exhaleExpression2WithRequires
// - height 1: exhaleExpression1WithRequires
// - height 0: inhaleExpression3
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

const unique x_36: Field NormalField int;
axiom !IsPredicateField(x_36);
axiom !IsWandField(x_36);

// ==================================================
// Translation of function inhaleTrue1
// ==================================================

// Uninterpreted function definitions
function  inhaleTrue1(Heap: HeapType, this: Ref): int;
function  inhaleTrue1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue1(Heap, this) }
  inhaleTrue1(Heap, this) == inhaleTrue1'(Heap, this) && dummyFunction(inhaleTrue1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue1'(Heap, this) }
  dummyFunction(inhaleTrue1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 10 ==> Heap[this, x_36] == 1 ==> inhaleTrue1(Heap, this) == 0
);

// Framing axioms
function  inhaleTrue1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue1'(Heap, this) }
  state(Heap, Mask) ==> inhaleTrue1'(Heap, this) == inhaleTrue1#frame(FrameFragment(Heap[this, x_36]), this)
);

// Trigger function (controlling recursive postconditions)
function  inhaleTrue1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  inhaleTrue1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure inhaleTrue1#definedness(this: Ref) returns (Result: int)
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
        Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of this.x == 1
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@9.12--9.46) [188878]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 1;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function inhaleTrue2
// ==================================================

// Uninterpreted function definitions
function  inhaleTrue2(Heap: HeapType, this: Ref): int;
function  inhaleTrue2'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue2(Heap, this) }
  inhaleTrue2(Heap, this) == inhaleTrue2'(Heap, this) && dummyFunction(inhaleTrue2#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue2'(Heap, this) }
  dummyFunction(inhaleTrue2#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue2(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> Heap[this, x_36] == 1 ==> inhaleTrue2(Heap, this) == 0
);

// Framing axioms
function  inhaleTrue2#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue2'(Heap, this) }
  state(Heap, Mask) ==> inhaleTrue2'(Heap, this) == inhaleTrue2#frame(FrameFragment(Heap[this, x_36]), this)
);

// Trigger function (controlling recursive postconditions)
function  inhaleTrue2#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  inhaleTrue2#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure inhaleTrue2#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of this.x == 1
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@15.12--15.54) [188879]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 1;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function inhaleTrue3
// ==================================================

// Uninterpreted function definitions
function  inhaleTrue3(Heap: HeapType, this: Ref): int;
function  inhaleTrue3'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue3(Heap, this) }
  inhaleTrue3(Heap, this) == inhaleTrue3'(Heap, this) && dummyFunction(inhaleTrue3#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleTrue3'(Heap, this) }
  dummyFunction(inhaleTrue3#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue3(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> Heap[this, x_36] == 1 ==> inhaleTrue3(Heap, this) == 0
);

// Framing axioms
function  inhaleTrue3#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleTrue3'(Heap, this) }
  state(Heap, Mask) ==> inhaleTrue3'(Heap, this) == inhaleTrue3#frame(FrameFragment(Heap[this, x_36]), this)
);

// Trigger function (controlling recursive postconditions)
function  inhaleTrue3#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  inhaleTrue3#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure inhaleTrue3#definedness(this: Ref) returns (Result: int)
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
        perm := FullPerm;
        assume this != null;
        Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of this.x == 1
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@22.12--22.31) [188880]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 1;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      assume state(Heap, Mask);
      assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function inhaleExpression1
// ==================================================

// Uninterpreted function definitions
function  inhaleExpression1(Heap: HeapType, this: Ref): int;
function  inhaleExpression1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleExpression1(Heap, this) }
  inhaleExpression1(Heap, this) == inhaleExpression1'(Heap, this) && dummyFunction(inhaleExpression1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleExpression1'(Heap, this) }
  dummyFunction(inhaleExpression1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> inhaleExpression1(Heap, this) == Heap[this, x_36]
);

// Framing axioms
function  inhaleExpression1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression1'(Heap, this) }
  state(Heap, Mask) ==> inhaleExpression1'(Heap, this) == inhaleExpression1#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression1'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 7 || inhaleExpression1#trigger(EmptyFrame, this)) ==> inhaleExpression1'(Heap, this) == 1
);

// Trigger function (controlling recursive postconditions)
function  inhaleExpression1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  inhaleExpression1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure inhaleExpression1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of this.x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@45.12--45.46) [188881]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 1;
      assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@44.1--49.2) [188882]"}
        HasDirectPerm(Mask, this, x_36);
  
  // -- Translate function body
    Result := Heap[this, x_36];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of inhaleExpression1 might not hold. Assertion result == 1 might not hold. (functions.vpr@46.11--46.22) [188883]"}
      Result == 1;
}

// ==================================================
// Translation of function inhaleExpression2
// ==================================================

// Uninterpreted function definitions
function  inhaleExpression2(Heap: HeapType, this: Ref): int;
function  inhaleExpression2'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleExpression2(Heap, this) }
  inhaleExpression2(Heap, this) == inhaleExpression2'(Heap, this) && dummyFunction(inhaleExpression2#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleExpression2'(Heap, this) }
  dummyFunction(inhaleExpression2#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression2(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> inhaleExpression2(Heap, this) == Heap[this, x_36]
);

// Framing axioms
function  inhaleExpression2#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression2'(Heap, this) }
  state(Heap, Mask) ==> inhaleExpression2'(Heap, this) == inhaleExpression2#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression2'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 8 || inhaleExpression2#trigger(EmptyFrame, this)) ==> inhaleExpression2'(Heap, this) == 1
);

// Trigger function (controlling recursive postconditions)
function  inhaleExpression2#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  inhaleExpression2#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure inhaleExpression2#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    
    // -- Do welldefinedness check of the exhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of this.x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@52.12--52.54) [188884]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 1;
      assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@51.1--56.2) [188885]"}
        HasDirectPerm(Mask, this, x_36);
  
  // -- Translate function body
    Result := Heap[this, x_36];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of inhaleExpression2 might not hold. Assertion result == 1 might not hold. (functions.vpr@53.11--53.22) [188886]"}
      Result == 1;
}

// ==================================================
// Translation of function inhaleExpression3
// ==================================================

// Uninterpreted function definitions
function  inhaleExpression3(Heap: HeapType, this: Ref): int;
function  inhaleExpression3'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleExpression3(Heap, this) }
  inhaleExpression3(Heap, this) == inhaleExpression3'(Heap, this) && dummyFunction(inhaleExpression3#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { inhaleExpression3'(Heap, this) }
  dummyFunction(inhaleExpression3#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression3(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> inhaleExpression3(Heap, this) == Heap[this, x_36]
);

// Framing axioms
function  inhaleExpression3#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression3'(Heap, this) }
  state(Heap, Mask) ==> inhaleExpression3'(Heap, this) == inhaleExpression3#frame(EmptyFrame, this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), inhaleExpression3'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || inhaleExpression3#trigger(EmptyFrame, this)) ==> inhaleExpression3'(Heap, this) == 1
);

// Trigger function (controlling recursive postconditions)
function  inhaleExpression3#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  inhaleExpression3#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure inhaleExpression3#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally inhale the inhale part.
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of this.x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@60.12--60.31) [188887]"}
          HasDirectPerm(Mask, this, x_36);
      assume Heap[this, x_36] == 1;
      assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@58.1--64.2) [188888]"}
        HasDirectPerm(Mask, this, x_36);
  
  // -- Translate function body
    Result := Heap[this, x_36];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of inhaleExpression3 might not hold. Assertion result == 1 might not hold. (functions.vpr@61.11--61.22) [188889]"}
      Result == 1;
}

// ==================================================
// Translation of function exhaleTrue1
// ==================================================

// Uninterpreted function definitions
function  exhaleTrue1(Heap: HeapType, this: Ref): int;
function  exhaleTrue1'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleTrue1(Heap, this) }
  exhaleTrue1(Heap, this) == exhaleTrue1'(Heap, this) && dummyFunction(exhaleTrue1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleTrue1'(Heap, this) }
  dummyFunction(exhaleTrue1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue1(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> exhaleTrue1(Heap, this) == 0
);

// Framing axioms
function  exhaleTrue1#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue1'(Heap, this) }
  state(Heap, Mask) ==> exhaleTrue1'(Heap, this) == exhaleTrue1#frame(FrameFragment(Heap[this, x_36]), this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue1'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || exhaleTrue1#trigger(FrameFragment(Heap[this, x_36]), this)) ==> Heap[this, x_36] == 1
);

// Trigger function (controlling recursive postconditions)
function  exhaleTrue1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  exhaleTrue1#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure exhaleTrue1#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        
        // -- Check definedness of this.x == 1
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@73.11--73.30) [188890]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 1;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
}

// ==================================================
// Translation of function exhaleTrue2
// ==================================================

// Uninterpreted function definitions
function  exhaleTrue2(Heap: HeapType, this: Ref): int;
function  exhaleTrue2'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleTrue2(Heap, this) }
  exhaleTrue2(Heap, this) == exhaleTrue2'(Heap, this) && dummyFunction(exhaleTrue2#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleTrue2'(Heap, this) }
  dummyFunction(exhaleTrue2#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue2(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 11 ==> exhaleTrue2(Heap, this) == 0
);

// Framing axioms
function  exhaleTrue2#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue2'(Heap, this) }
  state(Heap, Mask) ==> exhaleTrue2'(Heap, this) == exhaleTrue2#frame(FrameFragment(Heap[this, x_36]), this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue2'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 11 || exhaleTrue2#trigger(FrameFragment(Heap[this, x_36]), this)) ==> this != null && Heap[this, x_36] == 1
);

// Trigger function (controlling recursive postconditions)
function  exhaleTrue2#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  exhaleTrue2#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure exhaleTrue2#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 11;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        
        // -- Check definedness of this.x == 1
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@80.11--80.54) [188891]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 1;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
}

// ==================================================
// Translation of function exhaleTrue3
// ==================================================

// Uninterpreted function definitions
function  exhaleTrue3(Heap: HeapType, this: Ref): int;
function  exhaleTrue3'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleTrue3(Heap, this) }
  exhaleTrue3(Heap, this) == exhaleTrue3'(Heap, this) && dummyFunction(exhaleTrue3#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleTrue3'(Heap, this) }
  dummyFunction(exhaleTrue3#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue3(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 9 ==> exhaleTrue3(Heap, this) == 0
);

// Framing axioms
function  exhaleTrue3#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue3'(Heap, this) }
  state(Heap, Mask) ==> exhaleTrue3'(Heap, this) == exhaleTrue3#frame(FrameFragment(Heap[this, x_36]), this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue3'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 9 || exhaleTrue3#trigger(FrameFragment(Heap[this, x_36]), this)) ==> this != null
);
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleTrue3'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 9 || exhaleTrue3#trigger(FrameFragment(Heap[this, x_36]), this)) ==> Heap[this, x_36] == 1
);

// Trigger function (controlling recursive postconditions)
function  exhaleTrue3#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  exhaleTrue3#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure exhaleTrue3#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 9;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume this != null;
        assume state(Heap, Mask);
        
        // -- Check definedness of this.x == 1
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@88.11--88.30) [188892]"}
            HasDirectPerm(Mask, this, x_36);
        assume Heap[this, x_36] == 1;
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
}

// ==================================================
// Translation of function exhaleExpression1WithRequires
// ==================================================

// Uninterpreted function definitions
function  exhaleExpression1WithRequires(Heap: HeapType, this: Ref): int;
function  exhaleExpression1WithRequires'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleExpression1WithRequires(Heap, this) }
  exhaleExpression1WithRequires(Heap, this) == exhaleExpression1WithRequires'(Heap, this) && dummyFunction(exhaleExpression1WithRequires#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleExpression1WithRequires'(Heap, this) }
  dummyFunction(exhaleExpression1WithRequires#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleExpression1WithRequires(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> Heap[this, x_36] == 1 ==> exhaleExpression1WithRequires(Heap, this) == Heap[this, x_36]
);

// Framing axioms
function  exhaleExpression1WithRequires#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleExpression1WithRequires'(Heap, this) }
  state(Heap, Mask) ==> exhaleExpression1WithRequires'(Heap, this) == exhaleExpression1WithRequires#frame(FrameFragment(Heap[this, x_36]), this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  exhaleExpression1WithRequires#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  exhaleExpression1WithRequires#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure exhaleExpression1WithRequires#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@101.12--101.38) [188893]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 1;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@100.1--105.2) [188894]"}
        HasDirectPerm(Mask, this, x_36);
  
  // -- Translate function body
    Result := Heap[this, x_36];
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      
      // -- Check definedness of this.x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@102.11--102.30) [188895]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
      assert {:msg "  Postcondition of exhaleExpression1WithRequires might not hold. Assertion this.x == 1 might not hold. (functions.vpr@102.11--102.30) [188896]"}
        Heap[this, x_36] == 1;
}

// ==================================================
// Translation of function exhaleExpression2WithRequires
// ==================================================

// Uninterpreted function definitions
function  exhaleExpression2WithRequires(Heap: HeapType, this: Ref): int;
function  exhaleExpression2WithRequires'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleExpression2WithRequires(Heap, this) }
  exhaleExpression2WithRequires(Heap, this) == exhaleExpression2WithRequires'(Heap, this) && dummyFunction(exhaleExpression2WithRequires#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleExpression2WithRequires'(Heap, this) }
  dummyFunction(exhaleExpression2WithRequires#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleExpression2WithRequires(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> Heap[this, x_36] == 1 ==> exhaleExpression2WithRequires(Heap, this) == Heap[this, x_36]
);

// Framing axioms
function  exhaleExpression2WithRequires#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleExpression2WithRequires'(Heap, this) }
  state(Heap, Mask) ==> exhaleExpression2WithRequires'(Heap, this) == exhaleExpression2WithRequires#frame(FrameFragment(Heap[this, x_36]), this)
);

// Postcondition axioms
axiom true;

// Trigger function (controlling recursive postconditions)
function  exhaleExpression2WithRequires#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  exhaleExpression2WithRequires#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure exhaleExpression2WithRequires#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@108.12--108.38) [188897]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 1;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@107.1--112.2) [188898]"}
        HasDirectPerm(Mask, this, x_36);
  
  // -- Translate function body
    Result := Heap[this, x_36];
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  Postcondition of exhaleExpression2WithRequires might not hold. Assertion this != null might not hold. (functions.vpr@109.11--109.54) [188899]"}
        this != null;
      
      // -- Check definedness of this.x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@109.11--109.54) [188900]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
      assert {:msg "  Postcondition of exhaleExpression2WithRequires might not hold. Assertion this.x == 1 might not hold. (functions.vpr@109.11--109.54) [188901]"}
        Heap[this, x_36] == 1;
}

// ==================================================
// Translation of function exhaleExpression3WithRequires
// ==================================================

// Uninterpreted function definitions
function  exhaleExpression3WithRequires(Heap: HeapType, this: Ref): int;
function  exhaleExpression3WithRequires'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleExpression3WithRequires(Heap, this) }
  exhaleExpression3WithRequires(Heap, this) == exhaleExpression3WithRequires'(Heap, this) && dummyFunction(exhaleExpression3WithRequires#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { exhaleExpression3WithRequires'(Heap, this) }
  dummyFunction(exhaleExpression3WithRequires#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleExpression3WithRequires(Heap, this) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> Heap[this, x_36] == 1 ==> exhaleExpression3WithRequires(Heap, this) == Heap[this, x_36]
);

// Framing axioms
function  exhaleExpression3WithRequires#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), exhaleExpression3WithRequires'(Heap, this) }
  state(Heap, Mask) ==> exhaleExpression3WithRequires'(Heap, this) == exhaleExpression3WithRequires#frame(FrameFragment(Heap[this, x_36]), this)
);

// Postcondition axioms
axiom true;
axiom true;

// Trigger function (controlling recursive postconditions)
function  exhaleExpression3WithRequires#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  exhaleExpression3WithRequires#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure exhaleExpression3WithRequires#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@115.12--115.38) [188902]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 1;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of this.x
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@114.1--120.2) [188903]"}
        HasDirectPerm(Mask, this, x_36);
  
  // -- Translate function body
    Result := Heap[this, x_36];
  
  // -- Exhaling postcondition (with checking)
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Normally exhale the exhale part.
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  Postcondition of exhaleExpression3WithRequires might not hold. Assertion this != null might not hold. (functions.vpr@116.11--116.31) [188904]"}
        this != null;
      
      // -- Check definedness of this.x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@117.11--117.30) [188905]"}
          HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
      assert {:msg "  Postcondition of exhaleExpression3WithRequires might not hold. Assertion this.x == 1 might not hold. (functions.vpr@117.11--117.30) [188906]"}
        Heap[this, x_36] == 1;
}

// ==================================================
// Translation of method inhaleTrue1Method1
// ==================================================

procedure inhaleTrue1Method1(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert inhaleTrue1(this) == 0 -- functions.vpr@32.3--32.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of inhaleTrue1(this) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function inhaleTrue1 might not hold. There might be insufficient permission to access this.x (functions.vpr@32.10--32.27) [188907]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[this, x_36];
        assert {:msg "  Precondition of function inhaleTrue1 might not hold. Assertion this.x == 1 might not hold. (functions.vpr@32.10--32.27) [188908]"}
          ExhaleWellDef0Heap[this, x_36] == 1;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion inhaleTrue1(this) == 0 might not hold. (functions.vpr@32.10--32.32) [188909]"}
      inhaleTrue1(Heap, this) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method inhaleTrue1Method2
// ==================================================

procedure inhaleTrue1Method2(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@36.12--36.38) [188910]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert inhaleTrue1(this) == 0 -- functions.vpr@38.3--38.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of inhaleTrue1(this) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function inhaleTrue1 might not hold. There might be insufficient permission to access this.x (functions.vpr@38.10--38.27) [188911]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[this, x_36];
        assert {:msg "  Precondition of function inhaleTrue1 might not hold. Assertion this.x == 1 might not hold. (functions.vpr@38.10--38.27) [188912]"}
          ExhaleWellDef0Heap[this, x_36] == 1;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion inhaleTrue1(this) == 0 might not hold. (functions.vpr@38.10--38.32) [188913]"}
      inhaleTrue1(Heap, this) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(this.x, write) && this.x == 1 -- functions.vpr@39.3--39.36
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.x (functions.vpr@39.10--39.36) [188915]"}
        perm <= AssertMask[this, x_36];
    }
    AssertMask := AssertMask[this, x_36:=AssertMask[this, x_36] - perm];
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.x (functions.vpr@39.10--39.36) [188916]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Assert might fail. Assertion this.x == 1 might not hold. (functions.vpr@39.10--39.36) [188917]"}
      AssertHeap[this, x_36] == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale inhaleTrue1(this) == 0 -- functions.vpr@40.3--40.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of inhaleTrue1(this) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function inhaleTrue1 might not hold. There might be insufficient permission to access this.x (functions.vpr@40.10--40.27) [188918]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[this, x_36];
        assert {:msg "  Precondition of function inhaleTrue1 might not hold. Assertion this.x == 1 might not hold. (functions.vpr@40.10--40.27) [188919]"}
          ExhaleWellDef0Heap[this, x_36] == 1;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion inhaleTrue1(this) == 0 might not hold. (functions.vpr@40.10--40.32) [188920]"}
      inhaleTrue1(Heap, this) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(this.x, write) && this.x == 1 -- functions.vpr@41.3--41.36
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.x (functions.vpr@41.10--41.36) [188922]"}
        perm <= AssertMask[this, x_36];
    }
    AssertMask := AssertMask[this, x_36:=AssertMask[this, x_36] - perm];
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.x (functions.vpr@41.10--41.36) [188923]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Assert might fail. Assertion this.x == 1 might not hold. (functions.vpr@41.10--41.36) [188924]"}
      AssertHeap[this, x_36] == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method inhaleExpression1Method
// ==================================================

procedure inhaleExpression1Method(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert inhaleExpression1(this) == 1 -- functions.vpr@68.3--68.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of inhaleExpression1(this) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion inhaleExpression1(this) == 1 might not hold. (functions.vpr@68.10--68.38) [188925]"}
      inhaleExpression1(Heap, this) == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method exhaleTrue1Method
// ==================================================

procedure exhaleTrue1Method(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert exhaleTrue1(this) == 0 -- functions.vpr@96.3--96.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of exhaleTrue1(this) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function exhaleTrue1 might not hold. There might be insufficient permission to access this.x (functions.vpr@96.10--96.27) [188926]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[this, x_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion exhaleTrue1(this) == 0 might not hold. (functions.vpr@96.10--96.32) [188927]"}
      exhaleTrue1(Heap, this) == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert this.x == 1 -- functions.vpr@97.3--97.21
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.x (functions.vpr@97.10--97.21) [188928]"}
        HasDirectPerm(ExhaleWellDef0Mask, this, x_36);
    assert {:msg "  Assert might fail. Assertion this.x == 1 might not hold. (functions.vpr@97.10--97.21) [188929]"}
      Heap[this, x_36] == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method exhaleExpression1WithRequiresMethod
// ==================================================

procedure exhaleExpression1WithRequiresMethod(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.x == 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.x (functions.vpr@123.12--123.38) [188930]"}
        HasDirectPerm(Mask, this, x_36);
    assume Heap[this, x_36] == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert exhaleExpression1WithRequires(this) == 1 -- functions.vpr@125.3--125.50
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of exhaleExpression1WithRequires(this) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function exhaleExpression1WithRequires might not hold. There might be insufficient permission to access this.x (functions.vpr@125.10--125.45) [188931]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[this, x_36];
        assert {:msg "  Precondition of function exhaleExpression1WithRequires might not hold. Assertion this.x == 1 might not hold. (functions.vpr@125.10--125.45) [188932]"}
          ExhaleWellDef0Heap[this, x_36] == 1;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion exhaleExpression1WithRequires(this) == 1 might not hold. (functions.vpr@125.10--125.50) [188933]"}
      exhaleExpression1WithRequires(Heap, this) == 1;
    assume state(Heap, Mask);
}