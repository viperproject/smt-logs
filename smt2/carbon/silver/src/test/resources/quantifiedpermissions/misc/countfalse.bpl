// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/countfalse.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/countfalse-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_16: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_16, f_10] }
  Heap[o_16, $allocated] ==> Heap[Heap[o_16, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_17: Ref, f_25: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_17, f_25] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_17, f_25) ==> Heap[o_17, f_25] == ExhaleHeap[o_17, f_25]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6), ExhaleHeap[null, PredicateMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> Heap[null, PredicateMaskField(pm_f_6)] == ExhaleHeap[null, PredicateMaskField(pm_f_6)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsPredicateField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_6, f_25] }
    Heap[null, PredicateMaskField(pm_f_6)][o2_6, f_25] ==> Heap[o2_6, f_25] == ExhaleHeap[o2_6, f_25]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6), ExhaleHeap[null, WandMaskField(pm_f_6)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> Heap[null, WandMaskField(pm_f_6)] == ExhaleHeap[null, WandMaskField(pm_f_6)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_6: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_6) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_6) && IsWandField(pm_f_6) ==> (forall <A, B> o2_6: Ref, f_25: (Field A B) ::
    { ExhaleHeap[o2_6, f_25] }
    Heap[null, WandMaskField(pm_f_6)][o2_6, f_25] ==> Heap[o2_6, f_25] == ExhaleHeap[o2_6, f_25]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_17: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_17, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_17, $allocated] ==> ExhaleHeap[o_17, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_16: Ref, f_2: (Field A B), v: B ::
  { Heap[o_16, f_2:=v] }
  succHeap(Heap, Heap[o_16, f_2:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(z_4: int): bool;
function  neverTriggered2(z_5: int): bool;
function  neverTriggered3(z_4: int): bool;
function  neverTriggered4(z_5: int): bool;
function  neverTriggered5(z_1: int): bool;
function  neverTriggered6(z_2: int): bool;
function  neverTriggered7(z_3: int): bool;
function  neverTriggered8(z_1: int): bool;
function  neverTriggered9(z_2: int): bool;
function  neverTriggered10(z_3: int): bool;
function  neverTriggered11(z_1: int): bool;
function  neverTriggered12(z_2: int): bool;
function  neverTriggered13(z_3: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
function  invRecv8(recv: Ref): int;
function  invRecv9(recv: Ref): int;
function  invRecv10(recv: Ref): int;
function  invRecv11(recv: Ref): int;
function  invRecv12(recv: Ref): int;
function  invRecv13(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: countFalseX
// - height 0: countFalse
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
// Translation of domain Array
// ==================================================

// The type for domain Array
type ArrayDomainType;

// Translation of domain function loc
function  loc(a_3: ArrayDomainType, i_6: int): Ref;

// Translation of domain function length
function  length_2(a_3: ArrayDomainType): int;

// Translation of domain function first
function  first_1(r_4: Ref): ArrayDomainType;

// Translation of domain function second
function  second_1(r_4: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first_1((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (second_1((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: ArrayDomainType ::
  { (length_2(a_2): int) }
  (length_2(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField bool;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function countFalseX
// ==================================================

// Uninterpreted function definitions
function  countFalseX(Heap: HeapType, a_2: ArrayDomainType, from_1: int): int;
function  countFalseX'(Heap: HeapType, a_2: ArrayDomainType, from_1: int): int;
axiom (forall Heap: HeapType, a_2: ArrayDomainType, from_1: int ::
  { countFalseX(Heap, a_2, from_1) }
  countFalseX(Heap, a_2, from_1) == countFalseX'(Heap, a_2, from_1) && dummyFunction(countFalseX#triggerStateless(a_2, from_1))
);
axiom (forall Heap: HeapType, a_2: ArrayDomainType, from_1: int ::
  { countFalseX'(Heap, a_2, from_1) }
  dummyFunction(countFalseX#triggerStateless(a_2, from_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, from_1: int ::
  { state(Heap, Mask), countFalseX(Heap, a_2, from_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> 0 <= from_1 && from_1 <= (length_2(a_2): int) ==> countFalseX(Heap, a_2, from_1) == (if from_1 == (length_2(a_2): int) then 0 else countFalseX'(Heap, a_2, from_1 + 1))
);

// Framing axioms
function  countFalseX#frame(frame: FrameType, a_2: ArrayDomainType, from_1: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, from_1: int ::
  { state(Heap, Mask), countFalseX'(Heap, a_2, from_1) }
  state(Heap, Mask) ==> countFalseX'(Heap, a_2, from_1) == countFalseX#frame(FrameFragment(countFalseX#condqp1(Heap, a_2, from_1)), a_2, from_1)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Int :: { loc(a, z) } from <= z && z < length(a) ==> acc(loc(a, z).val, write)) in function countFalseX
// ==================================================

function  countFalseX#condqp1(Heap: HeapType, a_1_1_1: ArrayDomainType, from_1_1: int): int;
function  sk_countFalseX#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType, from_1: int ::
  { countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((from_1 <= sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1)) && sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1)) < (length_2(a_2): int)) && NoPerm < FullPerm <==> (from_1 <= sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1)) && sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1)) < (length_2(a_2): int)) && NoPerm < FullPerm) && ((from_1 <= sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1)) && sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1)) < (length_2(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1))): Ref), val] == Heap1Heap[(loc(a_2, sk_countFalseX#condqp1(countFalseX#condqp1(Heap2Heap, a_2, from_1), countFalseX#condqp1(Heap1Heap, a_2, from_1))): Ref), val]) ==> countFalseX#condqp1(Heap2Heap, a_2, from_1) == countFalseX#condqp1(Heap1Heap, a_2, from_1)
);

// Trigger function (controlling recursive postconditions)
function  countFalseX#trigger(frame: FrameType, a_2: ArrayDomainType, from_1: int): bool;

// State-independent trigger function
function  countFalseX#triggerStateless(a_2: ArrayDomainType, from_1: int): int;

// Check contract well-formedness and postcondition
procedure countFalseX#definedness(a_2: ArrayDomainType, from_1: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= from_1;
    assume from_1 <= (length_2(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Int :: { loc(a, z) } from <= z && z < length(a) ==> acc(loc(a, z).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@6.12--6.79) [176373]"}
      (forall z_4: int, z_4_2: int ::
      
      (((z_4 != z_4_2 && (from_1 <= z_4 && z_4 < (length_2(a_2): int))) && (from_1 <= z_4_2 && z_4_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_4): Ref) != (loc(a_2, z_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall z_4: int ::
        { (loc(a_2, z_4): Ref) } { (loc(a_2, z_4): Ref) }
        (from_1 <= z_4 && z_4 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange1((loc(a_2, z_4): Ref)) && invRecv1((loc(a_2, z_4): Ref)) == z_4
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((from_1 <= invRecv1(o_9) && invRecv1(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_4: int ::
        { (loc(a_2, z_4): Ref) } { (loc(a_2, z_4): Ref) }
        from_1 <= z_4 && z_4 < (length_2(a_2): int) ==> (loc(a_2, z_4): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((from_1 <= invRecv1(o_9) && invRecv1(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((from_1 <= invRecv1(o_9) && invRecv1(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (from == length(a) ? 0 : countFalseX(a, from + 1))
      if (from_1 == (length_2(a_2): int)) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function countFalseX might not hold. Assertion 0 <= from + 1 might not hold. (countfalse.vpr@8.27--8.49) [176374]"}
            0 <= from_1 + 1;
          assert {:msg "  Precondition of function countFalseX might not hold. Assertion from + 1 <= length(a) might not hold. (countfalse.vpr@8.27--8.49) [176375]"}
            from_1 + 1 <= (length_2(a_2): int);
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, z) is injective
            assert {:msg "  Precondition of function countFalseX might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@8.27--8.49) [176376]"}
              (forall z_5: int, z_5_2: int ::
              { neverTriggered2(z_5), neverTriggered2(z_5_2) }
              (((z_5 != z_5_2 && (from_1 + 1 <= z_5 && z_5 < (length_2(a_2): int))) && (from_1 + 1 <= z_5_2 && z_5_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_5): Ref) != (loc(a_2, z_5_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function countFalseX might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@8.27--8.49) [176377]"}
              (forall z_5: int ::
              { (loc(a_2, z_5): Ref) } { (loc(a_2, z_5): Ref) }
              from_1 + 1 <= z_5 && z_5 < (length_2(a_2): int) ==> FullPerm > NoPerm ==> Mask[(loc(a_2, z_5): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, z)
            assume (forall z_5: int ::
              { (loc(a_2, z_5): Ref) } { (loc(a_2, z_5): Ref) }
              (from_1 + 1 <= z_5 && z_5 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange2((loc(a_2, z_5): Ref)) && invRecv2((loc(a_2, z_5): Ref)) == z_5
            );
            assume (forall o_9: Ref ::
              { invRecv2(o_9) }
              (from_1 + 1 <= invRecv2(o_9) && invRecv2(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange2(o_9)) ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume countFalseX#trigger(FrameFragment(countFalseX#condqp1(Heap, a_2, from_1 + 1)), a_2, from_1 + 1);
        }
      }
  
  // -- Translate function body
    Result := (if from_1 == (length_2(a_2): int) then 0 else countFalseX(Heap, a_2, from_1 + 1));
}

// ==================================================
// Translation of function countFalse
// ==================================================

// Uninterpreted function definitions
function  countFalse(Heap: HeapType, a_2: ArrayDomainType, from_1: int, to_1: int): int;
function  countFalse'(Heap: HeapType, a_2: ArrayDomainType, from_1: int, to_1: int): int;
axiom (forall Heap: HeapType, a_2: ArrayDomainType, from_1: int, to_1: int ::
  { countFalse(Heap, a_2, from_1, to_1) }
  countFalse(Heap, a_2, from_1, to_1) == countFalse'(Heap, a_2, from_1, to_1) && dummyFunction(countFalse#triggerStateless(a_2, from_1, to_1))
);
axiom (forall Heap: HeapType, a_2: ArrayDomainType, from_1: int, to_1: int ::
  { countFalse'(Heap, a_2, from_1, to_1) }
  dummyFunction(countFalse#triggerStateless(a_2, from_1, to_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, from_1: int, to_1: int ::
  { state(Heap, Mask), countFalse(Heap, a_2, from_1, to_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= from_1 && (from_1 <= to_1 && to_1 <= (length_2(a_2): int)) ==> countFalse(Heap, a_2, from_1, to_1) == (if from_1 == to_1 then 0 else (if Heap[(loc(a_2, from_1): Ref), val] then 0 else 1) + countFalse'(Heap, a_2, from_1 + 1, to_1))
);

// Framing axioms
function  countFalse#frame(frame: FrameType, a_2: ArrayDomainType, from_1: int, to_1: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, from_1: int, to_1: int ::
  { state(Heap, Mask), countFalse'(Heap, a_2, from_1, to_1) }
  state(Heap, Mask) ==> countFalse'(Heap, a_2, from_1, to_1) == countFalse#frame(FrameFragment(countFalse#condqp2(Heap, a_2, from_1, to_1)), a_2, from_1, to_1)
);
// ==================================================
// Function used for framing of quantified permission (forall z: Int :: { loc(a, z) } from <= z && z < to ==> acc(loc(a, z).val, write)) in function countFalse
// ==================================================

function  countFalse#condqp2(Heap: HeapType, a_1_1_1: ArrayDomainType, from_1_1: int, to_1_1: int): int;
function  sk_countFalse#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType, from_1: int, to_1: int ::
  { countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((from_1 <= sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1)) && sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1)) < to_1) && NoPerm < FullPerm <==> (from_1 <= sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1)) && sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1)) < to_1) && NoPerm < FullPerm) && ((from_1 <= sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1)) && sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1)) < to_1) && NoPerm < FullPerm ==> Heap2Heap[(loc(a_2, sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1))): Ref), val] == Heap1Heap[(loc(a_2, sk_countFalse#condqp2(countFalse#condqp2(Heap2Heap, a_2, from_1, to_1), countFalse#condqp2(Heap1Heap, a_2, from_1, to_1))): Ref), val]) ==> countFalse#condqp2(Heap2Heap, a_2, from_1, to_1) == countFalse#condqp2(Heap1Heap, a_2, from_1, to_1)
);

// Trigger function (controlling recursive postconditions)
function  countFalse#trigger(frame: FrameType, a_2: ArrayDomainType, from_1: int, to_1: int): bool;

// State-independent trigger function
function  countFalse#triggerStateless(a_2: ArrayDomainType, from_1: int, to_1: int): int;

// Check contract well-formedness and postcondition
procedure countFalse#definedness(a_2: ArrayDomainType, from_1: int, to_1: int) returns (Result: int)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= from_1;
    assume from_1 <= to_1;
    assume to_1 <= (length_2(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Int :: { loc(a, z) } from <= z && z < to ==> acc(loc(a, z).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@39.12--39.72) [176378]"}
      (forall z_4: int, z_4_2: int ::
      
      (((z_4 != z_4_2 && (from_1 <= z_4 && z_4 < to_1)) && (from_1 <= z_4_2 && z_4_2 < to_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_4): Ref) != (loc(a_2, z_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall z_4: int ::
        { (loc(a_2, z_4): Ref) } { (loc(a_2, z_4): Ref) }
        (from_1 <= z_4 && z_4 < to_1) && NoPerm < FullPerm ==> qpRange3((loc(a_2, z_4): Ref)) && invRecv3((loc(a_2, z_4): Ref)) == z_4
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((from_1 <= invRecv3(o_9) && invRecv3(o_9) < to_1) && NoPerm < FullPerm) && qpRange3(o_9) ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_4: int ::
        { (loc(a_2, z_4): Ref) } { (loc(a_2, z_4): Ref) }
        from_1 <= z_4 && z_4 < to_1 ==> (loc(a_2, z_4): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((from_1 <= invRecv3(o_9) && invRecv3(o_9) < to_1) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((from_1 <= invRecv3(o_9) && invRecv3(o_9) < to_1) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (from == to ? 0 : (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to))
      if (from_1 == to_1) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access loc(a, from).val (countfalse.vpr@37.1--42.2) [176379]"}
          HasDirectPerm(Mask, (loc(a_2, from_1): Ref), val);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Precondition of function countFalse might not hold. Assertion 0 <= from + 1 might not hold. (countfalse.vpr@41.49--41.74) [176380]"}
            0 <= from_1 + 1;
          assert {:msg "  Precondition of function countFalse might not hold. Assertion from + 1 <= to might not hold. (countfalse.vpr@41.49--41.74) [176381]"}
            from_1 + 1 <= to_1;
          assert {:msg "  Precondition of function countFalse might not hold. Assertion to <= length(a) might not hold. (countfalse.vpr@41.49--41.74) [176382]"}
            to_1 <= (length_2(a_2): int);
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, z) is injective
            assert {:msg "  Precondition of function countFalse might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@41.49--41.74) [176383]"}
              (forall z_5: int, z_5_2: int ::
              { neverTriggered4(z_5), neverTriggered4(z_5_2) }
              (((z_5 != z_5_2 && (from_1 + 1 <= z_5 && z_5 < to_1)) && (from_1 + 1 <= z_5_2 && z_5_2 < to_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_5): Ref) != (loc(a_2, z_5_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function countFalse might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@41.49--41.74) [176384]"}
              (forall z_5: int ::
              { (loc(a_2, z_5): Ref) } { (loc(a_2, z_5): Ref) }
              from_1 + 1 <= z_5 && z_5 < to_1 ==> FullPerm > NoPerm ==> Mask[(loc(a_2, z_5): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, z)
            assume (forall z_5: int ::
              { (loc(a_2, z_5): Ref) } { (loc(a_2, z_5): Ref) }
              (from_1 + 1 <= z_5 && z_5 < to_1) && NoPerm < FullPerm ==> qpRange4((loc(a_2, z_5): Ref)) && invRecv4((loc(a_2, z_5): Ref)) == z_5
            );
            assume (forall o_9: Ref ::
              { invRecv4(o_9) }
              (from_1 + 1 <= invRecv4(o_9) && invRecv4(o_9) < to_1) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume countFalse#trigger(FrameFragment(countFalse#condqp2(Heap, a_2, from_1 + 1, to_1)), a_2, from_1 + 1, to_1);
        }
      }
  
  // -- Translate function body
    Result := (if from_1 == to_1 then 0 else (if Heap[(loc(a_2, from_1): Ref), val] then 0 else 1) + countFalse(Heap, a_2, from_1 + 1, to_1));
}

// ==================================================
// Translation of method lemmaFrontX
// ==================================================

procedure lemmaFrontX(a_2: ArrayDomainType, from_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= from_1;
    assume from_1 <= (length_2(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Int :: { loc(a, z) } from <= z && z < length(a) ==> acc(loc(a, z).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@13.12--13.79) [176385]"}
      (forall z_1: int, z_1_1: int ::
      
      (((z_1 != z_1_1 && (from_1 <= z_1 && z_1 < (length_2(a_2): int))) && (from_1 <= z_1_1 && z_1_1 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_1): Ref) != (loc(a_2, z_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall z_1: int ::
        { (loc(a_2, z_1): Ref) } { (loc(a_2, z_1): Ref) }
        (from_1 <= z_1 && z_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange5((loc(a_2, z_1): Ref)) && invRecv5((loc(a_2, z_1): Ref)) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        ((from_1 <= invRecv5(o_9) && invRecv5(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: int ::
        { (loc(a_2, z_1): Ref) } { (loc(a_2, z_1): Ref) }
        from_1 <= z_1 && z_1 < (length_2(a_2): int) ==> (loc(a_2, z_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((from_1 <= invRecv5(o_9) && invRecv5(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((from_1 <= invRecv5(o_9) && invRecv5(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert countFalseX(a, from) ==
  //   (from == length(a) ? 0 : countFalseX(a, from + 1)) -- countfalse.vpr@15.3--18.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of countFalseX(a, from) == (from == length(a) ? 0 : countFalseX(a, from + 1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function countFalseX might not hold. Assertion 0 <= from might not hold. (countfalse.vpr@16.5--16.25) [176386]"}
          0 <= from_1;
        assert {:msg "  Precondition of function countFalseX might not hold. Assertion from <= length(a) might not hold. (countfalse.vpr@16.5--16.25) [176387]"}
          from_1 <= (length_2(a_2): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, z) is injective
          assert {:msg "  Precondition of function countFalseX might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@16.5--16.25) [176388]"}
            (forall z_2: int, z_2_2: int ::
            { neverTriggered6(z_2), neverTriggered6(z_2_2) }
            (((z_2 != z_2_2 && (from_1 <= z_2 && z_2 < (length_2(a_2): int))) && (from_1 <= z_2_2 && z_2_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_2): Ref) != (loc(a_2, z_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function countFalseX might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@16.5--16.25) [176389]"}
            (forall z_2: int ::
            { (loc(a_2, z_2): Ref) } { (loc(a_2, z_2): Ref) }
            from_1 <= z_2 && z_2 < (length_2(a_2): int) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, z_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, z)
          assume (forall z_2: int ::
            { (loc(a_2, z_2): Ref) } { (loc(a_2, z_2): Ref) }
            (from_1 <= z_2 && z_2 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange6((loc(a_2, z_2): Ref)) && invRecv6((loc(a_2, z_2): Ref)) == z_2
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            (from_1 <= invRecv6(o_9) && invRecv6(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange6(o_9)) ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (from_1 == (length_2(a_2): int)) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          assert {:msg "  Precondition of function countFalseX might not hold. Assertion 0 <= from + 1 might not hold. (countfalse.vpr@18.30--18.52) [176390]"}
            0 <= from_1 + 1;
          assert {:msg "  Precondition of function countFalseX might not hold. Assertion from + 1 <= length(a) might not hold. (countfalse.vpr@18.30--18.52) [176391]"}
            from_1 + 1 <= (length_2(a_2): int);
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, z) is injective
            assert {:msg "  Precondition of function countFalseX might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@18.30--18.52) [176392]"}
              (forall z_3: int, z_3_1: int ::
              { neverTriggered7(z_3), neverTriggered7(z_3_1) }
              (((z_3 != z_3_1 && (from_1 + 1 <= z_3 && z_3 < (length_2(a_2): int))) && (from_1 + 1 <= z_3_1 && z_3_1 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_3): Ref) != (loc(a_2, z_3_1): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function countFalseX might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@18.30--18.52) [176393]"}
              (forall z_3: int ::
              { (loc(a_2, z_3): Ref) } { (loc(a_2, z_3): Ref) }
              from_1 + 1 <= z_3 && z_3 < (length_2(a_2): int) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, z_3): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, z)
            assume (forall z_3: int ::
              { (loc(a_2, z_3): Ref) } { (loc(a_2, z_3): Ref) }
              (from_1 + 1 <= z_3 && z_3 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange7((loc(a_2, z_3): Ref)) && invRecv7((loc(a_2, z_3): Ref)) == z_3
            );
            assume (forall o_9: Ref ::
              { invRecv7(o_9) }
              (from_1 + 1 <= invRecv7(o_9) && invRecv7(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion countFalseX(a, from) == (from == length(a) ? 0 : countFalseX(a, from + 1)) might not hold. (countfalse.vpr@16.5--18.53) [176394]"}
      countFalseX(Heap, a_2, from_1) == (if from_1 == (length_2(a_2): int) then 0 else countFalseX(Heap, a_2, from_1 + 1));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method lemmaFrontXX
// ==================================================

procedure lemmaFrontXX(a_2: ArrayDomainType, from_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= from_1;
    assume from_1 <= (length_2(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Int :: { loc(a, z) } from <= z && z < length(a) ==> acc(loc(a, z).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@23.12--23.79) [176395]"}
      (forall z_1: int, z_1_1: int ::
      
      (((z_1 != z_1_1 && (from_1 <= z_1 && z_1 < (length_2(a_2): int))) && (from_1 <= z_1_1 && z_1_1 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_1): Ref) != (loc(a_2, z_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall z_1: int ::
        { (loc(a_2, z_1): Ref) } { (loc(a_2, z_1): Ref) }
        (from_1 <= z_1 && z_1 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange8((loc(a_2, z_1): Ref)) && invRecv8((loc(a_2, z_1): Ref)) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        ((from_1 <= invRecv8(o_9) && invRecv8(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: int ::
        { (loc(a_2, z_1): Ref) } { (loc(a_2, z_1): Ref) }
        from_1 <= z_1 && z_1 < (length_2(a_2): int) ==> (loc(a_2, z_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((from_1 <= invRecv8(o_9) && invRecv8(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((from_1 <= invRecv8(o_9) && invRecv8(o_9) < (length_2(a_2): int)) && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert countFalseX(a, from) ==
  //   (from == length(a) ? 0 : countFalseX(a, from + 1)) -- countfalse.vpr@25.3--28.53
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of countFalseX(a, from) == (from == length(a) ? 0 : countFalseX(a, from + 1))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function countFalseX might not hold. Assertion 0 <= from might not hold. (countfalse.vpr@26.5--26.25) [176396]"}
          0 <= from_1;
        assert {:msg "  Precondition of function countFalseX might not hold. Assertion from <= length(a) might not hold. (countfalse.vpr@26.5--26.25) [176397]"}
          from_1 <= (length_2(a_2): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, z) is injective
          assert {:msg "  Precondition of function countFalseX might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@26.5--26.25) [176398]"}
            (forall z_2: int, z_2_2: int ::
            { neverTriggered9(z_2), neverTriggered9(z_2_2) }
            (((z_2 != z_2_2 && (from_1 <= z_2 && z_2 < (length_2(a_2): int))) && (from_1 <= z_2_2 && z_2_2 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_2): Ref) != (loc(a_2, z_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function countFalseX might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@26.5--26.25) [176399]"}
            (forall z_2: int ::
            { (loc(a_2, z_2): Ref) } { (loc(a_2, z_2): Ref) }
            from_1 <= z_2 && z_2 < (length_2(a_2): int) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, z_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, z)
          assume (forall z_2: int ::
            { (loc(a_2, z_2): Ref) } { (loc(a_2, z_2): Ref) }
            (from_1 <= z_2 && z_2 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange9((loc(a_2, z_2): Ref)) && invRecv9((loc(a_2, z_2): Ref)) == z_2
          );
          assume (forall o_9: Ref ::
            { invRecv9(o_9) }
            (from_1 <= invRecv9(o_9) && invRecv9(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange9(o_9)) ==> (loc(a_2, invRecv9(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (from_1 == (length_2(a_2): int)) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          assert {:msg "  Precondition of function countFalseX might not hold. Assertion 0 <= from + 1 might not hold. (countfalse.vpr@28.30--28.52) [176400]"}
            0 <= from_1 + 1;
          assert {:msg "  Precondition of function countFalseX might not hold. Assertion from + 1 <= length(a) might not hold. (countfalse.vpr@28.30--28.52) [176401]"}
            from_1 + 1 <= (length_2(a_2): int);
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, z) is injective
            assert {:msg "  Precondition of function countFalseX might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@28.30--28.52) [176402]"}
              (forall z_3: int, z_3_1: int ::
              { neverTriggered10(z_3), neverTriggered10(z_3_1) }
              (((z_3 != z_3_1 && (from_1 + 1 <= z_3 && z_3 < (length_2(a_2): int))) && (from_1 + 1 <= z_3_1 && z_3_1 < (length_2(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_3): Ref) != (loc(a_2, z_3_1): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function countFalseX might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@28.30--28.52) [176403]"}
              (forall z_3: int ::
              { (loc(a_2, z_3): Ref) } { (loc(a_2, z_3): Ref) }
              from_1 + 1 <= z_3 && z_3 < (length_2(a_2): int) ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, z_3): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, z)
            assume (forall z_3: int ::
              { (loc(a_2, z_3): Ref) } { (loc(a_2, z_3): Ref) }
              (from_1 + 1 <= z_3 && z_3 < (length_2(a_2): int)) && NoPerm < FullPerm ==> qpRange10((loc(a_2, z_3): Ref)) && invRecv10((loc(a_2, z_3): Ref)) == z_3
            );
            assume (forall o_9: Ref ::
              { invRecv10(o_9) }
              (from_1 + 1 <= invRecv10(o_9) && invRecv10(o_9) < (length_2(a_2): int)) && (NoPerm < FullPerm && qpRange10(o_9)) ==> (loc(a_2, invRecv10(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion countFalseX(a, from) == (from == length(a) ? 0 : countFalseX(a, from + 1)) might not hold. (countfalse.vpr@26.5--28.53) [176404]"}
      countFalseX(Heap, a_2, from_1) == (if from_1 == (length_2(a_2): int) then 0 else countFalseX(Heap, a_2, from_1 + 1));
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- countfalse.vpr@31.3--31.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (countfalse.vpr@31.10--31.15) [176405]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method lemmaFront
// ==================================================

procedure lemmaFront(a_2: ArrayDomainType, from_1: int, to_1: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= from_1;
    assume from_1 <= to_1;
    assume to_1 <= (length_2(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Int :: { loc(a, z) } from <= z && z < to ==> acc(loc(a, z).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@46.12--46.72) [176406]"}
      (forall z_1: int, z_1_1: int ::
      
      (((z_1 != z_1_1 && (from_1 <= z_1 && z_1 < to_1)) && (from_1 <= z_1_1 && z_1_1 < to_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_1): Ref) != (loc(a_2, z_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall z_1: int ::
        { (loc(a_2, z_1): Ref) } { (loc(a_2, z_1): Ref) }
        (from_1 <= z_1 && z_1 < to_1) && NoPerm < FullPerm ==> qpRange11((loc(a_2, z_1): Ref)) && invRecv11((loc(a_2, z_1): Ref)) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        ((from_1 <= invRecv11(o_9) && invRecv11(o_9) < to_1) && NoPerm < FullPerm) && qpRange11(o_9) ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: int ::
        { (loc(a_2, z_1): Ref) } { (loc(a_2, z_1): Ref) }
        from_1 <= z_1 && z_1 < to_1 ==> (loc(a_2, z_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((from_1 <= invRecv11(o_9) && invRecv11(o_9) < to_1) && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((from_1 <= invRecv11(o_9) && invRecv11(o_9) < to_1) && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert countFalse(a, from, to) ==
  //   (from == to ?
  //     0 :
  //     (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to)) -- countfalse.vpr@49.3--52.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of countFalse(a, from, to) == (from == to ? 0 : (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function countFalse might not hold. Assertion 0 <= from might not hold. (countfalse.vpr@50.5--50.28) [176407]"}
          0 <= from_1;
        assert {:msg "  Precondition of function countFalse might not hold. Assertion from <= to might not hold. (countfalse.vpr@50.5--50.28) [176408]"}
          from_1 <= to_1;
        assert {:msg "  Precondition of function countFalse might not hold. Assertion to <= length(a) might not hold. (countfalse.vpr@50.5--50.28) [176409]"}
          to_1 <= (length_2(a_2): int);
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, z) is injective
          assert {:msg "  Precondition of function countFalse might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@50.5--50.28) [176410]"}
            (forall z_2: int, z_2_2: int ::
            { neverTriggered12(z_2), neverTriggered12(z_2_2) }
            (((z_2 != z_2_2 && (from_1 <= z_2 && z_2 < to_1)) && (from_1 <= z_2_2 && z_2_2 < to_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_2): Ref) != (loc(a_2, z_2_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function countFalse might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@50.5--50.28) [176411]"}
            (forall z_2: int ::
            { (loc(a_2, z_2): Ref) } { (loc(a_2, z_2): Ref) }
            from_1 <= z_2 && z_2 < to_1 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, z_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, z)
          assume (forall z_2: int ::
            { (loc(a_2, z_2): Ref) } { (loc(a_2, z_2): Ref) }
            (from_1 <= z_2 && z_2 < to_1) && NoPerm < FullPerm ==> qpRange12((loc(a_2, z_2): Ref)) && invRecv12((loc(a_2, z_2): Ref)) == z_2
          );
          assume (forall o_9: Ref ::
            { invRecv12(o_9) }
            (from_1 <= invRecv12(o_9) && invRecv12(o_9) < to_1) && (NoPerm < FullPerm && qpRange12(o_9)) ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (from_1 == to_1) {
      } else {
        assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, from).val (countfalse.vpr@50.5--52.77) [176412]"}
          HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, from_1): Ref), val);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          assert {:msg "  Precondition of function countFalse might not hold. Assertion 0 <= from + 1 might not hold. (countfalse.vpr@52.51--52.76) [176413]"}
            0 <= from_1 + 1;
          assert {:msg "  Precondition of function countFalse might not hold. Assertion from + 1 <= to might not hold. (countfalse.vpr@52.51--52.76) [176414]"}
            from_1 + 1 <= to_1;
          assert {:msg "  Precondition of function countFalse might not hold. Assertion to <= length(a) might not hold. (countfalse.vpr@52.51--52.76) [176415]"}
            to_1 <= (length_2(a_2): int);
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, z) is injective
            assert {:msg "  Precondition of function countFalse might not hold. Quantified resource loc(a, z).val might not be injective. (countfalse.vpr@52.51--52.76) [176416]"}
              (forall z_3: int, z_3_1: int ::
              { neverTriggered13(z_3), neverTriggered13(z_3_1) }
              (((z_3 != z_3_1 && (from_1 + 1 <= z_3 && z_3 < to_1)) && (from_1 + 1 <= z_3_1 && z_3_1 < to_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, z_3): Ref) != (loc(a_2, z_3_1): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function countFalse might not hold. There might be insufficient permission to access loc(a, z).val (countfalse.vpr@52.51--52.76) [176417]"}
              (forall z_3: int ::
              { (loc(a_2, z_3): Ref) } { (loc(a_2, z_3): Ref) }
              from_1 + 1 <= z_3 && z_3 < to_1 ==> FullPerm > NoPerm ==> ExhaleWellDef0Mask[(loc(a_2, z_3): Ref), val] > NoPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, z)
            assume (forall z_3: int ::
              { (loc(a_2, z_3): Ref) } { (loc(a_2, z_3): Ref) }
              (from_1 + 1 <= z_3 && z_3 < to_1) && NoPerm < FullPerm ==> qpRange13((loc(a_2, z_3): Ref)) && invRecv13((loc(a_2, z_3): Ref)) == z_3
            );
            assume (forall o_9: Ref ::
              { invRecv13(o_9) }
              (from_1 + 1 <= invRecv13(o_9) && invRecv13(o_9) < to_1) && (NoPerm < FullPerm && qpRange13(o_9)) ==> (loc(a_2, invRecv13(o_9)): Ref) == o_9
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion countFalse(a, from, to) == (from == to ? 0 : (loc(a, from).val ? 0 : 1) + countFalse(a, from + 1, to)) might not hold. (countfalse.vpr@50.5--52.77) [176418]"}
      countFalse(Heap, a_2, from_1, to_1) == (if from_1 == to_1 then 0 else (if Heap[(loc(a_2, from_1): Ref), val] then 0 else 1) + countFalse(Heap, a_2, from_1 + 1, to_1));
    assume state(Heap, Mask);
}