// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:10:08
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/predicates_03.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/impure_assume/predicates_03-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

// Translation of domain axiom __iar__assume_helper_1_axiom
axiom (forall c_1: bool, p_1_1: Perm, p_0_1: Perm ::
  { (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) }
  (__iar__assume_helper_1(c_1, p_1_1, p_0_1): Perm) == p_0_1 + (if c_1 then p_1_1 else NoPerm)
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

procedure test01(x: Ref, i: int, y: Ref, j_9: int, z: Ref, k: int, p_1: Perm, q_1: Perm) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm <= q_1;
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (predicates_03.vpr@8.12--8.29) [149739]"}
      perm >= NoPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale perm(P(y, j)) >= p -- <no position>
    assume p_1 <= Mask[null, P(y, j_9)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale perm(P(z, k)) >= __iar__assume_helper_1(y == z && j == k, p, q) -- <no position>
    assume (__iar__assume_helper_1(y == z && j_9 == k, p_1, q_1): Perm) <= Mask[null, P(z, k)];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert none <= p && p <= 1 / 2 -- predicates_03.vpr@12.3--12.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion none <= p might not hold. (predicates_03.vpr@12.10--12.31) [149740]"}
      NoPerm <= p_1;
    assert {:msg "  Assert might fail. Assertion p <= 1 / 2 might not hold. (predicates_03.vpr@12.10--12.31) [149741]"}
      p_1 <= 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert none <= q && q <= 1 / 2 -- predicates_03.vpr@13.3--13.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion none <= q might not hold. (predicates_03.vpr@13.10--13.31) [149742]"}
      NoPerm <= q_1;
    assert {:msg "  Assert might fail. Assertion q <= 1 / 2 might not hold. (predicates_03.vpr@13.10--13.31) [149743]"}
      q_1 <= 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y == z && j == k ==> q + p <= 1 / 2 -- predicates_03.vpr@14.3--14.41
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (y == z && j_9 == k) {
      assert {:msg "  Assert might fail. Assertion q + p <= 1 / 2 might not hold. (predicates_03.vpr@14.10--14.41) [149744]"}
        q_1 + p_1 <= 1 / 2;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y == z ==> none <= q && q <= p -- predicates_03.vpr@17.3--17.40
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (y == z) {
      assert {:msg "  Assert might fail. Assertion none <= q might not hold. (predicates_03.vpr@17.10--17.40) [149745]"}
        NoPerm <= q_1;
      assert {:msg "  Assert might fail. Assertion q <= p might not hold. (predicates_03.vpr@17.10--17.40) [149746]"}
        q_1 <= p_1;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, i: int, y: Ref, j_9: int, z: Ref, k: int, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale b1 ==> perm(P(y, j)) >= write -- predicates_03.vpr@23.11--23.30
    if (b1) {
      assume FullPerm <= Mask[null, P(y, j_9)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b2 ==>
  //   perm(P(z, k)) >=
  //   __iar__assume_helper_1(b1 && (y == z && j == k), write, write) -- predicates_03.vpr@23.36--23.55
    if (b2) {
      assume (__iar__assume_helper_1(b1 && (y == z && j_9 == k), FullPerm, FullPerm): Perm) <= Mask[null, P(z, k)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 ==> y == x -- predicates_03.vpr@25.3--25.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1) {
      assert {:msg "  Assert might fail. Assertion y == x might not hold. (predicates_03.vpr@25.10--25.23) [149747]"}
        y == x;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b2 ==> z == x -- predicates_03.vpr@26.3--26.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b2) {
      assert {:msg "  Assert might fail. Assertion z == x might not hold. (predicates_03.vpr@26.10--26.23) [149748]"}
        z == x;
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b1 && b2 ==> false -- predicates_03.vpr@27.3--27.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b1 && b2) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_03.vpr@27.10--27.28) [149749]"}
        false;
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, i: int, y: Ref, j_9: int, z: Ref, k: int, b1: bool, b2: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x, i):=Mask[null, P(x, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale b1 ==> perm(P(y, j)) >= write -- predicates_03.vpr@33.11--33.30
    if (b1) {
      assume FullPerm <= Mask[null, P(y, j_9)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale b2 ==>
  //   perm(P(z, k)) >=
  //   __iar__assume_helper_1(b1 && (y == z && j == k), write, write) -- predicates_03.vpr@33.36--33.55
    if (b2) {
      assume (__iar__assume_helper_1(b1 && (y == z && j_9 == k), FullPerm, FullPerm): Perm) <= Mask[null, P(z, k)];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert b2 ==> false -- predicates_03.vpr@36.3--36.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b2) {
      assert {:msg "  Assert might fail. Assertion false might not hold. (predicates_03.vpr@36.10--36.22) [149750]"}
        false;
    }
    assume state(Heap, Mask);
}