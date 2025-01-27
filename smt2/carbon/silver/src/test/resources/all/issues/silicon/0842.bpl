// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:21:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0842.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0842-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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

function  neverTriggered1(i_2: int): bool;
function  neverTriggered2(i_2: int): bool;
function  neverTriggered3(i_1: int): bool;
function  neverTriggered4(i: int): bool;
function  neverTriggered5(i: int): bool;
function  neverTriggered6(i_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(x_2_1: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(x_1_1_1: Ref): int;
function  invRecv6(x_1_1_1: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(x_2_1: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(x_1_1_1: Ref): bool;
function  qpRange6(x_1_1_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: two
// - height 0: one
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField Ref;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function one
// ==================================================

// Uninterpreted function definitions
function  one_1(Heap: HeapType): int;
function  one'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { one_1(Heap) }
  one_1(Heap) == one'(Heap) && dummyFunction(one#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { one'(Heap) }
  dummyFunction(one#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), one_1(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> one_1(Heap) == 1
);

// Framing axioms
function  one#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), one'(Heap) }
  state(Heap, Mask) ==> one'(Heap) == one#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  one#trigger_1(frame: FrameType): bool;

// State-independent trigger function
function  one#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure one#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := 1;
}

// ==================================================
// Translation of function two
// ==================================================

// Uninterpreted function definitions
function  two_1(Heap: HeapType): int;
function  two'(Heap: HeapType): int;
axiom (forall Heap: HeapType ::
  { two_1(Heap) }
  two_1(Heap) == two'(Heap) && dummyFunction(two#triggerStateless())
);
axiom (forall Heap: HeapType ::
  { two'(Heap) }
  dummyFunction(two#triggerStateless())
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), two_1(Heap) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> two_1(Heap) == 2
);

// Framing axioms
function  two#frame(frame: FrameType): int;
axiom (forall Heap: HeapType, Mask: MaskType ::
  { state(Heap, Mask), two'(Heap) }
  state(Heap, Mask) ==> two'(Heap) == two#frame(EmptyFrame)
);

// Trigger function (controlling recursive postconditions)
function  two#trigger_1(frame: FrameType): bool;

// State-independent trigger function
function  two#triggerStateless(): int;

// Check contract well-formedness and postcondition
procedure two#definedness() returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := 2;
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(x: Ref): Field PredicateType_Q FrameType;
function  Q#sm(x: Ref): Field PredicateType_Q PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Q(x)) }
  PredicateMaskField(Q(x)) == Q#sm(x)
);
axiom (forall x: Ref ::
  { Q(x) }
  IsPredicateField(Q(x))
);
axiom (forall x: Ref ::
  { Q(x) }
  getPredWandId(Q(x)) == 0
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Q(x), Q(x2) }
  Q(x) == Q(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Q#sm(x), Q#sm(x2) }
  Q#sm(x) == Q#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Q#trigger(Heap, Q(x)) }
  Q#everUsed(Q(x))
);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 1
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

// ==================================================
// Function used for framing of quantified permission (forall i: Int ::one() == two() && x.f != null ==> acc(x.g.f, write)) in predicate P
// ==================================================

function  P#condqp1(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_P#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { P#condqp1(Heap2Heap, x), P#condqp1(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((one_1(Heap2Heap) == two_1(Heap2Heap) && Heap2Heap[x, f_7] != null) && NoPerm < FullPerm <==> (one_1(Heap1Heap) == two_1(Heap1Heap) && Heap1Heap[x, f_7] != null) && NoPerm < FullPerm) && ((one_1(Heap2Heap) == two_1(Heap2Heap) && Heap2Heap[x, f_7] != null) && NoPerm < FullPerm ==> Heap2Heap[Heap2Heap[x, g], f_7] == Heap1Heap[Heap1Heap[x, g], f_7]) ==> P#condqp1(Heap2Heap, x) == P#condqp1(Heap1Heap, x)
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::one() == two() && x.f != null ==> acc(x.g.f, write))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (one_1(Heap) == two_1(Heap)) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (0842.vpr@12.1--14.2) [76535]"}
            HasDirectPerm(Mask, x, f_7);
        }
        if (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0842.vpr@12.1--14.2) [76536]"}
            HasDirectPerm(Mask, x, g);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Predicate might not be well-formed. Quantified resource x.g.f might not be injective. (0842.vpr@12.1--14.2) [76537]"}
      (forall i_2: int, i_2_2: int ::
      
      (((i_2 != i_2_2 && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x, g] != Heap[x, g]
    );
    
    // -- Define Inverse Function
      assume (forall i_2: int ::
        
        (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm ==> qpRange1(Heap[x, g]) && invRecv1(Heap[x, g]) == i_2
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange1(o_9) ==> Heap[x, g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_2: int ::
        
        one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null ==> Heap[x, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> Heap[x, g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate P2
// ==================================================

type PredicateType_P2;
function  P2(x: Ref): Field PredicateType_P2 FrameType;
function  P2#sm(x: Ref): Field PredicateType_P2 PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P2(x)) }
  PredicateMaskField(P2(x)) == P2#sm(x)
);
axiom (forall x: Ref ::
  { P2(x) }
  IsPredicateField(P2(x))
);
axiom (forall x: Ref ::
  { P2(x) }
  getPredWandId(P2(x)) == 2
);
function  P2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P2(x), P2(x2) }
  P2(x) == P2(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P2#sm(x), P2#sm(x2) }
  P2#sm(x) == P2#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P2#trigger(Heap, P2(x)) }
  P2#everUsed(P2(x))
);

// ==================================================
// Function used for framing of quantified permission (forall i: Int ::one() == two() && x.f != null ==> acc(Q(x.g), write)) in predicate P2
// ==================================================

function  P2#condqp2(Heap: HeapType, x_1_1_1: Ref): int;
function  sk_P2#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, x: Ref ::
  { P2#condqp2(Heap2Heap, x), P2#condqp2(Heap1Heap, x), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((one_1(Heap2Heap) == two_1(Heap2Heap) && Heap2Heap[x, f_7] != null) && NoPerm < FullPerm <==> (one_1(Heap1Heap) == two_1(Heap1Heap) && Heap1Heap[x, f_7] != null) && NoPerm < FullPerm) && ((one_1(Heap2Heap) == two_1(Heap2Heap) && Heap2Heap[x, f_7] != null) && NoPerm < FullPerm ==> Heap2Heap[null, Q(Heap2Heap[x, g])] == Heap1Heap[null, Q(Heap1Heap[x, g])]) ==> P2#condqp2(Heap2Heap, x) == P2#condqp2(Heap1Heap, x)
);

procedure P2#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of P2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::one() == two() && x.f != null ==> acc(Q(x.g), write))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (one_1(Heap) == two_1(Heap)) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (0842.vpr@16.1--18.2) [76538]"}
            HasDirectPerm(Mask, x, f_7);
        }
        if (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.g (0842.vpr@16.1--18.2) [76539]"}
            HasDirectPerm(Mask, x, g);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(Q(x.g), write) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource Q(x.g) might not be injective. (0842.vpr@16.1--18.2) [76540]"}
        (forall i_2: int, i_2_2: int ::
        { neverTriggered2(i_2), neverTriggered2(i_2_2) }
        (((i_2 != i_2_2 && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x, g] != Heap[x, g]
      );
    
    // -- Define Inverse Function
      assume (forall i_2: int ::
        
        (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm ==> invRecv2(Heap[x, g]) == i_2 && qpRange2(Heap[x, g])
      );
      assume (forall x_2_1: Ref ::
        { invRecv2(x_2_1) }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange2(x_2_1) ==> Heap[x, g] == x_2_1
      );
    
    // -- Define updated permissions
      assume (forall x_2_1: Ref ::
        { QPMask[null, Q(x_2_1)] }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange2(x_2_1) ==> (NoPerm < FullPerm ==> Heap[x, g] == x_2_1) && QPMask[null, Q(x_2_1)] == Mask[null, Q(x_2_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_2_1: Ref ::
        { QPMask[null, Q(x_2_1)] }
        !(((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange2(x_2_1)) ==> QPMask[null, Q(x_2_1)] == Mask[null, Q(x_2_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method consumeField
// ==================================================

procedure consumeField(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale (forall i: Int ::one() == two() && x.f != null ==> acc(x.g.f, write)) -- 0842.vpr@22.3--22.71
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forall i: Int ::one() == two() && x.f != null ==> acc(x.g.f, write))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (one_1(Heap) == two_1(Heap)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (0842.vpr@22.10--22.71) [76541]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
        }
        if (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.g (0842.vpr@22.10--22.71) [76542]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, g);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver x.g is injective
      assert {:msg "  Exhale might fail. Quantified resource x.g.f might not be injective. (0842.vpr@22.10--22.71) [76544]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered3(i_1), neverTriggered3(i_1_1) }
        (((i_1 != i_1_1 && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x, g] != Heap[x, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.g.f (0842.vpr@22.10--22.71) [76545]"}
        (forall i_1: int ::
        
        one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null ==> Mask[Heap[x, g], f_7] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver x.g
      assume (forall i_1: int ::
        
        (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm ==> qpRange3(Heap[x, g]) && invRecv3(Heap[x, g]) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && (NoPerm < FullPerm && qpRange3(o_9)) ==> Heap[x, g] == o_9
      );
    
    // -- assume permission updates for field f
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && (NoPerm < FullPerm && qpRange3(o_9)) ==> Heap[x, g] == o_9 && QPMask[o_9, f_7] == Mask[o_9, f_7] - FullPerm) && (!((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && (NoPerm < FullPerm && qpRange3(o_9))) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0842.vpr@24.3--24.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0842.vpr@24.10--24.15) [76546]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method produceField
// ==================================================

procedure produceField(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var QPMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(P(x), write) -- 0842.vpr@29.3--29.14
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(P(x), write) -- 0842.vpr@30.3--30.14
    assume P#trigger(Heap, P(x));
    assume Heap[null, P(x)] == FrameFragment(P#condqp1(Heap, x));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(x) might fail. There might be insufficient permission to access P(x) (0842.vpr@30.3--30.14) [76550]"}
        perm <= Mask[null, P(x)];
    }
    Mask := Mask[null, P(x):=Mask[null, P(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(x))) {
        havoc newVersion;
        Heap := Heap[null, P(x):=newVersion];
      }
    assume state(Heap, Mask);
    havoc QPMask;
    assert {:msg "  Unfolding P(x) might fail. Quantified resource x.g.f might not be injective. (0842.vpr@30.3--30.14) [76551]"}
      (forall i: int, i_22: int ::
      
      (((i != i_22 && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x, g] != Heap[x, g]
    );
    
    // -- Define Inverse Function
      assume (forall i: int ::
        
        (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm ==> qpRange4(Heap[x, g]) && invRecv4(Heap[x, g]) == i
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange4(o_9) ==> Heap[x, g] == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i: int ::
        
        one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null ==> Heap[x, g] != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> Heap[x, g] == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0842.vpr@32.3--32.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0842.vpr@32.10--32.15) [76552]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method consumePred
// ==================================================

procedure consumePred(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var QPMask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: fold acc(P2(x), write) -- 0842.vpr@37.3--37.13
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(Q(x.g), write) is injective
      assert {:msg "  Folding P2(x) might fail. Quantified resource Q(x.g) might not be injective. (0842.vpr@37.3--37.13) [76555]"}
        (forall i: int, i_22: int ::
        { neverTriggered5(i), neverTriggered5(i_22) }
        (((i != i_22 && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x, g] != Heap[x, g]
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Folding P2(x) might fail. There might be insufficient permission to access Q(x.g) (0842.vpr@37.3--37.13) [76556]"}
        (forall i: int ::
        
        one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null ==> Mask[null, Q(Heap[x, g])] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(Q(x.g), write)
      assume (forall i: int ::
        
        (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm ==> invRecv5(Heap[x, g]) == i && qpRange5(Heap[x, g])
      );
      assume (forall x_1_1_1: Ref ::
        { invRecv5(x_1_1_1) }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange5(x_1_1_1) ==> Heap[x, g] == x_1_1_1
      );
    
    // -- assume permission updates
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, Q(x_1_1_1)] }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange5(x_1_1_1) ==> Heap[x, g] == x_1_1_1 && QPMask[null, Q(x_1_1_1)] == Mask[null, Q(x_1_1_1)] - FullPerm
      );
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, Q(x_1_1_1)] }
        !(((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange5(x_1_1_1)) ==> QPMask[null, Q(x_1_1_1)] == Mask[null, Q(x_1_1_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    perm := FullPerm;
    Mask := Mask[null, P2(x):=Mask[null, P2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P2#trigger(Heap, P2(x));
    assume Heap[null, P2(x)] == FrameFragment(P2#condqp2(Heap, x));
    if (!HasDirectPerm(Mask, null, P2(x))) {
      Heap := Heap[null, P2#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P2(x):=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0842.vpr@39.3--39.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0842.vpr@39.10--39.15) [76558]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method producePred
// ==================================================

procedure producePred(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var QPMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forall i: Int ::one() == two() && x.f != null ==>
  //     acc(Q(x.g), write)) -- 0842.vpr@44.3--44.67
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int ::one() == two() && x.f != null ==> acc(Q(x.g), write))
      if (*) {
        if (*) {
          // Stop execution
          assume false;
        }
        if (*) {
          // Stop execution
          assume false;
        }
        if (one_1(Heap) == two_1(Heap)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (0842.vpr@44.10--44.67) [76559]"}
            HasDirectPerm(Mask, x, f_7);
        }
        if (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (0842.vpr@44.10--44.67) [76560]"}
            HasDirectPerm(Mask, x, g);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(Q(x.g), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource Q(x.g) might not be injective. (0842.vpr@44.10--44.67) [76561]"}
        (forall i_1: int, i_1_1: int ::
        { neverTriggered6(i_1), neverTriggered6(i_1_1) }
        (((i_1 != i_1_1 && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Heap[x, g] != Heap[x, g]
      );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        
        (one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm ==> invRecv6(Heap[x, g]) == i_1 && qpRange6(Heap[x, g])
      );
      assume (forall x_1_1_1: Ref ::
        { invRecv6(x_1_1_1) }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange6(x_1_1_1) ==> Heap[x, g] == x_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, Q(x_1_1_1)] }
        ((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange6(x_1_1_1) ==> (NoPerm < FullPerm ==> Heap[x, g] == x_1_1_1) && QPMask[null, Q(x_1_1_1)] == Mask[null, Q(x_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        (o_9 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
      assume (forall x_1_1_1: Ref ::
        { QPMask[null, Q(x_1_1_1)] }
        !(((one_1(Heap) == two_1(Heap) && Heap[x, f_7] != null) && NoPerm < FullPerm) && qpRange6(x_1_1_1)) ==> QPMask[null, Q(x_1_1_1)] == Mask[null, Q(x_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0842.vpr@46.3--46.15
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0842.vpr@46.10--46.15) [76562]"}
      false;
    assume state(Heap, Mask);
}