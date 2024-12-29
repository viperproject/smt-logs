// 
// Translation of Viper program.
// 
// Date:         2024-12-29 15:40:28
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0378a.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0378a-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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

function  neverTriggered1(x_1: int): bool;
function  neverTriggered2(x_4: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(self_3_1: Ref): int;
function  invRecv2(self_1_1: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(self_3_1: Ref): bool;
function  qpRange2(self_1_1: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: foo
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
function  loc(a_3: ArrayDomainType, i_79: int): Ref;

// Translation of domain function len
function  len_1(a_3: ArrayDomainType): int;

// Translation of domain function first
function  first(r_3: Ref): ArrayDomainType;

// Translation of domain function second
function  second(r_3: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: ArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first((loc(a_2, i): Ref)): ArrayDomainType) == a_2 && (second((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_non_neg
axiom (forall a_2: ArrayDomainType ::
  { (len_1(a_2): int) }
  (len_1(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique elements_1: Field NormalField ArrayDomainType;
axiom !IsPredicateField(elements_1);
axiom !IsWandField(elements_1);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_2(Heap: HeapType, self: Ref): bool;
function  foo'(Heap: HeapType, self: Ref): bool;
axiom (forall Heap: HeapType, self: Ref ::
  { foo_2(Heap, self) }
  foo_2(Heap, self) == foo'(Heap, self) && dummyFunction(foo#triggerStateless(self))
);
axiom (forall Heap: HeapType, self: Ref ::
  { foo'(Heap, self) }
  dummyFunction(foo#triggerStateless(self))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), foo_2(Heap, self) } { state(Heap, Mask), foo#triggerStateless(self), P#trigger(Heap, P(self)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_2(Heap, self) == (forall i: int ::
    { (loc(Heap[self, elements_1], i): Ref) }
    0 <= i && i < (len_1(Heap[self, elements_1]): int) ==> foo'(Heap, (loc(Heap[self, elements_1], i): Ref))
  )
);

// Framing axioms
function  foo#frame(frame: FrameType, self: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, self: Ref ::
  { state(Heap, Mask), foo'(Heap, self) } { state(Heap, Mask), foo#triggerStateless(self), P#trigger(Heap, P(self)) }
  state(Heap, Mask) ==> foo'(Heap, self) == foo#frame(Heap[null, P(self)], self)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger(frame: FrameType, self: Ref): bool;

// State-independent trigger function
function  foo#triggerStateless(self: Ref): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(self: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > 0.000000000;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var QPMask: MaskType;
  var i_14: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[self, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, P(self):=Mask[null, P(self)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(self), wildcard) in (forall i: Int :: { loc(self.elements, i) } 0 <= i && i < len(self.elements) ==> foo(loc(self.elements, i))))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(self));
      assume UnfoldingHeap[null, P(self)] == CombineFrames(FrameFragment(UnfoldingHeap[self, elements_1]), FrameFragment(P#condqp1(UnfoldingHeap, self)));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(self) (0378a.vpr@36.1--44.2) [206661]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(self)];
      assume self != null;
      havoc wildcard;
      perm := wildcard;
      assume self != null;
      UnfoldingMask := UnfoldingMask[self, elements_1:=UnfoldingMask[self, elements_1] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (forall x: int ::
        { (loc(UnfoldingHeap[self, elements_1], x): Ref) }
        0 <= x && x < (len_1(UnfoldingHeap[self, elements_1]): int) ==> (loc(UnfoldingHeap[self, elements_1], x): Ref) != null
      );
      havoc QPMask;
      havoc wildcard;
      
      // -- check if receiver acc(P(loc(self.elements, x)), wildcard) is injective
        assert {:msg "  Function might not be well-formed. Quantified resource P(loc(self.elements, x)) might not be injective. (0378a.vpr@36.1--44.2) [206662]"}
          (forall x_1: int, x_1_1: int ::
          { neverTriggered1(x_1), neverTriggered1(x_1_1) }
          (((x_1 != x_1_1 && (0 <= x_1 && x_1 < (len_1(UnfoldingHeap[self, elements_1]): int))) && (0 <= x_1_1 && x_1_1 < (len_1(UnfoldingHeap[self, elements_1]): int))) && NoPerm < wildcard) && NoPerm < wildcard ==> (loc(UnfoldingHeap[self, elements_1], x_1): Ref) != (loc(UnfoldingHeap[self, elements_1], x_1_1): Ref)
        );
      
      // -- Define Inverse Function
        assume (forall x_1: int ::
          { UnfoldingHeap[null, P((loc(UnfoldingHeap[self, elements_1], x_1): Ref))] } { UnfoldingMask[null, P((loc(UnfoldingHeap[self, elements_1], x_1): Ref))] } { (loc(UnfoldingHeap[self, elements_1], x_1): Ref) }
          (0 <= x_1 && x_1 < (len_1(UnfoldingHeap[self, elements_1]): int)) && NoPerm < wildcard ==> invRecv1((loc(UnfoldingHeap[self, elements_1], x_1): Ref)) == x_1 && qpRange1((loc(UnfoldingHeap[self, elements_1], x_1): Ref))
        );
        assume (forall self_3_1: Ref ::
          { invRecv1(self_3_1) }
          ((0 <= invRecv1(self_3_1) && invRecv1(self_3_1) < (len_1(UnfoldingHeap[self, elements_1]): int)) && NoPerm < wildcard) && qpRange1(self_3_1) ==> (loc(UnfoldingHeap[self, elements_1], invRecv1(self_3_1)): Ref) == self_3_1
        );
      
      // -- Define updated permissions
        assume (forall self_3_1: Ref ::
          { QPMask[null, P(self_3_1)] }
          ((0 <= invRecv1(self_3_1) && invRecv1(self_3_1) < (len_1(UnfoldingHeap[self, elements_1]): int)) && NoPerm < wildcard) && qpRange1(self_3_1) ==> (NoPerm < wildcard ==> (loc(UnfoldingHeap[self, elements_1], invRecv1(self_3_1)): Ref) == self_3_1) && QPMask[null, P(self_3_1)] == UnfoldingMask[null, P(self_3_1)] + wildcard
        );
      
      // -- Define independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { UnfoldingMask[o_4, f_5] } { QPMask[o_4, f_5] }
          (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> UnfoldingMask[o_4, f_5] == QPMask[o_4, f_5]
        );
        assume (forall self_3_1: Ref ::
          { QPMask[null, P(self_3_1)] }
          !(((0 <= invRecv1(self_3_1) && invRecv1(self_3_1) < (len_1(UnfoldingHeap[self, elements_1]): int)) && NoPerm < wildcard) && qpRange1(self_3_1)) ==> QPMask[null, P(self_3_1)] == UnfoldingMask[null, P(self_3_1)]
        );
      UnfoldingMask := QPMask;
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      if (*) {
        if (0 <= i_14) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.elements (0378a.vpr@36.1--44.2) [206663]"}
            HasDirectPerm(UnfoldingMask, self, elements_1);
        }
        if (0 <= i_14 && i_14 < (len_1(UnfoldingHeap[self, elements_1]): int)) {
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access self.elements (0378a.vpr@36.1--44.2) [206664]"}
            HasDirectPerm(UnfoldingMask, self, elements_1);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access P(loc(self.elements, i)) (0378a.vpr@42.17--42.43) [206665]"}
              NoPerm < perm ==> NoPerm < UnfoldingMask[null, P((loc(UnfoldingHeap[self, elements_1], i_14): Ref))];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
            UnfoldingHeap := ExhaleHeap;
            // Stop execution
            assume false;
          } else {
            // Enable postcondition for recursive call
            assume foo#trigger(UnfoldingHeap[null, P((loc(UnfoldingHeap[self, elements_1], i_14): Ref))], (loc(UnfoldingHeap[self, elements_1], i_14): Ref));
          }
        }
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(self):=Heap[null, P#sm(self)][self, elements_1:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (forall i_2_1: int ::
      { (loc(Heap[self, elements_1], i_2_1): Ref) }
      0 <= i_2_1 && i_2_1 < (len_1(Heap[self, elements_1]): int) ==> foo_2(Heap, (loc(Heap[self, elements_1], i_2_1): Ref))
    );
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(self: Ref): Field PredicateType_P FrameType;
function  P#sm(self: Ref): Field PredicateType_P PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(P(self)) }
  PredicateMaskField(P(self)) == P#sm(self)
);
axiom (forall self: Ref ::
  { P(self) }
  IsPredicateField(P(self))
);
axiom (forall self: Ref ::
  { P(self) }
  getPredWandId(P(self)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { P(self), P(self2) }
  P(self) == P(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { P#sm(self), P#sm(self2) }
  P#sm(self) == P#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { P#trigger(Heap, P(self)) }
  P#everUsed(P(self))
);

// ==================================================
// Function used for framing of quantified permission (forall x: Int :: { loc(self.elements, x) } 0 <= x && x < len(self.elements) ==> acc(P(loc(self.elements, x)), write)) in predicate P
// ==================================================

function  P#condqp1(Heap: HeapType, self_2_1: Ref): int;
function  sk_P#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, self: Ref ::
  { P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self), succHeapTrans(Heap2Heap, Heap1Heap) }
  ((0 <= sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self)) && sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self)) < (len_1(Heap2Heap[self, elements_1]): int)) && NoPerm < FullPerm <==> (0 <= sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self)) && sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self)) < (len_1(Heap1Heap[self, elements_1]): int)) && NoPerm < FullPerm) && ((0 <= sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self)) && sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self)) < (len_1(Heap2Heap[self, elements_1]): int)) && NoPerm < FullPerm ==> Heap2Heap[null, P((loc(Heap2Heap[self, elements_1], sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self))): Ref))] == Heap1Heap[null, P((loc(Heap1Heap[self, elements_1], sk_P#condqp1(P#condqp1(Heap2Heap, self), P#condqp1(Heap1Heap, self))): Ref))]) ==> P#condqp1(Heap2Heap, self) == P#condqp1(Heap1Heap, self)
);

procedure P#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var x_10: int;
  var x_31: int;
  var QPMask: MaskType;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    assume self != null;
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, elements_1:=Mask[self, elements_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Int :: { loc(self.elements, x) } 0 <= x && x < len(self.elements) ==> loc(self.elements, x) != null)
      if (*) {
        if (0 <= x_10) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.elements (0378a.vpr@25.1--34.2) [206666]"}
            HasDirectPerm(Mask, self, elements_1);
        }
        if (0 <= x_10 && x_10 < (len_1(Heap[self, elements_1]): int)) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.elements (0378a.vpr@25.1--34.2) [206667]"}
            HasDirectPerm(Mask, self, elements_1);
        }
        assume false;
      }
    assume (forall x_2_2: int ::
      { (loc(Heap[self, elements_1], x_2_2): Ref) }
      0 <= x_2_2 && x_2_2 < (len_1(Heap[self, elements_1]): int) ==> (loc(Heap[self, elements_1], x_2_2): Ref) != null
    );
    
    // -- Check definedness of (forall x: Int :: { loc(self.elements, x) } 0 <= x && x < len(self.elements) ==> acc(P(loc(self.elements, x)), write))
      if (*) {
        if (0 <= x_31) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.elements (0378a.vpr@25.1--34.2) [206668]"}
            HasDirectPerm(Mask, self, elements_1);
        }
        if (0 <= x_31 && x_31 < (len_1(Heap[self, elements_1]): int)) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.elements (0378a.vpr@25.1--34.2) [206669]"}
            HasDirectPerm(Mask, self, elements_1);
        }
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(P(loc(self.elements, x)), write) is injective
      assert {:msg "  Predicate might not be well-formed. Quantified resource P(loc(self.elements, x)) might not be injective. (0378a.vpr@25.1--34.2) [206670]"}
        (forall x_4: int, x_4_1: int ::
        { neverTriggered2(x_4), neverTriggered2(x_4_1) }
        (((x_4 != x_4_1 && (0 <= x_4 && x_4 < (len_1(Heap[self, elements_1]): int))) && (0 <= x_4_1 && x_4_1 < (len_1(Heap[self, elements_1]): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(Heap[self, elements_1], x_4): Ref) != (loc(Heap[self, elements_1], x_4_1): Ref)
      );
    
    // -- Define Inverse Function
      assume (forall x_4: int ::
        { Heap[null, P((loc(Heap[self, elements_1], x_4): Ref))] } { Mask[null, P((loc(Heap[self, elements_1], x_4): Ref))] } { (loc(Heap[self, elements_1], x_4): Ref) }
        (0 <= x_4 && x_4 < (len_1(Heap[self, elements_1]): int)) && NoPerm < FullPerm ==> invRecv2((loc(Heap[self, elements_1], x_4): Ref)) == x_4 && qpRange2((loc(Heap[self, elements_1], x_4): Ref))
      );
      assume (forall self_1_1: Ref ::
        { invRecv2(self_1_1) }
        ((0 <= invRecv2(self_1_1) && invRecv2(self_1_1) < (len_1(Heap[self, elements_1]): int)) && NoPerm < FullPerm) && qpRange2(self_1_1) ==> (loc(Heap[self, elements_1], invRecv2(self_1_1)): Ref) == self_1_1
      );
    
    // -- Define updated permissions
      assume (forall self_1_1: Ref ::
        { QPMask[null, P(self_1_1)] }
        ((0 <= invRecv2(self_1_1) && invRecv2(self_1_1) < (len_1(Heap[self, elements_1]): int)) && NoPerm < FullPerm) && qpRange2(self_1_1) ==> (NoPerm < FullPerm ==> (loc(Heap[self, elements_1], invRecv2(self_1_1)): Ref) == self_1_1) && QPMask[null, P(self_1_1)] == Mask[null, P(self_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall self_1_1: Ref ::
        { QPMask[null, P(self_1_1)] }
        !(((0 <= invRecv2(self_1_1) && invRecv2(self_1_1) < (len_1(Heap[self, elements_1]): int)) && NoPerm < FullPerm) && qpRange2(self_1_1)) ==> QPMask[null, P(self_1_1)] == Mask[null, P(self_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}