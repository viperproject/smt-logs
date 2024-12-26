// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:12:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/fields_02.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/fields_02-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of domain __ns__impure_assume_rewriter
// ==================================================

// The type for domain __ns__impure_assume_rewriter
type __ns__impure_assume_rewriterDomainType;

// Translation of domain function __iar__assume_helper_1
function  __iar__assume_helper_1(c_1_2: bool, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain function __iar__assume_helper_2
function  __iar__assume_helper_2(c_2_2: bool, c_1_2: bool, p_2_2: Perm, p_1_3: Perm, p_0: Perm): Perm;

// Translation of domain axiom __iar__assume_helper_1_axiom
axiom (forall c_1: bool, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm)
);

// Translation of domain axiom __iar__assume_helper_2_axiom
axiom (forall c_2: bool, c_1: bool, p_2_1: Perm, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_2(c_2, c_1, p_2_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm) + (if c_2 then p_2_1 else NoPerm)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(x.f, 1 / 3) -- fields_02.vpr@10.3--10.23
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (fields_02.vpr@10.10--10.23) [149885]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- fields_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 4) -- fields_02.vpr@13.5--13.25
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (fields_02.vpr@13.12--13.25) [149886]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x.f) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[x, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==> perm(y.f) >= __iar__assume_helper_1(x == y, 1 / 3, 3 / 16) -- fields_02.vpr@16.28--16.48
    if (b_24) {
      assume (__iar__assume_helper_1(x == y, 1 / 3, 3 / 16): Perm) <= Mask[y, f_7];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(y.f) >=
  //   __iar__assume_helper_2(x == y, b && y == y, 1 / 3, 3 / 16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y, b_24 && y == y, 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[y, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) -- fields_02.vpr@18.3--18.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (fields_02.vpr@18.10--18.45) [149887]"}
      Mask[x, f_7] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x -- fields_02.vpr@19.3--19.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (fields_02.vpr@19.10--19.22) [149888]"}
        y == x;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y) -- fields_02.vpr@21.3--24.4
    if (x != y) {
      
      // -- Translating statement: assert !b -- fields_02.vpr@22.5--22.14
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (fields_02.vpr@22.12--22.14) [149889]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(y.f) == none -- fields_02.vpr@23.5--23.29
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion perm(y.f) == none might not hold. (fields_02.vpr@23.12--23.29) [149890]"}
          Mask[y, f_7] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_p1
// ==================================================

procedure test01_p1(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(x.f, 1 / 3) -- fields_02.vpr@10.3--10.23
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (fields_02.vpr@10.10--10.23) [149891]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- fields_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 4) -- fields_02.vpr@13.5--13.25
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (fields_02.vpr@13.12--13.25) [149892]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x.f) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[x, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==> perm(y.f) >= __iar__assume_helper_1(x == y, 1 / 3, 3 / 16) -- fields_02.vpr@16.28--16.48
    if (b_24) {
      assume (__iar__assume_helper_1(x == y, 1 / 3, 3 / 16): Perm) <= Mask[y, f_7];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(y.f) >=
  //   __iar__assume_helper_2(x == y, b && y == y, 1 / 3, 3 / 16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y, b_24 && y == y, 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[y, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) -- fields_02.vpr@18.3--18.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (fields_02.vpr@18.10--18.45) [149893]"}
      Mask[x, f_7] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x -- fields_02.vpr@19.3--19.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (fields_02.vpr@19.10--19.22) [149894]"}
        y == x;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y) -- fields_02.vpr@21.3--24.4
    if (x != y) {
      
      // -- Translating statement: assert !b -- fields_02.vpr@22.5--22.14
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (fields_02.vpr@22.12--22.14) [149895]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(y.f) == none -- fields_02.vpr@23.5--23.29
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion perm(y.f) == none might not hold. (fields_02.vpr@23.12--23.29) [149896]"}
          Mask[y, f_7] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b -- fields_02.vpr@37.10--37.11
    assume b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y -- fields_02.vpr@37.15--37.21
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- fields_02.vpr@38.3--38.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (fields_02.vpr@38.10--38.15) [149897]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_p2
// ==================================================

procedure test01_p2(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(x.f, 1 / 3) -- fields_02.vpr@10.3--10.23
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (fields_02.vpr@10.10--10.23) [149898]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- fields_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 4) -- fields_02.vpr@13.5--13.25
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (fields_02.vpr@13.12--13.25) [149899]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x.f) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[x, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==> perm(y.f) >= __iar__assume_helper_1(x == y, 1 / 3, 3 / 16) -- fields_02.vpr@16.28--16.48
    if (b_24) {
      assume (__iar__assume_helper_1(x == y, 1 / 3, 3 / 16): Perm) <= Mask[y, f_7];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(y.f) >=
  //   __iar__assume_helper_2(x == y, b && y == y, 1 / 3, 3 / 16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y, b_24 && y == y, 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[y, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) -- fields_02.vpr@18.3--18.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (fields_02.vpr@18.10--18.45) [149900]"}
      Mask[x, f_7] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x -- fields_02.vpr@19.3--19.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (fields_02.vpr@19.10--19.22) [149901]"}
        y == x;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y) -- fields_02.vpr@21.3--24.4
    if (x != y) {
      
      // -- Translating statement: assert !b -- fields_02.vpr@22.5--22.14
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (fields_02.vpr@22.12--22.14) [149902]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(y.f) == none -- fields_02.vpr@23.5--23.29
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion perm(y.f) == none might not hold. (fields_02.vpr@23.12--23.29) [149903]"}
          Mask[y, f_7] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b -- fields_02.vpr@43.10--43.11
    assume b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x == y -- fields_02.vpr@43.15--43.21
    assume x == y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- fields_02.vpr@45.3--45.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (fields_02.vpr@45.10--45.15) [149904]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_p3
// ==================================================

procedure test01_p3(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(x.f, 1 / 3) -- fields_02.vpr@10.3--10.23
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (fields_02.vpr@10.10--10.23) [149905]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- fields_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 4) -- fields_02.vpr@13.5--13.25
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (fields_02.vpr@13.12--13.25) [149906]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x.f) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[x, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==> perm(y.f) >= __iar__assume_helper_1(x == y, 1 / 3, 3 / 16) -- fields_02.vpr@16.28--16.48
    if (b_24) {
      assume (__iar__assume_helper_1(x == y, 1 / 3, 3 / 16): Perm) <= Mask[y, f_7];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(y.f) >=
  //   __iar__assume_helper_2(x == y, b && y == y, 1 / 3, 3 / 16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y, b_24 && y == y, 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[y, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) -- fields_02.vpr@18.3--18.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (fields_02.vpr@18.10--18.45) [149907]"}
      Mask[x, f_7] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x -- fields_02.vpr@19.3--19.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (fields_02.vpr@19.10--19.22) [149908]"}
        y == x;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y) -- fields_02.vpr@21.3--24.4
    if (x != y) {
      
      // -- Translating statement: assert !b -- fields_02.vpr@22.5--22.14
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (fields_02.vpr@22.12--22.14) [149909]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(y.f) == none -- fields_02.vpr@23.5--23.29
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion perm(y.f) == none might not hold. (fields_02.vpr@23.12--23.29) [149910]"}
          Mask[y, f_7] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !b -- fields_02.vpr@50.10--50.12
    assume !b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y -- fields_02.vpr@50.16--50.22
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- fields_02.vpr@52.3--52.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (fields_02.vpr@52.10--52.15) [149911]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_p4
// ==================================================

procedure test01_p4(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(x.f, 1 / 3) -- fields_02.vpr@10.3--10.23
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (fields_02.vpr@10.10--10.23) [149912]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- fields_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 4) -- fields_02.vpr@13.5--13.25
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (fields_02.vpr@13.12--13.25) [149913]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(x.f) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[x, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==> perm(y.f) >= __iar__assume_helper_1(x == y, 1 / 3, 3 / 16) -- fields_02.vpr@16.28--16.48
    if (b_24) {
      assume (__iar__assume_helper_1(x == y, 1 / 3, 3 / 16): Perm) <= Mask[y, f_7];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(y.f) >=
  //   __iar__assume_helper_2(x == y, b && y == y, 1 / 3, 3 / 16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y, b_24 && y == y, 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[y, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) -- fields_02.vpr@18.3--18.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (fields_02.vpr@18.10--18.45) [149914]"}
      Mask[x, f_7] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x -- fields_02.vpr@19.3--19.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (fields_02.vpr@19.10--19.22) [149915]"}
        y == x;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y) -- fields_02.vpr@21.3--24.4
    if (x != y) {
      
      // -- Translating statement: assert !b -- fields_02.vpr@22.5--22.14
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (fields_02.vpr@22.12--22.14) [149916]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(y.f) == none -- fields_02.vpr@23.5--23.29
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion perm(y.f) == none might not hold. (fields_02.vpr@23.12--23.29) [149917]"}
          Mask[y, f_7] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !b -- fields_02.vpr@57.10--57.12
    assume !b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x == y -- fields_02.vpr@57.16--57.22
    assume x == y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- fields_02.vpr@59.3--59.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (fields_02.vpr@59.10--59.15) [149918]"}
      false;
    assume state(Heap, Mask);
}