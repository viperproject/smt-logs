// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:32:32
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0210.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0210-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  IdenticalOnKnownLocationsLiberal(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
function  SumHeap(Heap: HeapType, Heap1: HeapType, mask1: MaskType, Heap2: HeapType, mask2: MaskType): bool;
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
// IdenticalOnKnownLiberalLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
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
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission. But don't propagate information  of locations that are not known-folded to allow for equating with multiple different (but compatible) heaps
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> ExhaleHeap[null, PredicateMaskField(pm_f_16)][o2_16, f_40]
  )
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission (but don't propagate information about locations that are not known-folded)
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[null, WandMaskField(pm_f_16)][o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> ExhaleHeap[null, WandMaskField(pm_f_16)][o2_16, f_40]
  )
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// ==================================================
// Sum of heaps
// ==================================================

axiom (forall Heap: HeapType, Heap1: HeapType, Mask1: MaskType, Heap2: HeapType, Mask2: MaskType ::
  { SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) }
  SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) <==> IdenticalOnKnownLocationsLiberal(Heap1, Heap, Mask1) && IdenticalOnKnownLocationsLiberal(Heap2, Heap, Mask2)
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

// Function heights (higher height means its body is available earlier):
// - height 0: silver_length
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
// Translation of domain List
// ==================================================

// The type for domain List
type ListDomainType;

// Translation of domain unique function fn$$List__Node
const unique fn$$List__Node: ListDomainType;

// Translation of domain unique function fn$$List__Nil
const unique fn$$List__Nil: ListDomainType;

// Translation of domain function variantOfList
function  variantOfList(self_3: Ref): ListDomainType;

// Translation of domain function isList
function  isList(self_3: Ref): bool;

// Translation of domain axiom ax_variantOfList
axiom (forall x: Ref ::
  { (variantOfList(x): ListDomainType) }
  (variantOfList(x): ListDomainType) == fn$$List__Node || (variantOfList(x): ListDomainType) == fn$$List__Nil
);

// Translation of domain axiom ax_isList
axiom (forall x: Ref ::
  { (isList(x): bool) } { (variantOfList(x): ListDomainType) }
  (isList(x): bool) == ((variantOfList(x): ListDomainType) == fn$$List__Node || (variantOfList(x): ListDomainType) == fn$$List__Nil)
);

// ==================================================
// Translation of all fields
// ==================================================

const unique List__variant: Field NormalField Ref;
axiom !IsPredicateField(List__variant);
axiom !IsWandField(List__variant);
const unique List__Node__0: Field NormalField int;
axiom !IsPredicateField(List__Node__0);
axiom !IsWandField(List__Node__0);
const unique List__Node__1: Field NormalField Ref;
axiom !IsPredicateField(List__Node__1);
axiom !IsWandField(List__Node__1);

// ==================================================
// Translation of function silver_length
// ==================================================

// Uninterpreted function definitions
function  silver_length(Heap: HeapType, this: Ref): int;
function  silver_length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { silver_length(Heap, this) }
  silver_length(Heap, this) == silver_length'(Heap, this) && dummyFunction(silver_length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { silver_length'(Heap, this) }
  dummyFunction(silver_length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), silver_length(Heap, this) } { state(Heap, Mask), silver_length#triggerStateless(this), valid__List#trigger(Heap, valid__List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> silver_length(Heap, this) == (if (variantOfList(Heap[this, List__variant]): ListDomainType) == fn$$List__Nil then 0 else 1 + silver_length'(Heap, Heap[this, List__Node__1]))
);

// Framing axioms
function  silver_length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), silver_length'(Heap, this) } { state(Heap, Mask), silver_length#triggerStateless(this), valid__List#trigger(Heap, valid__List(this)) }
  state(Heap, Mask) ==> silver_length'(Heap, this) == silver_length#frame(Heap[null, valid__List(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), silver_length'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || silver_length#trigger(Heap[null, valid__List(this)], this)) ==> silver_length'(Heap, this) >= 0
);

// Trigger function (controlling recursive postconditions)
function  silver_length#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  silver_length#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure silver_length#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid__List(this):=Mask[null, valid__List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid__List(this), wildcard) in (variantOfList(this.List__variant) == fn$$List__Nil() ? 0 : 1 + silver_length(this.List__Node__1)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid__List#trigger(UnfoldingHeap, valid__List(this));
      assume UnfoldingHeap[null, valid__List(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, List__variant]), CombineFrames(FrameFragment((if (variantOfList(UnfoldingHeap[this, List__variant]): ListDomainType) == fn$$List__Node then CombineFrames(FrameFragment(UnfoldingHeap[this, List__Node__0]), CombineFrames(FrameFragment(UnfoldingHeap[this, List__Node__1]), UnfoldingHeap[null, valid__List(UnfoldingHeap[this, List__Node__1])])) else EmptyFrame)), FrameFragment((if (variantOfList(UnfoldingHeap[this, List__variant]): ListDomainType) == fn$$List__Nil then CombineFrames(FrameFragment(UnfoldingHeap[this, List__Node__0]), FrameFragment(UnfoldingHeap[this, List__Node__1])) else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid__List(this) (0210.vpr@4.1--10.2) [214591]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid__List(this)];
      havoc wildcard;
      perm := wildcard;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, List__variant:=UnfoldingMask[this, List__variant] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume (isList(UnfoldingHeap[this, List__variant]): bool);
      if ((variantOfList(UnfoldingHeap[this, List__variant]): ListDomainType) == fn$$List__Node) {
        havoc wildcard;
        perm := wildcard;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, List__Node__0:=UnfoldingMask[this, List__Node__0] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        havoc wildcard;
        perm := wildcard;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, List__Node__1:=UnfoldingMask[this, List__Node__1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        havoc wildcard;
        perm := wildcard;
        UnfoldingMask := UnfoldingMask[null, valid__List(UnfoldingHeap[this, List__Node__1]):=UnfoldingMask[null, valid__List(UnfoldingHeap[this, List__Node__1])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(valid__List(this), UnfoldingHeap[null, valid__List(this)], valid__List(UnfoldingHeap[this, List__Node__1]), UnfoldingHeap[null, valid__List(UnfoldingHeap[this, List__Node__1])]);
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      if ((variantOfList(UnfoldingHeap[this, List__variant]): ListDomainType) == fn$$List__Nil) {
        havoc wildcard;
        perm := wildcard;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, List__Node__0:=UnfoldingMask[this, List__Node__0] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        havoc wildcard;
        perm := wildcard;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, List__Node__1:=UnfoldingMask[this, List__Node__1] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.List__variant (0210.vpr@4.1--10.2) [214592]"}
        HasDirectPerm(UnfoldingMask, this, List__variant);
      if ((variantOfList(UnfoldingHeap[this, List__variant]): ListDomainType) == fn$$List__Nil) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.List__Node__1 (0210.vpr@4.1--10.2) [214593]"}
          HasDirectPerm(UnfoldingMask, this, List__Node__1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function silver_length might not hold. There might be insufficient permission to access valid__List(this.List__Node__1) (0210.vpr@9.73--9.106) [214594]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid__List(UnfoldingHeap[this, List__Node__1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume silver_length#trigger(UnfoldingHeap[null, valid__List(UnfoldingHeap[this, List__Node__1])], UnfoldingHeap[this, List__Node__1]);
        }
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__List#sm(this):=Heap[null, valid__List#sm(this)][this, List__variant:=true]];
        if ((variantOfList(Heap[this, List__variant]): ListDomainType) == fn$$List__Node) {
          Heap := Heap[null, valid__List#sm(this):=Heap[null, valid__List#sm(this)][this, List__Node__0:=true]];
          Heap := Heap[null, valid__List#sm(this):=Heap[null, valid__List#sm(this)][this, List__Node__1:=true]];
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            Heap[null, valid__List#sm(this)][o_15, f_20] || Heap[null, valid__List#sm(Heap[this, List__Node__1])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          Heap := Heap[null, valid__List#sm(this):=newPMask];
        }
        if ((variantOfList(Heap[this, List__variant]): ListDomainType) == fn$$List__Nil) {
          Heap := Heap[null, valid__List#sm(this):=Heap[null, valid__List#sm(this)][this, List__Node__0:=true]];
          Heap := Heap[null, valid__List#sm(this):=Heap[null, valid__List#sm(this)][this, List__Node__1:=true]];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if (variantOfList(Heap[this, List__variant]): ListDomainType) == fn$$List__Nil then 0 else 1 + silver_length(Heap, Heap[this, List__Node__1]));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of silver_length might not hold. Assertion result >= 0 might not hold. (0210.vpr@6.13--6.24) [214595]"}
      Result >= 0;
}

// ==================================================
// Translation of predicate valid__List
// ==================================================

type PredicateType_valid__List;
function  valid__List(this: Ref): Field PredicateType_valid__List FrameType;
function  valid__List#sm(this: Ref): Field PredicateType_valid__List PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(valid__List(this)) }
  PredicateMaskField(valid__List(this)) == valid__List#sm(this)
);
axiom (forall this: Ref ::
  { valid__List(this) }
  IsPredicateField(valid__List(this))
);
axiom (forall this: Ref ::
  { valid__List(this) }
  getPredWandId(valid__List(this)) == 0
);
function  valid__List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid__List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { valid__List(this), valid__List(this2) }
  valid__List(this) == valid__List(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { valid__List#sm(this), valid__List#sm(this2) }
  valid__List#sm(this) == valid__List#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { valid__List#trigger(Heap, valid__List(this)) }
  valid__List#everUsed(valid__List(this))
);

procedure valid__List#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid__List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, List__variant:=Mask[this, List__variant] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of isList(this.List__variant)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List__variant (0210.vpr@79.1--91.2) [214596]"}
        HasDirectPerm(Mask, this, List__variant);
    assume (isList(Heap[this, List__variant]): bool);
    
    // -- Check definedness of variantOfList(this.List__variant) == fn$$List__Node()
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List__variant (0210.vpr@79.1--91.2) [214597]"}
        HasDirectPerm(Mask, this, List__variant);
    if ((variantOfList(Heap[this, List__variant]): ListDomainType) == fn$$List__Node) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, List__Node__0:=Mask[this, List__Node__0] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, List__Node__1:=Mask[this, List__Node__1] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(valid__List(this.List__Node__1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List__Node__1 (0210.vpr@79.1--91.2) [214598]"}
          HasDirectPerm(Mask, this, List__Node__1);
      perm := FullPerm;
      Mask := Mask[null, valid__List(Heap[this, List__Node__1]):=Mask[null, valid__List(Heap[this, List__Node__1])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of variantOfList(this.List__variant) == fn$$List__Nil()
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List__variant (0210.vpr@79.1--91.2) [214599]"}
        HasDirectPerm(Mask, this, List__variant);
    if ((variantOfList(Heap[this, List__variant]): ListDomainType) == fn$$List__Nil) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, List__Node__0:=Mask[this, List__Node__0] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, List__Node__1:=Mask[this, List__Node__1] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method length_iter
// ==================================================

procedure length_iter(list$1: Ref, rd$1: Perm) returns (res$1: int)
  modifies Heap, Mask;
{
  var loop_end_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var current$1: Ref;
  var counter$1: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var frameMask5: MaskType;
  var frameHeap5: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var tail$1: Ref;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var Labelloop_endHeap: HeapType;
  var Labelloop_endMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    loop_end_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[list$1, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd$1;
    assume rd$1 < FullPerm;
    assume state(Heap, Mask);
    perm := rd$1;
    assert {:msg "  Contract might not be well-formed. Fraction rd$1 might be negative. (0210.vpr@15.12--15.42) [214600]"}
      perm >= NoPerm;
    Mask := Mask[null, valid__List(list$1):=Mask[null, valid__List(list$1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := rd$1;
    assert {:msg "  Contract might not be well-formed. Fraction rd$1 might be negative. (0210.vpr@17.11--17.41) [214601]"}
      perm >= NoPerm;
    PostMask := PostMask[null, valid__List(list$1):=PostMask[null, valid__List(list$1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[current$1, $allocated];
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // current$1 := list$1 -- 0210.vpr@20.5--20.24
    current$1 := list$1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // // LoopInfo(None,Set())
  // counter$1 := 0 -- 0210.vpr@23.5--23.19
    counter$1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (true) -- 0210.vpr@25.5--42.6
    
    // -- Before loop head5
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := rd$1;
        assert {:msg "  Loop invariant acc(valid__List(current$1), rd$1) might not hold on entry. Fraction rd$1 might be negative. (0210.vpr@26.19--26.52) [214602]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(valid__List(current$1), rd$1) might not hold on entry. There might be insufficient permission to access valid__List(current$1) (0210.vpr@26.19--26.52) [214603]"}
            perm <= Mask[null, valid__List(current$1)];
        }
        Mask := Mask[null, valid__List(current$1):=Mask[null, valid__List(current$1)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask5 := Mask;
        frameHeap5 := Heap;
    
    // -- Havoc loop written variables (except locals)
      havoc counter$1, current$1;
      assume Heap[current$1, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        perm := rd$1;
        assert {:msg "  Contract might not be well-formed. Fraction rd$1 might be negative. (0210.vpr@26.19--26.52) [214604]"}
          perm >= NoPerm;
        Mask := Mask[null, valid__List(current$1):=Mask[null, valid__List(current$1)] + perm];
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
        perm := rd$1;
        assert {:msg "  While statement might fail. Fraction rd$1 might be negative. (0210.vpr@26.19--26.52) [214605]"}
          perm >= NoPerm;
        Mask := Mask[null, valid__List(current$1):=Mask[null, valid__List(current$1)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Assumptions about local variables
            assume Heap[tail$1, $allocated];
          
          // -- Translating statement: // id = 6
  // unfold acc(valid__List(current$1), rd$1) -- 0210.vpr@28.7--28.47
            assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might not be positive. (0210.vpr@28.7--28.47) [214606]"}
              rd$1 > NoPerm;
            assume valid__List#trigger(Heap, valid__List(current$1));
            assume Heap[null, valid__List(current$1)] == CombineFrames(FrameFragment(Heap[current$1, List__variant]), CombineFrames(FrameFragment((if (variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Node then CombineFrames(FrameFragment(Heap[current$1, List__Node__0]), CombineFrames(FrameFragment(Heap[current$1, List__Node__1]), Heap[null, valid__List(Heap[current$1, List__Node__1])])) else EmptyFrame)), FrameFragment((if (variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Nil then CombineFrames(FrameFragment(Heap[current$1, List__Node__0]), FrameFragment(Heap[current$1, List__Node__1])) else EmptyFrame))));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := rd$1;
            assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@28.7--28.47) [214607]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding valid__List(current$1) might fail. There might be insufficient permission to access valid__List(current$1) (0210.vpr@28.7--28.47) [214608]"}
                perm <= Mask[null, valid__List(current$1)];
            }
            Mask := Mask[null, valid__List(current$1):=Mask[null, valid__List(current$1)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, valid__List(current$1))) {
                havoc newVersion;
                Heap := Heap[null, valid__List(current$1):=newVersion];
              }
            perm := rd$1;
            assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@28.7--28.47) [214609]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> current$1 != null;
            Mask := Mask[current$1, List__variant:=Mask[current$1, List__variant] + perm];
            assume state(Heap, Mask);
            assume (isList(Heap[current$1, List__variant]): bool);
            if ((variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Node) {
              perm := rd$1;
              assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@28.7--28.47) [214610]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> current$1 != null;
              Mask := Mask[current$1, List__Node__0:=Mask[current$1, List__Node__0] + perm];
              assume state(Heap, Mask);
              perm := rd$1;
              assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@28.7--28.47) [214611]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> current$1 != null;
              Mask := Mask[current$1, List__Node__1:=Mask[current$1, List__Node__1] + perm];
              assume state(Heap, Mask);
              perm := rd$1;
              assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@28.7--28.47) [214612]"}
                perm >= NoPerm;
              Mask := Mask[null, valid__List(Heap[current$1, List__Node__1]):=Mask[null, valid__List(Heap[current$1, List__Node__1])] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(valid__List(current$1), Heap[null, valid__List(current$1)], valid__List(Heap[current$1, List__Node__1]), Heap[null, valid__List(Heap[current$1, List__Node__1])]);
              assume state(Heap, Mask);
            }
            if ((variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Nil) {
              perm := rd$1;
              assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@28.7--28.47) [214613]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> current$1 != null;
              Mask := Mask[current$1, List__Node__0:=Mask[current$1, List__Node__0] + perm];
              assume state(Heap, Mask);
              perm := rd$1;
              assert {:msg "  Unfolding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@28.7--28.47) [214614]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> current$1 != null;
              Mask := Mask[current$1, List__Node__1:=Mask[current$1, List__Node__1] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: // id = 7
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
            assume state(Heap, Mask);
          
          // -- Translating statement: // id = 8
  // tail$1 := current$1.List__Node__1 -- 0210.vpr@30.7--30.40
            
            // -- Check definedness of current$1.List__Node__1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access current$1.List__Node__1 (0210.vpr@30.7--30.40) [214615]"}
                HasDirectPerm(Mask, current$1, List__Node__1);
            tail$1 := Heap[current$1, List__Node__1];
            assume state(Heap, Mask);
          
          // -- Translating statement: if (true && variantOfList(current$1.List__variant) == fn$$List__Node()) -- 0210.vpr@31.7--40.10
            
            // -- Check definedness of true && variantOfList(current$1.List__variant) == fn$$List__Node()
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access current$1.List__variant (0210.vpr@31.11--31.77) [214616]"}
                HasDirectPerm(Mask, current$1, List__variant);
            if ((variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Node) {
              
              // -- Translating statement: // id = 9
  // counter$1 := counter$1 + 1 -- 0210.vpr@32.11--32.37
                counter$1 := counter$1 + 1;
                assume state(Heap, Mask);
              
              // -- Translating statement: // id = 10
  // current$1 := tail$1 -- 0210.vpr@34.11--34.30
                current$1 := tail$1;
                assume state(Heap, Mask);
              
              // -- Translating statement: // id = 11
  // assert perm(valid__List(current$1)) > none -- 0210.vpr@35.11--35.53
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                assert {:msg "  Assert might fail. Assertion perm(valid__List(current$1)) > none might not hold. (0210.vpr@35.18--35.53) [214617]"}
                  NoPerm < Mask[null, valid__List(current$1)];
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: // id = 12
  // fold acc(valid__List(current$1), rd$1) -- 0210.vpr@38.13--38.51
                assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might not be positive. (0210.vpr@38.13--38.51) [214618]"}
                  rd$1 > NoPerm;
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := rd$1;
                assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@38.13--38.51) [214619]"}
                  perm >= NoPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Folding valid__List(current$1) might fail. There might be insufficient permission to access current$1.List__variant (0210.vpr@38.13--38.51) [214620]"}
                    perm <= Mask[current$1, List__variant];
                }
                Mask := Mask[current$1, List__variant:=Mask[current$1, List__variant] - perm];
                assert {:msg "  Folding valid__List(current$1) might fail. Assertion isList(current$1.List__variant) might not hold. (0210.vpr@38.13--38.51) [214621]"}
                  (isList(Heap[current$1, List__variant]): bool);
                if ((variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Node) {
                  perm := rd$1;
                  assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@38.13--38.51) [214622]"}
                    perm >= NoPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding valid__List(current$1) might fail. There might be insufficient permission to access current$1.List__Node__0 (0210.vpr@38.13--38.51) [214623]"}
                      perm <= Mask[current$1, List__Node__0];
                  }
                  Mask := Mask[current$1, List__Node__0:=Mask[current$1, List__Node__0] - perm];
                  perm := rd$1;
                  assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@38.13--38.51) [214624]"}
                    perm >= NoPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding valid__List(current$1) might fail. There might be insufficient permission to access current$1.List__Node__1 (0210.vpr@38.13--38.51) [214625]"}
                      perm <= Mask[current$1, List__Node__1];
                  }
                  Mask := Mask[current$1, List__Node__1:=Mask[current$1, List__Node__1] - perm];
                  perm := rd$1;
                  assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@38.13--38.51) [214626]"}
                    perm >= NoPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding valid__List(current$1) might fail. There might be insufficient permission to access valid__List(current$1.List__Node__1) (0210.vpr@38.13--38.51) [214627]"}
                      perm <= Mask[null, valid__List(Heap[current$1, List__Node__1])];
                  }
                  Mask := Mask[null, valid__List(Heap[current$1, List__Node__1]):=Mask[null, valid__List(Heap[current$1, List__Node__1])] - perm];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(valid__List(current$1), Heap[null, valid__List(current$1)], valid__List(Heap[current$1, List__Node__1]), Heap[null, valid__List(Heap[current$1, List__Node__1])]);
                }
                if ((variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Nil) {
                  perm := rd$1;
                  assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@38.13--38.51) [214628]"}
                    perm >= NoPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding valid__List(current$1) might fail. There might be insufficient permission to access current$1.List__Node__0 (0210.vpr@38.13--38.51) [214629]"}
                      perm <= Mask[current$1, List__Node__0];
                  }
                  Mask := Mask[current$1, List__Node__0:=Mask[current$1, List__Node__0] - perm];
                  perm := rd$1;
                  assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@38.13--38.51) [214630]"}
                    perm >= NoPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding valid__List(current$1) might fail. There might be insufficient permission to access current$1.List__Node__1 (0210.vpr@38.13--38.51) [214631]"}
                      perm <= Mask[current$1, List__Node__1];
                  }
                  Mask := Mask[current$1, List__Node__1:=Mask[current$1, List__Node__1] - perm];
                }
                perm := rd$1;
                assert {:msg "  Folding valid__List(current$1) might fail. Fraction rd$1 might be negative. (0210.vpr@38.13--38.51) [214632]"}
                  perm >= NoPerm;
                Mask := Mask[null, valid__List(current$1):=Mask[null, valid__List(current$1)] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume valid__List#trigger(Heap, valid__List(current$1));
                assume Heap[null, valid__List(current$1)] == CombineFrames(FrameFragment(Heap[current$1, List__variant]), CombineFrames(FrameFragment((if (variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Node then CombineFrames(FrameFragment(Heap[current$1, List__Node__0]), CombineFrames(FrameFragment(Heap[current$1, List__Node__1]), Heap[null, valid__List(Heap[current$1, List__Node__1])])) else EmptyFrame)), FrameFragment((if (variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Nil then CombineFrames(FrameFragment(Heap[current$1, List__Node__0]), FrameFragment(Heap[current$1, List__Node__1])) else EmptyFrame))));
                if (!HasDirectPerm(Mask, null, valid__List(current$1))) {
                  Heap := Heap[null, valid__List#sm(current$1):=ZeroPMask];
                  havoc freshVersion;
                  Heap := Heap[null, valid__List(current$1):=freshVersion];
                }
                Heap := Heap[null, valid__List#sm(current$1):=Heap[null, valid__List#sm(current$1)][current$1, List__variant:=true]];
                if ((variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Node) {
                  Heap := Heap[null, valid__List#sm(current$1):=Heap[null, valid__List#sm(current$1)][current$1, List__Node__0:=true]];
                  Heap := Heap[null, valid__List#sm(current$1):=Heap[null, valid__List#sm(current$1)][current$1, List__Node__1:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                    { newPMask[o_16, f_21] }
                    Heap[null, valid__List#sm(current$1)][o_16, f_21] || Heap[null, valid__List#sm(Heap[current$1, List__Node__1])][o_16, f_21] ==> newPMask[o_16, f_21]
                  );
                  Heap := Heap[null, valid__List#sm(current$1):=newPMask];
                }
                if ((variantOfList(Heap[current$1, List__variant]): ListDomainType) == fn$$List__Nil) {
                  Heap := Heap[null, valid__List#sm(current$1):=Heap[null, valid__List#sm(current$1)][current$1, List__Node__0:=true]];
                  Heap := Heap[null, valid__List#sm(current$1):=Heap[null, valid__List#sm(current$1)][current$1, List__Node__1:=true]];
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: // id = 13
  // // LoopInfo(None,Set(5))
  // goto loop_end -- 0210.vpr@39.13--39.26
                
                // -- Exiting loops , 5
                  havoc LoopSumHeap;
                  havoc LoopSumMask;
                  assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap5, frameMask5);
                  Heap := LoopSumHeap;
                  assume sumMask(LoopSumMask, Mask, frameMask5);
                  Mask := LoopSumMask;
                  assume state(Heap, Mask);
                goto loop_end;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: // id = 14
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := rd$1;
        assert {:msg "  Loop invariant acc(valid__List(current$1), rd$1) might not be preserved. Fraction rd$1 might be negative. (0210.vpr@26.19--26.52) [214633]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(valid__List(current$1), rd$1) might not be preserved. There might be insufficient permission to access valid__List(current$1) (0210.vpr@26.19--26.52) [214634]"}
            perm <= Mask[null, valid__List(current$1)];
        }
        Mask := Mask[null, valid__List(current$1):=Mask[null, valid__List(current$1)] - perm];
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
      perm := rd$1;
      assert {:msg "  While statement might fail. Fraction rd$1 might be negative. (0210.vpr@26.19--26.52) [214635]"}
        perm >= NoPerm;
      Mask := Mask[null, valid__List(current$1):=Mask[null, valid__List(current$1)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 15
  // // LoopInfo(None,Set())
  // label loop_end -- 0210.vpr@43.5--43.19
    loop_end:
    Labelloop_endHeap := Heap;
    Labelloop_endMask := Mask;
    loop_end_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 16
  // res$1 := counter$1 -- 0210.vpr@45.5--45.23
    res$1 := counter$1;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := rd$1;
    assert {:msg "  Postcondition of length_iter might not hold. Fraction rd$1 might be negative. (0210.vpr@17.11--17.41) [214636]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of length_iter might not hold. There might be insufficient permission to access valid__List(list$1) (0210.vpr@17.11--17.41) [214637]"}
        perm <= Mask[null, valid__List(list$1)];
    }
    Mask := Mask[null, valid__List(list$1):=Mask[null, valid__List(list$1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}