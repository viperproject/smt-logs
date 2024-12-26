// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:10:17
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/predicates_01.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/predicates_01-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of method test00_single
// ==================================================

procedure test00_single() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var perm: Perm;
  var i: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 2) -- predicates_01.vpr@9.3--9.27
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (predicates_01.vpr@9.10--9.27) [150459]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 2 -- <no position>
    assume 1 / 2 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@12.3--12.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@12.10--12.15) [150460]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test00_same_tight_first
// ==================================================

procedure test00_same_tight_first() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var perm: Perm;
  var i: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), write) -- predicates_01.vpr@18.3--18.22
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 3 -- <no position>
    assume 1 / 3 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_1(x == x && i == i, 1 / 3, 2 / 3) -- <no position>
    assume (__iar__assume_helper_1(x == x && i == i, 1 / 3, 2 / 3): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@21.3--21.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@21.10--21.15) [150462]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test00_same_tight_second
// ==================================================

procedure test00_same_tight_second() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var perm: Perm;
  var i: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), write) -- predicates_01.vpr@27.3--27.22
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 2 / 3 -- <no position>
    assume 2 / 3 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_1(x == x && i == i, 2 / 3, 1 / 3) -- <no position>
    assume (__iar__assume_helper_1(x == x && i == i, 2 / 3, 1 / 3): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@30.3--30.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@30.10--30.15) [150464]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test00_same_tight_three_left_leaning
// ==================================================

procedure test00_same_tight_three_left_leaning() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var perm: Perm;
  var i: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), write) -- predicates_01.vpr@36.3--36.22
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 3 / 6 -- <no position>
    assume 3 / 6 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_1(x == x && i == i, 3 / 6, 2 / 6) -- <no position>
    assume (__iar__assume_helper_1(x == x && i == i, 3 / 6, 2 / 6): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_2(x == x && i == i, x == x && i == i, 3 / 6, 2 / 6, 1 /
  //   6) -- <no position>
    assume (__iar__assume_helper_2(x == x && i == i, x == x && i == i, 3 / 6, 2 / 6, 1 / 6): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@39.3--39.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@39.10--39.15) [150466]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test00_same_tight_three_right_leaning
// ==================================================

procedure test00_same_tight_three_right_leaning() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var perm: Perm;
  var i: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), write) -- predicates_01.vpr@45.3--45.22
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 3 / 6 -- <no position>
    assume 3 / 6 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_1(x == x && i == i, 3 / 6, 2 / 6) -- <no position>
    assume (__iar__assume_helper_1(x == x && i == i, 3 / 6, 2 / 6): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_2(x == x && i == i, x == x && i == i, 3 / 6, 2 / 6, 1 /
  //   6) -- <no position>
    assume (__iar__assume_helper_2(x == x && i == i, x == x && i == i, 3 / 6, 2 / 6, 1 / 6): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@48.3--48.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@48.10--48.15) [150468]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_diff
// ==================================================

procedure test01_diff() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var perm: Perm;
  var i: int;
  var j_9: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), write) -- predicates_01.vpr@57.3--57.22
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 2 -- <no position>
    assume 1 / 2 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >=
  //   __iar__assume_helper_1(x == y && i == j, 1 / 2, 1 / 2) -- <no position>
    assume (__iar__assume_helper_1(x == y && i == j_9, 1 / 2, 1 / 2): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x == y && i == j -- predicates_01.vpr@59.3--59.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x == y might not hold. (predicates_01.vpr@59.10--59.26) [150470]"}
      x == y;
    assert {:msg "  Assert might fail. Assertion i == j might not hold. (predicates_01.vpr@59.10--59.26) [150471]"}
      i == j_9;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@61.3--61.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@61.10--61.15) [150472]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_same1
// ==================================================

procedure test01_same1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var perm: Perm;
  var i: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), 2 / 3) -- predicates_01.vpr@67.3--67.27
    perm := 2 / 3;
    assert {:msg "  Inhale might fail. Fraction 2 / 3 might be negative. (predicates_01.vpr@67.10--67.27) [150473]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 2 / 5 -- <no position>
    assume 2 / 5 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_1(x == x && i == i, 2 / 5, 3 / 5) -- <no position>
    assume (__iar__assume_helper_1(x == x && i == i, 2 / 5, 3 / 5): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@70.3--70.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@70.10--70.15) [150474]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01_same2
// ==================================================

procedure test01_same2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var perm: Perm;
  var i: int;
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
  
  // -- Translating statement: inhale acc(P(x, i), write) -- predicates_01.vpr@76.3--76.22
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= 1 / 2 -- <no position>
    assume 1 / 2 <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >=
  //   __iar__assume_helper_1(x == x && i == i, 1 / 2, 1 / 2) -- <no position>
    assume (__iar__assume_helper_1(x == x && i == i, 1 / 2, 1 / 2): Perm) <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- predicates_01.vpr@80.3--80.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_01.vpr@80.10--80.15) [150476]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var px: Perm;
  var py: Perm;
  var perm: Perm;
  var i: int;
  var j_9: int;
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
  
  // -- Translating statement: inhale none < px -- predicates_01.vpr@87.24--87.33
    assume NoPerm < px;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale none < py -- predicates_01.vpr@88.24--88.33
    assume NoPerm < py;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 10) -- predicates_01.vpr@90.3--90.28
    perm := 1 / 10;
    assert {:msg "  Inhale might fail. Fraction 1 / 10 might be negative. (predicates_01.vpr@90.10--90.28) [150477]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= px -- <no position>
    assume px <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >= __iar__assume_helper_1(x == y && i == j, px, py) -- <no position>
    assume (__iar__assume_helper_1(x == y && i == j_9, px, py): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert px <= 1 / 10 -- predicates_01.vpr@93.3--93.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion px <= 1 / 10 might not hold. (predicates_01.vpr@93.10--93.20) [150478]"}
      px <= 1 / 10;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y == x && i == j -- predicates_01.vpr@94.3--94.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion y == x might not hold. (predicates_01.vpr@94.10--94.26) [150479]"}
      y == x;
    assert {:msg "  Assert might fail. Assertion i == j might not hold. (predicates_01.vpr@94.10--94.26) [150480]"}
      i == j_9;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var z: Ref;
  var px: Perm;
  var py: Perm;
  var pz: Perm;
  var perm: Perm;
  var i: int;
  var j_9: int;
  var k: int;
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
    assume Heap[z, $allocated];
  
  // -- Translating statement: inhale none < px -- predicates_01.vpr@102.24--102.33
    assume NoPerm < px;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale none < py -- predicates_01.vpr@103.24--103.33
    assume NoPerm < py;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale none < pz -- predicates_01.vpr@104.24--104.33
    assume NoPerm < pz;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(P(x, i), 1 / 5) && acc(P(y, j), 1 / 10) -- predicates_01.vpr@106.3--106.49
    perm := 1 / 5;
    assert {:msg "  Inhale might fail. Fraction 1 / 5 might be negative. (predicates_01.vpr@106.10--106.49) [150481]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Inhale might fail. Fraction 1 / 10 might be negative. (predicates_01.vpr@106.10--106.49) [150482]"}
      perm >= NoPerm;
    Mask := Mask[null, P(y, j_9):=Mask[null, P(y, j_9)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(x, i)) >= px -- <no position>
    assume px <= Mask[null, P(x, i)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(y, j)) >= __iar__assume_helper_1(x == y && i == j, px, py) -- <no position>
    assume (__iar__assume_helper_1(x == y && i == j_9, px, py): Perm) <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(z, k)) >=
  //   __iar__assume_helper_2(x == z && i == k, y == z && j == k, px, py, pz) -- <no position>
    assume (__iar__assume_helper_2(x == z && i == k, y == z && j_9 == k, px, py, pz): Perm) <= Mask[null, P(z, k)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert z == x && k == i || z == y && k == j -- predicates_01.vpr@109.3--109.50
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion z == x && k == i || z == y && k == j might not hold. (predicates_01.vpr@109.10--109.50) [150483]"}
      (z == x && k == i) || (z == y && k == j_9);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x != y) -- predicates_01.vpr@111.3--115.4
    if (x != y) {
      
      // -- Translating statement: assert px <= 1 / 5 && py <= 1 / 10 -- predicates_01.vpr@112.5--112.35
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion px <= 1 / 5 might not hold. (predicates_01.vpr@112.12--112.35) [150484]"}
          px <= 1 / 5;
        assert {:msg "  Assert might fail. Assertion py <= 1 / 10 might not hold. (predicates_01.vpr@112.12--112.35) [150485]"}
          py <= 1 / 10;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert px <= 3 / 10 && py <= 3 / 10 -- predicates_01.vpr@114.5--114.36
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Assert might fail. Assertion px <= 3 / 10 might not hold. (predicates_01.vpr@114.12--114.36) [150486]"}
          px <= 3 / 10;
        assert {:msg "  Assert might fail. Assertion py <= 3 / 10 might not hold. (predicates_01.vpr@114.12--114.36) [150487]"}
          py <= 3 / 10;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}