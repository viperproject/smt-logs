// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/errorMessages/multipleErrors.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/termination/errorMessages/multipleErrors-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: factorialPure
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
// Translation of domain IntWellFoundedOrder
// ==================================================

// The type for domain IntWellFoundedOrder
type IntWellFoundedOrderDomainType;

// Translation of domain axiom integer_ax_dec
axiom (forall int1: int, int2: int ::
  { (decreasing(int1, int2): bool) }
  int1 < int2 ==> (decreasing(int1, int2): bool)
);

// Translation of domain axiom integer_ax_bound
axiom (forall int1: int ::
  { (bounded(int1): bool) }
  int1 >= 0 ==> (bounded(int1): bool)
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
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique value_1: Field NormalField int;
axiom !IsPredicateField(value_1);
axiom !IsWandField(value_1);

// ==================================================
// Translation of function factorialPure
// ==================================================

// Uninterpreted function definitions
function  factorialPure(Heap: HeapType, n: int): int;
function  factorialPure'(Heap: HeapType, n: int): int;
axiom (forall Heap: HeapType, n: int ::
  { factorialPure(Heap, n) }
  factorialPure(Heap, n) == factorialPure'(Heap, n) && dummyFunction(factorialPure#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: int ::
  { factorialPure'(Heap, n) }
  dummyFunction(factorialPure#triggerStateless(n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), factorialPure(Heap, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> n >= 0 ==> factorialPure(Heap, n) == (if n == 0 then 1 else 1 * factorialPure'(Heap, n - 1))
);

// Framing axioms
function  factorialPure#frame(frame: FrameType, n: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), factorialPure'(Heap, n) }
  state(Heap, Mask) ==> factorialPure'(Heap, n) == factorialPure#frame(EmptyFrame, n)
);

// Trigger function (controlling recursive postconditions)
function  factorialPure#trigger(frame: FrameType, n: int): bool;

// State-independent trigger function
function  factorialPure#triggerStateless(n: int): int;

// Check contract well-formedness and postcondition
procedure factorialPure#definedness(n: int) returns (Result: int)
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
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (n == 0 ? 1 : 1 * factorialPure(n - 1))
      if (n == 0) {
      } else {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function factorialPure might not hold. Assertion n - 1 >= 0 might not hold. (multipleErrors.vpr@13.22--13.40) [20193]"}
            n - 1 >= 0;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume factorialPure#trigger(EmptyFrame, n - 1);
        }
      }
  
  // -- Translate function body
    Result := (if n == 0 then 1 else 1 * factorialPure(Heap, n - 1));
}

// ==================================================
// Translation of predicate list
// ==================================================

type PredicateType_list;
function  list(self: Ref): Field PredicateType_list FrameType;
function  list#sm(self: Ref): Field PredicateType_list PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(list(self)) }
  PredicateMaskField(list(self)) == list#sm(self)
);
axiom (forall self: Ref ::
  { list(self) }
  IsPredicateField(list(self))
);
axiom (forall self: Ref ::
  { list(self) }
  getPredWandId(list(self)) == 0
);
function  list#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { list(self), list(self2) }
  list(self) == list(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { list#sm(self), list#sm(self2) }
  list#sm(self) == list#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { list#trigger(Heap, list(self)) }
  list#everUsed(list(self))
);

procedure list#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, next:=Mask[self, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, value_1:=Mask[self, value_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of self.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.next (multipleErrors.vpr@19.1--21.2) [20194]"}
        HasDirectPerm(Mask, self, next);
    if (Heap[self, next] != null) {
      
      // -- Check definedness of acc(list(self.next), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.next (multipleErrors.vpr@19.1--21.2) [20195]"}
          HasDirectPerm(Mask, self, next);
      perm := FullPerm;
      Mask := Mask[null, list(Heap[self, next]):=Mask[null, list(Heap[self, next])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method length
// ==================================================

procedure length(x: Ref) returns (l_1: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_x: Ref;
  var ExhaleHeap: HeapType;
  var tmp: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, list(x):=Mask[null, list(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, list(x):=PostMask[null, list(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(list(x), write) -- multipleErrors.vpr@28.5--28.19
    assume list#trigger(Heap, list(x));
    assume Heap[null, list(x)] == CombineFrames(FrameFragment(Heap[x, next]), CombineFrames(FrameFragment(Heap[x, value_1]), FrameFragment((if Heap[x, next] != null then Heap[null, list(Heap[x, next])] else EmptyFrame))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding list(x) might fail. There might be insufficient permission to access list(x) (multipleErrors.vpr@28.5--28.19) [20198]"}
        perm <= Mask[null, list(x)];
    }
    Mask := Mask[null, list(x):=Mask[null, list(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, list(x))) {
        havoc newVersion;
        Heap := Heap[null, list(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, value_1:=Mask[x, value_1] + perm];
    assume state(Heap, Mask);
    if (Heap[x, next] != null) {
      perm := FullPerm;
      Mask := Mask[null, list(Heap[x, next]):=Mask[null, list(Heap[x, next])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(list(x), Heap[null, list(x)], list(Heap[x, next]), Heap[null, list(Heap[x, next])]);
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x.next == null) -- multipleErrors.vpr@29.5--36.6
    
    // -- Check definedness of x.next == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.next (multipleErrors.vpr@29.9--29.23) [20202]"}
        HasDirectPerm(Mask, x, next);
    if (Heap[x, next] == null) {
      
      // -- Translating statement: l := 1 -- multipleErrors.vpr@30.9--30.15
        l_1 := 1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert false -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [20203]"}
          false;
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp := length(x.next) -- multipleErrors.vpr@34.9--34.30
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of x.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access x.next (multipleErrors.vpr@34.9--34.30) [20204]"}
            HasDirectPerm(Mask, x, next);
        arg_x := Heap[x, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method length might not hold. There might be insufficient permission to access list(x.next) (multipleErrors.vpr@34.9--34.30) [20205]"}
              perm <= Mask[null, list(arg_x)];
          }
          Mask := Mask[null, list(arg_x):=Mask[null, list(arg_x)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc tmp;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, list(arg_x):=Mask[null, list(arg_x)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: l := 1 + tmp -- multipleErrors.vpr@35.9--35.21
        l_1 := 1 + tmp;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list(x), write) -- multipleErrors.vpr@37.5--37.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x) might fail. There might be insufficient permission to access x.next (multipleErrors.vpr@37.5--37.17) [20208]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list(x) might fail. There might be insufficient permission to access x.value (multipleErrors.vpr@37.5--37.17) [20210]"}
        perm <= Mask[x, value_1];
    }
    Mask := Mask[x, value_1:=Mask[x, value_1] - perm];
    if (Heap[x, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list(x) might fail. There might be insufficient permission to access list(x.next) (multipleErrors.vpr@37.5--37.17) [20212]"}
          perm <= Mask[null, list(Heap[x, next])];
      }
      Mask := Mask[null, list(Heap[x, next]):=Mask[null, list(Heap[x, next])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list(x), Heap[null, list(x)], list(Heap[x, next]), Heap[null, list(Heap[x, next])]);
    }
    perm := FullPerm;
    Mask := Mask[null, list(x):=Mask[null, list(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list#trigger(Heap, list(x));
    assume Heap[null, list(x)] == CombineFrames(FrameFragment(Heap[x, next]), CombineFrames(FrameFragment(Heap[x, value_1]), FrameFragment((if Heap[x, next] != null then Heap[null, list(Heap[x, next])] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list(x))) {
      Heap := Heap[null, list#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list(x):=freshVersion];
    }
    Heap := Heap[null, list#sm(x):=Heap[null, list#sm(x)][x, next:=true]];
    Heap := Heap[null, list#sm(x):=Heap[null, list#sm(x)][x, value_1:=true]];
    if (Heap[x, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
        { newPMask[o_5, f_11] }
        Heap[null, list#sm(x)][o_5, f_11] || Heap[null, list#sm(Heap[x, next])][o_5, f_11] ==> newPMask[o_5, f_11]
      );
      Heap := Heap[null, list#sm(x):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of length might not hold. There might be insufficient permission to access list(x) (multipleErrors.vpr@26.14--26.21) [20214]"}
        perm <= Mask[null, list(x)];
    }
    Mask := Mask[null, list(x):=Mask[null, list(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method factorialPure_termination_proof
// ==================================================

procedure factorialPure_termination_proof(n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: if (n == 0) -- <no position>
    if (n == 0) {
    } else {
      
      // -- Translating statement: assert false -- <no position>
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion false might not hold. (<no position>) [20215]"}
          false;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}