// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:12:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/asserting/simple-fail.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/asserting/simple-fail-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 3: fun2
// - height 2: fun
// - height 1: fun4
// - height 0: fun3
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
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType): int;
function  fun'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { fun(Heap) }
  fun(Heap) == fun'(Heap) && dummyFunction(fun#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { fun'(Heap) }
  dummyFunction(fun#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun(Heap) == 0
);

// Framing axioms
function  fun#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), fun'(Heap) }
  state(Heap, Mask) ==> fun'(Heap) == fun#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType): bool;

// State-independent trigger function
function  fun#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure fun#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (asserting (false) in 0)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      assert {:msg "  Function might not be well-formed. Assertion false might not hold. (simple-fail.vpr@44.1--47.2) [153387]"}
        false;
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, x: Ref): int;
function  fun2'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun2(Heap, x) }
  fun2(Heap, x) == fun2'(Heap, x) && dummyFunction(fun2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun2'(Heap, x) }
  dummyFunction(fun2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun2(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> fun2(Heap, x) == 0
);

// Framing axioms
function  fun2#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun2'(Heap, x) }
  state(Heap, Mask) ==> fun2'(Heap, x) == fun2#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (asserting (acc(x.f, write) && x.f > 0) in 0)
      
      // -- Check definedness of acc(x.f, write) && x.f > 0
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@50.1--53.2) [153388]"}
          HasDirectPerm(Mask, x, f_7);
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@50.1--53.2) [153389]"}
        NoPerm < perm ==> NoPerm < assertingMask[x, f_7];
      
      // -- Check definedness of x.f > 0
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@50.1--53.2) [153390]"}
          HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. Assertion x.f > 0 might not hold. (simple-fail.vpr@50.1--53.2) [153391]"}
        assertingHeap[x, f_7] > 0;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(assertingHeap, ExhaleHeap, assertingMask);
      assertingHeap := ExhaleHeap;
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function fun3
// ==================================================

// Uninterpreted function definitions
function  fun3(Heap: HeapType, x: Ref): int;
function  fun3'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun3(Heap, x) }
  fun3(Heap, x) == fun3'(Heap, x) && dummyFunction(fun3#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun3'(Heap, x) }
  dummyFunction(fun3#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun3(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun3(Heap, x) == 0
);

// Framing axioms
function  fun3#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun3'(Heap, x) }
  state(Heap, Mask) ==> fun3'(Heap, x) == fun3#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  fun3#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun3#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun3#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
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
    
    // -- Check definedness of (asserting (acc(x.f, write) && x.f > 0) in 0)
      
      // -- Check definedness of acc(x.f, write) && x.f > 0
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@56.1--60.2) [153392]"}
          HasDirectPerm(Mask, x, f_7);
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@56.1--60.2) [153393]"}
        NoPerm < perm ==> NoPerm < assertingMask[x, f_7];
      
      // -- Check definedness of x.f > 0
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@56.1--60.2) [153394]"}
          HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. Assertion x.f > 0 might not hold. (simple-fail.vpr@56.1--60.2) [153395]"}
        assertingHeap[x, f_7] > 0;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(assertingHeap, ExhaleHeap, assertingMask);
      assertingHeap := ExhaleHeap;
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function fun4
// ==================================================

// Uninterpreted function definitions
function  fun4(Heap: HeapType, x: Ref): int;
function  fun4'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun4(Heap, x) }
  fun4(Heap, x) == fun4'(Heap, x) && dummyFunction(fun4#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun4'(Heap, x) }
  dummyFunction(fun4#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun4(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> Heap[x, f_7] > 8 ==> fun4(Heap, x) == 0
);

// Framing axioms
function  fun4#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun4'(Heap, x) }
  state(Heap, Mask) ==> fun4'(Heap, x) == fun4#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  fun4#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun4#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun4#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f > 8
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@63.12--63.31) [153396]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 8;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (asserting (acc(x.f, write) && x.f > 0) in 0)
      
      // -- Check definedness of acc(x.f, write) && x.f > 0
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@62.1--66.2) [153397]"}
          HasDirectPerm(Mask, x, f_7);
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@62.1--66.2) [153398]"}
        NoPerm < perm ==> NoPerm < assertingMask[x, f_7];
      
      // -- Check definedness of x.f > 0
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@62.1--66.2) [153399]"}
          HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. Assertion x.f > 0 might not hold. (simple-fail.vpr@62.1--66.2) [153400]"}
        assertingHeap[x, f_7] > 0;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(assertingHeap, ExhaleHeap, assertingMask);
      assertingHeap := ExhaleHeap;
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of method assign
// ==================================================

procedure assign() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := (asserting (false) in
  //     0) -- simple-fail.vpr@8.3--8.39
    
    // -- Check definedness of (asserting (false) in 0)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      assert {:msg "  Assignment might fail. Assertion false might not hold. (simple-fail.vpr@8.3--8.39) [153401]"}
        false;
    x := 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method assign2
// ==================================================

procedure assign2(i: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := (asserting (i > 0) in
  //     0) -- simple-fail.vpr@13.3--13.39
    
    // -- Check definedness of (asserting (i > 0) in 0)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      assert {:msg "  Assignment might fail. Assertion i > 0 might not hold. (simple-fail.vpr@13.3--13.39) [153402]"}
        i > 0;
    x := 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method assign3
// ==================================================

procedure assign3(i: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume i > 5;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := (asserting (i > 0) in
  //     0) -- simple-fail.vpr@19.3--19.39
    
    // -- Check definedness of (asserting (i > 0) in 0)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      assert {:msg "  Assignment might fail. Assertion i > 0 might not hold. (simple-fail.vpr@19.3--19.39) [153403]"}
        i > 0;
    x := 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method pres
// ==================================================

procedure pres() returns ()
  modifies Heap, Mask;
{
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (asserting (false) in false)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      assert {:msg "  Contract might not be well-formed. Assertion false might not hold. (simple-fail.vpr@24.12--24.38) [153404]"}
        false;
    assume false;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert false -- simple-fail.vpr@26.3--26.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (simple-fail.vpr@26.10--26.15) [153405]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method pres2
// ==================================================

procedure pres2(x: Ref) returns ()
  modifies Heap, Mask;
{
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (asserting (acc(x.f, write)) in false)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@31.12--31.41) [153406]"}
          perm <= assertingMask[x, f_7];
      }
      assertingMask := assertingMask[x, f_7:=assertingMask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(assertingHeap, ExhaleHeap, assertingMask);
      assertingHeap := ExhaleHeap;
    assume false;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert false -- simple-fail.vpr@33.3--33.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (simple-fail.vpr@33.10--33.15) [153407]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method pres3
// ==================================================

procedure pres3(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (asserting (acc(x.f, write)) in false)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (simple-fail.vpr@38.12--38.41) [153408]"}
          perm <= assertingMask[x, f_7];
      }
      assertingMask := assertingMask[x, f_7:=assertingMask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(assertingHeap, ExhaleHeap, assertingMask);
      assertingHeap := ExhaleHeap;
    assume false;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert false -- simple-fail.vpr@40.3--40.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (simple-fail.vpr@40.10--40.15) [153409]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method stateUnchanged
// ==================================================

procedure stateUnchanged(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var assertingHeap: HeapType;
  var assertingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var y: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: y := (asserting (acc(x.f, write)) in
  //     x.f) -- simple-fail.vpr@71.3--71.44
    
    // -- Check definedness of (asserting (acc(x.f, write)) in x.f)
      assertingHeap := Heap;
      assertingMask := Mask;
      // Exhale assertion of asserting
      ExhaleWellDef0Heap := assertingHeap;
      ExhaleWellDef0Mask := assertingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (simple-fail.vpr@71.3--71.44) [153410]"}
          perm <= assertingMask[x, f_7];
      }
      assertingMask := assertingMask[x, f_7:=assertingMask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(assertingHeap, ExhaleHeap, assertingMask);
      assertingHeap := ExhaleHeap;
      
      // -- Check definedness of x.f
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (simple-fail.vpr@71.3--71.44) [153411]"}
          HasDirectPerm(Mask, x, f_7);
    y := Heap[x, f_7];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.f, write) -- simple-fail.vpr@72.3--72.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (simple-fail.vpr@72.10--72.18) [153413]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
}