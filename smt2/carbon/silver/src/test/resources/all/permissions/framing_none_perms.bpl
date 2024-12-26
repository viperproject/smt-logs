// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:15:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permissions/framing_none_perms.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permissions/framing_none_perms-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 1: fun01
// - height 0: fun02
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
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
function  fun01'(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun01(Heap, x, y, b_24) }
  fun01(Heap, x, y, b_24) == fun01'(Heap, x, y, b_24) && dummyFunction(fun01#triggerStateless(x, y, b_24))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun01'(Heap, x, y, b_24) }
  dummyFunction(fun01#triggerStateless(x, y, b_24))
);

// Framing axioms
function  fun01#frame(frame: FrameType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, b_24: bool ::
  { state(Heap, Mask), fun01'(Heap, x, y, b_24) }
  state(Heap, Mask) ==> fun01'(Heap, x, y, b_24) == fun01#frame(FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[y, f_7]))), x, y, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, x: Ref, y: Ref, b_24: bool): bool;

// State-independent trigger function
function  fun01#triggerStateless(x: Ref, y: Ref, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure fun01#definedness(x: Ref, y: Ref, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function fun02
// ==================================================

// Uninterpreted function definitions
function  fun02(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
function  fun02'(Heap: HeapType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun02(Heap, x, y, b_24) }
  fun02(Heap, x, y, b_24) == fun02'(Heap, x, y, b_24) && dummyFunction(fun02#triggerStateless(x, y, b_24))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref, b_24: bool ::
  { fun02'(Heap, x, y, b_24) }
  dummyFunction(fun02#triggerStateless(x, y, b_24))
);

// Framing axioms
function  fun02#frame(frame: FrameType, x: Ref, y: Ref, b_24: bool): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref, b_24: bool ::
  { state(Heap, Mask), fun02'(Heap, x, y, b_24) }
  state(Heap, Mask) ==> fun02'(Heap, x, y, b_24) == fun02#frame(CombineFrames(ConditionalFrame((if b_24 then FullPerm else NoPerm), FrameFragment(Heap[x, f_7])), ConditionalFrame((if !b_24 then FullPerm else NoPerm), FrameFragment(Heap[y, f_7]))), x, y, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun02#trigger(frame: FrameType, x: Ref, y: Ref, b_24: bool): bool;

// State-independent trigger function
function  fun02#triggerStateless(x: Ref, y: Ref, b_24: bool): int;

// Check contract well-formedness and postcondition
procedure fun02#definedness(x: Ref, y: Ref, b_24: bool) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := (if b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (b ? write : none) might be negative. (framing_none_perms.vpr@21.12--21.38) [190030]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := (if !b_24 then FullPerm else NoPerm);
    assert {:msg "  Contract might not be well-formed. Fraction (!b ? write : none) might be negative. (framing_none_perms.vpr@22.12--22.39) [190031]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var vx: int;
  var vy: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: vx := fun01(x, y, true) -- framing_none_perms.vpr@12.3--12.35
    
    // -- Check definedness of fun01(x, y, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (framing_none_perms.vpr@12.18--12.35) [190032]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    vx := fun01(Heap, x, y, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: vy := fun01(x, y, false) -- framing_none_perms.vpr@13.3--13.36
    
    // -- Check definedness of fun01(x, y, false)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access y.f (framing_none_perms.vpr@13.18--13.36) [190033]"}
          NoPerm < perm ==> NoPerm < Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    vy := fun01(Heap, x, y, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- framing_none_perms.vpr@14.3--14.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (framing_none_perms.vpr@14.3--14.11) [190034]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert vx == fun01(x, y, true) -- framing_none_perms.vpr@15.3--15.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of vx == fun01(x, y, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access x.f (framing_none_perms.vpr@15.16--15.33) [190035]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion vx == fun01(x, y, true) might not hold. (framing_none_perms.vpr@15.10--15.33) [190036]"}
      vx == fun01(Heap, x, y, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert vy == fun01(x, y, false) -- framing_none_perms.vpr@17.3--17.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of vy == fun01(x, y, false)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun01 might not hold. There might be insufficient permission to access y.f (framing_none_perms.vpr@17.16--17.34) [190037]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion vy == fun01(x, y, false) might not hold. (framing_none_perms.vpr@17.10--17.34) [190038]"}
      vy == fun01(Heap, x, y, false);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var vx: int;
  var vy: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: vx := fun02(x, y, true) -- framing_none_perms.vpr@27.3--27.35
    
    // -- Check definedness of fun02(x, y, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (true ? write : none) might be negative. (framing_none_perms.vpr@27.18--27.35) [190039]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (framing_none_perms.vpr@27.18--27.35) [190040]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!true ? write : none) might be negative. (framing_none_perms.vpr@27.18--27.35) [190041]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (framing_none_perms.vpr@27.18--27.35) [190042]"}
          NoPerm < perm ==> NoPerm < Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    vx := fun02(Heap, x, y, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: vy := fun02(x, y, false) -- framing_none_perms.vpr@28.3--28.36
    
    // -- Check definedness of fun02(x, y, false)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (false ? write : none) might be negative. (framing_none_perms.vpr@28.18--28.36) [190043]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (framing_none_perms.vpr@28.18--28.36) [190044]"}
          NoPerm < perm ==> NoPerm < Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!false ? write : none) might be negative. (framing_none_perms.vpr@28.18--28.36) [190045]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (framing_none_perms.vpr@28.18--28.36) [190046]"}
          NoPerm < perm ==> NoPerm < Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    vy := fun02(Heap, x, y, false);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- framing_none_perms.vpr@29.3--29.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (framing_none_perms.vpr@29.3--29.11) [190047]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert vx == fun02(x, y, true) -- framing_none_perms.vpr@30.3--30.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of vx == fun02(x, y, true)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (true ? write : none) might be negative. (framing_none_perms.vpr@30.16--30.33) [190048]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (framing_none_perms.vpr@30.16--30.33) [190049]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!true ? write : none) might be negative. (framing_none_perms.vpr@30.16--30.33) [190050]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (framing_none_perms.vpr@30.16--30.33) [190051]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion vx == fun02(x, y, true) might not hold. (framing_none_perms.vpr@30.10--30.33) [190052]"}
      vx == fun02(Heap, x, y, true);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert vy == fun02(x, y, false) -- framing_none_perms.vpr@32.3--32.34
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of vy == fun02(x, y, false)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (false ? write : none) might be negative. (framing_none_perms.vpr@32.16--32.34) [190053]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access x.f (framing_none_perms.vpr@32.16--32.34) [190054]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun02 might not hold. Fraction (!false ? write : none) might be negative. (framing_none_perms.vpr@32.16--32.34) [190055]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function fun02 might not hold. There might be insufficient permission to access y.f (framing_none_perms.vpr@32.16--32.34) [190056]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion vy == fun02(x, y, false) might not hold. (framing_none_perms.vpr@32.10--32.34) [190057]"}
      vy == fun02(Heap, x, y, false);
    assume state(Heap, Mask);
}