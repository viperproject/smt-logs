// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:44:22
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0844.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0844-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_7: Ref, f_11: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_7, f_11] }
  Heap[o_7, $allocated] ==> Heap[Heap[o_7, f_11], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref, f_12: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, f_12] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_8, f_12) ==> Heap[o_8, f_12] == ExhaleHeap[o_8, f_12]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3), ExhaleHeap[null, PredicateMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> Heap[null, PredicateMaskField(pm_f_3)] == ExhaleHeap[null, PredicateMaskField(pm_f_3)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsPredicateField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, PredicateMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3), ExhaleHeap[null, WandMaskField(pm_f_3)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> Heap[null, WandMaskField(pm_f_3)] == ExhaleHeap[null, WandMaskField(pm_f_3)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_3: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_3) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_3) && IsWandField(pm_f_3) ==> (forall <A, B> o2_3: Ref, f_12: (Field A B) ::
    { ExhaleHeap[o2_3, f_12] }
    Heap[null, WandMaskField(pm_f_3)][o2_3, f_12] ==> Heap[o2_3, f_12] == ExhaleHeap[o2_3, f_12]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_8: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_8, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_8, $allocated] ==> ExhaleHeap[o_8, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_7: Ref, f_2: (Field A B), v: B ::
  { Heap[o_7, f_2:=v] }
  succHeap(Heap, Heap[o_7, f_2:=v])
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

function  neverTriggered1(j_1: int): bool;
function  neverTriggered2(j_4_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x: ArrayDomainType, n_1_1_1: int, i_1_1_1: int): int;
function  invRecv2(x_1: ArrayDomainType, n_2_1_1: int, i_2_1_1: int): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x: ArrayDomainType, n_1_1_1: int, i_1_1_1: int): bool;
function  qpRange2(x_1: ArrayDomainType, n_2_1_1: int, i_2_1_1: int): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: aloc
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

// Translation of domain function array_loc
function  array_loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function alen
function  alen(a_3: ArrayDomainType): int;

// Translation of domain function loc_inv_1
function  loc_inv_1(loc: Ref): ArrayDomainType;

// Translation of domain function loc_inv_2
function  loc_inv_2(loc: Ref): int;

// Translation of anonymous domain axiom
axiom (forall a_2: ArrayDomainType, i: int ::
  { (array_loc(a_2, i): Ref) }
  (loc_inv_1((array_loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (loc_inv_2((array_loc(a_2, i): Ref)): int) == i
);

// Translation of anonymous domain axiom
axiom (forall a_2: ArrayDomainType ::
  { (alen(a_2): int) }
  (alen(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique vint_1: Field NormalField int;
axiom !IsPredicateField(vint_1);
axiom !IsWandField(vint_1);

// ==================================================
// Translation of function aloc
// ==================================================

// Uninterpreted function definitions
function  aloc_1(Heap: HeapType, a_2: ArrayDomainType, i: int): Ref;
function  aloc'(Heap: HeapType, a_2: ArrayDomainType, i: int): Ref;
axiom (forall Heap: HeapType, a_2: ArrayDomainType, i: int ::
  { aloc_1(Heap, a_2, i) }
  aloc_1(Heap, a_2, i) == aloc'(Heap, a_2, i) && dummyFunction(aloc#triggerStateless(a_2, i))
);
axiom (forall Heap: HeapType, a_2: ArrayDomainType, i: int ::
  { aloc'(Heap, a_2, i) }
  dummyFunction(aloc#triggerStateless(a_2, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, i: int ::
  { state(Heap, Mask), aloc_1(Heap, a_2, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < (alen(a_2): int) ==> aloc_1(Heap, a_2, i) == (array_loc(a_2, i): Ref)
);

// Framing axioms
function  aloc#frame(frame: FrameType, a_2: ArrayDomainType, i: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, i: int ::
  { state(Heap, Mask), aloc'(Heap, a_2, i) }
  state(Heap, Mask) ==> aloc'(Heap, a_2, i) == aloc#frame(EmptyFrame, a_2, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, i: int ::
  { state(Heap, Mask), aloc'(Heap, a_2, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || aloc#trigger(EmptyFrame, a_2, i)) ==> 0 <= i && i < (alen(a_2): int) ==> (loc_inv_1(aloc'(Heap, a_2, i)): ArrayDomainType) == a_2
);
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, i: int ::
  { state(Heap, Mask), aloc'(Heap, a_2, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || aloc#trigger(EmptyFrame, a_2, i)) ==> 0 <= i && i < (alen(a_2): int) ==> (loc_inv_2(aloc'(Heap, a_2, i)): int) == i
);

// Trigger function (controlling recursive postconditions)
function  aloc#trigger(frame: FrameType, a_2: ArrayDomainType, i: int): bool;

// State-independent trigger function
function  aloc#triggerStateless(a_2: ArrayDomainType, i: int): Ref;

// Check contract well-formedness and postcondition
procedure aloc#definedness(a_2: ArrayDomainType, i: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume state(Heap, Mask);
    assume i < (alen(a_2): int);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (array_loc(a_2, i): Ref);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of aloc might not hold. Assertion loc_inv_1(result) == a might not hold. (0844.vpr@73.11--73.33) [219204]"}
      (loc_inv_1(Result): ArrayDomainType) == a_2;
    assert {:msg "  Postcondition of aloc might not hold. Assertion loc_inv_2(result) == i might not hold. (0844.vpr@74.11--74.33) [219205]"}
      (loc_inv_2(Result): int) == i;
}

// ==================================================
// Translation of predicate hide0
// ==================================================

type PredicateType_hide0;
function  hide0(x: ArrayDomainType, n: int, i: int): Field PredicateType_hide0 FrameType;
function  hide0#sm(x: ArrayDomainType, n: int, i: int): Field PredicateType_hide0 PMaskType;
axiom (forall x: ArrayDomainType, n: int, i: int ::
  { PredicateMaskField(hide0(x, n, i)) }
  PredicateMaskField(hide0(x, n, i)) == hide0#sm(x, n, i)
);
axiom (forall x: ArrayDomainType, n: int, i: int ::
  { hide0(x, n, i) }
  IsPredicateField(hide0(x, n, i))
);
axiom (forall x: ArrayDomainType, n: int, i: int ::
  { hide0(x, n, i) }
  getPredWandId(hide0(x, n, i)) == 0
);
function  hide0#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  hide0#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2_1: int ::
  { hide0(x, n, i), hide0(x2, n2, i2_1) }
  hide0(x, n, i) == hide0(x2, n2, i2_1) ==> x == x2 && (n == n2 && i == i2_1)
);
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2_1: int ::
  { hide0#sm(x, n, i), hide0#sm(x2, n2, i2_1) }
  hide0#sm(x, n, i) == hide0#sm(x2, n2, i2_1) ==> x == x2 && (n == n2 && i == i2_1)
);

axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { hide0#trigger(Heap, hide0(x, n, i)) }
  hide0#everUsed(hide0(x, n, i))
);

procedure hide0#definedness(x: ArrayDomainType, n: int, i: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  
  // -- Check definedness of predicate body of hide0
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume n > 0;
    assume i >= 0;
    assume i < n;
    assume (alen(x): int) == n;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(aloc(x, i).int, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0844.vpr@60.7--60.17) [219206]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0844.vpr@60.7--60.17) [219207]"}
          i < (alen(x): int);
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    assume aloc_1(Heap, x, i) != null;
    Mask := Mask[aloc_1(Heap, x, i), vint_1:=Mask[aloc_1(Heap, x, i), vint_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate hide1
// ==================================================

type PredicateType_hide1;
function  hide1(x: ArrayDomainType, n: int, i: int): Field PredicateType_hide1 FrameType;
function  hide1#sm(x: ArrayDomainType, n: int, i: int): Field PredicateType_hide1 PMaskType;
axiom (forall x: ArrayDomainType, n: int, i: int ::
  { PredicateMaskField(hide1(x, n, i)) }
  PredicateMaskField(hide1(x, n, i)) == hide1#sm(x, n, i)
);
axiom (forall x: ArrayDomainType, n: int, i: int ::
  { hide1(x, n, i) }
  IsPredicateField(hide1(x, n, i))
);
axiom (forall x: ArrayDomainType, n: int, i: int ::
  { hide1(x, n, i) }
  getPredWandId(hide1(x, n, i)) == 1
);
function  hide1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  hide1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2_1: int ::
  { hide1(x, n, i), hide1(x2, n2, i2_1) }
  hide1(x, n, i) == hide1(x2, n2, i2_1) ==> x == x2 && (n == n2 && i == i2_1)
);
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2_1: int ::
  { hide1#sm(x, n, i), hide1#sm(x2, n2, i2_1) }
  hide1#sm(x, n, i) == hide1#sm(x2, n2, i2_1) ==> x == x2 && (n == n2 && i == i2_1)
);

axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { hide1#trigger(Heap, hide1(x, n, i)) }
  hide1#everUsed(hide1(x, n, i))
);

procedure hide1#definedness(x: ArrayDomainType, n: int, i: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  
  // -- Check definedness of predicate body of hide1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume n > 0;
    assume i >= 0;
    assume i < n;
    assume (alen(x): int) == n;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(aloc(x, i).int, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0844.vpr@65.7--65.17) [219208]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0844.vpr@65.7--65.17) [219209]"}
          i < (alen(x): int);
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    assume aloc_1(Heap, x, i) != null;
    Mask := Mask[aloc_1(Heap, x, i), vint_1:=Mask[aloc_1(Heap, x, i), vint_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method main1
// ==================================================

procedure main1(tid: int, n: int, x0: ArrayDomainType, x1_2: ArrayDomainType, i: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var j_6: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var j_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var j_9_1: int;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var j_7: int;
  var j_12_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume x0 != x1_2;
    assume state(Heap, Mask);
    assume (alen(x0): int) == n;
    assume (alen(x1_2): int) == n;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { hide0(x0, n, j) } 0 <= j && j < n ==> acc(hide0(x0, n, j), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(hide0(x0, n, j), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hide0(x0, n, j) might not be injective. (0844.vpr@7.13--8.56) [219210]"}
        (forall j_1: int, j_1_1: int ::
        { neverTriggered1(j_1), neverTriggered1(j_1_1) }
        (((j_1 != j_1_1 && (0 <= j_1 && j_1 < n)) && (0 <= j_1_1 && j_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (x0 != x0 || n != n) || j_1 != j_1_1
      );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Heap[null, hide0(x0, n, j_1)] } { Mask[null, hide0(x0, n, j_1)] } { Heap[null, hide0(x0, n, j_1)] }
        (0 <= j_1 && j_1 < n) && NoPerm < FullPerm ==> invRecv1(x0, n, j_1) == j_1 && qpRange1(x0, n, j_1)
      );
      assume (forall x: ArrayDomainType, n_1_1_1: int, i_1_1_1: int ::
        { invRecv1(x, n_1_1_1, i_1_1_1) }
        ((0 <= invRecv1(x, n_1_1_1, i_1_1_1) && invRecv1(x, n_1_1_1, i_1_1_1) < n) && NoPerm < FullPerm) && qpRange1(x, n_1_1_1, i_1_1_1) ==> (x0 == x && n == n_1_1_1) && invRecv1(x, n_1_1_1, i_1_1_1) == i_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall x: ArrayDomainType, n_1_1_1: int, i_1_1_1: int ::
        { QPMask[null, hide0(x, n_1_1_1, i_1_1_1)] }
        ((0 <= invRecv1(x, n_1_1_1, i_1_1_1) && invRecv1(x, n_1_1_1, i_1_1_1) < n) && NoPerm < FullPerm) && qpRange1(x, n_1_1_1, i_1_1_1) ==> (NoPerm < FullPerm ==> (x0 == x && n == n_1_1_1) && invRecv1(x, n_1_1_1, i_1_1_1) == i_1_1_1) && QPMask[null, hide0(x, n_1_1_1, i_1_1_1)] == Mask[null, hide0(x, n_1_1_1, i_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: ArrayDomainType, n_1_1_1: int, i_1_1_1: int ::
        { QPMask[null, hide0(x, n_1_1_1, i_1_1_1)] }
        !(((0 <= invRecv1(x, n_1_1_1, i_1_1_1) && invRecv1(x, n_1_1_1, i_1_1_1) < n) && NoPerm < FullPerm) && qpRange1(x, n_1_1_1, i_1_1_1)) ==> QPMask[null, hide0(x, n_1_1_1, i_1_1_1)] == Mask[null, hide0(x, n_1_1_1, i_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { hide1(x1, n, j) } 0 <= j && j < n ==> acc(hide1(x1, n, j), 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(hide1(x1, n, j), 1 / 2) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hide1(x1, n, j) might not be injective. (0844.vpr@10.13--12.54) [219211]"}
        (forall j_4_1: int, j_4_2: int ::
        { neverTriggered2(j_4_1), neverTriggered2(j_4_2) }
        (((j_4_1 != j_4_2 && (0 <= j_4_1 && j_4_1 < n)) && (0 <= j_4_2 && j_4_2 < n)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (x1_2 != x1_2 || n != n) || j_4_1 != j_4_2
      );
    
    // -- Define Inverse Function
      assume (forall j_4_1: int ::
        { Heap[null, hide1(x1_2, n, j_4_1)] } { Mask[null, hide1(x1_2, n, j_4_1)] } { Heap[null, hide1(x1_2, n, j_4_1)] }
        (0 <= j_4_1 && j_4_1 < n) && NoPerm < 1 / 2 ==> invRecv2(x1_2, n, j_4_1) == j_4_1 && qpRange2(x1_2, n, j_4_1)
      );
      assume (forall x_1: ArrayDomainType, n_2_1_1: int, i_2_1_1: int ::
        { invRecv2(x_1, n_2_1_1, i_2_1_1) }
        ((0 <= invRecv2(x_1, n_2_1_1, i_2_1_1) && invRecv2(x_1, n_2_1_1, i_2_1_1) < n) && NoPerm < 1 / 2) && qpRange2(x_1, n_2_1_1, i_2_1_1) ==> (x1_2 == x_1 && n == n_2_1_1) && invRecv2(x_1, n_2_1_1, i_2_1_1) == i_2_1_1
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0844.vpr@10.13--12.54) [219212]"}
      (forall j_4_1: int ::
      { Heap[null, hide1(x1_2, n, j_4_1)] } { Mask[null, hide1(x1_2, n, j_4_1)] } { Heap[null, hide1(x1_2, n, j_4_1)] }
      0 <= j_4_1 && j_4_1 < n ==> 1 / 2 >= NoPerm
    );
    
    // -- Define updated permissions
      assume (forall x_1: ArrayDomainType, n_2_1_1: int, i_2_1_1: int ::
        { QPMask[null, hide1(x_1, n_2_1_1, i_2_1_1)] }
        ((0 <= invRecv2(x_1, n_2_1_1, i_2_1_1) && invRecv2(x_1, n_2_1_1, i_2_1_1) < n) && NoPerm < 1 / 2) && qpRange2(x_1, n_2_1_1, i_2_1_1) ==> (NoPerm < 1 / 2 ==> (x1_2 == x_1 && n == n_2_1_1) && invRecv2(x_1, n_2_1_1, i_2_1_1) == i_2_1_1) && QPMask[null, hide1(x_1, n_2_1_1, i_2_1_1)] == Mask[null, hide1(x_1, n_2_1_1, i_2_1_1)] + 1 / 2
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x_1: ArrayDomainType, n_2_1_1: int, i_2_1_1: int ::
        { QPMask[null, hide1(x_1, n_2_1_1, i_2_1_1)] }
        !(((0 <= invRecv2(x_1, n_2_1_1, i_2_1_1) && invRecv2(x_1, n_2_1_1, i_2_1_1) < n) && NoPerm < 1 / 2) && qpRange2(x_1, n_2_1_1, i_2_1_1)) ==> QPMask[null, hide1(x_1, n_2_1_1, i_2_1_1)] == Mask[null, hide1(x_1, n_2_1_1, i_2_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { hide0(x0, n, j) } 0 <= j && j < n ==> (unfolding acc(hide0(x0, n, j), write) in aloc(x0, j).int) == 0)
      if (*) {
        if (0 <= j_6 && j_6 < n) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume hide0#trigger(UnfoldingHeap, hide0(x0, n, j_6));
          assume UnfoldingHeap[null, hide0(x0, n, j_6)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x0, j_6), vint_1]);
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hide0(x0, n, j) (0844.vpr@14.13--15.80) [219213]"}
              perm <= UnfoldingMask[null, hide0(x0, n, j_6)];
          }
          UnfoldingMask := UnfoldingMask[null, hide0(x0, n, j_6):=UnfoldingMask[null, hide0(x0, n, j_6)] - perm];
          assume n > 0;
          assume j_6 >= 0;
          assume j_6 < n;
          assume (alen(x0): int) == n;
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume aloc_1(UnfoldingHeap, x0, j_6) != null;
          UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_6), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_6), vint_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= j might not hold. (0844.vpr@15.59--15.70) [219214]"}
              0 <= j_6;
            assert {:msg "  Precondition of function aloc might not hold. Assertion j < alen(x0) might not hold. (0844.vpr@15.59--15.70) [219215]"}
              j_6 < (alen(x0): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(x0, j).int (0844.vpr@14.13--15.80) [219216]"}
            HasDirectPerm(UnfoldingMask, aloc_1(UnfoldingHeap, x0, j_6), vint_1);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, hide0#sm(x0, n, j_6):=Heap[null, hide0#sm(x0, n, j_6)][aloc_1(Heap, x0, j_6), vint_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, hide0#sm(x0, n, j_6):=Heap[null, hide0#sm(x0, n, j_6)][aloc_1(Heap, x0, j_6), vint_1:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall j_7_1: int ::
      { Heap[null, hide0(x0, n, j_7_1)] }
      0 <= j_7_1 && j_7_1 < n ==> Heap[aloc_1(Heap, x0, j_7_1), vint_1] == 0
    );
    assume state(Heap, Mask);
    assume i >= 0;
    assume i < n;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (forall j: Int ::
  //     { hide0(x0, n, j) }
  //     0 <= j && j < n ==>
  //     (unfolding acc(hide0(x0, n, j), write) in aloc(x0, j).int) == 0) -- 0844.vpr@20.3--22.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { hide0(x0, n, j) } 0 <= j && j < n ==> (unfolding acc(hide0(x0, n, j), write) in aloc(x0, j).int) == 0)
      if (*) {
        if (0 <= j_2 && j_2 < n) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume hide0#trigger(UnfoldingHeap, hide0(x0, n, j_2));
          assume UnfoldingHeap[null, hide0(x0, n, j_2)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x0, j_2), vint_1]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access hide0(x0, n, j) (0844.vpr@20.11--22.56) [219217]"}
              perm <= UnfoldingMask[null, hide0(x0, n, j_2)];
          }
          UnfoldingMask := UnfoldingMask[null, hide0(x0, n, j_2):=UnfoldingMask[null, hide0(x0, n, j_2)] - perm];
          assume n > 0;
          assume j_2 >= 0;
          assume j_2 < n;
          assume (alen(x0): int) == n;
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume aloc_1(UnfoldingHeap, x0, j_2) != null;
          UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_2), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_2), vint_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := UnfoldingMask;
            ExhaleWellDef1Heap := UnfoldingHeap;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= j might not hold. (0844.vpr@22.35--22.46) [219218]"}
              0 <= j_2;
            assert {:msg "  Precondition of function aloc might not hold. Assertion j < alen(x0) might not hold. (0844.vpr@22.35--22.46) [219219]"}
              j_2 < (alen(x0): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access aloc(x0, j).int (0844.vpr@20.11--22.56) [219220]"}
            HasDirectPerm(UnfoldingMask, aloc_1(Heap, x0, j_2), vint_1);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, hide0#sm(x0, n, j_2):=Heap[null, hide0#sm(x0, n, j_2)][aloc_1(Heap, x0, j_2), vint_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, hide0#sm(x0, n, j_2):=Heap[null, hide0#sm(x0, n, j_2)][aloc_1(Heap, x0, j_2), vint_1:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (0 <= j_9_1 && j_9_1 < n) {
        assert {:msg "  Assert might fail. Assertion (unfolding acc(hide0(x0, n, j), write) in aloc(x0, j).int) == 0 might not hold. (0844.vpr@20.11--22.56) [219221]"}
          Heap[aloc_1(Heap, x0, j_9_1), vint_1] == 0;
      }
      assume false;
    }
    assume (forall j_10_1: int ::
      { Heap[null, hide0(x0, n, j_10_1)] }
      0 <= j_10_1 && j_10_1 < n ==> Heap[aloc_1(Heap, x0, j_10_1), vint_1] == 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(hide1(x1, n, i), 1 / 2) -- 0844.vpr@24.3--24.34
    assume hide1#trigger(Heap, hide1(x1_2, n, i));
    assume Heap[null, hide1(x1_2, n, i)] == FrameFragment(Heap[aloc_1(Heap, x1_2, i), vint_1]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 2;
    assert {:msg "  Unfolding hide1(x1, n, i) might fail. Fraction 1 / 2 might be negative. (0844.vpr@24.3--24.34) [219223]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding hide1(x1, n, i) might fail. There might be insufficient permission to access hide1(x1, n, i) (0844.vpr@24.3--24.34) [219224]"}
        perm <= Mask[null, hide1(x1_2, n, i)];
    }
    Mask := Mask[null, hide1(x1_2, n, i):=Mask[null, hide1(x1_2, n, i)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, hide1(x1_2, n, i))) {
        havoc newVersion;
        Heap := Heap[null, hide1(x1_2, n, i):=newVersion];
      }
    assume n > 0;
    assume i >= 0;
    assume i < n;
    assume (alen(x1_2): int) == n;
    assume state(Heap, Mask);
    perm := FullPerm * (1 / 2);
    assert {:msg "  Unfolding hide1(x1, n, i) might fail. Fraction write * (1 / 2) might be negative. (0844.vpr@24.3--24.34) [219225]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> aloc_1(Heap, x1_2, i) != null;
    Mask := Mask[aloc_1(Heap, x1_2, i), vint_1:=Mask[aloc_1(Heap, x1_2, i), vint_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(hide1(x1, n, i), 1 / 2) -- 0844.vpr@25.3--25.32
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding hide1(x1, n, i) might fail. Assertion n > 0 might not hold. (0844.vpr@25.3--25.32) [219227]"}
      n > 0;
    assert {:msg "  Folding hide1(x1, n, i) might fail. Assertion i >= 0 might not hold. (0844.vpr@25.3--25.32) [219228]"}
      i >= 0;
    assert {:msg "  Folding hide1(x1, n, i) might fail. Assertion i < n might not hold. (0844.vpr@25.3--25.32) [219229]"}
      i < n;
    assert {:msg "  Folding hide1(x1, n, i) might fail. Assertion alen(x1) == n might not hold. (0844.vpr@25.3--25.32) [219230]"}
      (alen(x1_2): int) == n;
    perm := FullPerm * (1 / 2);
    assert {:msg "  Folding hide1(x1, n, i) might fail. Fraction write * (1 / 2) might be negative. (0844.vpr@25.3--25.32) [219231]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding hide1(x1, n, i) might fail. There might be insufficient permission to access aloc(x1, i).int (0844.vpr@25.3--25.32) [219232]"}
        perm <= Mask[aloc_1(Heap, x1_2, i), vint_1];
    }
    Mask := Mask[aloc_1(Heap, x1_2, i), vint_1:=Mask[aloc_1(Heap, x1_2, i), vint_1] - perm];
    perm := 1 / 2;
    assert {:msg "  Folding hide1(x1, n, i) might fail. Fraction 1 / 2 might be negative. (0844.vpr@25.3--25.32) [219233]"}
      perm >= NoPerm;
    Mask := Mask[null, hide1(x1_2, n, i):=Mask[null, hide1(x1_2, n, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume hide1#trigger(Heap, hide1(x1_2, n, i));
    assume Heap[null, hide1(x1_2, n, i)] == FrameFragment(Heap[aloc_1(Heap, x1_2, i), vint_1]);
    if (!HasDirectPerm(Mask, null, hide1(x1_2, n, i))) {
      Heap := Heap[null, hide1#sm(x1_2, n, i):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, hide1(x1_2, n, i):=freshVersion];
    }
    Heap := Heap[null, hide1#sm(x1_2, n, i):=Heap[null, hide1#sm(x1_2, n, i)][aloc_1(Heap, x1_2, i), vint_1:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall j: Int ::
  //     { hide0(x0, n, j) }
  //     0 <= j && j < n ==>
  //     (unfolding acc(hide0(x0, n, j), write) in aloc(x0, j).int) == 0) -- 0844.vpr@28.3--30.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall j: Int :: { hide0(x0, n, j) } 0 <= j && j < n ==> (unfolding acc(hide0(x0, n, j), write) in aloc(x0, j).int) == 0)
      if (*) {
        if (0 <= j_7 && j_7 < n) {
          UnfoldingHeap := ExhaleWellDef0Heap;
          UnfoldingMask := ExhaleWellDef0Mask;
          assume hide0#trigger(UnfoldingHeap, hide0(x0, n, j_7));
          assume UnfoldingHeap[null, hide0(x0, n, j_7)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x0, j_7), vint_1]);
          ExhaleWellDef1Mask := UnfoldingMask;
          ExhaleWellDef1Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access hide0(x0, n, j) (0844.vpr@28.11--30.56) [219234]"}
              perm <= UnfoldingMask[null, hide0(x0, n, j_7)];
          }
          UnfoldingMask := UnfoldingMask[null, hide0(x0, n, j_7):=UnfoldingMask[null, hide0(x0, n, j_7)] - perm];
          assume n > 0;
          assume j_7 >= 0;
          assume j_7 < n;
          assume (alen(x0): int) == n;
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume aloc_1(UnfoldingHeap, x0, j_7) != null;
          UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_7), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_7), vint_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := UnfoldingMask;
            ExhaleWellDef1Heap := UnfoldingHeap;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= j might not hold. (0844.vpr@30.35--30.46) [219235]"}
              0 <= j_7;
            assert {:msg "  Precondition of function aloc might not hold. Assertion j < alen(x0) might not hold. (0844.vpr@30.35--30.46) [219236]"}
              j_7 < (alen(x0): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access aloc(x0, j).int (0844.vpr@28.11--30.56) [219237]"}
            HasDirectPerm(UnfoldingMask, aloc_1(Heap, x0, j_7), vint_1);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, hide0#sm(x0, n, j_7):=Heap[null, hide0#sm(x0, n, j_7)][aloc_1(Heap, x0, j_7), vint_1:=true]];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, hide0#sm(x0, n, j_7):=Heap[null, hide0#sm(x0, n, j_7)][aloc_1(Heap, x0, j_7), vint_1:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    if (*) {
      if (0 <= j_12_2 && j_12_2 < n) {
        assert {:msg "  Assert might fail. Assertion (unfolding acc(hide0(x0, n, j), write) in aloc(x0, j).int) == 0 might not hold. (0844.vpr@28.11--30.56) [219238]"}
          Heap[aloc_1(Heap, x0, j_12_2), vint_1] == 0;
      }
      assume false;
    }
    assume (forall j_13_1: int ::
      { Heap[null, hide0(x0, n, j_13_1)] }
      0 <= j_13_1 && j_13_1 < n ==> Heap[aloc_1(Heap, x0, j_13_1), vint_1] == 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method aloc_pres_termination_proof
// ==================================================

procedure aloc_pres_termination_proof(a_2: ArrayDomainType, i: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var b_24: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (b) -- 0844.vpr@70.12--70.18
    if (b_24) {
      
      // -- Translating statement: inhale false -- <no position>
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale 0 <= i -- <no position>
        assume 0 <= i;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}