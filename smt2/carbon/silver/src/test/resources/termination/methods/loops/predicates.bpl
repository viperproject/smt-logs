// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:29
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/loops/predicates.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/loops/predicates-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: PI_list
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
// Translation of domain PredicateInstancesWellFoundedOrder
// ==================================================

// The type for domain PredicateInstancesWellFoundedOrder
type PredicateInstancesWellFoundedOrderDomainType;

// Translation of domain axiom predicate_instances_ax_dec
axiom (forall l1_1: PredicateInstanceDomainType, l2: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_1, l2): bool) }
  (decreasing(l1_1, l2): bool) == (nestedPredicates(l1_1, l2): bool)
);

// Translation of domain axiom predicate_instances_ax_bound
axiom (forall l1_1: PredicateInstanceDomainType ::
  { (bounded(l1_1): bool) }
  (bounded(l1_1): bool)
);

// ==================================================
// Translation of domain WellFoundedOrder
// ==================================================

// The type for domain WellFoundedOrder
type WellFoundedOrderDomainType T;

// Translation of domain function decreasing
function  decreasing<T>(arg1_1: T, arg2_1: T): bool;

// Translation of domain function bounded
function  bounded<T>(arg1_1: T): bool;

// ==================================================
// Translation of domain PredicateInstancesNestedRelation
// ==================================================

// The type for domain PredicateInstancesNestedRelation
type PredicateInstancesNestedRelationDomainType;

// Translation of domain function nestedPredicates
function  nestedPredicates(l1_2: PredicateInstanceDomainType, l2_1: PredicateInstanceDomainType): bool;

// Translation of domain axiom nestedTrans
axiom (forall l1_1: PredicateInstanceDomainType, l2: PredicateInstanceDomainType, l3: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_1, l2): bool), (nestedPredicates(l2, l3): bool) }
  (nestedPredicates(l1_1, l2): bool) && (nestedPredicates(l2, l3): bool) ==> (nestedPredicates(l1_1, l3): bool)
);

// Translation of domain axiom nestedReflex
axiom (forall l1_1: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_1, l1_1): bool) }
  !(nestedPredicates(l1_1, l1_1): bool)
);

// ==================================================
// Translation of domain PredicateInstance
// ==================================================

// The type for domain PredicateInstance
type PredicateInstanceDomainType;

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function PI_list
// ==================================================

// Uninterpreted function definitions
function  PI_list(Heap: HeapType, xs: Ref): PredicateInstanceDomainType;
function  PI_list'(Heap: HeapType, xs: Ref): PredicateInstanceDomainType;
axiom (forall Heap: HeapType, xs: Ref ::
  { PI_list(Heap, xs) }
  PI_list(Heap, xs) == PI_list'(Heap, xs) && dummyFunction(PI_list#triggerStateless(xs))
);
axiom (forall Heap: HeapType, xs: Ref ::
  { PI_list'(Heap, xs) }
  dummyFunction(PI_list#triggerStateless(xs))
);

// Framing axioms
function  PI_list#frame(frame: FrameType, xs: Ref): PredicateInstanceDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, xs: Ref ::
  { state(Heap, Mask), PI_list'(Heap, xs) }
  state(Heap, Mask) ==> PI_list'(Heap, xs) == PI_list#frame(Heap[null, list(xs)], xs)
);

// Trigger function (controlling recursive postconditions)
function  PI_list#trigger(frame: FrameType, xs: Ref): bool;

// State-independent trigger function
function  PI_list#triggerStateless(xs: Ref): PredicateInstanceDomainType;

// Check contract well-formedness and postcondition
procedure PI_list#definedness(xs: Ref) returns (Result: PredicateInstanceDomainType)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[xs, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(xs: Ref): Field PredicateType_list FrameType;
function  list#sm(xs: Ref): Field PredicateType_list PMaskType;
axiom (forall xs: Ref ::
  { PredicateMaskField(list(xs)) }
  PredicateMaskField(list(xs)) == list#sm(xs)
);
axiom (forall xs: Ref ::
  { list(xs) }
  IsPredicateField(list(xs))
);
axiom (forall xs: Ref ::
  { list(xs) }
  getPredWandId(list(xs)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall xs: Ref, xs2: Ref ::
  { list(xs), list(xs2) }
  list(xs) == list(xs2) ==> xs == xs2
);
axiom (forall xs: Ref, xs2: Ref ::
  { list#sm(xs), list#sm(xs2) }
  list#sm(xs) == list#sm(xs2) ==> xs == xs2
);

axiom (forall Heap: HeapType, xs: Ref ::
  { list#trigger(Heap, list(xs)) }
  list#everUsed(list(xs))
);

procedure list#definedness(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[xs, $allocated];
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (predicates.vpr@10.1--13.2) [18934]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Check definedness of acc(list(xs.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (predicates.vpr@10.1--13.2) [18935]"}
          HasDirectPerm(Mask, xs, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method alwaysAppendLoop
// ==================================================

procedure alwaysAppendLoop(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ys: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var list__338897620: PredicateInstanceDomainType;
  var newVersion: FrameType;
  var list__1432489320: PredicateInstanceDomainType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var old_W1_T0: PredicateInstanceDomainType;
  var list__3388976200: PredicateInstanceDomainType;
  var list__14324893200: PredicateInstanceDomainType;
  var n: Ref;
  var freshObj: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[ys, $allocated];
  
  // -- Translating statement: ys := xs -- predicates.vpr@19.5--19.22
    ys := xs;
    assume state(Heap, Mask);
  
  // -- Translating statement: list__338897620 := PI_list(ys) -- predicates.vpr@20.12--20.20
    
    // -- Check definedness of PI_list(ys)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(ys) (predicates.vpr@20.12--20.20) [18936]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(ys)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    list__338897620 := PI_list(Heap, ys);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(list(ys), write) -- <no position>
    assume list#trigger(Heap, list(ys));
    assume Heap[null, list(ys)] == CombineFrames(FrameFragment(Heap[ys, next]), FrameFragment((if Heap[ys, next] != null then Heap[null, list(Heap[ys, next])] else EmptyFrame)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(ys) might fail. There might be insufficient permission to access list(ys) (<no position>) [18939]"}
        perm <= Mask[null, list(ys)];
    }
    Mask := Mask[null, list(ys):=Mask[null, list(ys)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(ys))) {
        havoc newVersion;
        Heap := Heap[null, list(ys):=newVersion];
      }
    perm := FullPerm;
    assume ys != null;
    Mask := Mask[ys, next:=Mask[ys, next] + perm];
    assume state(Heap, Mask);
    if (Heap[ys, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(ys), Heap[null, list(ys)], list(Heap[ys, next]), Heap[null, list(Heap[ys, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (ys.next != null) -- predicates.vpr@12.22--12.55
    
    // -- Check definedness of ys.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access ys.next (predicates.vpr@12.22--12.37) [18942]"}
        HasDirectPerm(Mask, ys, next);
    if (Heap[ys, next] != null) {
      
      // -- Translating statement: list__1432489320 := PI_list(ys.next) -- predicates.vpr@12.42--12.55
        
        // -- Check definedness of PI_list(ys.next)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (predicates.vpr@12.42--12.55) [18943]"}
            HasDirectPerm(Mask, ys, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(ys.next) (predicates.vpr@12.42--12.55) [18944]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(Heap[ys, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        list__1432489320 := PI_list(Heap, Heap[ys, next]);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale nestedPredicates(list__1432489320, list__338897620) -- predicates.vpr@12.42--12.55
        assume (nestedPredicates(list__1432489320, list__338897620): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (ys.next != null) -- predicates.vpr@21.5--38.6
    
    // -- Check definedness of ys.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access ys.next (predicates.vpr@21.9--21.24) [18945]"}
        HasDirectPerm(Mask, ys, next);
    if (Heap[ys, next] != null) {
      
      // -- Translating statement: while (ys.next != null) -- predicates.vpr@22.9--37.10
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ys.next, write) might not hold on entry. There might be insufficient permission to access ys.next (predicates.vpr@23.23--23.35) [18946]"}
                perm <= Mask[ys, next];
            }
            Mask := Mask[ys, next:=Mask[ys, next] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(list(ys.next), write) might not hold on entry. There might be insufficient permission to access list(ys.next) (predicates.vpr@24.23--24.36) [18947]"}
                perm <= Mask[null, list(Heap[ys, next])];
            }
            Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc ys;
          assume Heap[ys, $allocated];
        
        // -- Check definedness of invariant
          if (*) {
            perm := FullPerm;
            assume ys != null;
            Mask := Mask[ys, next:=Mask[ys, next] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(list(ys.next), write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ys.next (predicates.vpr@24.23--24.36) [18948]"}
                HasDirectPerm(Mask, ys, next);
            perm := FullPerm;
            Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] + perm];
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
            perm := FullPerm;
            assume ys != null;
            Mask := Mask[ys, next:=Mask[ys, next] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            // Check and assume guard
            
            // -- Check definedness of ys.next != null
              assert {:msg "  While statement might fail. There might be insufficient permission to access ys.next (predicates.vpr@22.16--22.31) [18949]"}
                HasDirectPerm(Mask, ys, next);
            assume Heap[ys, next] != null;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: old_W1_T0 := PI_list(ys.next) -- predicates.vpr@26.23--26.36
                
                // -- Check definedness of PI_list(ys.next)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (predicates.vpr@26.23--26.36) [18950]"}
                    HasDirectPerm(Mask, ys, next);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(ys.next) (predicates.vpr@26.23--26.36) [18951]"}
                      NoPerm < perm ==> NoPerm < Mask[null, list(Heap[ys, next])];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                old_W1_T0 := PI_list(Heap, Heap[ys, next]);
                assume state(Heap, Mask);
              
              // -- Translating statement: ys := ys.next -- predicates.vpr@28.13--28.26
                
                // -- Check definedness of ys.next
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (predicates.vpr@28.13--28.26) [18952]"}
                    HasDirectPerm(Mask, ys, next);
                ys := Heap[ys, next];
                assume state(Heap, Mask);
              
              // -- Translating statement: list__3388976200 := PI_list(ys) -- predicates.vpr@29.20--29.28
                
                // -- Check definedness of PI_list(ys)
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(ys) (predicates.vpr@29.20--29.28) [18953]"}
                      NoPerm < perm ==> NoPerm < Mask[null, list(ys)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                list__3388976200 := PI_list(Heap, ys);
                assume state(Heap, Mask);
              
              // -- Translating statement: unfold acc(list(ys), write) -- <no position>
                assume list#trigger(Heap, list(ys));
                assume Heap[null, list(ys)] == CombineFrames(FrameFragment(Heap[ys, next]), FrameFragment((if Heap[ys, next] != null then Heap[null, list(Heap[ys, next])] else EmptyFrame)));
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding list(ys) might fail. There might be insufficient permission to access list(ys) (<no position>) [18954]"}
                    perm <= Mask[null, list(ys)];
                }
                Mask := Mask[null, list(ys):=Mask[null, list(ys)] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, list(ys))) {
                    havoc newVersion;
                    Heap := Heap[null, list(ys):=newVersion];
                  }
                perm := FullPerm;
                assume ys != null;
                Mask := Mask[ys, next:=Mask[ys, next] + perm];
                assume state(Heap, Mask);
                if (Heap[ys, next] != null) {
                  perm := FullPerm;
                  Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(list(ys), Heap[null, list(ys)], list(Heap[ys, next]), Heap[null, list(Heap[ys, next])]);
                  assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: if (ys.next != null) -- predicates.vpr@12.22--12.55
                
                // -- Check definedness of ys.next != null
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access ys.next (predicates.vpr@12.22--12.37) [18955]"}
                    HasDirectPerm(Mask, ys, next);
                if (Heap[ys, next] != null) {
                  
                  // -- Translating statement: list__14324893200 := PI_list(ys.next) -- predicates.vpr@12.42--12.55
                    
                    // -- Check definedness of PI_list(ys.next)
                      assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (predicates.vpr@12.42--12.55) [18956]"}
                        HasDirectPerm(Mask, ys, next);
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := Heap;
                        ExhaleWellDef0Mask := Mask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(ys.next) (predicates.vpr@12.42--12.55) [18957]"}
                          NoPerm < perm ==> NoPerm < Mask[null, list(Heap[ys, next])];
                        // Finish exhale
                        havoc ExhaleHeap;
                        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                        Heap := ExhaleHeap;
                        // Stop execution
                        assume false;
                      }
                    list__14324893200 := PI_list(Heap, Heap[ys, next]);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: inhale nestedPredicates(list__14324893200, list__3388976200) -- predicates.vpr@12.42--12.55
                    assume (nestedPredicates(list__14324893200, list__3388976200): bool);
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: if (ys.next == null) -- predicates.vpr@30.13--36.14
                
                // -- Check definedness of ys.next == null
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access ys.next (predicates.vpr@30.17--30.32) [18958]"}
                    HasDirectPerm(Mask, ys, next);
                if (Heap[ys, next] == null) {
                  
                  // -- Assumptions about local variables
                    assume Heap[n, $allocated];
                  
                  // -- Translating statement: n := new(next) -- predicates.vpr@32.17--32.31
                    havoc freshObj;
                    assume freshObj != null && !Heap[freshObj, $allocated];
                    Heap := Heap[freshObj, $allocated:=true];
                    n := freshObj;
                    Mask := Mask[n, next:=Mask[n, next] + FullPerm];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: n.next := null -- predicates.vpr@33.17--33.31
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access n.next (predicates.vpr@33.17--33.31) [18959]"}
                      FullPerm == Mask[n, next];
                    Heap := Heap[n, next:=null];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: ys.next := n -- predicates.vpr@34.17--34.29
                    assert {:msg "  Assignment might fail. There might be insufficient permission to access ys.next (predicates.vpr@34.17--34.29) [18960]"}
                      FullPerm == Mask[ys, next];
                    Heap := Heap[ys, next:=n];
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: fold acc(list(n), write) -- predicates.vpr@35.17--35.29
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding list(n) might fail. There might be insufficient permission to access n.next (predicates.vpr@35.17--35.29) [18961]"}
                        perm <= Mask[n, next];
                    }
                    Mask := Mask[n, next:=Mask[n, next] - perm];
                    if (Heap[n, next] != null) {
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  Folding list(n) might fail. There might be insufficient permission to access list(n.next) (predicates.vpr@35.17--35.29) [18962]"}
                          perm <= Mask[null, list(Heap[n, next])];
                      }
                      Mask := Mask[null, list(Heap[n, next]):=Mask[null, list(Heap[n, next])] - perm];
                      
                      // -- Record predicate instance information
                        assume InsidePredicate(list(n), Heap[null, list(n)], list(Heap[n, next]), Heap[null, list(Heap[n, next])]);
                    }
                    perm := FullPerm;
                    Mask := Mask[null, list(n):=Mask[null, list(n)] + perm];
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                    assume list#trigger(Heap, list(n));
                    assume Heap[null, list(n)] == CombineFrames(FrameFragment(Heap[n, next]), FrameFragment((if Heap[n, next] != null then Heap[null, list(Heap[n, next])] else EmptyFrame)));
                    if (!HasDirectPerm(Mask, null, list(n))) {
                      Heap := Heap[null, list#sm(n):=ZeroPMask];
                      havoc freshVersion;
                      Heap := Heap[null, list(n):=freshVersion];
                    }
                    Heap := Heap[null, list#sm(n):=Heap[null, list#sm(n)][n, next:=true]];
                    if (Heap[n, next] != null) {
                      havoc newPMask;
                      assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                        { newPMask[o_5, f_11] }
                        Heap[null, list#sm(n)][o_5, f_11] || Heap[null, list#sm(Heap[n, next])][o_5, f_11] ==> newPMask[o_5, f_11]
                      );
                      Heap := Heap[null, list#sm(n):=newPMask];
                    }
                    assume state(Heap, Mask);
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: assert true && ys.next != null ==>
  //   (decreasing(PI_list(ys.next), old_W1_T0): Bool) &&
  //   (bounded(old_W1_T0): Bool) ||
  //   PI_list(ys.next) == old_W1_T0 && false -- <no position>
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                
                // -- Check definedness of true && ys.next != null
                  assert {:msg "  Assert might fail. There might be insufficient permission to access ys.next (<no position>) [18963]"}
                    HasDirectPerm(ExhaleWellDef0Mask, ys, next);
                if (Heap[ys, next] != null) {
                  
                  // -- Check definedness of (decreasing(PI_list(ys.next), old_W1_T0): Bool) && (bounded(old_W1_T0): Bool) || PI_list(ys.next) == old_W1_T0 && false
                    assert {:msg "  Assert might fail. There might be insufficient permission to access ys.next (<no position>) [18964]"}
                      HasDirectPerm(ExhaleWellDef0Mask, ys, next);
                    if (*) {
                      // Exhale precondition of function application
                      ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                      ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                      perm := FullPerm;
                      assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(ys.next) (predicates.vpr@26.23--26.36) [18965]"}
                        NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[ys, next])];
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                      ExhaleWellDef0Heap := ExhaleHeap;
                      // Stop execution
                      assume false;
                    }
                    if (!((decreasing(PI_list(Heap, Heap[ys, next]), old_W1_T0): bool) && (bounded(old_W1_T0): bool))) {
                      assert {:msg "  Assert might fail. There might be insufficient permission to access ys.next (<no position>) [18966]"}
                        HasDirectPerm(ExhaleWellDef0Mask, ys, next);
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(ys.next) (predicates.vpr@26.23--26.36) [18967]"}
                          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[ys, next])];
                        // Finish exhale
                        havoc ExhaleHeap;
                        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                        ExhaleWellDef0Heap := ExhaleHeap;
                        // Stop execution
                        assume false;
                      }
                    }
                  assert {:msg "  Assert might fail. Assertion (decreasing(PI_list(ys.next), old_W1_T0): Bool) && (bounded(old_W1_T0): Bool) || PI_list(ys.next) == old_W1_T0 && false might not hold. (<no position>) [18968]"}
                    (decreasing(PI_list(Heap, Heap[ys, next]), old_W1_T0): bool) && (bounded(old_W1_T0): bool);
                }
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ys.next, write) might not be preserved. There might be insufficient permission to access ys.next (predicates.vpr@23.23--23.35) [18969]"}
                perm <= Mask[ys, next];
            }
            Mask := Mask[ys, next:=Mask[ys, next] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(list(ys.next), write) might not be preserved. There might be insufficient permission to access list(ys.next) (predicates.vpr@24.23--24.36) [18970]"}
                perm <= Mask[null, list(Heap[ys, next])];
            }
            Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Heap[ys, next] != null);
          assume state(Heap, Mask);
          perm := FullPerm;
          assume ys != null;
          Mask := Mask[ys, next:=Mask[ys, next] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, list(Heap[ys, next]):=Mask[null, list(Heap[ys, next])] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}