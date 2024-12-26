// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:28:17
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/basic/someTypes.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/methods/basic/someTypes-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall l1_3: PredicateInstanceDomainType, l2_2: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_3, l2_2): bool) }
  (decreasing(l1_3, l2_2): bool) == (nestedPredicates(l1_3, l2_2): bool)
);

// Translation of domain axiom predicate_instances_ax_bound
axiom (forall l1_3: PredicateInstanceDomainType ::
  { (bounded(l1_3): bool) }
  (bounded(l1_3): bool)
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
function  nestedPredicates(l1_4: PredicateInstanceDomainType, l2_3: PredicateInstanceDomainType): bool;

// Translation of domain axiom nestedTrans
axiom (forall l1_3: PredicateInstanceDomainType, l2_2: PredicateInstanceDomainType, l3: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_3, l2_2): bool), (nestedPredicates(l2_2, l3): bool) }
  (nestedPredicates(l1_3, l2_2): bool) && (nestedPredicates(l2_2, l3): bool) ==> (nestedPredicates(l1_3, l3): bool)
);

// Translation of domain axiom nestedReflex
axiom (forall l1_3: PredicateInstanceDomainType ::
  { (nestedPredicates(l1_3, l1_3): bool) }
  !(nestedPredicates(l1_3, l1_3): bool)
);

// ==================================================
// Translation of domain PredicateInstance
// ==================================================

// The type for domain PredicateInstance
type PredicateInstanceDomainType;

// ==================================================
// Translation of all fields
// ==================================================

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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (someTypes.vpr@8.1--11.2) [225182]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Check definedness of acc(list(xs.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access xs.next (someTypes.vpr@8.1--11.2) [225183]"}
          HasDirectPerm(Mask, xs, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method predicateTest1
// ==================================================

procedure predicateTest1(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var list__16981330: PredicateInstanceDomainType;
  var newVersion: FrameType;
  var list_1681681832: PredicateInstanceDomainType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_xs: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, list(xs):=PostMask[null, list(xs)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: list__16981330 := PI_list(xs) -- someTypes.vpr@18.12--18.20
    
    // -- Check definedness of PI_list(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@18.12--18.20) [225184]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    list__16981330 := PI_list(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(list(xs), write) -- <no position>
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (<no position>) [225187]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(xs))) {
        havoc newVersion;
        Heap := Heap[null, list(xs):=newVersion];
      }
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@10.22--10.55
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.22--10.37) [225190]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Translating statement: list_1681681832 := PI_list(xs.next) -- someTypes.vpr@10.42--10.55
        
        // -- Check definedness of PI_list(xs.next)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.42--10.55) [225191]"}
            HasDirectPerm(Mask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@10.42--10.55) [225192]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(Heap[xs, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        list_1681681832 := PI_list(Heap, Heap[xs, next]);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale nestedPredicates(list_1681681832, list__16981330) -- someTypes.vpr@10.42--10.55
        assume (nestedPredicates(list_1681681832, list__16981330): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@19.5--21.6
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@19.9--19.24) [225193]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Translating statement: assert (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) &&
  //   (bounded(old(PI_list(xs))): Bool) ||
  //   PI_list(xs.next) == old(PI_list(xs)) && false -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs.next) == old(PI_list(xs)) && false
          assert {:msg "  Assert might fail. There might be insufficient permission to access xs.next (<no position>) [225194]"}
            HasDirectPerm(ExhaleWellDef0Mask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@15.15--15.23) [225195]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[xs, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@15.15--15.23) [225196]"}
              NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((decreasing(PI_list(Heap, Heap[xs, next]), PI_list(oldHeap, xs)): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := oldHeap;
              ExhaleWellDef1Mask := oldMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@15.15--15.23) [225197]"}
                NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
              // Finish exhale
              // Stop execution
              assume false;
            }
          }
          if (!((decreasing(PI_list(Heap, Heap[xs, next]), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool))) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access xs.next (<no position>) [225198]"}
              HasDirectPerm(ExhaleWellDef0Mask, xs, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@15.15--15.23) [225199]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[xs, next])];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := oldHeap;
              ExhaleWellDef1Mask := oldMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@15.15--15.23) [225200]"}
                NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
              // Finish exhale
              // Stop execution
              assume false;
            }
          }
        assert {:msg "  Assert might fail. Assertion (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs.next) == old(PI_list(xs)) && false might not hold. (<no position>) [225201]"}
          (decreasing(PI_list(Heap, Heap[xs, next]), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool);
        assume state(Heap, Mask);
      
      // -- Translating statement: predicateTest1(xs.next) -- someTypes.vpr@20.9--20.32
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of xs.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access xs.next (someTypes.vpr@20.9--20.32) [225202]"}
            HasDirectPerm(Mask, xs, next);
        arg_xs := Heap[xs, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method predicateTest1 might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@20.9--20.32) [225203]"}
              perm <= Mask[null, list(arg_xs)];
          }
          Mask := Mask[null, list(arg_xs):=Mask[null, list(arg_xs)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, list(arg_xs):=Mask[null, list(arg_xs)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(xs), write) -- someTypes.vpr@22.5--22.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.next (someTypes.vpr@22.5--22.18) [225206]"}
        perm <= Mask[xs, next];
    }
    Mask := Mask[xs, next:=Mask[xs, next] - perm];
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access list(xs.next) (someTypes.vpr@22.5--22.18) [225208]"}
          perm <= Mask[null, list(Heap[xs, next])];
      }
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(xs))) {
      Heap := Heap[null, list#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(xs):=freshVersion];
    }
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
    if (Heap[xs, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
        { newPMask[o_15, f_20] }
        Heap[null, list#sm(xs)][o_15, f_20] || Heap[null, list#sm(Heap[xs, next])][o_15, f_20] ==> newPMask[o_15, f_20]
      );
      Heap := Heap[null, list#sm(xs):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of predicateTest1 might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@16.13--16.21) [225210]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method predicateTest2
// ==================================================

procedure predicateTest2(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var list__169813300: PredicateInstanceDomainType;
  var newVersion: FrameType;
  var list_16816818320: PredicateInstanceDomainType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, list(xs):=PostMask[null, list(xs)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: list__169813300 := PI_list(xs) -- someTypes.vpr@30.12--30.20
    
    // -- Check definedness of PI_list(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@30.12--30.20) [225211]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    list__169813300 := PI_list(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(list(xs), write) -- <no position>
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (<no position>) [225214]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(xs))) {
        havoc newVersion;
        Heap := Heap[null, list(xs):=newVersion];
      }
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@10.22--10.55
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.22--10.37) [225217]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Translating statement: list_16816818320 := PI_list(xs.next) -- someTypes.vpr@10.42--10.55
        
        // -- Check definedness of PI_list(xs.next)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.42--10.55) [225218]"}
            HasDirectPerm(Mask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@10.42--10.55) [225219]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(Heap[xs, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        list_16816818320 := PI_list(Heap, Heap[xs, next]);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale nestedPredicates(list_16816818320, list__169813300) -- someTypes.vpr@10.42--10.55
        assume (nestedPredicates(list_16816818320, list__169813300): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@31.5--32.6
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@31.9--31.24) [225220]"}
        HasDirectPerm(Mask, xs, next);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(xs), write) -- someTypes.vpr@33.5--33.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.next (someTypes.vpr@33.5--33.18) [225223]"}
        perm <= Mask[xs, next];
    }
    Mask := Mask[xs, next:=Mask[xs, next] - perm];
    if (Heap[xs, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access list(xs.next) (someTypes.vpr@33.5--33.18) [225225]"}
          perm <= Mask[null, list(Heap[xs, next])];
      }
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(xs))) {
      Heap := Heap[null, list#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(xs):=freshVersion];
    }
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
    if (Heap[xs, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
        { newPMask[o_16, f_21] }
        Heap[null, list#sm(xs)][o_16, f_21] || Heap[null, list#sm(Heap[xs, next])][o_16, f_21] ==> newPMask[o_16, f_21]
      );
      Heap := Heap[null, list#sm(xs):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (decreasing(PI_list(xs), old(PI_list(xs))): Bool) &&
  //   (bounded(old(PI_list(xs))): Bool) ||
  //   PI_list(xs) == old(PI_list(xs)) && false -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (decreasing(PI_list(xs), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs) == old(PI_list(xs)) && false
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@27.15--27.23) [225227]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@27.15--27.23) [225228]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if ((decreasing(PI_list(Heap, xs), PI_list(oldHeap, xs)): bool)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := oldHeap;
          ExhaleWellDef1Mask := oldMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@27.15--27.23) [225229]"}
            NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
          // Finish exhale
          // Stop execution
          assume false;
        }
      }
      if (!((decreasing(PI_list(Heap, xs), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool))) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@27.15--27.23) [225230]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(xs)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := oldHeap;
          ExhaleWellDef1Mask := oldMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@27.15--27.23) [225231]"}
            NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
          // Finish exhale
          // Stop execution
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion (decreasing(PI_list(xs), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs) == old(PI_list(xs)) && false might not hold. (<no position>) [225232]"}
      (decreasing(PI_list(Heap, xs), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: predicateTest2(xs) -- someTypes.vpr@35.5--35.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method predicateTest2 might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@35.5--35.23) [225233]"}
          perm <= Mask[null, list(xs)];
      }
      Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of predicateTest2 might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@28.13--28.21) [225234]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method predicateTest3
// ==================================================

procedure predicateTest3(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var list__169813301: PredicateInstanceDomainType;
  var newVersion: FrameType;
  var list_16816818321: PredicateInstanceDomainType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_xs: Ref;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (someTypes.vpr@39.14--39.32) [225235]"}
      perm >= NoPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
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
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (someTypes.vpr@41.13--41.31) [225236]"}
      perm >= NoPerm;
    PostMask := PostMask[null, list(xs):=PostMask[null, list(xs)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: list__169813301 := PI_list(xs) -- someTypes.vpr@43.16--43.24
    
    // -- Check definedness of PI_list(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@43.16--43.24) [225237]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    list__169813301 := PI_list(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(list(xs), 2 / 3) -- <no position>
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 2 / 3;
    assert {:msg "  Unfolding list(xs) might fail. Fraction 2 / 3 might be negative. (<no position>) [225239]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (<no position>) [225240]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(xs))) {
        havoc newVersion;
        Heap := Heap[null, list(xs):=newVersion];
      }
    perm := 2 / 3;
    assert {:msg "  Unfolding list(xs) might fail. Fraction 2 / 3 might be negative. (<no position>) [225241]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := 2 / 3;
      assert {:msg "  Unfolding list(xs) might fail. Fraction 2 / 3 might be negative. (<no position>) [225242]"}
        perm >= NoPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@10.22--10.55
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.22--10.37) [225243]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Translating statement: list_16816818321 := PI_list(xs.next) -- someTypes.vpr@10.42--10.55
        
        // -- Check definedness of PI_list(xs.next)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.42--10.55) [225244]"}
            HasDirectPerm(Mask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@10.42--10.55) [225245]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(Heap[xs, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        list_16816818321 := PI_list(Heap, Heap[xs, next]);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale nestedPredicates(list_16816818321, list__169813301) -- someTypes.vpr@10.42--10.55
        assume (nestedPredicates(list_16816818321, list__169813301): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@44.5--46.6
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@44.9--44.24) [225246]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Translating statement: assert (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) &&
  //   (bounded(old(PI_list(xs))): Bool) ||
  //   PI_list(xs.next) == old(PI_list(xs)) && false -- <no position>
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs.next) == old(PI_list(xs)) && false
          assert {:msg "  Assert might fail. There might be insufficient permission to access xs.next (<no position>) [225247]"}
            HasDirectPerm(ExhaleWellDef0Mask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@40.19--40.27) [225248]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[xs, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := oldHeap;
            ExhaleWellDef1Mask := oldMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@40.19--40.27) [225249]"}
              NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((decreasing(PI_list(Heap, Heap[xs, next]), PI_list(oldHeap, xs)): bool)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := oldHeap;
              ExhaleWellDef1Mask := oldMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@40.19--40.27) [225250]"}
                NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
              // Finish exhale
              // Stop execution
              assume false;
            }
          }
          if (!((decreasing(PI_list(Heap, Heap[xs, next]), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool))) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access xs.next (<no position>) [225251]"}
              HasDirectPerm(ExhaleWellDef0Mask, xs, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              perm := FullPerm;
              assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@40.19--40.27) [225252]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(ExhaleWellDef0Heap[xs, next])];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := oldHeap;
              ExhaleWellDef1Mask := oldMask;
              perm := FullPerm;
              assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@40.19--40.27) [225253]"}
                NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
              // Finish exhale
              // Stop execution
              assume false;
            }
          }
        assert {:msg "  Assert might fail. Assertion (decreasing(PI_list(xs.next), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs.next) == old(PI_list(xs)) && false might not hold. (<no position>) [225254]"}
          (decreasing(PI_list(Heap, Heap[xs, next]), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool);
        assume state(Heap, Mask);
      
      // -- Translating statement: predicateTest3(xs.next) -- someTypes.vpr@45.9--45.32
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of xs.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access xs.next (someTypes.vpr@45.9--45.32) [225255]"}
            HasDirectPerm(Mask, xs, next);
        arg_xs := Heap[xs, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := 2 / 3;
          assert {:msg "  The precondition of method predicateTest3 might not hold. Fraction 2 / 3 might be negative. (someTypes.vpr@45.9--45.32) [225256]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method predicateTest3 might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@45.9--45.32) [225257]"}
              perm <= Mask[null, list(arg_xs)];
          }
          Mask := Mask[null, list(arg_xs):=Mask[null, list(arg_xs)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := 2 / 3;
          assert {:msg "  Method call might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@45.9--45.32) [225258]"}
            perm >= NoPerm;
          Mask := Mask[null, list(arg_xs):=Mask[null, list(arg_xs)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(xs), 2 / 3) -- someTypes.vpr@47.5--47.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 2 / 3;
    assert {:msg "  Folding list(xs) might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@47.5--47.28) [225260]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.next (someTypes.vpr@47.5--47.28) [225261]"}
        perm <= Mask[xs, next];
    }
    Mask := Mask[xs, next:=Mask[xs, next] - perm];
    if (Heap[xs, next] != null) {
      perm := 2 / 3;
      assert {:msg "  Folding list(xs) might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@47.5--47.28) [225262]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access list(xs.next) (someTypes.vpr@47.5--47.28) [225263]"}
          perm <= Mask[null, list(Heap[xs, next])];
      }
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
    }
    perm := 2 / 3;
    assert {:msg "  Folding list(xs) might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@47.5--47.28) [225264]"}
      perm >= NoPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(xs))) {
      Heap := Heap[null, list#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(xs):=freshVersion];
    }
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
    if (Heap[xs, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
        { newPMask[o_52, f_55] }
        Heap[null, list#sm(xs)][o_52, f_55] || Heap[null, list#sm(Heap[xs, next])][o_52, f_55] ==> newPMask[o_52, f_55]
      );
      Heap := Heap[null, list#sm(xs):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 2 / 3;
    assert {:msg "  Postcondition of predicateTest3 might not hold. Fraction 2 / 3 might be negative. (someTypes.vpr@41.13--41.31) [225265]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of predicateTest3 might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@41.13--41.31) [225266]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method predicateTest4
// ==================================================

procedure predicateTest4(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var list__169813302: PredicateInstanceDomainType;
  var newVersion: FrameType;
  var list_16816818322: PredicateInstanceDomainType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (someTypes.vpr@51.14--51.32) [225267]"}
      perm >= NoPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
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
    perm := 2 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 2 / 3 might be negative. (someTypes.vpr@53.13--53.31) [225268]"}
      perm >= NoPerm;
    PostMask := PostMask[null, list(xs):=PostMask[null, list(xs)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: list__169813302 := PI_list(xs) -- someTypes.vpr@55.16--55.24
    
    // -- Check definedness of PI_list(xs)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@55.16--55.24) [225269]"}
          NoPerm < perm ==> NoPerm < Mask[null, list(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    list__169813302 := PI_list(Heap, xs);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(list(xs), 2 / 3) -- <no position>
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 2 / 3;
    assert {:msg "  Unfolding list(xs) might fail. Fraction 2 / 3 might be negative. (<no position>) [225271]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(xs) might fail. There might be insufficient permission to access list(xs) (<no position>) [225272]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(xs))) {
        havoc newVersion;
        Heap := Heap[null, list(xs):=newVersion];
      }
    perm := 2 / 3;
    assert {:msg "  Unfolding list(xs) might fail. Fraction 2 / 3 might be negative. (<no position>) [225273]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> xs != null;
    Mask := Mask[xs, next:=Mask[xs, next] + perm];
    assume state(Heap, Mask);
    if (Heap[xs, next] != null) {
      perm := 2 / 3;
      assert {:msg "  Unfolding list(xs) might fail. Fraction 2 / 3 might be negative. (<no position>) [225274]"}
        perm >= NoPerm;
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@10.22--10.55
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.22--10.37) [225275]"}
        HasDirectPerm(Mask, xs, next);
    if (Heap[xs, next] != null) {
      
      // -- Translating statement: list_16816818322 := PI_list(xs.next) -- someTypes.vpr@10.42--10.55
        
        // -- Check definedness of PI_list(xs.next)
          assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.next (someTypes.vpr@10.42--10.55) [225276]"}
            HasDirectPerm(Mask, xs, next);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs.next) (someTypes.vpr@10.42--10.55) [225277]"}
              NoPerm < perm ==> NoPerm < Mask[null, list(Heap[xs, next])];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        list_16816818322 := PI_list(Heap, Heap[xs, next]);
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale nestedPredicates(list_16816818322, list__169813302) -- someTypes.vpr@10.42--10.55
        assume (nestedPredicates(list_16816818322, list__169813302): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (xs.next != null) -- someTypes.vpr@56.5--57.6
    
    // -- Check definedness of xs.next != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access xs.next (someTypes.vpr@56.9--56.24) [225278]"}
        HasDirectPerm(Mask, xs, next);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(xs), 2 / 3) -- someTypes.vpr@58.5--58.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 2 / 3;
    assert {:msg "  Folding list(xs) might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@58.5--58.28) [225280]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access xs.next (someTypes.vpr@58.5--58.28) [225281]"}
        perm <= Mask[xs, next];
    }
    Mask := Mask[xs, next:=Mask[xs, next] - perm];
    if (Heap[xs, next] != null) {
      perm := 2 / 3;
      assert {:msg "  Folding list(xs) might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@58.5--58.28) [225282]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(xs) might fail. There might be insufficient permission to access list(xs.next) (someTypes.vpr@58.5--58.28) [225283]"}
          perm <= Mask[null, list(Heap[xs, next])];
      }
      Mask := Mask[null, list(Heap[xs, next]):=Mask[null, list(Heap[xs, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(xs), Heap[null, list(xs)], list(Heap[xs, next]), Heap[null, list(Heap[xs, next])]);
    }
    perm := 2 / 3;
    assert {:msg "  Folding list(xs) might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@58.5--58.28) [225284]"}
      perm >= NoPerm;
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(xs));
    assume Heap[null, list(xs)] == CombineFrames(FrameFragment(Heap[xs, next]), FrameFragment((if Heap[xs, next] != null then Heap[null, list(Heap[xs, next])] else EmptyFrame)));
    if (!HasDirectPerm(Mask, null, list(xs))) {
      Heap := Heap[null, list#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(xs):=freshVersion];
    }
    Heap := Heap[null, list#sm(xs):=Heap[null, list#sm(xs)][xs, next:=true]];
    if (Heap[xs, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
        { newPMask[o_53, f_56] }
        Heap[null, list#sm(xs)][o_53, f_56] || Heap[null, list#sm(Heap[xs, next])][o_53, f_56] ==> newPMask[o_53, f_56]
      );
      Heap := Heap[null, list#sm(xs):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (decreasing(PI_list(xs), old(PI_list(xs))): Bool) &&
  //   (bounded(old(PI_list(xs))): Bool) ||
  //   PI_list(xs) == old(PI_list(xs)) && false -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (decreasing(PI_list(xs), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs) == old(PI_list(xs)) && false
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@52.19--52.27) [225285]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := oldHeap;
        ExhaleWellDef1Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@52.19--52.27) [225286]"}
          NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if ((decreasing(PI_list(Heap, xs), PI_list(oldHeap, xs)): bool)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := oldHeap;
          ExhaleWellDef1Mask := oldMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@52.19--52.27) [225287]"}
            NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
          // Finish exhale
          // Stop execution
          assume false;
        }
      }
      if (!((decreasing(PI_list(Heap, xs), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool))) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@52.19--52.27) [225288]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list(xs)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := oldHeap;
          ExhaleWellDef1Mask := oldMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function PI_list might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@52.19--52.27) [225289]"}
            NoPerm < perm ==> NoPerm < oldMask[null, list(xs)];
          // Finish exhale
          // Stop execution
          assume false;
        }
      }
    assert {:msg "  Assert might fail. Assertion (decreasing(PI_list(xs), old(PI_list(xs))): Bool) && (bounded(old(PI_list(xs))): Bool) || PI_list(xs) == old(PI_list(xs)) && false might not hold. (<no position>) [225290]"}
      (decreasing(PI_list(Heap, xs), PI_list(oldHeap, xs)): bool) && (bounded(PI_list(oldHeap, xs)): bool);
    assume state(Heap, Mask);
  
  // -- Translating statement: predicateTest4(xs) -- someTypes.vpr@60.5--60.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 2 / 3;
      assert {:msg "  The precondition of method predicateTest4 might not hold. Fraction 2 / 3 might be negative. (someTypes.vpr@60.5--60.23) [225291]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method predicateTest4 might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@60.5--60.23) [225292]"}
          perm <= Mask[null, list(xs)];
      }
      Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := 2 / 3;
      assert {:msg "  Method call might fail. Fraction 2 / 3 might be negative. (someTypes.vpr@60.5--60.23) [225293]"}
        perm >= NoPerm;
      Mask := Mask[null, list(xs):=Mask[null, list(xs)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 2 / 3;
    assert {:msg "  Postcondition of predicateTest4 might not hold. Fraction 2 / 3 might be negative. (someTypes.vpr@53.13--53.31) [225294]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of predicateTest4 might not hold. There might be insufficient permission to access list(xs) (someTypes.vpr@53.13--53.31) [225295]"}
        perm <= Mask[null, list(xs)];
    }
    Mask := Mask[null, list(xs):=Mask[null, list(xs)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}