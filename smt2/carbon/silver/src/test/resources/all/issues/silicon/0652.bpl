// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:28:49
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0652.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0652-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_6: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_6, f_9] }
  Heap[o_6, $allocated] ==> Heap[Heap[o_6, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref, f_35: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, f_35] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_30, f_35) ==> Heap[o_30, f_35] == ExhaleHeap[o_30, f_35]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_30, $allocated] ==> ExhaleHeap[o_30, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_6: Ref, f_16: (Field A B), v: B ::
  { Heap[o_6, f_16:=v] }
  succHeap(Heap, Heap[o_6, f_16:=v])
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
function  neverTriggered2(i_5: int): bool;
function  neverTriggered3(i_8_2: int): bool;
function  neverTriggered4(i_9_1: int): bool;
function  neverTriggered5(i_10_1: int): bool;
function  neverTriggered6(i_12_1: int): bool;
function  neverTriggered7(i_14_1: int): bool;
function  neverTriggered8(i_16_1: int): bool;
function  neverTriggered9(i_17: int): bool;
function  neverTriggered10(i_18_1: int): bool;
function  neverTriggered11(i_19: int): bool;
function  neverTriggered12(i_20_1: int): bool;
function  neverTriggered13(i_21: int): bool;
function  neverTriggered14(i_22_1: int): bool;
function  neverTriggered15(i_23: int): bool;
function  neverTriggered16(i_24_1: int): bool;
function  neverTriggered17(i_25: int): bool;
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
function  invRecv14(recv: Ref): int;
function  invRecv15(recv: Ref): int;
function  invRecv16(recv: Ref): int;
function  invRecv17(recv: Ref): int;
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
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;

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
// Translation of domain array
// ==================================================

// The type for domain array
type arrayDomainType;

// Translation of domain function array_loc
function  array_loc(a_3: arrayDomainType, i_79: int): Ref;

// Translation of domain function alen
function  alen(a_3: arrayDomainType): int;

// Translation of domain function loc_inv_1
function  loc_inv_1(loc: Ref): arrayDomainType;

// Translation of domain function loc_inv_2
function  loc_inv_2(loc: Ref): int;

// Translation of anonymous domain axiom
axiom (forall a_2: arrayDomainType, i: int ::
  { (array_loc(a_2, i): Ref) }
  (loc_inv_1((array_loc(a_2, i): Ref)): arrayDomainType) == a_2 && (loc_inv_2((array_loc(a_2, i): Ref)): int) == i
);

// Translation of anonymous domain axiom
axiom (forall a_2: arrayDomainType ::
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
function  aloc_1(Heap: HeapType, a_2: arrayDomainType, i: int): Ref;
function  aloc'(Heap: HeapType, a_2: arrayDomainType, i: int): Ref;
axiom (forall Heap: HeapType, a_2: arrayDomainType, i: int ::
  { aloc_1(Heap, a_2, i) }
  aloc_1(Heap, a_2, i) == aloc'(Heap, a_2, i) && dummyFunction(aloc#triggerStateless(a_2, i))
);
axiom (forall Heap: HeapType, a_2: arrayDomainType, i: int ::
  { aloc'(Heap, a_2, i) }
  dummyFunction(aloc#triggerStateless(a_2, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: arrayDomainType, i: int ::
  { state(Heap, Mask), aloc_1(Heap, a_2, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 <= i && i < (alen(a_2): int) ==> aloc_1(Heap, a_2, i) == (array_loc(a_2, i): Ref)
);

// Framing axioms
function  aloc#frame(frame: FrameType, a_2: arrayDomainType, i: int): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: arrayDomainType, i: int ::
  { state(Heap, Mask), aloc'(Heap, a_2, i) }
  state(Heap, Mask) ==> aloc'(Heap, a_2, i) == aloc#frame(EmptyFrame, a_2, i)
);

// Trigger function (controlling recursive postconditions)
function  aloc#trigger(frame: FrameType, a_2: arrayDomainType, i: int): bool;

// State-independent trigger function
function  aloc#triggerStateless(a_2: arrayDomainType, i: int): Ref;

// Check contract well-formedness and postcondition
procedure aloc#definedness(a_2: arrayDomainType, i: int) returns (Result: Ref)
  modifies Heap, Mask;
{
  
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
}

// ==================================================
// Translation of method main
// ==================================================

procedure main(arr1: arrayDomainType, arr2: arrayDomainType) returns ()
  modifies Heap, Mask;
{
  var i_14: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var i_2: int;
  var i_4: int;
  var i_6: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: int;
  var ExhaleHeap: HeapType;
  var i_7: int;
  var i_8: int;
  var i_9: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume (alen(arr1): int) == 6;
    assume state(Heap, Mask);
    assume (alen(arr2): int) == 12;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2))
      if (*) {
        if (0 <= i_14 && i_14 < 6) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@31.78--31.91) [215373]"}
              0 <= i_14;
            assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr1) might not hold. (0652.vpr@31.78--31.91) [215374]"}
              i_14 < (alen(arr1): int);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource aloc(arr1, i).int might not be injective. (0652.vpr@31.13--31.103) [215375]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < 6)) && (0 <= i_1_1 && i_1_1 < 6)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, i_1) != aloc_1(Heap, arr1, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { aloc#frame(EmptyFrame, arr1, i_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_1), vint_1] }
        (0 <= i_1 && i_1 < 6) && NoPerm < 1 / 2 ==> qpRange1(aloc_1(Heap, arr1, i_1)) && invRecv1(aloc_1(Heap, arr1, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        ((0 <= invRecv1(o_4) && invRecv1(o_4) < 6) && NoPerm < 1 / 2) && qpRange1(o_4) ==> aloc_1(Heap, arr1, invRecv1(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0652.vpr@31.13--31.103) [215376]"}
      (forall i_1: int ::
      { aloc#frame(EmptyFrame, arr1, i_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_1), vint_1] }
      0 <= i_1 && i_1 < 6 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { aloc#frame(EmptyFrame, arr1, i_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_1), vint_1] }
        (0 <= i_1 && i_1 < 6) && 1 / 2 > NoPerm ==> aloc_1(Heap, arr1, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, vint_1] }
        (((0 <= invRecv1(o_4) && invRecv1(o_4) < 6) && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, invRecv1(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + 1 / 2) && (!(((0 <= invRecv1(o_4) && invRecv1(o_4) < 6) && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> aloc(arr1, i).int == 0)
      if (*) {
        if (0 <= i_2 && i_2 < 6) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@32.74--32.87) [215377]"}
              0 <= i_2;
            assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr1) might not hold. (0652.vpr@32.74--32.87) [215378]"}
              i_2 < (alen(arr1): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(arr1, i).int (0652.vpr@32.13--32.96) [215379]"}
            HasDirectPerm(Mask, aloc_1(Heap, arr1, i_2), vint_1);
        }
        assume false;
      }
    assume (forall i_3: int ::
      { Heap[aloc#frame(EmptyFrame, arr1, i_3), vint_1] }
      0 <= i_3 && i_3 < 6 ==> Heap[aloc_1(Heap, arr1, i_3), vint_1] == 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { aloc(arr2, i).int } 0 <= i && i < 12 ==> acc(aloc(arr2, i).int, write))
      if (*) {
        if (0 <= i_4 && i_4 < 12) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@34.79--34.92) [215380]"}
              0 <= i_4;
            assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr2) might not hold. (0652.vpr@34.79--34.92) [215381]"}
              i_4 < (alen(arr2): int);
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@34.13--34.104) [215382]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < 12)) && (0 <= i_5_1 && i_5_1 < 12)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> aloc_1(Heap, arr2, i_5) != aloc_1(Heap, arr2, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { aloc#frame(EmptyFrame, arr2, i_5) } { Heap[aloc#frame(EmptyFrame, arr2, i_5), vint_1] }
        (0 <= i_5 && i_5 < 12) && NoPerm < FullPerm ==> qpRange2(aloc_1(Heap, arr2, i_5)) && invRecv2(aloc_1(Heap, arr2, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        ((0 <= invRecv2(o_4) && invRecv2(o_4) < 12) && NoPerm < FullPerm) && qpRange2(o_4) ==> aloc_1(Heap, arr2, invRecv2(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { aloc#frame(EmptyFrame, arr2, i_5) } { Heap[aloc#frame(EmptyFrame, arr2, i_5), vint_1] }
        0 <= i_5 && i_5 < 12 ==> aloc_1(Heap, arr2, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, vint_1] }
        (((0 <= invRecv2(o_4) && invRecv2(o_4) < 12) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> aloc_1(Heap, arr2, invRecv2(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + FullPerm) && (!(((0 <= invRecv2(o_4) && invRecv2(o_4) < 12) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { aloc(arr2, i).int } 0 <= i && i < 6 ==> aloc(arr2, i).int == 0 * (aloc(arr1, i).int - aloc(arr1, 0).int))
      if (*) {
        if (0 <= i_6 && i_6 < 6) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@35.74--35.87) [215383]"}
              0 <= i_6;
            assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr2) might not hold. (0652.vpr@35.74--35.87) [215384]"}
              i_6 < (alen(arr2): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(arr2, i).int (0652.vpr@35.13--35.138) [215385]"}
            HasDirectPerm(Mask, aloc_1(Heap, arr2, i_6), vint_1);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@35.100--35.113) [215386]"}
              0 <= i_6;
            assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr1) might not hold. (0652.vpr@35.100--35.113) [215387]"}
              i_6 < (alen(arr1): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(arr1, i).int (0652.vpr@35.13--35.138) [215388]"}
            HasDirectPerm(Mask, aloc_1(Heap, arr1, i_6), vint_1);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Precondition of function aloc might not hold. Assertion 0 < alen(arr1) might not hold. (0652.vpr@35.120--35.133) [215389]"}
              0 < (alen(arr1): int);
            // Stop execution
            assume false;
          }
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access aloc(arr1, 0).int (0652.vpr@35.13--35.138) [215390]"}
            HasDirectPerm(Mask, aloc_1(Heap, arr1, 0), vint_1);
        }
        assume false;
      }
    assume (forall i_7_1: int ::
      { Heap[aloc#frame(EmptyFrame, arr2, i_7_1), vint_1] }
      0 <= i_7_1 && i_7_1 < 6 ==> Heap[aloc_1(Heap, arr2, i_7_1), vint_1] == 0 * (Heap[aloc_1(Heap, arr1, i_7_1), vint_1] - Heap[aloc_1(Heap, arr1, 0), vint_1])
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x := 0 -- 0652.vpr@37.3--37.18
    x := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (true) -- 0652.vpr@38.3--47.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant x == x might not hold on entry. Assertion x == x might not hold. (0652.vpr@39.15--39.21) [215391]"}
          x == x;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver aloc(arr2, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 0 <= i && i < 6 ==> acc(aloc(arr2, i).int, write)) might not hold on entry. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@40.16--40.106) [215392]"}
            (forall i_8_2: int, i_8_3: int ::
            { neverTriggered3(i_8_2), neverTriggered3(i_8_3) }
            (((i_8_2 != i_8_3 && (0 <= i_8_2 && i_8_2 < 6)) && (0 <= i_8_3 && i_8_3 < 6)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> aloc_1(Heap, arr2, i_8_2) != aloc_1(Heap, arr2, i_8_3)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 0 <= i && i < 6 ==> acc(aloc(arr2, i).int, write)) might not hold on entry. There might be insufficient permission to access aloc(arr2, i).int (0652.vpr@40.16--40.106) [215393]"}
            (forall i_8_2: int ::
            { aloc#frame(EmptyFrame, arr2, i_8_2) } { Heap[aloc#frame(EmptyFrame, arr2, i_8_2), vint_1] }
            0 <= i_8_2 && i_8_2 < 6 ==> Mask[aloc_1(Heap, arr2, i_8_2), vint_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver aloc(arr2, i)
          assume (forall i_8_2: int ::
            { aloc#frame(EmptyFrame, arr2, i_8_2) } { Heap[aloc#frame(EmptyFrame, arr2, i_8_2), vint_1] }
            (0 <= i_8_2 && i_8_2 < 6) && NoPerm < FullPerm ==> qpRange3(aloc_1(Heap, arr2, i_8_2)) && invRecv3(aloc_1(Heap, arr2, i_8_2)) == i_8_2
          );
          assume (forall o_4: Ref ::
            { invRecv3(o_4) }
            (0 <= invRecv3(o_4) && invRecv3(o_4) < 6) && (NoPerm < FullPerm && qpRange3(o_4)) ==> aloc_1(Heap, arr2, invRecv3(o_4)) == o_4
          );
        
        // -- assume permission updates for field int
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            ((0 <= invRecv3(o_4) && invRecv3(o_4) < 6) && (NoPerm < FullPerm && qpRange3(o_4)) ==> aloc_1(Heap, arr2, invRecv3(o_4)) == o_4 && QPMask[o_4, vint_1] == Mask[o_4, vint_1] - FullPerm) && (!((0 <= invRecv3(o_4) && invRecv3(o_4) < 6) && (NoPerm < FullPerm && qpRange3(o_4))) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 6 <= i && i < 12 ==> acc(aloc(arr2, i).int, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (0652.vpr@41.16--41.107) [215394]"}
            (forall i_9_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_9_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_9_1), vint_1] }
            (6 <= i_9_1 && i_9_1 < 12) && dummyFunction(Heap[aloc_1(Heap, arr2, i_9_1), vint_1]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver aloc(arr2, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 6 <= i && i < 12 ==> acc(aloc(arr2, i).int, 1 / 2)) might not hold on entry. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@41.16--41.107) [215395]"}
            (forall i_9_1: int, i_9_2: int ::
            { neverTriggered4(i_9_1), neverTriggered4(i_9_2) }
            (((i_9_1 != i_9_2 && (6 <= i_9_1 && i_9_1 < 12)) && (6 <= i_9_2 && i_9_2 < 12)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, i_9_1) != aloc_1(Heap, arr2, i_9_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 6 <= i && i < 12 ==> acc(aloc(arr2, i).int, 1 / 2)) might not hold on entry. There might be insufficient permission to access aloc(arr2, i).int (0652.vpr@41.16--41.107) [215396]"}
            (forall i_9_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_9_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_9_1), vint_1] }
            6 <= i_9_1 && i_9_1 < 12 ==> Mask[aloc_1(Heap, arr2, i_9_1), vint_1] >= 1 / 2
          );
        
        // -- assumptions for inverse of receiver aloc(arr2, i)
          assume (forall i_9_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_9_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_9_1), vint_1] }
            (6 <= i_9_1 && i_9_1 < 12) && NoPerm < 1 / 2 ==> qpRange4(aloc_1(Heap, arr2, i_9_1)) && invRecv4(aloc_1(Heap, arr2, i_9_1)) == i_9_1
          );
          assume (forall o_4: Ref ::
            { invRecv4(o_4) }
            (6 <= invRecv4(o_4) && invRecv4(o_4) < 12) && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> aloc_1(Heap, arr2, invRecv4(o_4)) == o_4
          );
        
        // -- assume permission updates for field int
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            ((6 <= invRecv4(o_4) && invRecv4(o_4) < 12) && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> aloc_1(Heap, arr2, invRecv4(o_4)) == o_4 && QPMask[o_4, vint_1] == Mask[o_4, vint_1] - 1 / 2) && (!((6 <= invRecv4(o_4) && invRecv4(o_4) < 12) && (NoPerm < 1 / 2 && qpRange4(o_4))) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2)) might not hold on entry. Fraction 1 / 2 might be negative. (0652.vpr@42.16--42.106) [215397]"}
            (forall i_10_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_10_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_10_1), vint_1] }
            (0 <= i_10_1 && i_10_1 < 6) && dummyFunction(Heap[aloc_1(Heap, arr1, i_10_1), vint_1]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver aloc(arr1, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2)) might not hold on entry. Quantified resource aloc(arr1, i).int might not be injective. (0652.vpr@42.16--42.106) [215398]"}
            (forall i_10_1: int, i_10_2: int ::
            { neverTriggered5(i_10_1), neverTriggered5(i_10_2) }
            (((i_10_1 != i_10_2 && (0 <= i_10_1 && i_10_1 < 6)) && (0 <= i_10_2 && i_10_2 < 6)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, i_10_1) != aloc_1(Heap, arr1, i_10_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2)) might not hold on entry. There might be insufficient permission to access aloc(arr1, i).int (0652.vpr@42.16--42.106) [215399]"}
            (forall i_10_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_10_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_10_1), vint_1] }
            0 <= i_10_1 && i_10_1 < 6 ==> Mask[aloc_1(Heap, arr1, i_10_1), vint_1] >= 1 / 2
          );
        
        // -- assumptions for inverse of receiver aloc(arr1, i)
          assume (forall i_10_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_10_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_10_1), vint_1] }
            (0 <= i_10_1 && i_10_1 < 6) && NoPerm < 1 / 2 ==> qpRange5(aloc_1(Heap, arr1, i_10_1)) && invRecv5(aloc_1(Heap, arr1, i_10_1)) == i_10_1
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            (0 <= invRecv5(o_4) && invRecv5(o_4) < 6) && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> aloc_1(Heap, arr1, invRecv5(o_4)) == o_4
          );
        
        // -- assume permission updates for field int
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            ((0 <= invRecv5(o_4) && invRecv5(o_4) < 6) && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> aloc_1(Heap, arr1, invRecv5(o_4)) == o_4 && QPMask[o_4, vint_1] == Mask[o_4, vint_1] - 1 / 2) && (!((0 <= invRecv5(o_4) && invRecv5(o_4) < 6) && (NoPerm < 1 / 2 && qpRange5(o_4))) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        assume x == x;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { aloc(arr2, i).int } 0 <= i && i < 6 ==> acc(aloc(arr2, i).int, write))
          if (*) {
            if (0 <= i_7 && i_7 < 6) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@40.81--40.94) [215400]"}
                  0 <= i_7;
                assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr2) might not hold. (0652.vpr@40.81--40.94) [215401]"}
                  i_7 < (alen(arr2): int);
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@40.16--40.106) [215402]"}
          (forall i_12_1: int, i_12_2: int ::
          
          (((i_12_1 != i_12_2 && (0 <= i_12_1 && i_12_1 < 6)) && (0 <= i_12_2 && i_12_2 < 6)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> aloc_1(Heap, arr2, i_12_1) != aloc_1(Heap, arr2, i_12_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_12_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_12_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_12_1), vint_1] }
            (0 <= i_12_1 && i_12_1 < 6) && NoPerm < FullPerm ==> qpRange6(aloc_1(Heap, arr2, i_12_1)) && invRecv6(aloc_1(Heap, arr2, i_12_1)) == i_12_1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            ((0 <= invRecv6(o_4) && invRecv6(o_4) < 6) && NoPerm < FullPerm) && qpRange6(o_4) ==> aloc_1(Heap, arr2, invRecv6(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_12_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_12_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_12_1), vint_1] }
            0 <= i_12_1 && i_12_1 < 6 ==> aloc_1(Heap, arr2, i_12_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            (((0 <= invRecv6(o_4) && invRecv6(o_4) < 6) && NoPerm < FullPerm) && qpRange6(o_4) ==> (NoPerm < FullPerm ==> aloc_1(Heap, arr2, invRecv6(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + FullPerm) && (!(((0 <= invRecv6(o_4) && invRecv6(o_4) < 6) && NoPerm < FullPerm) && qpRange6(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { aloc(arr2, i).int } 6 <= i && i < 12 ==> acc(aloc(arr2, i).int, 1 / 2))
          if (*) {
            if (6 <= i_8 && i_8 < 12) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@41.82--41.95) [215403]"}
                  0 <= i_8;
                assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr2) might not hold. (0652.vpr@41.82--41.95) [215404]"}
                  i_8 < (alen(arr2): int);
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@41.16--41.107) [215405]"}
          (forall i_14_1: int, i_14_2: int ::
          
          (((i_14_1 != i_14_2 && (6 <= i_14_1 && i_14_1 < 12)) && (6 <= i_14_2 && i_14_2 < 12)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, i_14_1) != aloc_1(Heap, arr2, i_14_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_14_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_14_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_14_1), vint_1] }
            (6 <= i_14_1 && i_14_1 < 12) && NoPerm < 1 / 2 ==> qpRange7(aloc_1(Heap, arr2, i_14_1)) && invRecv7(aloc_1(Heap, arr2, i_14_1)) == i_14_1
          );
          assume (forall o_4: Ref ::
            { invRecv7(o_4) }
            ((6 <= invRecv7(o_4) && invRecv7(o_4) < 12) && NoPerm < 1 / 2) && qpRange7(o_4) ==> aloc_1(Heap, arr2, invRecv7(o_4)) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0652.vpr@41.16--41.107) [215406]"}
          (forall i_14_1: int ::
          { aloc#frame(EmptyFrame, arr2, i_14_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_14_1), vint_1] }
          6 <= i_14_1 && i_14_1 < 12 ==> 1 / 2 >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i_14_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_14_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_14_1), vint_1] }
            (6 <= i_14_1 && i_14_1 < 12) && 1 / 2 > NoPerm ==> aloc_1(Heap, arr2, i_14_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            (((6 <= invRecv7(o_4) && invRecv7(o_4) < 12) && NoPerm < 1 / 2) && qpRange7(o_4) ==> (NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, invRecv7(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + 1 / 2) && (!(((6 <= invRecv7(o_4) && invRecv7(o_4) < 12) && NoPerm < 1 / 2) && qpRange7(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2))
          if (*) {
            if (0 <= i_9 && i_9 < 6) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Precondition of function aloc might not hold. Assertion 0 <= i might not hold. (0652.vpr@42.81--42.94) [215407]"}
                  0 <= i_9;
                assert {:msg "  Precondition of function aloc might not hold. Assertion i < alen(arr1) might not hold. (0652.vpr@42.81--42.94) [215408]"}
                  i_9 < (alen(arr1): int);
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource aloc(arr1, i).int might not be injective. (0652.vpr@42.16--42.106) [215409]"}
          (forall i_16_1: int, i_16_2: int ::
          
          (((i_16_1 != i_16_2 && (0 <= i_16_1 && i_16_1 < 6)) && (0 <= i_16_2 && i_16_2 < 6)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, i_16_1) != aloc_1(Heap, arr1, i_16_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_16_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_16_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_16_1), vint_1] }
            (0 <= i_16_1 && i_16_1 < 6) && NoPerm < 1 / 2 ==> qpRange8(aloc_1(Heap, arr1, i_16_1)) && invRecv8(aloc_1(Heap, arr1, i_16_1)) == i_16_1
          );
          assume (forall o_4: Ref ::
            { invRecv8(o_4) }
            ((0 <= invRecv8(o_4) && invRecv8(o_4) < 6) && NoPerm < 1 / 2) && qpRange8(o_4) ==> aloc_1(Heap, arr1, invRecv8(o_4)) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0652.vpr@42.16--42.106) [215410]"}
          (forall i_16_1: int ::
          { aloc#frame(EmptyFrame, arr1, i_16_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_16_1), vint_1] }
          0 <= i_16_1 && i_16_1 < 6 ==> 1 / 2 >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i_16_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_16_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_16_1), vint_1] }
            (0 <= i_16_1 && i_16_1 < 6) && 1 / 2 > NoPerm ==> aloc_1(Heap, arr1, i_16_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            (((0 <= invRecv8(o_4) && invRecv8(o_4) < 6) && NoPerm < 1 / 2) && qpRange8(o_4) ==> (NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, invRecv8(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + 1 / 2) && (!(((0 <= invRecv8(o_4) && invRecv8(o_4) < 6) && NoPerm < 1 / 2) && qpRange8(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume x == x;
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@40.16--40.106) [215411]"}
          (forall i_17: int, i_17_1: int ::
          
          (((i_17 != i_17_1 && (0 <= i_17 && i_17 < 6)) && (0 <= i_17_1 && i_17_1 < 6)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> aloc_1(Heap, arr2, i_17) != aloc_1(Heap, arr2, i_17_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_17: int ::
            { aloc#frame(EmptyFrame, arr2, i_17) } { Heap[aloc#frame(EmptyFrame, arr2, i_17), vint_1] }
            (0 <= i_17 && i_17 < 6) && NoPerm < FullPerm ==> qpRange9(aloc_1(Heap, arr2, i_17)) && invRecv9(aloc_1(Heap, arr2, i_17)) == i_17
          );
          assume (forall o_4: Ref ::
            { invRecv9(o_4) }
            ((0 <= invRecv9(o_4) && invRecv9(o_4) < 6) && NoPerm < FullPerm) && qpRange9(o_4) ==> aloc_1(Heap, arr2, invRecv9(o_4)) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_17: int ::
            { aloc#frame(EmptyFrame, arr2, i_17) } { Heap[aloc#frame(EmptyFrame, arr2, i_17), vint_1] }
            0 <= i_17 && i_17 < 6 ==> aloc_1(Heap, arr2, i_17) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            (((0 <= invRecv9(o_4) && invRecv9(o_4) < 6) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> aloc_1(Heap, arr2, invRecv9(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < 6) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@41.16--41.107) [215412]"}
          (forall i_18_1: int, i_18_2: int ::
          
          (((i_18_1 != i_18_2 && (6 <= i_18_1 && i_18_1 < 12)) && (6 <= i_18_2 && i_18_2 < 12)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, i_18_1) != aloc_1(Heap, arr2, i_18_2)
        );
        
        // -- Define Inverse Function
          assume (forall i_18_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_18_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_18_1), vint_1] }
            (6 <= i_18_1 && i_18_1 < 12) && NoPerm < 1 / 2 ==> qpRange10(aloc_1(Heap, arr2, i_18_1)) && invRecv10(aloc_1(Heap, arr2, i_18_1)) == i_18_1
          );
          assume (forall o_4: Ref ::
            { invRecv10(o_4) }
            ((6 <= invRecv10(o_4) && invRecv10(o_4) < 12) && NoPerm < 1 / 2) && qpRange10(o_4) ==> aloc_1(Heap, arr2, invRecv10(o_4)) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0652.vpr@41.16--41.107) [215413]"}
          (forall i_18_1: int ::
          { aloc#frame(EmptyFrame, arr2, i_18_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_18_1), vint_1] }
          6 <= i_18_1 && i_18_1 < 12 ==> 1 / 2 >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i_18_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_18_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_18_1), vint_1] }
            (6 <= i_18_1 && i_18_1 < 12) && 1 / 2 > NoPerm ==> aloc_1(Heap, arr2, i_18_1) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            (((6 <= invRecv10(o_4) && invRecv10(o_4) < 12) && NoPerm < 1 / 2) && qpRange10(o_4) ==> (NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, invRecv10(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + 1 / 2) && (!(((6 <= invRecv10(o_4) && invRecv10(o_4) < 12) && NoPerm < 1 / 2) && qpRange10(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource aloc(arr1, i).int might not be injective. (0652.vpr@42.16--42.106) [215414]"}
          (forall i_19: int, i_19_1: int ::
          
          (((i_19 != i_19_1 && (0 <= i_19 && i_19 < 6)) && (0 <= i_19_1 && i_19_1 < 6)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, i_19) != aloc_1(Heap, arr1, i_19_1)
        );
        
        // -- Define Inverse Function
          assume (forall i_19: int ::
            { aloc#frame(EmptyFrame, arr1, i_19) } { Heap[aloc#frame(EmptyFrame, arr1, i_19), vint_1] }
            (0 <= i_19 && i_19 < 6) && NoPerm < 1 / 2 ==> qpRange11(aloc_1(Heap, arr1, i_19)) && invRecv11(aloc_1(Heap, arr1, i_19)) == i_19
          );
          assume (forall o_4: Ref ::
            { invRecv11(o_4) }
            ((0 <= invRecv11(o_4) && invRecv11(o_4) < 6) && NoPerm < 1 / 2) && qpRange11(o_4) ==> aloc_1(Heap, arr1, invRecv11(o_4)) == o_4
          );
        // Check that permission expression is non-negative for all fields
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0652.vpr@42.16--42.106) [215415]"}
          (forall i_19: int ::
          { aloc#frame(EmptyFrame, arr1, i_19) } { Heap[aloc#frame(EmptyFrame, arr1, i_19), vint_1] }
          0 <= i_19 && i_19 < 6 ==> 1 / 2 >= NoPerm
        );
        
        // -- Assume set of fields is nonNull
          assume (forall i_19: int ::
            { aloc#frame(EmptyFrame, arr1, i_19) } { Heap[aloc#frame(EmptyFrame, arr1, i_19), vint_1] }
            (0 <= i_19 && i_19 < 6) && 1 / 2 > NoPerm ==> aloc_1(Heap, arr1, i_19) != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            (((0 <= invRecv11(o_4) && invRecv11(o_4) < 6) && NoPerm < 1 / 2) && qpRange11(o_4) ==> (NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, invRecv11(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + 1 / 2) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < 6) && NoPerm < 1 / 2) && qpRange11(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: assert aloc(arr2, 6).int == aloc(arr2, 6).int -- 0652.vpr@44.5--44.50
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            
            // -- Check definedness of aloc(arr2, 6).int == aloc(arr2, 6).int
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                assert {:msg "  Precondition of function aloc might not hold. Assertion 6 < alen(arr2) might not hold. (0652.vpr@44.12--44.25) [215416]"}
                  6 < (alen(arr2): int);
                // Stop execution
                assume false;
              }
              assert {:msg "  Assert might fail. There might be insufficient permission to access aloc(arr2, 6).int (0652.vpr@44.12--44.50) [215417]"}
                HasDirectPerm(ExhaleWellDef0Mask, aloc_1(Heap, arr2, 6), vint_1);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                assert {:msg "  Precondition of function aloc might not hold. Assertion 6 < alen(arr2) might not hold. (0652.vpr@44.33--44.46) [215418]"}
                  6 < (alen(arr2): int);
                // Stop execution
                assume false;
              }
              assert {:msg "  Assert might fail. There might be insufficient permission to access aloc(arr2, 6).int (0652.vpr@44.12--44.50) [215419]"}
                HasDirectPerm(ExhaleWellDef0Mask, aloc_1(Heap, arr2, 6), vint_1);
            assert {:msg "  Assert might fail. Assertion aloc(arr2, 6).int == aloc(arr2, 6).int might not hold. (0652.vpr@44.12--44.50) [215420]"}
              Heap[aloc_1(Heap, arr2, 6), vint_1] == Heap[aloc_1(Heap, arr2, 6), vint_1];
            assume state(Heap, Mask);
          
          // -- Translating statement: assert 3 + 8 == 38 -- 0652.vpr@46.5--46.23
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            assert {:msg "  Assert might fail. Assertion 3 + 8 == 38 might not hold. (0652.vpr@46.12--46.23) [215421]"}
              false;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant x == x might not be preserved. Assertion x == x might not hold. (0652.vpr@39.15--39.21) [215422]"}
          x == x;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver aloc(arr2, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 0 <= i && i < 6 ==> acc(aloc(arr2, i).int, write)) might not be preserved. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@40.16--40.106) [215423]"}
            (forall i_20_1: int, i_20_2: int ::
            { neverTriggered12(i_20_1), neverTriggered12(i_20_2) }
            (((i_20_1 != i_20_2 && (0 <= i_20_1 && i_20_1 < 6)) && (0 <= i_20_2 && i_20_2 < 6)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> aloc_1(Heap, arr2, i_20_1) != aloc_1(Heap, arr2, i_20_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 0 <= i && i < 6 ==> acc(aloc(arr2, i).int, write)) might not be preserved. There might be insufficient permission to access aloc(arr2, i).int (0652.vpr@40.16--40.106) [215424]"}
            (forall i_20_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_20_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_20_1), vint_1] }
            0 <= i_20_1 && i_20_1 < 6 ==> Mask[aloc_1(Heap, arr2, i_20_1), vint_1] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver aloc(arr2, i)
          assume (forall i_20_1: int ::
            { aloc#frame(EmptyFrame, arr2, i_20_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_20_1), vint_1] }
            (0 <= i_20_1 && i_20_1 < 6) && NoPerm < FullPerm ==> qpRange12(aloc_1(Heap, arr2, i_20_1)) && invRecv12(aloc_1(Heap, arr2, i_20_1)) == i_20_1
          );
          assume (forall o_4: Ref ::
            { invRecv12(o_4) }
            (0 <= invRecv12(o_4) && invRecv12(o_4) < 6) && (NoPerm < FullPerm && qpRange12(o_4)) ==> aloc_1(Heap, arr2, invRecv12(o_4)) == o_4
          );
        
        // -- assume permission updates for field int
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            ((0 <= invRecv12(o_4) && invRecv12(o_4) < 6) && (NoPerm < FullPerm && qpRange12(o_4)) ==> aloc_1(Heap, arr2, invRecv12(o_4)) == o_4 && QPMask[o_4, vint_1] == Mask[o_4, vint_1] - FullPerm) && (!((0 <= invRecv12(o_4) && invRecv12(o_4) < 6) && (NoPerm < FullPerm && qpRange12(o_4))) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 6 <= i && i < 12 ==> acc(aloc(arr2, i).int, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (0652.vpr@41.16--41.107) [215425]"}
            (forall i_21: int ::
            { aloc#frame(EmptyFrame, arr2, i_21) } { Heap[aloc#frame(EmptyFrame, arr2, i_21), vint_1] }
            (6 <= i_21 && i_21 < 12) && dummyFunction(Heap[aloc_1(Heap, arr2, i_21), vint_1]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver aloc(arr2, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 6 <= i && i < 12 ==> acc(aloc(arr2, i).int, 1 / 2)) might not be preserved. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@41.16--41.107) [215426]"}
            (forall i_21: int, i_21_1: int ::
            { neverTriggered13(i_21), neverTriggered13(i_21_1) }
            (((i_21 != i_21_1 && (6 <= i_21 && i_21 < 12)) && (6 <= i_21_1 && i_21_1 < 12)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, i_21) != aloc_1(Heap, arr2, i_21_1)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr2, i).int } 6 <= i && i < 12 ==> acc(aloc(arr2, i).int, 1 / 2)) might not be preserved. There might be insufficient permission to access aloc(arr2, i).int (0652.vpr@41.16--41.107) [215427]"}
            (forall i_21: int ::
            { aloc#frame(EmptyFrame, arr2, i_21) } { Heap[aloc#frame(EmptyFrame, arr2, i_21), vint_1] }
            6 <= i_21 && i_21 < 12 ==> Mask[aloc_1(Heap, arr2, i_21), vint_1] >= 1 / 2
          );
        
        // -- assumptions for inverse of receiver aloc(arr2, i)
          assume (forall i_21: int ::
            { aloc#frame(EmptyFrame, arr2, i_21) } { Heap[aloc#frame(EmptyFrame, arr2, i_21), vint_1] }
            (6 <= i_21 && i_21 < 12) && NoPerm < 1 / 2 ==> qpRange13(aloc_1(Heap, arr2, i_21)) && invRecv13(aloc_1(Heap, arr2, i_21)) == i_21
          );
          assume (forall o_4: Ref ::
            { invRecv13(o_4) }
            (6 <= invRecv13(o_4) && invRecv13(o_4) < 12) && (NoPerm < 1 / 2 && qpRange13(o_4)) ==> aloc_1(Heap, arr2, invRecv13(o_4)) == o_4
          );
        
        // -- assume permission updates for field int
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            ((6 <= invRecv13(o_4) && invRecv13(o_4) < 12) && (NoPerm < 1 / 2 && qpRange13(o_4)) ==> aloc_1(Heap, arr2, invRecv13(o_4)) == o_4 && QPMask[o_4, vint_1] == Mask[o_4, vint_1] - 1 / 2) && (!((6 <= invRecv13(o_4) && invRecv13(o_4) < 12) && (NoPerm < 1 / 2 && qpRange13(o_4))) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2)) might not be preserved. Fraction 1 / 2 might be negative. (0652.vpr@42.16--42.106) [215428]"}
            (forall i_22_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_22_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_22_1), vint_1] }
            (0 <= i_22_1 && i_22_1 < 6) && dummyFunction(Heap[aloc_1(Heap, arr1, i_22_1), vint_1]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver aloc(arr1, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2)) might not be preserved. Quantified resource aloc(arr1, i).int might not be injective. (0652.vpr@42.16--42.106) [215429]"}
            (forall i_22_1: int, i_22_2: int ::
            { neverTriggered14(i_22_1), neverTriggered14(i_22_2) }
            (((i_22_1 != i_22_2 && (0 <= i_22_1 && i_22_1 < 6)) && (0 <= i_22_2 && i_22_2 < 6)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, i_22_1) != aloc_1(Heap, arr1, i_22_2)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { aloc(arr1, i).int } 0 <= i && i < 6 ==> acc(aloc(arr1, i).int, 1 / 2)) might not be preserved. There might be insufficient permission to access aloc(arr1, i).int (0652.vpr@42.16--42.106) [215430]"}
            (forall i_22_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_22_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_22_1), vint_1] }
            0 <= i_22_1 && i_22_1 < 6 ==> Mask[aloc_1(Heap, arr1, i_22_1), vint_1] >= 1 / 2
          );
        
        // -- assumptions for inverse of receiver aloc(arr1, i)
          assume (forall i_22_1: int ::
            { aloc#frame(EmptyFrame, arr1, i_22_1) } { Heap[aloc#frame(EmptyFrame, arr1, i_22_1), vint_1] }
            (0 <= i_22_1 && i_22_1 < 6) && NoPerm < 1 / 2 ==> qpRange14(aloc_1(Heap, arr1, i_22_1)) && invRecv14(aloc_1(Heap, arr1, i_22_1)) == i_22_1
          );
          assume (forall o_4: Ref ::
            { invRecv14(o_4) }
            (0 <= invRecv14(o_4) && invRecv14(o_4) < 6) && (NoPerm < 1 / 2 && qpRange14(o_4)) ==> aloc_1(Heap, arr1, invRecv14(o_4)) == o_4
          );
        
        // -- assume permission updates for field int
          assume (forall o_4: Ref ::
            { QPMask[o_4, vint_1] }
            ((0 <= invRecv14(o_4) && invRecv14(o_4) < 6) && (NoPerm < 1 / 2 && qpRange14(o_4)) ==> aloc_1(Heap, arr1, invRecv14(o_4)) == o_4 && QPMask[o_4, vint_1] == Mask[o_4, vint_1] - 1 / 2) && (!((0 <= invRecv14(o_4) && invRecv14(o_4) < 6) && (NoPerm < 1 / 2 && qpRange14(o_4))) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      assume x == x;
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@40.16--40.106) [215431]"}
        (forall i_23: int, i_23_1: int ::
        
        (((i_23 != i_23_1 && (0 <= i_23 && i_23 < 6)) && (0 <= i_23_1 && i_23_1 < 6)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> aloc_1(Heap, arr2, i_23) != aloc_1(Heap, arr2, i_23_1)
      );
      
      // -- Define Inverse Function
        assume (forall i_23: int ::
          { aloc#frame(EmptyFrame, arr2, i_23) } { Heap[aloc#frame(EmptyFrame, arr2, i_23), vint_1] }
          (0 <= i_23 && i_23 < 6) && NoPerm < FullPerm ==> qpRange15(aloc_1(Heap, arr2, i_23)) && invRecv15(aloc_1(Heap, arr2, i_23)) == i_23
        );
        assume (forall o_4: Ref ::
          { invRecv15(o_4) }
          ((0 <= invRecv15(o_4) && invRecv15(o_4) < 6) && NoPerm < FullPerm) && qpRange15(o_4) ==> aloc_1(Heap, arr2, invRecv15(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_23: int ::
          { aloc#frame(EmptyFrame, arr2, i_23) } { Heap[aloc#frame(EmptyFrame, arr2, i_23), vint_1] }
          0 <= i_23 && i_23 < 6 ==> aloc_1(Heap, arr2, i_23) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, vint_1] }
          (((0 <= invRecv15(o_4) && invRecv15(o_4) < 6) && NoPerm < FullPerm) && qpRange15(o_4) ==> (NoPerm < FullPerm ==> aloc_1(Heap, arr2, invRecv15(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + FullPerm) && (!(((0 <= invRecv15(o_4) && invRecv15(o_4) < 6) && NoPerm < FullPerm) && qpRange15(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource aloc(arr2, i).int might not be injective. (0652.vpr@41.16--41.107) [215432]"}
        (forall i_24_1: int, i_24_2: int ::
        
        (((i_24_1 != i_24_2 && (6 <= i_24_1 && i_24_1 < 12)) && (6 <= i_24_2 && i_24_2 < 12)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, i_24_1) != aloc_1(Heap, arr2, i_24_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_24_1: int ::
          { aloc#frame(EmptyFrame, arr2, i_24_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_24_1), vint_1] }
          (6 <= i_24_1 && i_24_1 < 12) && NoPerm < 1 / 2 ==> qpRange16(aloc_1(Heap, arr2, i_24_1)) && invRecv16(aloc_1(Heap, arr2, i_24_1)) == i_24_1
        );
        assume (forall o_4: Ref ::
          { invRecv16(o_4) }
          ((6 <= invRecv16(o_4) && invRecv16(o_4) < 12) && NoPerm < 1 / 2) && qpRange16(o_4) ==> aloc_1(Heap, arr2, invRecv16(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0652.vpr@41.16--41.107) [215433]"}
        (forall i_24_1: int ::
        { aloc#frame(EmptyFrame, arr2, i_24_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_24_1), vint_1] }
        6 <= i_24_1 && i_24_1 < 12 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_24_1: int ::
          { aloc#frame(EmptyFrame, arr2, i_24_1) } { Heap[aloc#frame(EmptyFrame, arr2, i_24_1), vint_1] }
          (6 <= i_24_1 && i_24_1 < 12) && 1 / 2 > NoPerm ==> aloc_1(Heap, arr2, i_24_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, vint_1] }
          (((6 <= invRecv16(o_4) && invRecv16(o_4) < 12) && NoPerm < 1 / 2) && qpRange16(o_4) ==> (NoPerm < 1 / 2 ==> aloc_1(Heap, arr2, invRecv16(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + 1 / 2) && (!(((6 <= invRecv16(o_4) && invRecv16(o_4) < 12) && NoPerm < 1 / 2) && qpRange16(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource aloc(arr1, i).int might not be injective. (0652.vpr@42.16--42.106) [215434]"}
        (forall i_25: int, i_25_2: int ::
        
        (((i_25 != i_25_2 && (0 <= i_25 && i_25 < 6)) && (0 <= i_25_2 && i_25_2 < 6)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, i_25) != aloc_1(Heap, arr1, i_25_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_25: int ::
          { aloc#frame(EmptyFrame, arr1, i_25) } { Heap[aloc#frame(EmptyFrame, arr1, i_25), vint_1] }
          (0 <= i_25 && i_25 < 6) && NoPerm < 1 / 2 ==> qpRange17(aloc_1(Heap, arr1, i_25)) && invRecv17(aloc_1(Heap, arr1, i_25)) == i_25
        );
        assume (forall o_4: Ref ::
          { invRecv17(o_4) }
          ((0 <= invRecv17(o_4) && invRecv17(o_4) < 6) && NoPerm < 1 / 2) && qpRange17(o_4) ==> aloc_1(Heap, arr1, invRecv17(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (0652.vpr@42.16--42.106) [215435]"}
        (forall i_25: int ::
        { aloc#frame(EmptyFrame, arr1, i_25) } { Heap[aloc#frame(EmptyFrame, arr1, i_25), vint_1] }
        0 <= i_25 && i_25 < 6 ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_25: int ::
          { aloc#frame(EmptyFrame, arr1, i_25) } { Heap[aloc#frame(EmptyFrame, arr1, i_25), vint_1] }
          (0 <= i_25 && i_25 < 6) && 1 / 2 > NoPerm ==> aloc_1(Heap, arr1, i_25) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, vint_1] }
          (((0 <= invRecv17(o_4) && invRecv17(o_4) < 6) && NoPerm < 1 / 2) && qpRange17(o_4) ==> (NoPerm < 1 / 2 ==> aloc_1(Heap, arr1, invRecv17(o_4)) == o_4) && QPMask[o_4, vint_1] == Mask[o_4, vint_1] + 1 / 2) && (!(((0 <= invRecv17(o_4) && invRecv17(o_4) < 6) && NoPerm < 1 / 2) && qpRange17(o_4)) ==> QPMask[o_4, vint_1] == Mask[o_4, vint_1])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != vint_1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}