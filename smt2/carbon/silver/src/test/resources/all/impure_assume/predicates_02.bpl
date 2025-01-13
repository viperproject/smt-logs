// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:11:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/predicates_02.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/predicates_02-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref, i: int): Field PredicateType_P FrameType;
function  P#sm(x: Ref, i: int): Field PredicateType_P PMaskType;
axiom (forall x: Ref, i: int ::
  { PredicateMaskField(P(x, i)) }
  PredicateMaskField(P(x, i)) == P#sm(x, i)
);
axiom (forall x: Ref, i: int ::
  { P(x, i) }
  IsPredicateField(P(x, i))
);
axiom (forall x: Ref, i: int ::
  { P(x, i) }
  getPredWandId(P(x, i)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { P(x, i), P(x2, i2_1) }
  P(x, i) == P(x2, i2_1) ==> x == x2 && i == i2_1
);
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { P#sm(x, i), P#sm(x2, i2_1) }
  P#sm(x, i) == P#sm(x2, i2_1) ==> x == x2 && i == i2_1
);

axiom (forall Heap: HeapType, x: Ref, i: int ::
  { P#trigger(Heap, P(x, i)) }
  P#everUsed(P(x, i))
);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var i: int;
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 3) -- predicates_02.vpr@10.3--10.27
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (predicates_02.vpr@10.10--10.27) [150181]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- predicates_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(P(x, i), 1 / 4) -- predicates_02.vpr@13.5--13.29
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (predicates_02.vpr@13.12--13.29) [150182]"}
          perm >= NoPerm;
        Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==>
  //   perm(P(y, j)) >= __iar__assume_helper_1(x == y && i == j, 1 / 3, 3 / 16) -- predicates_02.vpr@16.32--16.56
    if (b_24) {
      assume (__iar__assume_helper_1(x == y && i == j_9, 1 / 3, 3 / 16): Perm) <= Mask[null, P(y, j_9)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >=
  //   __iar__assume_helper_2(x == y && i == j, b && (y == y && j == j), 1 / 3, 3 /
  //   16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y && i == j_9, b_24 && (y == y && j_9 == j_9), 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) -- predicates_02.vpr@18.3--18.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (predicates_02.vpr@18.10--18.49) [150183]"}
      Mask[null, P(x, i)] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x && j == i -- predicates_02.vpr@19.3--19.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (predicates_02.vpr@19.10--19.32) [150184]"}
        y == x;
      assert {:msg "  Assert might fail. Assertion j == i might not hold. (predicates_02.vpr@19.10--19.32) [150185]"}
        j_9 == i;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y || i != j) -- predicates_02.vpr@21.3--24.4
    if (x != y || i != j_9) {
      
      // -- Translating statement: assert !b -- predicates_02.vpr@22.5--22.14
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (predicates_02.vpr@22.12--22.14) [150186]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(P(y, j)) == none -- predicates_02.vpr@23.5--23.33
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion perm(P(y, j)) == none might not hold. (predicates_02.vpr@23.12--23.33) [150187]"}
          Mask[null, P(y, j_9)] == NoPerm;
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var i: int;
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 3) -- predicates_02.vpr@10.3--10.27
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (predicates_02.vpr@10.10--10.27) [150188]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- predicates_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(P(x, i), 1 / 4) -- predicates_02.vpr@13.5--13.29
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (predicates_02.vpr@13.12--13.29) [150189]"}
          perm >= NoPerm;
        Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==>
  //   perm(P(y, j)) >= __iar__assume_helper_1(x == y && i == j, 1 / 3, 3 / 16) -- predicates_02.vpr@16.32--16.56
    if (b_24) {
      assume (__iar__assume_helper_1(x == y && i == j_9, 1 / 3, 3 / 16): Perm) <= Mask[null, P(y, j_9)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >=
  //   __iar__assume_helper_2(x == y && i == j, b && (y == y && j == j), 1 / 3, 3 /
  //   16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y && i == j_9, b_24 && (y == y && j_9 == j_9), 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) -- predicates_02.vpr@18.3--18.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (predicates_02.vpr@18.10--18.49) [150190]"}
      Mask[null, P(x, i)] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x && j == i -- predicates_02.vpr@19.3--19.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (predicates_02.vpr@19.10--19.32) [150191]"}
        y == x;
      assert {:msg "  Assert might fail. Assertion j == i might not hold. (predicates_02.vpr@19.10--19.32) [150192]"}
        j_9 == i;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y || i != j) -- predicates_02.vpr@21.3--24.4
    if (x != y || i != j_9) {
      
      // -- Translating statement: assert !b -- predicates_02.vpr@22.5--22.14
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (predicates_02.vpr@22.12--22.14) [150193]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(P(y, j)) == none -- predicates_02.vpr@23.5--23.33
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion perm(P(y, j)) == none might not hold. (predicates_02.vpr@23.12--23.33) [150194]"}
          Mask[null, P(y, j_9)] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b -- predicates_02.vpr@37.10--37.11
    assume b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y || i != j -- predicates_02.vpr@37.16--37.32
    assume x != y || i != j_9;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_02.vpr@38.3--38.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_02.vpr@38.10--38.15) [150195]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_p2
// ==================================================

procedure test01_p2(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var i: int;
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 3) -- predicates_02.vpr@10.3--10.27
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (predicates_02.vpr@10.10--10.27) [150196]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- predicates_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(P(x, i), 1 / 4) -- predicates_02.vpr@13.5--13.29
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (predicates_02.vpr@13.12--13.29) [150197]"}
          perm >= NoPerm;
        Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==>
  //   perm(P(y, j)) >= __iar__assume_helper_1(x == y && i == j, 1 / 3, 3 / 16) -- predicates_02.vpr@16.32--16.56
    if (b_24) {
      assume (__iar__assume_helper_1(x == y && i == j_9, 1 / 3, 3 / 16): Perm) <= Mask[null, P(y, j_9)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >=
  //   __iar__assume_helper_2(x == y && i == j, b && (y == y && j == j), 1 / 3, 3 /
  //   16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y && i == j_9, b_24 && (y == y && j_9 == j_9), 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) -- predicates_02.vpr@18.3--18.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (predicates_02.vpr@18.10--18.49) [150198]"}
      Mask[null, P(x, i)] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x && j == i -- predicates_02.vpr@19.3--19.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (predicates_02.vpr@19.10--19.32) [150199]"}
        y == x;
      assert {:msg "  Assert might fail. Assertion j == i might not hold. (predicates_02.vpr@19.10--19.32) [150200]"}
        j_9 == i;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y || i != j) -- predicates_02.vpr@21.3--24.4
    if (x != y || i != j_9) {
      
      // -- Translating statement: assert !b -- predicates_02.vpr@22.5--22.14
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (predicates_02.vpr@22.12--22.14) [150201]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(P(y, j)) == none -- predicates_02.vpr@23.5--23.33
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion perm(P(y, j)) == none might not hold. (predicates_02.vpr@23.12--23.33) [150202]"}
          Mask[null, P(y, j_9)] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b -- predicates_02.vpr@43.10--43.11
    assume b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !(x != y || i != j) -- predicates_02.vpr@43.15--43.34
    assume !(x != y || i != j_9);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_02.vpr@45.3--45.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_02.vpr@45.10--45.15) [150203]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_p3
// ==================================================

procedure test01_p3(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var i: int;
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 3) -- predicates_02.vpr@10.3--10.27
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (predicates_02.vpr@10.10--10.27) [150204]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- predicates_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(P(x, i), 1 / 4) -- predicates_02.vpr@13.5--13.29
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (predicates_02.vpr@13.12--13.29) [150205]"}
          perm >= NoPerm;
        Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==>
  //   perm(P(y, j)) >= __iar__assume_helper_1(x == y && i == j, 1 / 3, 3 / 16) -- predicates_02.vpr@16.32--16.56
    if (b_24) {
      assume (__iar__assume_helper_1(x == y && i == j_9, 1 / 3, 3 / 16): Perm) <= Mask[null, P(y, j_9)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >=
  //   __iar__assume_helper_2(x == y && i == j, b && (y == y && j == j), 1 / 3, 3 /
  //   16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y && i == j_9, b_24 && (y == y && j_9 == j_9), 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) -- predicates_02.vpr@18.3--18.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (predicates_02.vpr@18.10--18.49) [150206]"}
      Mask[null, P(x, i)] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x && j == i -- predicates_02.vpr@19.3--19.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (predicates_02.vpr@19.10--19.32) [150207]"}
        y == x;
      assert {:msg "  Assert might fail. Assertion j == i might not hold. (predicates_02.vpr@19.10--19.32) [150208]"}
        j_9 == i;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y || i != j) -- predicates_02.vpr@21.3--24.4
    if (x != y || i != j_9) {
      
      // -- Translating statement: assert !b -- predicates_02.vpr@22.5--22.14
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (predicates_02.vpr@22.12--22.14) [150209]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(P(y, j)) == none -- predicates_02.vpr@23.5--23.33
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion perm(P(y, j)) == none might not hold. (predicates_02.vpr@23.12--23.33) [150210]"}
          Mask[null, P(y, j_9)] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !b -- predicates_02.vpr@50.10--50.12
    assume !b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y || i != j -- predicates_02.vpr@50.17--50.33
    assume x != y || i != j_9;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_02.vpr@52.3--52.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_02.vpr@52.10--52.15) [150211]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_p4
// ==================================================

procedure test01_p4(b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var i: int;
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 3) -- predicates_02.vpr@10.3--10.27
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (predicates_02.vpr@10.10--10.27) [150212]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- predicates_02.vpr@12.3--14.4
    if (b_24) {
      
      // -- Translating statement: inhale acc(P(x, i), 1 / 4) -- predicates_02.vpr@13.5--13.29
        perm := 1 / 4;
        assert {:msg "  Inhale might fail. Fraction 1 / 4 might be negative. (predicates_02.vpr@13.12--13.29) [150213]"}
          perm >= NoPerm;
        Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b ==>
  //   perm(P(y, j)) >= __iar__assume_helper_1(x == y && i == j, 1 / 3, 3 / 16) -- predicates_02.vpr@16.32--16.56
    if (b_24) {
      assume (__iar__assume_helper_1(x == y && i == j_9, 1 / 3, 3 / 16): Perm) <= Mask[null, P(y, j_9)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >=
  //   __iar__assume_helper_2(x == y && i == j, b && (y == y && j == j), 1 / 3, 3 /
  //   16, 0 / 16) -- <no position>
    assume (__iar__assume_helper_2(x == y && i == j_9, b_24 && (y == y && j_9 == j_9), 1 / 3, 3 / 16, 0 / 16): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) -- predicates_02.vpr@18.3--18.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion perm(P(x, i)) == 1 / 3 + (b ? 1 / 4 : none) might not hold. (predicates_02.vpr@18.10--18.49) [150214]"}
      Mask[null, P(x, i)] == 1 / 3 + (if b_24 then 1 / 4 else NoPerm);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b ==> y == x && j == i -- predicates_02.vpr@19.3--19.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (predicates_02.vpr@19.10--19.32) [150215]"}
        y == x;
      assert {:msg "  Assert might fail. Assertion j == i might not hold. (predicates_02.vpr@19.10--19.32) [150216]"}
        j_9 == i;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y || i != j) -- predicates_02.vpr@21.3--24.4
    if (x != y || i != j_9) {
      
      // -- Translating statement: assert !b -- predicates_02.vpr@22.5--22.14
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion !b might not hold. (predicates_02.vpr@22.12--22.14) [150217]"}
          !b_24;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert perm(P(y, j)) == none -- predicates_02.vpr@23.5--23.33
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion perm(P(y, j)) == none might not hold. (predicates_02.vpr@23.12--23.33) [150218]"}
          Mask[null, P(y, j_9)] == NoPerm;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !b -- predicates_02.vpr@57.10--57.12
    assume !b_24;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale !(x != y || i != j) -- predicates_02.vpr@57.16--57.35
    assume !(x != y || i != j_9);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_02.vpr@59.3--59.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_02.vpr@59.10--59.15) [150219]"}
      false;
    assume state(Heap, Mask);
}