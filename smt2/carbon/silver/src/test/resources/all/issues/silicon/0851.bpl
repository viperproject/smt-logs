// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:47:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0851.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0851-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: fun01
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

const unique v_36: Field NormalField int;
axiom !IsPredicateField(v_36);
axiom !IsWandField(v_36);
const unique r_6: Field NormalField Ref;
axiom !IsPredicateField(r_6);
axiom !IsWandField(r_6);
const unique l_8: Field NormalField Ref;
axiom !IsPredicateField(l_8);
axiom !IsWandField(l_8);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, x: Ref, b1: bool, b2: bool): int;
function  fun01'(Heap: HeapType, x: Ref, b1: bool, b2: bool): int;
axiom (forall Heap: HeapType, x: Ref, b1: bool, b2: bool ::
  { fun01(Heap, x, b1, b2) }
  fun01(Heap, x, b1, b2) == fun01'(Heap, x, b1, b2) && dummyFunction(fun01#triggerStateless(x, b1, b2))
);
axiom (forall Heap: HeapType, x: Ref, b1: bool, b2: bool ::
  { fun01'(Heap, x, b1, b2) }
  dummyFunction(fun01#triggerStateless(x, b1, b2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b1: bool, b2: bool ::
  { state(Heap, Mask), fun01(Heap, x, b1, b2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun01(Heap, x, b1, b2) == Heap[x, v_36]
);

// Framing axioms
function  fun01#frame(frame: FrameType, x: Ref, b1: bool, b2: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b1: bool, b2: bool ::
  { state(Heap, Mask), fun01'(Heap, x, b1, b2) }
  state(Heap, Mask) ==> fun01'(Heap, x, b1, b2) == fun01#frame(CombineFrames(FrameFragment(Heap[x, v_36]), CombineFrames(ConditionalFrame((if b1 then 1 / 3 else NoPerm), FrameFragment(Heap[x, v_36])), ConditionalFrame((if b2 then 1 / 3 else NoPerm), FrameFragment(Heap[x, v_36])))), x, b1, b2)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, x: Ref, b1: bool, b2: bool): bool;

// State-independent trigger function
function  fun01#triggerStateless(x: Ref, b1: bool, b2: bool): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(x: Ref, b1: bool, b2: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := 1 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (0851.vpr@11.12--11.27) [196085]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, v_36:=Mask[x, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := (if b1 then 1 / 3 else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (b1 ? 1 / 3 : none) might be negative. (0851.vpr@12.12--12.41) [196086]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, v_36:=Mask[x, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := (if b2 then 1 / 3 else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (b2 ? 1 / 3 : none) might be negative. (0851.vpr@13.12--13.41) [196087]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, v_36:=Mask[x, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.v
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.v (0851.vpr@10.1--16.2) [196088]"}
        HasDirectPerm(Mask, x, v_36);
  
  // -- Translate function body
    Result := Heap[x, v_36];
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, b1: bool, b2: bool) returns ()
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, v_36:=Mask[x, v_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: x.v := 4 -- 0851.vpr@21.3--21.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.v (0851.vpr@21.3--21.11) [196089]"}
      FullPerm == Mask[x, v_36];
    Heap := Heap[x, v_36:=4];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun01(x, b2, b1) == 4 -- 0851.vpr@22.3--22.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun01(x, b2, b1) == 4
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 3;
        assert {:msg "  Precondition of function fun01 might not hold. Fraction 1 / 3 might be negative. (0851.vpr@22.10--22.26) [196090]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.v (0851.vpr@22.10--22.26) [196091]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, v_36];
        perm := (if b2 then 1 / 3 else NoPerm);
        assert {:msg "  Precondition of function fun01 might not hold. Fraction (b2 ? 1 / 3 : none) might be negative. (0851.vpr@22.10--22.26) [196092]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.v (0851.vpr@22.10--22.26) [196093]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, v_36];
        perm := (if b1 then 1 / 3 else NoPerm);
        assert {:msg "  Precondition of function fun01 might not hold. Fraction (b1 ? 1 / 3 : none) might be negative. (0851.vpr@22.10--22.26) [196094]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.v (0851.vpr@22.10--22.26) [196095]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, v_36];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun01(x, b2, b1) == 4 might not hold. (0851.vpr@22.10--22.31) [196096]"}
      fun01(Heap, x, b2, b1) == 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0851.vpr@24.3--24.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0851.vpr@24.10--24.15) [196097]"}
      false;
    assume state(Heap, Mask);
}