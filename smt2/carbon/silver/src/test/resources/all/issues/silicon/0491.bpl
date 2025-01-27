// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0491.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0491-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_38: Ref, f_51: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_38, f_51] }
  Heap[o_38, $allocated] ==> Heap[Heap[o_38, f_51], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref, f_21: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, f_21] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_39, f_21) ==> Heap[o_39, f_21] == ExhaleHeap[o_39, f_21]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_39, $allocated] ==> ExhaleHeap[o_39, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_38: Ref, f_23: (Field A B), v: B ::
  { Heap[o_38, f_23:=v] }
  succHeap(Heap, Heap[o_38, f_23:=v])
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
// Translation of all fields
// ==================================================

const unique elem: Field NormalField int;
axiom !IsPredicateField(elem);
axiom !IsWandField(elem);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_1(Heap: HeapType, l_1: Ref, i: int): bool;
function  foo'(Heap: HeapType, l_1: Ref, i: int): bool;
axiom (forall Heap: HeapType, l_1: Ref, i: int ::
  { foo_1(Heap, l_1, i) }
  foo_1(Heap, l_1, i) == foo'(Heap, l_1, i) && dummyFunction(foo#triggerStateless(l_1, i))
);
axiom (forall Heap: HeapType, l_1: Ref, i: int ::
  { foo'(Heap, l_1, i) }
  dummyFunction(foo#triggerStateless(l_1, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref, i: int ::
  { state(Heap, Mask), foo_1(Heap, l_1, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_1(Heap, l_1, i) == (forall j: int ::
    { Heap[null, list2(l_1, j)] } { foo#frame(Heap[null, list2(Heap[l_1, next], j)], Heap[l_1, next], j) }
    i == j ==> Heap[l_1, next] == null || foo'(Heap, Heap[l_1, next], j)
  )
);

// Framing axioms
function  foo#frame(frame: FrameType, l_1: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref, i: int ::
  { state(Heap, Mask), foo'(Heap, l_1, i) }
  state(Heap, Mask) ==> foo'(Heap, l_1, i) == foo#frame(Heap[null, list2(l_1, i)], l_1, i)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger_1(frame: FrameType, l_1: Ref, i: int): bool;

// State-independent trigger function
function  foo#triggerStateless(l_1: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(l_1: Ref, i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_12: int;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[l_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list2(l_1, i):=Mask[null, list2(l_1, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall j: Int :: { list2(l, j) } { foo(l.next, j) } i == j ==> (unfolding acc(list2(l, j), write) in (l.next == null ? true : foo(l.next, j))))
      if (*) {
        if (i == j_12) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list2#trigger(UnfoldingHeap, list2(l_1, j_12));
          assume UnfoldingHeap[null, list2(l_1, j_12)] == CombineFrames(FrameFragment(UnfoldingHeap[l_1, elem]), CombineFrames(FrameFragment(UnfoldingHeap[l_1, next]), FrameFragment((if UnfoldingHeap[l_1, next] != null then UnfoldingHeap[null, list2(UnfoldingHeap[l_1, next], j_12)] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list2(l, j) (0491.vpr@9.1--14.2) [64406]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(l_1, j_12)];
          perm := FullPerm;
          assume l_1 != null;
          UnfoldingMask := UnfoldingMask[l_1, elem:=UnfoldingMask[l_1, elem] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume l_1 != null;
          UnfoldingMask := UnfoldingMask[l_1, next:=UnfoldingMask[l_1, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[l_1, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list2(UnfoldingHeap[l_1, next], j_12):=UnfoldingMask[null, list2(UnfoldingHeap[l_1, next], j_12)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list2(l_1, j_12), UnfoldingHeap[null, list2(l_1, j_12)], list2(UnfoldingHeap[l_1, next], j_12), UnfoldingHeap[null, list2(UnfoldingHeap[l_1, next], j_12)]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0491.vpr@9.1--14.2) [64407]"}
            HasDirectPerm(UnfoldingMask, l_1, next);
          if (UnfoldingHeap[l_1, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0491.vpr@9.1--14.2) [64408]"}
              HasDirectPerm(UnfoldingMask, l_1, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(l.next, j) (0491.vpr@13.68--13.82) [64409]"}
                NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(UnfoldingHeap[l_1, next], j_12)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume foo#trigger_1(UnfoldingHeap[null, list2(UnfoldingHeap[l_1, next], j_12)], UnfoldingHeap[l_1, next], j_12);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list2#sm(l_1, j_12):=Heap[null, list2#sm(l_1, j_12)][l_1, elem:=true]];
            Heap := Heap[null, list2#sm(l_1, j_12):=Heap[null, list2#sm(l_1, j_12)][l_1, next:=true]];
            if (Heap[l_1, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                { newPMask[o_5, f_11] }
                Heap[null, list2#sm(l_1, j_12)][o_5, f_11] || Heap[null, list2#sm(Heap[l_1, next], j_12)][o_5, f_11] ==> newPMask[o_5, f_11]
              );
              Heap := Heap[null, list2#sm(l_1, j_12):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall j_2_2: int ::
      { Heap[null, list2(l_1, j_2_2)] } { foo#frame(Heap[null, list2(Heap[l_1, next], j_2_2)], Heap[l_1, next], j_2_2) }
      i == j_2_2 ==> Heap[l_1, next] == null || foo_1(Heap, Heap[l_1, next], j_2_2)
    );
}

// ==================================================
// Translation of predicate list2
// ==================================================

type PredicateType_list2;
function  list2(this: Ref, i: int): Field PredicateType_list2 FrameType;
function  list2#sm(this: Ref, i: int): Field PredicateType_list2 PMaskType;
axiom (forall this: Ref, i: int ::
  { PredicateMaskField(list2(this, i)) }
  PredicateMaskField(list2(this, i)) == list2#sm(this, i)
);
axiom (forall this: Ref, i: int ::
  { list2(this, i) }
  IsPredicateField(list2(this, i))
);
axiom (forall this: Ref, i: int ::
  { list2(this, i) }
  getPredWandId(list2(this, i)) == 0
);
function  list2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  list2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, i: int, this2: Ref, i2: int ::
  { list2(this, i), list2(this2, i2) }
  list2(this, i) == list2(this2, i2) ==> this == this2 && i == i2
);
axiom (forall this: Ref, i: int, this2: Ref, i2: int ::
  { list2#sm(this, i), list2#sm(this2, i2) }
  list2#sm(this, i) == list2#sm(this2, i2) ==> this == this2 && i == i2
);

axiom (forall Heap: HeapType, this: Ref, i: int ::
  { list2#trigger(Heap, list2(this, i)) }
  list2#everUsed(list2(this, i))
);

procedure list2#definedness(this: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of list2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, elem:=Mask[this, elem] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0491.vpr@4.1--7.2) [64410]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(list2(this.next, i), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0491.vpr@4.1--7.2) [64411]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, list2(Heap[this, next], i):=Mask[null, list2(Heap[this, next], i)] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method needsPredicateTrigger
// ==================================================

procedure needsPredicateTrigger() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var l1_1: Ref;
  var l2: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var k: int;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[l1_1, $allocated];
    assume Heap[l2, $allocated];
  
  // -- Translating statement: l1 := new(elem, next) -- 0491.vpr@19.3--19.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    l1_1 := freshObj;
    Mask := Mask[l1_1, elem:=Mask[l1_1, elem] + FullPerm];
    Mask := Mask[l1_1, next:=Mask[l1_1, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: l1.next := null -- 0491.vpr@20.3--20.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access l1.next (0491.vpr@20.3--20.18) [64412]"}
      FullPerm == Mask[l1_1, next];
    Heap := Heap[l1_1, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(l1, k), write) -- 0491.vpr@22.3--22.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l1, k) might fail. There might be insufficient permission to access l1.elem (0491.vpr@22.3--22.20) [64415]"}
        perm <= Mask[l1_1, elem];
    }
    Mask := Mask[l1_1, elem:=Mask[l1_1, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l1, k) might fail. There might be insufficient permission to access l1.next (0491.vpr@22.3--22.20) [64417]"}
        perm <= Mask[l1_1, next];
    }
    Mask := Mask[l1_1, next:=Mask[l1_1, next] - perm];
    if (Heap[l1_1, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(l1, k) might fail. There might be insufficient permission to access list2(l1.next, k) (0491.vpr@22.3--22.20) [64419]"}
          perm <= Mask[null, list2(Heap[l1_1, next], k)];
      }
      Mask := Mask[null, list2(Heap[l1_1, next], k):=Mask[null, list2(Heap[l1_1, next], k)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(l1_1, k), Heap[null, list2(l1_1, k)], list2(Heap[l1_1, next], k), Heap[null, list2(Heap[l1_1, next], k)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(l1_1, k):=Mask[null, list2(l1_1, k)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(l1_1, k));
    assume Heap[null, list2(l1_1, k)] == CombineFrames(FrameFragment(Heap[l1_1, elem]), CombineFrames(FrameFragment(Heap[l1_1, next]), FrameFragment((if Heap[l1_1, next] != null then Heap[null, list2(Heap[l1_1, next], k)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(l1_1, k))) {
      Heap := Heap[null, list2#sm(l1_1, k):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(l1_1, k):=freshVersion];
    }
    Heap := Heap[null, list2#sm(l1_1, k):=Heap[null, list2#sm(l1_1, k)][l1_1, elem:=true]];
    Heap := Heap[null, list2#sm(l1_1, k):=Heap[null, list2#sm(l1_1, k)][l1_1, next:=true]];
    if (Heap[l1_1, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_64: Ref, f_73: (Field A B) ::
        { newPMask[o_64, f_73] }
        Heap[null, list2#sm(l1_1, k)][o_64, f_73] || Heap[null, list2#sm(Heap[l1_1, next], k)][o_64, f_73] ==> newPMask[o_64, f_73]
      );
      Heap := Heap[null, list2#sm(l1_1, k):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: l2 := new(elem, next) -- 0491.vpr@32.3--32.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    l2 := freshObj;
    Mask := Mask[l2, elem:=Mask[l2, elem] + FullPerm];
    Mask := Mask[l2, next:=Mask[l2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: l2.next := l1 -- 0491.vpr@33.3--33.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access l2.next (0491.vpr@33.3--33.16) [64421]"}
      FullPerm == Mask[l2, next];
    Heap := Heap[l2, next:=l1_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(l2, k), write) -- 0491.vpr@35.3--35.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l2, k) might fail. There might be insufficient permission to access l2.elem (0491.vpr@35.3--35.20) [64424]"}
        perm <= Mask[l2, elem];
    }
    Mask := Mask[l2, elem:=Mask[l2, elem] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l2, k) might fail. There might be insufficient permission to access l2.next (0491.vpr@35.3--35.20) [64426]"}
        perm <= Mask[l2, next];
    }
    Mask := Mask[l2, next:=Mask[l2, next] - perm];
    if (Heap[l2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(l2, k) might fail. There might be insufficient permission to access list2(l2.next, k) (0491.vpr@35.3--35.20) [64428]"}
          perm <= Mask[null, list2(Heap[l2, next], k)];
      }
      Mask := Mask[null, list2(Heap[l2, next], k):=Mask[null, list2(Heap[l2, next], k)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(l2, k), Heap[null, list2(l2, k)], list2(Heap[l2, next], k), Heap[null, list2(Heap[l2, next], k)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(l2, k):=Mask[null, list2(l2, k)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(l2, k));
    assume Heap[null, list2(l2, k)] == CombineFrames(FrameFragment(Heap[l2, elem]), CombineFrames(FrameFragment(Heap[l2, next]), FrameFragment((if Heap[l2, next] != null then Heap[null, list2(Heap[l2, next], k)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(l2, k))) {
      Heap := Heap[null, list2#sm(l2, k):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(l2, k):=freshVersion];
    }
    Heap := Heap[null, list2#sm(l2, k):=Heap[null, list2#sm(l2, k)][l2, elem:=true]];
    Heap := Heap[null, list2#sm(l2, k):=Heap[null, list2#sm(l2, k)][l2, next:=true]];
    if (Heap[l2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_75: Ref, f_84: (Field A B) ::
        { newPMask[o_75, f_84] }
        Heap[null, list2#sm(l2, k)][o_75, f_84] || Heap[null, list2#sm(Heap[l2, next], k)][o_75, f_84] ==> newPMask[o_75, f_84]
      );
      Heap := Heap[null, list2#sm(l2, k):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo(l2, k) -- 0491.vpr@39.3--39.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of foo(l2, k)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(l2, k) (0491.vpr@39.10--39.20) [64430]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(l2, k)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(l2, k) might not hold. (0491.vpr@39.10--39.20) [64431]"}
      foo_1(Heap, l2, k);
    assume state(Heap, Mask);
}