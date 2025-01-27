// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:52
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0845.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0845-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_14: Ref, f_22: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_22] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_22], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref, f_23: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, f_23] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_15, f_23) ==> Heap[o_15, f_23] == ExhaleHeap[o_15, f_23]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_15, $allocated] ==> ExhaleHeap[o_15, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_24: (Field A B), v: B ::
  { Heap[o_14, f_24:=v] }
  succHeap(Heap, Heap[o_14, f_24:=v])
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

function  neverTriggered1(i_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(x: ArrayDomainType, n_1_1_1: int, i_2_1: int): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(x: ArrayDomainType, n_1_1_1: int, i_2_1: int): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 2: aloc
// - height 1: get0
// - height 0: get1
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
function  array_loc(a_3: ArrayDomainType, i_6: int): Ref;

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
// Translation of function get0
// ==================================================

// Uninterpreted function definitions
function  get0(Heap: HeapType, x: ArrayDomainType, n: int, i: int): int;
function  get0'(Heap: HeapType, x: ArrayDomainType, n: int, i: int): int;
axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { get0(Heap, x, n, i) }
  get0(Heap, x, n, i) == get0'(Heap, x, n, i) && dummyFunction(get0#triggerStateless(x, n, i))
);
axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { get0'(Heap, x, n, i) }
  dummyFunction(get0#triggerStateless(x, n, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: ArrayDomainType, n: int, i: int ::
  { state(Heap, Mask), get0(Heap, x, n, i) } { state(Heap, Mask), get0#triggerStateless(x, n, i), hide0#trigger(Heap, hide0(x, n, i)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> 0 <= i && i < n ==> get0(Heap, x, n, i) == Heap[aloc_1(Heap, x, i), vint_1]
);

// Framing axioms
function  get0#frame(frame: FrameType, x: ArrayDomainType, n: int, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: ArrayDomainType, n: int, i: int ::
  { state(Heap, Mask), get0'(Heap, x, n, i) } { state(Heap, Mask), get0#triggerStateless(x, n, i), hide0#trigger(Heap, hide0(x, n, i)) }
  state(Heap, Mask) ==> get0'(Heap, x, n, i) == get0#frame(Heap[null, hide0(x, n, i)], x, n, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: ArrayDomainType, n: int, i: int ::
  { state(Heap, Mask), get0'(Heap, x, n, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || get0#trigger(Heap[null, hide0(x, n, i)], x, n, i)) ==> 0 <= i && i < n ==> get0'(Heap, x, n, i) == Heap[aloc_1(Heap, x, i), vint_1]
);

// Trigger function (controlling recursive postconditions)
function  get0#trigger(frame: FrameType, x: ArrayDomainType, n: int, i: int): bool;

// State-independent trigger function
function  get0#triggerStateless(x: ArrayDomainType, n: int, i: int): int;

// Check contract well-formedness and postcondition
procedure get0#definedness(x: ArrayDomainType, n: int, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i < n;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, hide0(x, n, i):=Mask[null, hide0(x, n, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(hide0(x, n, i), write) in aloc(x, i).int)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume hide0#trigger(UnfoldingHeap, hide0(x, n, i));
      assume UnfoldingHeap[null, hide0(x, n, i)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x, i), vint_1]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access hide0(x, n, i) (0845.vpr@48.1--54.2) [71192]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, hide0(x, n, i)];
      assume n > 0;
      assume i >= 0;
      assume i < n;
      assume (alen(x): int) == n;
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume aloc_1(UnfoldingHeap, x, i) != null;
      UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0845.vpr@53.43--53.53) [71193]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0845.vpr@53.43--53.53) [71194]"}
          i < (alen(x): int);
        // Stop execution
        assume false;
      }
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access aloc(x, i).int (0845.vpr@48.1--54.2) [71195]"}
        HasDirectPerm(UnfoldingMask, aloc_1(UnfoldingHeap, x, i), vint_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, hide0#sm(x, n, i):=Heap[null, hide0#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[aloc_1(Heap, x, i), vint_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == (unfolding acc(hide0(x, n, i), write) in aloc(x, i).int)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume hide0#trigger(UnfoldingHeap, hide0(x, n, i));
      assume UnfoldingHeap[null, hide0(x, n, i)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x, i), vint_1]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hide0(x, n, i) (0845.vpr@51.11--51.74) [71196]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, hide0(x, n, i)];
      assume n > 0;
      assume i >= 0;
      assume i < n;
      assume (alen(x): int) == n;
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume aloc_1(UnfoldingHeap, x, i) != null;
      UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0845.vpr@51.60--51.70) [71197]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0845.vpr@51.60--51.70) [71198]"}
          i < (alen(x): int);
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(x, i).int (0845.vpr@51.11--51.74) [71199]"}
        HasDirectPerm(UnfoldingMask, aloc_1(Heap, x, i), vint_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, hide0#sm(x, n, i):=Heap[null, hide0#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, hide0#sm(x, n, i):=Heap[null, hide0#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Postcondition of get0 might not hold. Assertion result == (unfolding acc(hide0(x, n, i), write) in aloc(x, i).int) might not hold. (0845.vpr@51.11--51.74) [71200]"}
      Result == Heap[aloc_1(Heap, x, i), vint_1];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, hide0#sm(x, n, i):=Heap[null, hide0#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function get1
// ==================================================

// Uninterpreted function definitions
function  get1(Heap: HeapType, x: ArrayDomainType, n: int, i: int): int;
function  get1'(Heap: HeapType, x: ArrayDomainType, n: int, i: int): int;
axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { get1(Heap, x, n, i) }
  get1(Heap, x, n, i) == get1'(Heap, x, n, i) && dummyFunction(get1#triggerStateless(x, n, i))
);
axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { get1'(Heap, x, n, i) }
  dummyFunction(get1#triggerStateless(x, n, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: ArrayDomainType, n: int, i: int ::
  { state(Heap, Mask), get1(Heap, x, n, i) } { state(Heap, Mask), get1#triggerStateless(x, n, i), hide1#trigger(Heap, hide1(x, n, i)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < n ==> get1(Heap, x, n, i) == Heap[aloc_1(Heap, x, i), vint_1]
);

// Framing axioms
function  get1#frame(frame: FrameType, x: ArrayDomainType, n: int, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: ArrayDomainType, n: int, i: int ::
  { state(Heap, Mask), get1'(Heap, x, n, i) } { state(Heap, Mask), get1#triggerStateless(x, n, i), hide1#trigger(Heap, hide1(x, n, i)) }
  state(Heap, Mask) ==> get1'(Heap, x, n, i) == get1#frame(Heap[null, hide1(x, n, i)], x, n, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: ArrayDomainType, n: int, i: int ::
  { state(Heap, Mask), get1'(Heap, x, n, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || get1#trigger(Heap[null, hide1(x, n, i)], x, n, i)) ==> 0 <= i && i < n ==> get1'(Heap, x, n, i) == Heap[aloc_1(Heap, x, i), vint_1]
);

// Trigger function (controlling recursive postconditions)
function  get1#trigger(frame: FrameType, x: ArrayDomainType, n: int, i: int): bool;

// State-independent trigger function
function  get1#triggerStateless(x: ArrayDomainType, n: int, i: int): int;

// Check contract well-formedness and postcondition
procedure get1#definedness(x: ArrayDomainType, n: int, i: int) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i < n;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, hide1(x, n, i):=Mask[null, hide1(x, n, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(hide1(x, n, i), wildcard) in aloc(x, i).int)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume hide1#trigger(UnfoldingHeap, hide1(x, n, i));
      assume UnfoldingHeap[null, hide1(x, n, i)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x, i), vint_1]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access hide1(x, n, i) (0845.vpr@61.1--67.2) [71201]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, hide1(x, n, i)];
      assume n > 0;
      assume i >= 0;
      assume i < n;
      assume (alen(x): int) == n;
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume aloc_1(UnfoldingHeap, x, i) != null;
      UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0845.vpr@66.46--66.56) [71202]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0845.vpr@66.46--66.56) [71203]"}
          i < (alen(x): int);
        // Stop execution
        assume false;
      }
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access aloc(x, i).int (0845.vpr@61.1--67.2) [71204]"}
        HasDirectPerm(UnfoldingMask, aloc_1(UnfoldingHeap, x, i), vint_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, hide1#sm(x, n, i):=Heap[null, hide1#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[aloc_1(Heap, x, i), vint_1];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == (unfolding acc(hide1(x, n, i), wildcard) in aloc(x, i).int)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume hide1#trigger(UnfoldingHeap, hide1(x, n, i));
      assume UnfoldingHeap[null, hide1(x, n, i)] == FrameFragment(UnfoldingHeap[aloc_1(UnfoldingHeap, x, i), vint_1]);
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access hide1(x, n, i) (0845.vpr@64.11--64.77) [71205]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, hide1(x, n, i)];
      assume n > 0;
      assume i >= 0;
      assume i < n;
      assume (alen(x): int) == n;
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume aloc_1(UnfoldingHeap, x, i) != null;
      UnfoldingMask := UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1:=UnfoldingMask[aloc_1(UnfoldingHeap, x, i), vint_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0845.vpr@64.63--64.73) [71206]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0845.vpr@64.63--64.73) [71207]"}
          i < (alen(x): int);
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(x, i).int (0845.vpr@64.11--64.77) [71208]"}
        HasDirectPerm(UnfoldingMask, aloc_1(Heap, x, i), vint_1);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, hide1#sm(x, n, i):=Heap[null, hide1#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, hide1#sm(x, n, i):=Heap[null, hide1#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
        assume state(Heap, Mask);
    assert {:msg "  Postcondition of get1 might not hold. Assertion result == (unfolding acc(hide1(x, n, i), wildcard) in aloc(x, i).int) might not hold. (0845.vpr@64.11--64.77) [71209]"}
      Result == Heap[aloc_1(Heap, x, i), vint_1];
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, hide1#sm(x, n, i):=Heap[null, hide1#sm(x, n, i)][aloc_1(Heap, x, i), vint_1:=true]];
      assume state(Heap, Mask);
}

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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> 0 <= i && i < (alen(a_2): int) ==> aloc_1(Heap, a_2, i) == (array_loc(a_2, i): Ref)
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
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || aloc#trigger(EmptyFrame, a_2, i)) ==> 0 <= i && i < (alen(a_2): int) ==> (loc_inv_1(aloc'(Heap, a_2, i)): ArrayDomainType) == a_2
);
axiom (forall Heap: HeapType, Mask: MaskType, a_2: ArrayDomainType, i: int ::
  { state(Heap, Mask), aloc'(Heap, a_2, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || aloc#trigger(EmptyFrame, a_2, i)) ==> 0 <= i && i < (alen(a_2): int) ==> (loc_inv_2(aloc'(Heap, a_2, i)): int) == i
);

// Trigger function (controlling recursive postconditions)
function  aloc#trigger(frame: FrameType, a_2: ArrayDomainType, i: int): bool;

// State-independent trigger function
function  aloc#triggerStateless(a_2: ArrayDomainType, i: int): Ref;

// Check contract well-formedness and postcondition
procedure aloc#definedness(a_2: ArrayDomainType, i: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume state(Heap, Mask);
    assume i < (alen(a_2): int);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (array_loc(a_2, i): Ref);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of aloc might not hold. Assertion loc_inv_1(result) == a might not hold. (0845.vpr@74.11--74.33) [71210]"}
      (loc_inv_1(Result): ArrayDomainType) == a_2;
    assert {:msg "  Postcondition of aloc might not hold. Assertion loc_inv_2(result) == i might not hold. (0845.vpr@75.11--75.33) [71211]"}
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
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2: int ::
  { hide0(x, n, i), hide0(x2, n2, i2) }
  hide0(x, n, i) == hide0(x2, n2, i2) ==> x == x2 && (n == n2 && i == i2)
);
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2: int ::
  { hide0#sm(x, n, i), hide0#sm(x2, n2, i2) }
  hide0#sm(x, n, i) == hide0#sm(x2, n2, i2) ==> x == x2 && (n == n2 && i == i2)
);

axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { hide0#trigger(Heap, hide0(x, n, i)) }
  hide0#everUsed(hide0(x, n, i))
);

procedure hide0#definedness(x: ArrayDomainType, n: int, i: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0845.vpr@45.7--45.17) [71212]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0845.vpr@45.7--45.17) [71213]"}
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
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2: int ::
  { hide1(x, n, i), hide1(x2, n2, i2) }
  hide1(x, n, i) == hide1(x2, n2, i2) ==> x == x2 && (n == n2 && i == i2)
);
axiom (forall x: ArrayDomainType, n: int, i: int, x2: ArrayDomainType, n2: int, i2: int ::
  { hide1#sm(x, n, i), hide1#sm(x2, n2, i2) }
  hide1#sm(x, n, i) == hide1#sm(x2, n2, i2) ==> x == x2 && (n == n2 && i == i2)
);

axiom (forall Heap: HeapType, x: ArrayDomainType, n: int, i: int ::
  { hide1#trigger(Heap, hide1(x, n, i)) }
  hide1#everUsed(hide1(x, n, i))
);

procedure hide1#definedness(x: ArrayDomainType, n: int, i: int) returns ()
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0845.vpr@58.7--58.17) [71214]"}
          0 <= i;
        assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(x) might not hold. (0845.vpr@58.7--58.17) [71215]"}
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

procedure main1(tid: int, n: int, x0: ArrayDomainType, x1: ArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var j_15: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 10 < n;
    assume state(Heap, Mask);
    assume (alen(x0): int) == n;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { hide0(x0, n, i) } 0 <= i && i < n ==> acc(hide0(x0, n, i), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(hide0(x0, n, i), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource hide0(x0, n, i) might not be injective. (0845.vpr@7.13--9.52) [71216]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered1(i_1), neverTriggered1(i_1_1) }
        (((i_1 != i_1_1 && (0 <= i_1 && i_1 < n)) && (0 <= i_1_1 && i_1_1 < n)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (x0 != x0 || n != n) || i_1 != i_1_1
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Heap[null, hide0(x0, n, i_1)] } { Mask[null, hide0(x0, n, i_1)] } { Heap[null, hide0(x0, n, i_1)] }
        (0 <= i_1 && i_1 < n) && NoPerm < FullPerm ==> invRecv1(x0, n, i_1) == i_1 && qpRange1(x0, n, i_1)
      );
      assume (forall x: ArrayDomainType, n_1_1_1: int, i_2_1: int ::
        { invRecv1(x, n_1_1_1, i_2_1) }
        ((0 <= invRecv1(x, n_1_1_1, i_2_1) && invRecv1(x, n_1_1_1, i_2_1) < n) && NoPerm < FullPerm) && qpRange1(x, n_1_1_1, i_2_1) ==> (x0 == x && n == n_1_1_1) && invRecv1(x, n_1_1_1, i_2_1) == i_2_1
      );
    
    // -- Define updated permissions
      assume (forall x: ArrayDomainType, n_1_1_1: int, i_2_1: int ::
        { QPMask[null, hide0(x, n_1_1_1, i_2_1)] }
        ((0 <= invRecv1(x, n_1_1_1, i_2_1) && invRecv1(x, n_1_1_1, i_2_1) < n) && NoPerm < FullPerm) && qpRange1(x, n_1_1_1, i_2_1) ==> (NoPerm < FullPerm ==> (x0 == x && n == n_1_1_1) && invRecv1(x, n_1_1_1, i_2_1) == i_2_1) && QPMask[null, hide0(x, n_1_1_1, i_2_1)] == Mask[null, hide0(x, n_1_1_1, i_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x: ArrayDomainType, n_1_1_1: int, i_2_1: int ::
        { QPMask[null, hide0(x, n_1_1_1, i_2_1)] }
        !(((0 <= invRecv1(x, n_1_1_1, i_2_1) && invRecv1(x, n_1_1_1, i_2_1) < n) && NoPerm < FullPerm) && qpRange1(x, n_1_1_1, i_2_1)) ==> QPMask[null, hide0(x, n_1_1_1, i_2_1)] == Mask[null, hide0(x, n_1_1_1, i_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall j: Int :: { get0(x0, n, j) } 0 <= j && j < n ==> get0(x0, n, j) == 0)
      if (*) {
        if (0 <= j_15 && j_15 < n) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function get0 might not hold. Assertion 0 <= j might not hold. (0845.vpr@13.11--13.25) [71217]"}
              0 <= j_15;
            assert {:msg "  Precondition of function get0 might not hold. Assertion j < n might not hold. (0845.vpr@13.11--13.25) [71218]"}
              j_15 < n;
            perm := FullPerm;
            assert {:msg "  Precondition of function get0 might not hold. There might be insufficient permission to access hide0(x0, n, j) (0845.vpr@13.11--13.25) [71219]"}
              NoPerm < perm ==> NoPerm < Mask[null, hide0(x0, n, j_15)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall j_1: int ::
      { get0#frame(Heap[null, hide0(x0, n, j_1)], x0, n, j_1) }
      0 <= j_1 && j_1 < n ==> get0(Heap, x0, n, j_1) == 0
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert get0(x0, n, 0) == 0 -- 0845.vpr@15.3--15.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of get0(x0, n, 0) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        assert {:msg "  Precondition of function get0 might not hold. Assertion 0 < n might not hold. (0845.vpr@15.10--15.24) [71220]"}
          0 < n;
        perm := FullPerm;
        assert {:msg "  Precondition of function get0 might not hold. There might be insufficient permission to access hide0(x0, n, 0) (0845.vpr@15.10--15.24) [71221]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, hide0(x0, n, 0)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get0(x0, n, 0) == 0 might not hold. (0845.vpr@15.10--15.29) [71222]"}
      get0(Heap, x0, n, 0) == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method aloc_pres_termination_proof
// ==================================================

procedure aloc_pres_termination_proof(a_2: ArrayDomainType, i: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var b_24: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: if (b) -- 0845.vpr@71.12--71.18
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