// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:49:04
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0832.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0832-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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

function  neverTriggered1(i_2_1: int): bool;
function  neverTriggered2(j_1: int): bool;
function  neverTriggered3(i: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(x: int, a_2: ArrayDomainType, n: int): int;
function  invRecv3(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(x: int, a_2: ArrayDomainType, n: int): bool;
function  qpRange3(recv: Ref): bool;

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
    assert {:msg "  Postcondition of aloc might not hold. Assertion loc_inv_1(result) == a might not hold. (0832.vpr@48.11--48.33) [216473]"}
      (loc_inv_1(Result): ArrayDomainType) == a_2;
    assert {:msg "  Postcondition of aloc might not hold. Assertion loc_inv_2(result) == i might not hold. (0832.vpr@49.11--49.33) [216474]"}
      (loc_inv_2(Result): int) == i;
}

// ==================================================
// Translation of predicate arrR
// ==================================================

type PredicateType_arrR;
function  arrR(x: int, a_2: ArrayDomainType, n: int): Field PredicateType_arrR FrameType;
function  arrR#sm(x: int, a_2: ArrayDomainType, n: int): Field PredicateType_arrR PMaskType;
axiom (forall x: int, a_2: ArrayDomainType, n: int ::
  { PredicateMaskField(arrR(x, a_2, n)) }
  PredicateMaskField(arrR(x, a_2, n)) == arrR#sm(x, a_2, n)
);
axiom (forall x: int, a_2: ArrayDomainType, n: int ::
  { arrR(x, a_2, n) }
  IsPredicateField(arrR(x, a_2, n))
);
axiom (forall x: int, a_2: ArrayDomainType, n: int ::
  { arrR(x, a_2, n) }
  getPredWandId(arrR(x, a_2, n)) == 0
);
function  arrR#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  arrR#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: int, a_2: ArrayDomainType, n: int, x2: int, a2: ArrayDomainType, n2: int ::
  { arrR(x, a_2, n), arrR(x2, a2, n2) }
  arrR(x, a_2, n) == arrR(x2, a2, n2) ==> x == x2 && (a_2 == a2 && n == n2)
);
axiom (forall x: int, a_2: ArrayDomainType, n: int, x2: int, a2: ArrayDomainType, n2: int ::
  { arrR#sm(x, a_2, n), arrR#sm(x2, a2, n2) }
  arrR#sm(x, a_2, n) == arrR#sm(x2, a2, n2) ==> x == x2 && (a_2 == a2 && n == n2)
);

axiom (forall Heap: HeapType, x: int, a_2: ArrayDomainType, n: int ::
  { arrR#trigger(Heap, arrR(x, a_2, n)) }
  arrR#everUsed(arrR(x, a_2, n))
);

procedure arrR#definedness(x: int, a_2: ArrayDomainType, n: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  
  // -- Check definedness of predicate body of arrR
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume (alen(a_2): int) == n;
    assume 0 <= x;
    assume x < n;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(aloc(a, x).int, write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= x might not hold. (0832.vpr@18.42--18.52) [216475]"}
          0 <= x;
        assert {:msg "  Precondition of function aloc might not hold. Assertion x < alen(a) might not hold. (0832.vpr@18.42--18.52) [216476]"}
          x < (alen(a_2): int);
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    assume aloc_1(Heap, a_2, x) != null;
    Mask := Mask[aloc_1(Heap, a_2, x), vint_1:=Mask[aloc_1(Heap, a_2, x), vint_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate arr
// ==================================================

type PredicateType_arr;
function  arr_1(a_2: ArrayDomainType, n: int): Field PredicateType_arr FrameType;
function  arr#sm(a_2: ArrayDomainType, n: int): Field PredicateType_arr PMaskType;
axiom (forall a_2: ArrayDomainType, n: int ::
  { PredicateMaskField(arr_1(a_2, n)) }
  PredicateMaskField(arr_1(a_2, n)) == arr#sm(a_2, n)
);
axiom (forall a_2: ArrayDomainType, n: int ::
  { arr_1(a_2, n) }
  IsPredicateField(arr_1(a_2, n))
);
axiom (forall a_2: ArrayDomainType, n: int ::
  { arr_1(a_2, n) }
  getPredWandId(arr_1(a_2, n)) == 1
);
function  arr#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  arr#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: ArrayDomainType, n: int, a2: ArrayDomainType, n2: int ::
  { arr_1(a_2, n), arr_1(a2, n2) }
  arr_1(a_2, n) == arr_1(a2, n2) ==> a_2 == a2 && n == n2
);
axiom (forall a_2: ArrayDomainType, n: int, a2: ArrayDomainType, n2: int ::
  { arr#sm(a_2, n), arr#sm(a2, n2) }
  arr#sm(a_2, n) == arr#sm(a2, n2) ==> a_2 == a2 && n == n2
);

axiom (forall Heap: HeapType, a_2: ArrayDomainType, n: int ::
  { arr#trigger(Heap, arr_1(a_2, n)) }
  arr#everUsed(arr_1(a_2, n))
);

// ==================================================
// Function used for framing of quantified permission (forall i: Int :: { aloc(a, i) } 0 <= i && i < alen(a) ==> acc(aloc(a, i).int, write)) in predicate arr
// ==================================================

function  arr#condqp1(Heap: HeapType, a_1_1_1: ArrayDomainType, n_1_1_1: int): int;
function  sk_arr#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: ArrayDomainType, n: int ::
  { arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n)) && sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n)) < (alen(a_2): int)) && NoPerm < FullPerm <==> (0 <= sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n)) && sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n)) < (alen(a_2): int)) && NoPerm < FullPerm) && ((0 <= sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n)) && sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n)) < (alen(a_2): int)) && NoPerm < FullPerm ==> Heap2Heap[aloc_1(Heap2Heap, a_2, sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n))), vint_1] == Heap1Heap[aloc_1(Heap1Heap, a_2, sk_arr#condqp1(arr#condqp1(Heap2Heap, a_2, n), arr#condqp1(Heap1Heap, a_2, n))), vint_1]) ==> arr#condqp1(Heap2Heap, a_2, n) == arr#condqp1(Heap1Heap, a_2, n)
);

procedure arr#definedness(a_2: ArrayDomainType, n: int) returns ()
  modifies Heap, Mask;
{
  var i_14: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of arr
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume (alen(a_2): int) == n;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { aloc(a, i) } 0 <= i && i < alen(a) ==> acc(aloc(a, i).int, write))
      if (*) {
        if (0 <= i_14 && i_14 < (alen(a_2): int)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0832.vpr@22.82--22.92) [216477]"}
              0 <= i_14;
            assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(a) might not hold. (0832.vpr@22.82--22.92) [216478]"}
              i_14 < (alen(a_2): int);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource aloc(a, i).int might not be injective. (0832.vpr@21.1--23.2) [216479]"}
      (forall i_2_1: int, i_2_2: int ::
      
      (((i_2_1 != i_2_2 && (0 <= i_2_1 && i_2_1 < (alen(a_2): int))) && (0 <= i_2_2 && i_2_2 < (alen(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> aloc_1(Heap, a_2, i_2_1) != aloc_1(Heap, a_2, i_2_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_2_1: int ::
        { aloc#frame(EmptyFrame, a_2, i_2_1) } { aloc#frame(EmptyFrame, a_2, i_2_1) }
        (0 <= i_2_1 && i_2_1 < (alen(a_2): int)) && NoPerm < FullPerm ==> qpRange1(aloc_1(Heap, a_2, i_2_1)) && invRecv1(aloc_1(Heap, a_2, i_2_1)) == i_2_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < (alen(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> aloc_1(Heap, a_2, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_2_1: int ::
        { aloc#frame(EmptyFrame, a_2, i_2_1) } { aloc#frame(EmptyFrame, a_2, i_2_1) }
        0 <= i_2_1 && i_2_1 < (alen(a_2): int) ==> aloc_1(Heap, a_2, i_2_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, vint_1] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < (alen(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> aloc_1(Heap, a_2, invRecv1(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + FullPerm) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < (alen(a_2): int)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test(x0: ArrayDomainType, x1_2: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var perm: Perm;
  var j_10: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newPMask: PMaskType;
  var j_4: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of (forall j: Int :: { arrR(j, x0, 10) } 0 <= j && j < 10 ==> acc(arrR(j, x0, 10), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(arrR(j, x0, 10), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource arrR(j, x0, 10) might not be injective. (0832.vpr@6.13--6.84) [216480]"}
        (forall j_1: int, j_1_1: int ::
        { neverTriggered2(j_1), neverTriggered2(j_1_1) }
        (((j_1 != j_1_1 && (0 <= j_1 && j_1 < 10)) && (0 <= j_1_1 && j_1_1 < 10)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> j_1 != j_1_1 || x0 != x0
      );
    
    // -- Define Inverse Function
      assume (forall j_1: int ::
        { Heap[null, arrR(j_1, x0, 10)] } { Mask[null, arrR(j_1, x0, 10)] } { Heap[null, arrR(j_1, x0, 10)] }
        (0 <= j_1 && j_1 < 10) && NoPerm < FullPerm ==> invRecv2(j_1, x0, 10) == j_1 && qpRange2(j_1, x0, 10)
      );
      assume (forall x: int, a_2: ArrayDomainType, n: int ::
        { invRecv2(x, a_2, n) }
        ((0 <= invRecv2(x, a_2, n) && invRecv2(x, a_2, n) < 10) && NoPerm < FullPerm) && qpRange2(x, a_2, n) ==> (invRecv2(x, a_2, n) == x && x0 == a_2) && 10 == n
      );
    
    // -- Define updated permissions
      assume (forall x: int, a_2: ArrayDomainType, n: int ::
        { QPMask[null, arrR(x, a_2, n)] }
        ((0 <= invRecv2(x, a_2, n) && invRecv2(x, a_2, n) < 10) && NoPerm < FullPerm) && qpRange2(x, a_2, n) ==> (NoPerm < FullPerm ==> (invRecv2(x, a_2, n) == x && x0 == a_2) && 10 == n) && QPMask[null, arrR(x, a_2, n)] == Mask[null, arrR(x, a_2, n)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall x: int, a_2: ArrayDomainType, n: int ::
        { QPMask[null, arrR(x, a_2, n)] }
        !(((0 <= invRecv2(x, a_2, n) && invRecv2(x, a_2, n) < 10) && NoPerm < FullPerm) && qpRange2(x, a_2, n)) ==> QPMask[null, arrR(x, a_2, n)] == Mask[null, arrR(x, a_2, n)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, arr_1(x1_2, 10):=Mask[null, arr_1(x1_2, 10)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { aloc(x1, j) } 0 <= j && j < 10 ==> (unfolding acc(arr(x1, 10), write / 2) in aloc(x1, j).int) == j)
      if (*) {
        if (0 <= j_10 && j_10 < 10) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume arr#trigger(UnfoldingHeap, arr_1(x1_2, 10));
          assume UnfoldingHeap[null, arr_1(x1_2, 10)] == FrameFragment(arr#condqp1(UnfoldingHeap, x1_2, 10));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm / 2;
          assert {:msg "  Contract might not be well-formed. Fraction write / 2 might be negative. (0832.vpr@8.13--9.87) [216481]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access arr(x1, 10) (0832.vpr@8.13--9.87) [216482]"}
              perm <= UnfoldingMask[null, arr_1(x1_2, 10)];
          }
          UnfoldingMask := UnfoldingMask[null, arr_1(x1_2, 10):=UnfoldingMask[null, arr_1(x1_2, 10)] - perm];
          assume (alen(x1_2): int) == 10;
          assume state(UnfoldingHeap, UnfoldingMask);
          havoc QPMask;
          assert {:msg "  Contract might not be well-formed. Quantified resource aloc(x1, i).int might not be injective. (0832.vpr@8.13--9.87) [216483]"}
            (forall i: int, i_77: int ::
            
            (((i != i_77 && (0 <= i && i < (alen(x1_2): int))) && (0 <= i_77 && i_77 < (alen(x1_2): int))) && NoPerm < FullPerm * (FullPerm / 2)) && NoPerm < FullPerm * (FullPerm / 2) ==> aloc_1(UnfoldingHeap, x1_2, i) != aloc_1(UnfoldingHeap, x1_2, i_77)
          );
          
          // -- Define Inverse Function
            assume (forall i: int ::
              { aloc#frame(EmptyFrame, x1_2, i) } { aloc#frame(EmptyFrame, x1_2, i) }
              (0 <= i && i < (alen(x1_2): int)) && NoPerm < FullPerm * (FullPerm / 2) ==> qpRange3(aloc_1(UnfoldingHeap, x1_2, i)) && invRecv3(aloc_1(UnfoldingHeap, x1_2, i)) == i
            );
            assume (forall o_4: Ref ::
              { invRecv3(o_4) }
              ((0 <= invRecv3(o_4) && invRecv3(o_4) < (alen(x1_2): int)) && NoPerm < FullPerm * (FullPerm / 2)) && qpRange3(o_4) ==> aloc_1(UnfoldingHeap, x1_2, invRecv3(o_4)) == o_4
            );
          // Check that permission expression is non-negative for all fields
          assert {:msg "  Contract might not be well-formed. Fraction write * (write / 2) might be negative. (0832.vpr@8.13--9.87) [216484]"}
            (forall i: int ::
            { aloc#frame(EmptyFrame, x1_2, i) } { aloc#frame(EmptyFrame, x1_2, i) }
            0 <= i && i < (alen(x1_2): int) ==> FullPerm * (FullPerm / 2) >= NoPerm
          );
          
          // -- Assume set of fields is nonNull
            assume (forall i: int ::
              { aloc#frame(EmptyFrame, x1_2, i) } { aloc#frame(EmptyFrame, x1_2, i) }
              (0 <= i && i < (alen(x1_2): int)) && FullPerm * (FullPerm / 2) > NoPerm ==> aloc_1(UnfoldingHeap, x1_2, i) != null
            );
          
          // -- Define permissions
            assume (forall o_4: Ref ::
              { QPMask[o_4, vint_1] }
              (((0 <= invRecv3(o_4) && invRecv3(o_4) < (alen(x1_2): int)) && NoPerm < FullPerm * (FullPerm / 2)) && qpRange3(o_4) ==> (NoPerm < FullPerm * (FullPerm / 2) ==> aloc_1(UnfoldingHeap, x1_2, invRecv3(o_4)) == o_4) && QPMask[o_4, vint_1] == UnfoldingMask[o_4, vint_1] + FullPerm * (FullPerm / 2)) && (!(((0 <= invRecv3(o_4) && invRecv3(o_4) < (alen(x1_2): int)) && NoPerm < FullPerm * (FullPerm / 2)) && qpRange3(o_4)) ==> QPMask[o_4, vint_1] == UnfoldingMask[o_4, vint_1])
            );
            assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
              { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
              f_5 != vint_1 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
            );
          UnfoldingMask := QPMask;
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= j might not hold. (0832.vpr@9.66--9.77) [216485]"}
              0 <= j_10;
            assert {:msg "  Precondition of function aloc might not hold. Assertion j < alen(x1) might not hold. (0832.vpr@9.66--9.77) [216486]"}
              j_10 < (alen(x1_2): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(x1, j).int (0832.vpr@8.13--9.87) [216487]"}
            HasDirectPerm(UnfoldingMask, aloc_1(UnfoldingHeap, x1_2, j_10), vint_1);
          
          // -- Free assumptions (exp module)
            // register all known folded permissions guarded by predicate arr
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, arr#sm(x1_2, 10)][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            assume (forall i_1: int ::
              
              0 <= i_1 && i_1 < (alen(x1_2): int) ==> newPMask[aloc_1(Heap, x1_2, i_1), vint_1]
            );
            Heap := Heap[null, arr#sm(x1_2, 10):=newPMask];
            assume state(Heap, Mask);
          
          // -- Free assumptions (exp module)
            // register all known folded permissions guarded by predicate arr
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, arr#sm(x1_2, 10)][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            assume (forall i_2_1: int ::
              
              0 <= i_2_1 && i_2_1 < (alen(x1_2): int) ==> newPMask[aloc_1(Heap, x1_2, i_2_1), vint_1]
            );
            Heap := Heap[null, arr#sm(x1_2, 10):=newPMask];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall j_4_1: int ::
      { aloc#frame(EmptyFrame, x1_2, j_4_1) }
      0 <= j_4_1 && j_4_1 < 10 ==> Heap[aloc_1(Heap, x1_2, j_4_1), vint_1] == j_4_1
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { aloc(x0, j) } 0 <= j && j < 10 ==> (unfolding acc(arrR(j, x0, 10), write) in aloc(x0, j).int == 3 * j))
      if (*) {
        if (0 <= j_4 && j_4 < 10) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume arrR#trigger(UnfoldingHeap, arrR(j_4, x0, 10));
          assume UnfoldingHeap[null, arrR(j_4, x0, 10)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x0, j_4), vint_1]);
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access arrR(j, x0, 10) (0832.vpr@10.13--11.81) [216488]"}
              perm <= UnfoldingMask[null, arrR(j_4, x0, 10)];
          }
          UnfoldingMask := UnfoldingMask[null, arrR(j_4, x0, 10):=UnfoldingMask[null, arrR(j_4, x0, 10)] - perm];
          assume (alen(x0): int) == 10;
          assume 0 <= j_4;
          assume j_4 < 10;
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume aloc_1(UnfoldingHeap, x0, j_4) != null;
          UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_4), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x0, j_4), vint_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= j might not hold. (0832.vpr@11.56--11.67) [216489]"}
              0 <= j_4;
            assert {:msg "  Precondition of function aloc might not hold. Assertion j < alen(x0) might not hold. (0832.vpr@11.56--11.67) [216490]"}
              j_4 < (alen(x0): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(x0, j).int (0832.vpr@10.13--11.81) [216491]"}
            HasDirectPerm(UnfoldingMask, aloc_1(UnfoldingHeap, x0, j_4), vint_1);
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, arrR#sm(j_4, x0, 10):=Heap[null, arrR#sm(j_4, x0, 10)][aloc_1(Heap, x0, j_4), vint_1:=true]];
            assume state(Heap, Mask);
        }
        assume false;
      }
    assume (forall j_6_1: int ::
      { aloc#frame(EmptyFrame, x0, j_6_1) }
      0 <= j_6_1 && j_6_1 < 10 ==> Heap[aloc_1(Heap, x0, j_6_1), vint_1] == 3 * j_6_1
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert (unfolding acc(arrR(0, x0, 10), write) in aloc(x0, 0).int == 3 * 0) -- 0832.vpr@13.3--14.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (unfolding acc(arrR(0, x0, 10), write) in aloc(x0, 0).int == 3 * 0)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume arrR#trigger(UnfoldingHeap, arrR(0, x0, 10));
      assume UnfoldingHeap[null, arrR(0, x0, 10)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x0, 0), vint_1]);
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access arrR(0, x0, 10) (0832.vpr@13.11--14.37) [216492]"}
          perm <= UnfoldingMask[null, arrR(0, x0, 10)];
      }
      UnfoldingMask := UnfoldingMask[null, arrR(0, x0, 10):=UnfoldingMask[null, arrR(0, x0, 10)] - perm];
      assume (alen(x0): int) == 10;
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume aloc_1(UnfoldingHeap, x0, 0) != null;
      UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x0, 0), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x0, 0), vint_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 < alen(x0) might not hold. (0832.vpr@14.13--14.24) [216493]"}
          0 < (alen(x0): int);
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access aloc(x0, 0).int (0832.vpr@13.11--14.37) [216494]"}
        HasDirectPerm(UnfoldingMask, aloc_1(Heap, x0, 0), vint_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, arrR#sm(0, x0, 10):=Heap[null, arrR#sm(0, x0, 10)][aloc_1(Heap, x0, 0), vint_1:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion aloc(x0, 0).int == 3 * 0 might not hold. (0832.vpr@13.11--14.37) [216495]"}
      Heap[aloc_1(Heap, x0, 0), vint_1] == 0;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, arrR#sm(0, x0, 10):=Heap[null, arrR#sm(0, x0, 10)][aloc_1(Heap, x0, 0), vint_1:=true]];
      assume state(Heap, Mask);
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
  
  // -- Translating statement: if (b) -- 0832.vpr@45.12--45.18
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