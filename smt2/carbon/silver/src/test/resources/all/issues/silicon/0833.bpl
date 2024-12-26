// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:19:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0833.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0833-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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

function  neverTriggered1(i_V0_3: int): bool;
function  neverTriggered2(i_V0_5: int): bool;
function  neverTriggered3(i_V0: int): bool;
function  neverTriggered4(i_V0_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: witness_rev
// - height 0: witness_4e2a3fe_F
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
// Translation of domain ShStruct2
// ==================================================

// The type for domain ShStruct2
type ShStruct2DomainType T0 T1;

// Translation of domain function ShStructget1of2
function  ShStructget1of2<T0, T1>(x_8: (ShStruct2DomainType T0 T1)): T1;

// Translation of domain function ShStructget0of2
function  ShStructget0of2<T0, T1>(x_8: (ShStruct2DomainType T0 T1)): T0;

// Translation of domain function ShStructrev1of2
function  ShStructrev1of2<T1, T0>(v1_35: T1): ShStruct2DomainType T0 T1;

// Translation of domain function ShStructrev0of2
function  ShStructrev0of2<T0, T1>(v0_1: T0): ShStruct2DomainType T0 T1;

// Translation of anonymous domain axiom
axiom (forall <T0, T1> x: (ShStruct2DomainType T0 T1) ::
  { (ShStructget1of2(x): T1) }
  (ShStructrev1of2((ShStructget1of2(x): T1)): ShStruct2DomainType T0 T1) == x
);

// Translation of anonymous domain axiom
axiom (forall <T0, T1> x: (ShStruct2DomainType T0 T1) ::
  { (ShStructget0of2(x): T0) }
  (ShStructrev0of2((ShStructget0of2(x): T0)): ShStruct2DomainType T0 T1) == x
);

// ==================================================
// Translation of all fields
// ==================================================

const unique Intint$$$$_E_$$$: Field NormalField int;
axiom !IsPredicateField(Intint$$$$_E_$$$);
axiom !IsWandField(Intint$$$$_E_$$$);

// ==================================================
// Translation of function witness_4e2a3fe_F
// ==================================================

// Uninterpreted function definitions
function  witness_4e2a3fe_F(Heap: HeapType, P0_PI0: int): ShStruct2DomainType Ref Ref;
function  witness_4e2a3fe_F'(Heap: HeapType, P0_PI0: int): ShStruct2DomainType Ref Ref;
axiom (forall Heap: HeapType, P0_PI0: int ::
  { witness_4e2a3fe_F(Heap, P0_PI0) }
  witness_4e2a3fe_F(Heap, P0_PI0) == witness_4e2a3fe_F'(Heap, P0_PI0) && dummyFunction(witness_4e2a3fe_F#triggerStateless(P0_PI0))
);
axiom (forall Heap: HeapType, P0_PI0: int ::
  { witness_4e2a3fe_F'(Heap, P0_PI0) }
  dummyFunction(witness_4e2a3fe_F#triggerStateless(P0_PI0))
);

// Framing axioms
function  witness_4e2a3fe_F#frame(frame: FrameType, P0_PI0: int): ShStruct2DomainType Ref Ref;
axiom (forall Heap: HeapType, Mask: MaskType, P0_PI0: int ::
  { state(Heap, Mask), witness_4e2a3fe_F'(Heap, P0_PI0) }
  state(Heap, Mask) ==> witness_4e2a3fe_F'(Heap, P0_PI0) == witness_4e2a3fe_F#frame(EmptyFrame, P0_PI0)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, P0_PI0: int ::
  { state(Heap, Mask), witness_4e2a3fe_F'(Heap, P0_PI0) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || witness_4e2a3fe_F#trigger(EmptyFrame, P0_PI0)) ==> witness_rev(Heap, witness_4e2a3fe_F'(Heap, P0_PI0)) == P0_PI0
);

// Trigger function (controlling recursive postconditions)
function  witness_4e2a3fe_F#trigger(frame: FrameType, P0_PI0: int): bool;

// State-independent trigger function
function  witness_4e2a3fe_F#triggerStateless(P0_PI0: int): ShStruct2DomainType Ref Ref;

// Check contract well-formedness and postcondition
procedure witness_4e2a3fe_F#definedness(P0_PI0: int) returns (Result: (ShStruct2DomainType Ref Ref))
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Checking definedness of postcondition (no body)
    assume state(Heap, Mask);
    
    // -- Check definedness of witness_rev(result) == P0_PI0
      if (*) {
        // Stop execution
        assume false;
      }
    assume witness_rev(Heap, Result) == P0_PI0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function witness_rev
// ==================================================

// Uninterpreted function definitions
function  witness_rev(Heap: HeapType, s_2: (ShStruct2DomainType Ref Ref)): int;
function  witness_rev'(Heap: HeapType, s_2: (ShStruct2DomainType Ref Ref)): int;
axiom (forall Heap: HeapType, s_2: (ShStruct2DomainType Ref Ref) ::
  { witness_rev(Heap, s_2) }
  witness_rev(Heap, s_2) == witness_rev'(Heap, s_2) && dummyFunction(witness_rev#triggerStateless(s_2))
);
axiom (forall Heap: HeapType, s_2: (ShStruct2DomainType Ref Ref) ::
  { witness_rev'(Heap, s_2) }
  dummyFunction(witness_rev#triggerStateless(s_2))
);

// Framing axioms
function  witness_rev#frame(frame: FrameType, s_2: (ShStruct2DomainType Ref Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, s_2: (ShStruct2DomainType Ref Ref) ::
  { state(Heap, Mask), witness_rev'(Heap, s_2) }
  state(Heap, Mask) ==> witness_rev'(Heap, s_2) == witness_rev#frame(EmptyFrame, s_2)
);

// Trigger function (controlling recursive postconditions)
function  witness_rev#trigger(frame: FrameType, s_2: (ShStruct2DomainType Ref Ref)): bool;

// State-independent trigger function
function  witness_rev#triggerStateless(s_2: (ShStruct2DomainType Ref Ref)): int;

// Check contract well-formedness and postcondition
procedure witness_rev#definedness(s_2: (ShStruct2DomainType Ref Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
}

// ==================================================
// Translation of predicate SharedInv_4e2a3fe_F
// ==================================================

type PredicateType_SharedInv_4e2a3fe_F;
function  SharedInv_4e2a3fe_F(): Field PredicateType_SharedInv_4e2a3fe_F FrameType;
function  SharedInv_4e2a3fe_F#sm(): Field PredicateType_SharedInv_4e2a3fe_F PMaskType;
axiom PredicateMaskField(SharedInv_4e2a3fe_F()) == SharedInv_4e2a3fe_F#sm();
axiom IsPredicateField(SharedInv_4e2a3fe_F());
axiom getPredWandId(SharedInv_4e2a3fe_F()) == 0;
function  SharedInv_4e2a3fe_F#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  SharedInv_4e2a3fe_F#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { SharedInv_4e2a3fe_F#trigger(Heap, SharedInv_4e2a3fe_F()) }
  SharedInv_4e2a3fe_F#everUsed(SharedInv_4e2a3fe_F())
);

// ==================================================
// Function used for framing of quantified permission (forall i_V0: Int :: { (ShStructget0of2(witness_4e2a3fe_F(i_V0)): Ref) } true && (let fn$$0 == (witness_4e2a3fe_F(i_V0)) in true) ==> acc((ShStructget0of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$, 1 / 2)) in predicate SharedInv_4e2a3fe_F
// ==================================================

function  SharedInv_4e2a3fe_F#condqp1(Heap: HeapType): int;
function  sk_SharedInv_4e2a3fe_F#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType ::
  { SharedInv_4e2a3fe_F#condqp1(Heap2Heap), SharedInv_4e2a3fe_F#condqp1(Heap1Heap), succHeapTrans(Heap2Heap, Heap1Heap) }
  (NoPerm < 1 / 2 <==> NoPerm < 1 / 2) && (NoPerm < 1 / 2 ==> Heap2Heap[(ShStructget0of2(witness_4e2a3fe_F(Heap2Heap, sk_SharedInv_4e2a3fe_F#condqp1(SharedInv_4e2a3fe_F#condqp1(Heap2Heap), SharedInv_4e2a3fe_F#condqp1(Heap1Heap)))): Ref), Intint$$$$_E_$$$] == Heap1Heap[(ShStructget0of2(witness_4e2a3fe_F(Heap1Heap, sk_SharedInv_4e2a3fe_F#condqp1(SharedInv_4e2a3fe_F#condqp1(Heap2Heap), SharedInv_4e2a3fe_F#condqp1(Heap1Heap)))): Ref), Intint$$$$_E_$$$]) ==> SharedInv_4e2a3fe_F#condqp1(Heap2Heap) == SharedInv_4e2a3fe_F#condqp1(Heap1Heap)
);

// ==================================================
// Function used for framing of quantified permission (forall i_V0: Int :: { (ShStructget1of2(witness_4e2a3fe_F(i_V0)): Ref) } true && (let fn$$0 == (witness_4e2a3fe_F(i_V0)) in true) ==> acc((ShStructget1of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$, 1 / 2)) in predicate SharedInv_4e2a3fe_F
// ==================================================

function  SharedInv_4e2a3fe_F#condqp2(Heap: HeapType): int;
function  sk_SharedInv_4e2a3fe_F#condqp2(fnAppH1_1: int, fnAppH2_1: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType ::
  { SharedInv_4e2a3fe_F#condqp2(Heap2Heap), SharedInv_4e2a3fe_F#condqp2(Heap1Heap), succHeapTrans(Heap2Heap, Heap1Heap) }
  (NoPerm < 1 / 2 <==> NoPerm < 1 / 2) && (NoPerm < 1 / 2 ==> Heap2Heap[(ShStructget1of2(witness_4e2a3fe_F(Heap2Heap, sk_SharedInv_4e2a3fe_F#condqp2(SharedInv_4e2a3fe_F#condqp2(Heap2Heap), SharedInv_4e2a3fe_F#condqp2(Heap1Heap)))): Ref), Intint$$$$_E_$$$] == Heap1Heap[(ShStructget1of2(witness_4e2a3fe_F(Heap1Heap, sk_SharedInv_4e2a3fe_F#condqp2(SharedInv_4e2a3fe_F#condqp2(Heap2Heap), SharedInv_4e2a3fe_F#condqp2(Heap1Heap)))): Ref), Intint$$$$_E_$$$]) ==> SharedInv_4e2a3fe_F#condqp2(Heap2Heap) == SharedInv_4e2a3fe_F#condqp2(Heap1Heap)
);

procedure SharedInv_4e2a3fe_F#definedness() returns ()
  modifies Heap, Mask;
{
  var fn$$0_4: (ShStruct2DomainType Ref Ref);
  var i_V0_2: int;
  var QPMask: MaskType;
  var fn$$0_7: (ShStruct2DomainType Ref Ref);
  var i_V0_4: int;
  
  // -- Check definedness of predicate body of SharedInv_4e2a3fe_F
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i_V0: Int :: { (ShStructget0of2(witness_4e2a3fe_F(i_V0)): Ref) } true && (let fn$$0 == (witness_4e2a3fe_F(i_V0)) in true) ==> acc((ShStructget0of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$, 1 / 2))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        fn$$0_4 := witness_4e2a3fe_F(Heap, i_V0_2);
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource (ShStructget0of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$ might not be injective. (0833.vpr@37.1--48.2) [202836]"}
      (forall i_V0_3: int, i_V0_3_1: int ::
      
      (i_V0_3 != i_V0_3_1 && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0_3)): Ref) != (ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0_3_1)): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_V0_3: int ::
        { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_3)): Ref) } { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_3)): Ref) }
        NoPerm < 1 / 2 ==> qpRange1((ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0_3)): Ref)) && invRecv1((ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0_3)): Ref)) == i_V0_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        NoPerm < 1 / 2 && qpRange1(o_4) ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, invRecv1(o_4))): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0833.vpr@37.1--48.2) [202837]"}
      (forall i_V0_3: int ::
      { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_3)): Ref) } { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_3)): Ref) }
      1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_V0_3: int ::
        { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_3)): Ref) } { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_3)): Ref) }
        1 / 2 > NoPerm ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0_3)): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Intint$$$$_E_$$$] }
        (NoPerm < 1 / 2 && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, invRecv1(o_4))): Ref) == o_4) && QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$] + 1 / 2) && (!(NoPerm < 1 / 2 && qpRange1(o_4)) ==> QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Intint$$$$_E_$$$ ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i_V0: Int :: { (ShStructget1of2(witness_4e2a3fe_F(i_V0)): Ref) } true && (let fn$$0 == (witness_4e2a3fe_F(i_V0)) in true) ==> acc((ShStructget1of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$, 1 / 2))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        fn$$0_7 := witness_4e2a3fe_F(Heap, i_V0_4);
        if (*) {
          // Stop execution
          assume false;
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource (ShStructget1of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$ might not be injective. (0833.vpr@37.1--48.2) [202838]"}
      (forall i_V0_5: int, i_V0_5_1: int ::
      
      (i_V0_5 != i_V0_5_1 && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_5)): Ref) != (ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_5_1)): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_V0_5: int ::
        { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_5)): Ref) } { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_5)): Ref) }
        NoPerm < 1 / 2 ==> qpRange2((ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_5)): Ref)) && invRecv2((ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_5)): Ref)) == i_V0_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        NoPerm < 1 / 2 && qpRange2(o_4) ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, invRecv2(o_4))): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0833.vpr@37.1--48.2) [202839]"}
      (forall i_V0_5: int ::
      { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_5)): Ref) } { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_5)): Ref) }
      1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_V0_5: int ::
        { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_5)): Ref) } { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_5)): Ref) }
        1 / 2 > NoPerm ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_5)): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Intint$$$$_E_$$$] }
        (NoPerm < 1 / 2 && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, invRecv2(o_4))): Ref) == o_4) && QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$] + 1 / 2) && (!(NoPerm < 1 / 2 && qpRange2(o_4)) ==> QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Intint$$$$_E_$$$ ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method processRequest_4e2a3fe_F
// ==================================================

procedure processRequest_4e2a3fe_F(id_V0: int) returns ()
  modifies Heap, Mask;
{
  var returnLabel_lblGuard: bool;
  var fn$$0: (ShStruct2DomainType Ref Ref);
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var id_V0_CN0: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  var LabelreturnLabelMask: MaskType;
  var LabelreturnLabelHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    returnLabel_lblGuard := false;
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of witness_4e2a3fe_F(id_V0)
      if (*) {
        // Stop execution
        assume false;
      }
    fn$$0 := witness_4e2a3fe_F(Heap, id_V0);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0833.vpr@51.13--55.12) [202840]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> (ShStructget0of2(fn$$0): Ref) != null;
    Mask := Mask[(ShStructget0of2(fn$$0): Ref), Intint$$$$_E_$$$:=Mask[(ShStructget0of2(fn$$0): Ref), Intint$$$$_E_$$$] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0833.vpr@51.13--55.12) [202841]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> (ShStructget1of2(fn$$0): Ref) != null;
    Mask := Mask[(ShStructget1of2(fn$$0): Ref), Intint$$$$_E_$$$:=Mask[(ShStructget1of2(fn$$0): Ref), Intint$$$$_E_$$$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, SharedInv_4e2a3fe_F():=Mask[null, SharedInv_4e2a3fe_F()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale id_V0_CN0 == 0 -- 0833.vpr@67.5--67.26
    assume id_V0_CN0 == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: id_V0_CN0 := id_V0 -- 0833.vpr@70.5--70.23
    id_V0_CN0 := id_V0;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(SharedInv_4e2a3fe_F(), write) -- 0833.vpr@75.5--75.45
    assume SharedInv_4e2a3fe_F#trigger(Heap, SharedInv_4e2a3fe_F());
    assume Heap[null, SharedInv_4e2a3fe_F()] == CombineFrames(FrameFragment(SharedInv_4e2a3fe_F#condqp1(Heap)), FrameFragment(SharedInv_4e2a3fe_F#condqp2(Heap)));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding SharedInv_4e2a3fe_F() might fail. There might be insufficient permission to access SharedInv_4e2a3fe_F() (0833.vpr@75.5--75.45) [202844]"}
        perm <= Mask[null, SharedInv_4e2a3fe_F()];
    }
    Mask := Mask[null, SharedInv_4e2a3fe_F():=Mask[null, SharedInv_4e2a3fe_F()] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, SharedInv_4e2a3fe_F())) {
        havoc newVersion;
        Heap := Heap[null, SharedInv_4e2a3fe_F():=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding SharedInv_4e2a3fe_F() might fail. Quantified resource (ShStructget0of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$ might not be injective. (0833.vpr@75.5--75.45) [202845]"}
      (forall i_V0: int, i_V0_6: int ::
      
      (i_V0 != i_V0_6 && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0)): Ref) != (ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0_6)): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_V0: int ::
        { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0)): Ref) } { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0)): Ref) }
        NoPerm < 1 / 2 ==> qpRange3((ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0)): Ref)) && invRecv3((ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0)): Ref)) == i_V0
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        NoPerm < 1 / 2 && qpRange3(o_4) ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, invRecv3(o_4))): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Unfolding SharedInv_4e2a3fe_F() might fail. Fraction 1 / 2 might be negative. (0833.vpr@75.5--75.45) [202846]"}
      (forall i_V0: int ::
      { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0)): Ref) } { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0)): Ref) }
      1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_V0: int ::
        { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0)): Ref) } { (ShStructget0of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0)): Ref) }
        1 / 2 > NoPerm ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, i_V0)): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Intint$$$$_E_$$$] }
        (NoPerm < 1 / 2 && qpRange3(o_4) ==> (NoPerm < 1 / 2 ==> (ShStructget0of2(witness_4e2a3fe_F(Heap, invRecv3(o_4))): Ref) == o_4) && QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$] + 1 / 2) && (!(NoPerm < 1 / 2 && qpRange3(o_4)) ==> QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Intint$$$$_E_$$$ ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding SharedInv_4e2a3fe_F() might fail. Quantified resource (ShStructget1of2(witness_4e2a3fe_F(i_V0)): Ref).Intint$$$$_E_$$$ might not be injective. (0833.vpr@75.5--75.45) [202847]"}
      (forall i_V0_1: int, i_V0_1_1: int ::
      
      (i_V0_1 != i_V0_1_1 && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_1)): Ref) != (ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_1_1)): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_V0_1: int ::
        { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_1)): Ref) } { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_1)): Ref) }
        NoPerm < 1 / 2 ==> qpRange4((ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_1)): Ref)) && invRecv4((ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_1)): Ref)) == i_V0_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        NoPerm < 1 / 2 && qpRange4(o_4) ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, invRecv4(o_4))): Ref) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Unfolding SharedInv_4e2a3fe_F() might fail. Fraction 1 / 2 might be negative. (0833.vpr@75.5--75.45) [202848]"}
      (forall i_V0_1: int ::
      { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_1)): Ref) } { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_1)): Ref) }
      1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_V0_1: int ::
        { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_1)): Ref) } { (ShStructget1of2(witness_4e2a3fe_F#frame(EmptyFrame, i_V0_1)): Ref) }
        1 / 2 > NoPerm ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, i_V0_1)): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Intint$$$$_E_$$$] }
        (NoPerm < 1 / 2 && qpRange4(o_4) ==> (NoPerm < 1 / 2 ==> (ShStructget1of2(witness_4e2a3fe_F(Heap, invRecv4(o_4))): Ref) == o_4) && QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$] + 1 / 2) && (!(NoPerm < 1 / 2 && qpRange4(o_4)) ==> QPMask[o_4, Intint$$$$_E_$$$] == Mask[o_4, Intint$$$$_E_$$$])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Intint$$$$_E_$$$ ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0833.vpr@79.5--79.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0833.vpr@79.12--79.17) [202849]"}
      false;
    assume state(Heap, Mask);
  
  // -- Translating statement: label returnLabel -- 0833.vpr@80.5--80.22
    returnLabel:
    LabelreturnLabelMask := Mask;
    LabelreturnLabelHeap := Heap;
    returnLabel_lblGuard := true;
    assume state(Heap, Mask);
}