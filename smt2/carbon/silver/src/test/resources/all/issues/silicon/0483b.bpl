// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:43:27
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0483b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0483b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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

function  neverTriggered1(i$0_4_1: int): bool;
function  neverTriggered2(i$1_4: int): bool;
function  neverTriggered3(i_1: int): bool;
function  neverTriggered4(i$0_1: int): bool;
function  neverTriggered5(i$0_2: int): bool;
function  neverTriggered6(i$1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: Property
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
type ArrayDomainType T;

// Translation of domain function loc
function  loc<T>(a_3: (ArrayDomainType T), i_79: int): T;

// Translation of domain axiom loc_inject
axiom (forall <T> a_2: (ArrayDomainType T), i: int, j_9: int ::
  { (loc(a_2, i): T), (loc(a_2, j_9): T) }
  i >= 0 && (j_9 >= 0 && i != j_9) ==> (loc(a_2, i): T) != (loc(a_2, j_9): T)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField bool;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function Property
// ==================================================

// Uninterpreted function definitions
function  Property(Heap: HeapType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref)): bool;
function  Property'(Heap: HeapType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref)): bool;
axiom (forall Heap: HeapType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref) ::
  { Property(Heap, a_2, b_24) }
  Property(Heap, a_2, b_24) == Property'(Heap, a_2, b_24) && dummyFunction(Property#triggerStateless(a_2, b_24))
);
axiom (forall Heap: HeapType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref) ::
  { Property'(Heap, a_2, b_24) }
  dummyFunction(Property#triggerStateless(a_2, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref) ::
  { state(Heap, Mask), Property(Heap, a_2, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Property(Heap, a_2, b_24) == (forall i: int ::
    { (loc(b_24, i): Ref) }
    0 <= i ==> Heap[(loc(b_24, i): Ref), val]
  )
);

// Framing axioms
function  Property#frame(frame: FrameType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref) ::
  { state(Heap, Mask), Property'(Heap, a_2, b_24) }
  state(Heap, Mask) ==> Property'(Heap, a_2, b_24) == Property#frame(CombineFrames(FrameFragment(Property#condqp1(Heap, a_2, b_24)), FrameFragment(Property#condqp2(Heap, a_2, b_24))), a_2, b_24)
);
// ==================================================
// Function used for framing of quantified permission (forall i$0: Int :: { (loc(a, i$0): Ref) } 0 <= i$0 ==> acc((loc(a, i$0): Ref).val, 1 / 2)) in function Property
// ==================================================

function  Property#condqp1(Heap: HeapType, a_1_1_1: (ArrayDomainType Ref), b_1_1_1: (ArrayDomainType Ref)): int;
function  sk_Property#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref) ::
  { Property#condqp1(Heap2Heap, a_2, b_24), Property#condqp1(Heap1Heap, a_2, b_24), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_Property#condqp1(Property#condqp1(Heap2Heap, a_2, b_24), Property#condqp1(Heap1Heap, a_2, b_24)) && NoPerm < 1 / 2 <==> 0 <= sk_Property#condqp1(Property#condqp1(Heap2Heap, a_2, b_24), Property#condqp1(Heap1Heap, a_2, b_24)) && NoPerm < 1 / 2) && (0 <= sk_Property#condqp1(Property#condqp1(Heap2Heap, a_2, b_24), Property#condqp1(Heap1Heap, a_2, b_24)) && NoPerm < 1 / 2 ==> Heap2Heap[(loc(a_2, sk_Property#condqp1(Property#condqp1(Heap2Heap, a_2, b_24), Property#condqp1(Heap1Heap, a_2, b_24))): Ref), val] == Heap1Heap[(loc(a_2, sk_Property#condqp1(Property#condqp1(Heap2Heap, a_2, b_24), Property#condqp1(Heap1Heap, a_2, b_24))): Ref), val]) ==> Property#condqp1(Heap2Heap, a_2, b_24) == Property#condqp1(Heap1Heap, a_2, b_24)
);
// ==================================================
// Function used for framing of quantified permission (forall i$1: Int :: { (loc(b, i$1): Ref) } 0 <= i$1 ==> acc((loc(b, i$1): Ref).val, 1 / 2)) in function Property
// ==================================================

function  Property#condqp2(Heap: HeapType, a_1_1_1: (ArrayDomainType Ref), b_1_1_1: (ArrayDomainType Ref)): int;
function  sk_Property#condqp2(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref) ::
  { Property#condqp2(Heap2Heap, a_2, b_24), Property#condqp2(Heap1Heap, a_2, b_24), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_Property#condqp2(Property#condqp2(Heap2Heap, a_2, b_24), Property#condqp2(Heap1Heap, a_2, b_24)) && NoPerm < 1 / 2 <==> 0 <= sk_Property#condqp2(Property#condqp2(Heap2Heap, a_2, b_24), Property#condqp2(Heap1Heap, a_2, b_24)) && NoPerm < 1 / 2) && (0 <= sk_Property#condqp2(Property#condqp2(Heap2Heap, a_2, b_24), Property#condqp2(Heap1Heap, a_2, b_24)) && NoPerm < 1 / 2 ==> Heap2Heap[(loc(b_24, sk_Property#condqp2(Property#condqp2(Heap2Heap, a_2, b_24), Property#condqp2(Heap1Heap, a_2, b_24))): Ref), val] == Heap1Heap[(loc(b_24, sk_Property#condqp2(Property#condqp2(Heap2Heap, a_2, b_24), Property#condqp2(Heap1Heap, a_2, b_24))): Ref), val]) ==> Property#condqp2(Heap2Heap, a_2, b_24) == Property#condqp2(Heap1Heap, a_2, b_24)
);

// Trigger function (controlling recursive postconditions)
function  Property#trigger(frame: FrameType, a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref)): bool;

// State-independent trigger function
function  Property#triggerStateless(a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref)): bool;

// Check contract well-formedness and postcondition
procedure Property#definedness(a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_4: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall i$0: Int :: { (loc(a, i$0): Ref) } 0 <= i$0 ==> acc((loc(a, i$0): Ref).val, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(a, i$0): Ref).val might not be injective. (0483b.vpr@17.11--17.30) [216563]"}
      (forall i$0_4_1: int, i$0_4_2: int ::
      
      (((i$0_4_1 != i$0_4_2 && 0 <= i$0_4_1) && 0 <= i$0_4_2) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(a_2, i$0_4_1): Ref) != (loc(a_2, i$0_4_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i$0_4_1: int ::
        { (loc(a_2, i$0_4_1): Ref) } { (loc(a_2, i$0_4_1): Ref) }
        0 <= i$0_4_1 && NoPerm < 1 / 2 ==> qpRange1((loc(a_2, i$0_4_1): Ref)) && invRecv1((loc(a_2, i$0_4_1): Ref)) == i$0_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (0 <= invRecv1(o_4) && NoPerm < 1 / 2) && qpRange1(o_4) ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0483b.vpr@17.11--17.30) [216564]"}
      (forall i$0_4_1: int ::
      { (loc(a_2, i$0_4_1): Ref) } { (loc(a_2, i$0_4_1): Ref) }
      0 <= i$0_4_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i$0_4_1: int ::
        { (loc(a_2, i$0_4_1): Ref) } { (loc(a_2, i$0_4_1): Ref) }
        0 <= i$0_4_1 && 1 / 2 > NoPerm ==> (loc(a_2, i$0_4_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv1(o_4) && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> (loc(a_2, invRecv1(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + 1 / 2) && (!((0 <= invRecv1(o_4) && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i$1: Int :: { (loc(b, i$1): Ref) } 0 <= i$1 ==> acc((loc(b, i$1): Ref).val, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource (loc(b, i$1): Ref).val might not be injective. (0483b.vpr@18.11--18.30) [216565]"}
      (forall i$1_4: int, i$1_4_1: int ::
      
      (((i$1_4 != i$1_4_1 && 0 <= i$1_4) && 0 <= i$1_4_1) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(b_24, i$1_4): Ref) != (loc(b_24, i$1_4_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i$1_4: int ::
        { (loc(b_24, i$1_4): Ref) } { (loc(b_24, i$1_4): Ref) }
        0 <= i$1_4 && NoPerm < 1 / 2 ==> qpRange2((loc(b_24, i$1_4): Ref)) && invRecv2((loc(b_24, i$1_4): Ref)) == i$1_4
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (0 <= invRecv2(o_4) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (loc(b_24, invRecv2(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0483b.vpr@18.11--18.30) [216566]"}
      (forall i$1_4: int ::
      { (loc(b_24, i$1_4): Ref) } { (loc(b_24, i$1_4): Ref) }
      0 <= i$1_4 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i$1_4: int ::
        { (loc(b_24, i$1_4): Ref) } { (loc(b_24, i$1_4): Ref) }
        0 <= i$1_4 && 1 / 2 > NoPerm ==> (loc(b_24, i$1_4): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv2(o_4) && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> (loc(b_24, invRecv2(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + 1 / 2) && (!((0 <= invRecv2(o_4) && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall i: Int :: { (loc(b, i): Ref) } 0 <= i ==> (loc(b, i): Ref).val)
      if (*) {
        if (0 <= i_4) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access (loc(b, i): Ref).val (0483b.vpr@16.1--21.2) [216567]"}
            HasDirectPerm(Mask, (loc(b_24, i_4): Ref), val);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall i_2_1: int ::
      { (loc(b_24, i_2_1): Ref) }
      0 <= i_2_1 ==> Heap[(loc(b_24, i_2_1): Ref), val]
    );
}

// ==================================================
// Translation of method Test
// ==================================================

procedure Test(a_2: (ArrayDomainType Ref), b_24: (ArrayDomainType Ref)) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var tmp1: bool;
  var i_8: int;
  var tmp2: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int ::
  //     { (loc(a, i): Ref) }
  //     0 <= i ==> acc((loc(a, i): Ref).val, 1 / 2)) -- 0483b.vpr@25.2--25.28
    
    // -- Check definedness of (forall i: Int :: { (loc(a, i): Ref) } 0 <= i ==> acc((loc(a, i): Ref).val, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource (loc(a, i): Ref).val might not be injective. (0483b.vpr@25.9--25.28) [216568]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && 0 <= i_1) && 0 <= i_1_1) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && NoPerm < 1 / 2 ==> qpRange3((loc(a_2, i_1): Ref)) && invRecv3((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (0 <= invRecv3(o_4) && NoPerm < 1 / 2) && qpRange3(o_4) ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (0483b.vpr@25.9--25.28) [216569]"}
      (forall i_1: int ::
      { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
      0 <= i_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && 1 / 2 > NoPerm ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv3(o_4) && NoPerm < 1 / 2) && qpRange3(o_4) ==> (NoPerm < 1 / 2 ==> (loc(a_2, invRecv3(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + 1 / 2) && (!((0 <= invRecv3(o_4) && NoPerm < 1 / 2) && qpRange3(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall i$0: Int ::
  //     { (loc(b, i$0): Ref) }
  //     0 <= i$0 ==> acc((loc(b, i$0): Ref).val, 1 / 2)) -- 0483b.vpr@26.2--26.28
    
    // -- Check definedness of (forall i$0: Int :: { (loc(b, i$0): Ref) } 0 <= i$0 ==> acc((loc(b, i$0): Ref).val, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource (loc(b, i$0): Ref).val might not be injective. (0483b.vpr@26.9--26.28) [216570]"}
      (forall i$0_1: int, i$0_1_1: int ::
      
      (((i$0_1 != i$0_1_1 && 0 <= i$0_1) && 0 <= i$0_1_1) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(b_24, i$0_1): Ref) != (loc(b_24, i$0_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i$0_1: int ::
        { (loc(b_24, i$0_1): Ref) } { (loc(b_24, i$0_1): Ref) }
        0 <= i$0_1 && NoPerm < 1 / 2 ==> qpRange4((loc(b_24, i$0_1): Ref)) && invRecv4((loc(b_24, i$0_1): Ref)) == i$0_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (0 <= invRecv4(o_4) && NoPerm < 1 / 2) && qpRange4(o_4) ==> (loc(b_24, invRecv4(o_4)): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (0483b.vpr@26.9--26.28) [216571]"}
      (forall i$0_1: int ::
      { (loc(b_24, i$0_1): Ref) } { (loc(b_24, i$0_1): Ref) }
      0 <= i$0_1 ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i$0_1: int ::
        { (loc(b_24, i$0_1): Ref) } { (loc(b_24, i$0_1): Ref) }
        0 <= i$0_1 && 1 / 2 > NoPerm ==> (loc(b_24, i$0_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, val] }
        ((0 <= invRecv4(o_4) && NoPerm < 1 / 2) && qpRange4(o_4) ==> (NoPerm < 1 / 2 ==> (loc(b_24, invRecv4(o_4)): Ref) == o_4) && QPMask[o_4, val] == Mask[o_4, val] + 1 / 2) && (!((0 <= invRecv4(o_4) && NoPerm < 1 / 2) && qpRange4(o_4)) ==> QPMask[o_4, val] == Mask[o_4, val])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != val ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp1 := Property(a, b) -- 0483b.vpr@28.3--28.35
    
    // -- Check definedness of Property(a, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function Property might not hold. Fraction 1 / 2 might be negative. (0483b.vpr@28.21--28.35) [216572]"}
            (forall i$0_2: int ::
            { (loc(a_2, i$0_2): Ref) } { (loc(a_2, i$0_2): Ref) }
            0 <= i$0_2 && dummyFunction(Heap[(loc(a_2, i$0_2): Ref), val]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver (loc(a, i$0): Ref) is injective
          assert {:msg "  Precondition of function Property might not hold. Quantified resource (loc(a, i$0): Ref).val might not be injective. (0483b.vpr@28.21--28.35) [216573]"}
            (forall i$0_2: int, i$0_2_1: int ::
            { neverTriggered5(i$0_2), neverTriggered5(i$0_2_1) }
            (((i$0_2 != i$0_2_1 && 0 <= i$0_2) && 0 <= i$0_2_1) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(a_2, i$0_2): Ref) != (loc(a_2, i$0_2_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function Property might not hold. There might be insufficient permission to access (loc(a, i$0): Ref).val (0483b.vpr@28.21--28.35) [216574]"}
            (forall i$0_2: int ::
            { (loc(a_2, i$0_2): Ref) } { (loc(a_2, i$0_2): Ref) }
            0 <= i$0_2 ==> 1 / 2 > NoPerm ==> Mask[(loc(a_2, i$0_2): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver (loc(a, i$0): Ref)
          assume (forall i$0_2: int ::
            { (loc(a_2, i$0_2): Ref) } { (loc(a_2, i$0_2): Ref) }
            0 <= i$0_2 && NoPerm < 1 / 2 ==> qpRange5((loc(a_2, i$0_2): Ref)) && invRecv5((loc(a_2, i$0_2): Ref)) == i$0_2
          );
          assume (forall o_4: Ref ::
            { invRecv5(o_4) }
            0 <= invRecv5(o_4) && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> (loc(a_2, invRecv5(o_4)): Ref) == o_4
          );
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function Property might not hold. Fraction 1 / 2 might be negative. (0483b.vpr@28.21--28.35) [216575]"}
            (forall i$1: int ::
            { (loc(b_24, i$1): Ref) } { (loc(b_24, i$1): Ref) }
            0 <= i$1 && dummyFunction(Heap[(loc(b_24, i$1): Ref), val]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver (loc(b, i$1): Ref) is injective
          assert {:msg "  Precondition of function Property might not hold. Quantified resource (loc(b, i$1): Ref).val might not be injective. (0483b.vpr@28.21--28.35) [216576]"}
            (forall i$1: int, i$1_1: int ::
            { neverTriggered6(i$1), neverTriggered6(i$1_1) }
            (((i$1 != i$1_1 && 0 <= i$1) && 0 <= i$1_1) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (loc(b_24, i$1): Ref) != (loc(b_24, i$1_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function Property might not hold. There might be insufficient permission to access (loc(b, i$1): Ref).val (0483b.vpr@28.21--28.35) [216577]"}
            (forall i$1: int ::
            { (loc(b_24, i$1): Ref) } { (loc(b_24, i$1): Ref) }
            0 <= i$1 ==> 1 / 2 > NoPerm ==> Mask[(loc(b_24, i$1): Ref), val] > NoPerm
          );
        
        // -- assumptions for inverse of receiver (loc(b, i$1): Ref)
          assume (forall i$1: int ::
            { (loc(b_24, i$1): Ref) } { (loc(b_24, i$1): Ref) }
            0 <= i$1 && NoPerm < 1 / 2 ==> qpRange6((loc(b_24, i$1): Ref)) && invRecv6((loc(b_24, i$1): Ref)) == i$1
          );
          assume (forall o_4: Ref ::
            { invRecv6(o_4) }
            0 <= invRecv6(o_4) && (NoPerm < 1 / 2 && qpRange6(o_4)) ==> (loc(b_24, invRecv6(o_4)): Ref) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    tmp1 := Property(Heap, a_2, b_24);
    assume state(Heap, Mask);
  
  // -- Translating statement: tmp2 := (forall i: Int ::
  //     { (loc(b, i): Ref) }
  //     0 <= i ==> (loc(b, i): Ref).val) -- 0483b.vpr@29.3--29.76
    
    // -- Check definedness of (forall i: Int :: { (loc(b, i): Ref) } 0 <= i ==> (loc(b, i): Ref).val)
      if (*) {
        if (0 <= i_8) {
          assert {:msg "  Assignment might fail. There might be insufficient permission to access (loc(b, i): Ref).val (0483b.vpr@29.3--29.76) [216578]"}
            HasDirectPerm(Mask, (loc(b_24, i_8): Ref), val);
        }
        assume false;
      }
    tmp2 := (forall i_3: int ::
      { (loc(b_24, i_3): Ref) }
      0 <= i_3 ==> Heap[(loc(b_24, i_3): Ref), val]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert tmp1 == tmp2 -- 0483b.vpr@31.3--31.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion tmp1 == tmp2 might not hold. (0483b.vpr@31.10--31.22) [216579]"}
      tmp1 == tmp2;
    assume state(Heap, Mask);
}