// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:31:42
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

const unique elem_1: Field NormalField int;
axiom !IsPredicateField(elem_1);
axiom !IsWandField(elem_1);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_2(Heap: HeapType, l_2: Ref, i: int): bool;
function  foo'(Heap: HeapType, l_2: Ref, i: int): bool;
axiom (forall Heap: HeapType, l_2: Ref, i: int ::
  { foo_2(Heap, l_2, i) }
  foo_2(Heap, l_2, i) == foo'(Heap, l_2, i) && dummyFunction(foo#triggerStateless(l_2, i))
);
axiom (forall Heap: HeapType, l_2: Ref, i: int ::
  { foo'(Heap, l_2, i) }
  dummyFunction(foo#triggerStateless(l_2, i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_2: Ref, i: int ::
  { state(Heap, Mask), foo_2(Heap, l_2, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_2(Heap, l_2, i) == (forall j_9: int ::
    { Heap[null, list2(l_2, j_9)] } { foo#frame(Heap[null, list2(Heap[l_2, next], j_9)], Heap[l_2, next], j_9) }
    i == j_9 ==> Heap[l_2, next] == null || foo'(Heap, Heap[l_2, next], j_9)
  )
);

// Framing axioms
function  foo#frame(frame: FrameType, l_2: Ref, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, l_2: Ref, i: int ::
  { state(Heap, Mask), foo'(Heap, l_2, i) }
  state(Heap, Mask) ==> foo'(Heap, l_2, i) == foo#frame(Heap[null, list2(l_2, i)], l_2, i)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger(frame: FrameType, l_2: Ref, i: int): bool;

// State-independent trigger function
function  foo#triggerStateless(l_2: Ref, i: int): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(l_2: Ref, i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  var j_6: int;
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
    assume Heap[l_2, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, list2(l_2, i):=Mask[null, list2(l_2, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (forall j: Int :: { list2(l, j) } { foo(l.next, j) } i == j ==> (unfolding acc(list2(l, j), write) in (l.next == null ? true : foo(l.next, j))))
      if (*) {
        if (i == j_6) {
          UnfoldingHeap := Heap;
          UnfoldingMask := Mask;
          assume list2#trigger(UnfoldingHeap, list2(l_2, j_6));
          assume UnfoldingHeap[null, list2(l_2, j_6)] == CombineFrames(FrameFragment(UnfoldingHeap[l_2, elem_1]), CombineFrames(FrameFragment(UnfoldingHeap[l_2, next]), FrameFragment((if UnfoldingHeap[l_2, next] != null then UnfoldingHeap[null, list2(UnfoldingHeap[l_2, next], j_6)] else EmptyFrame))));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access list2(l, j) (0491.vpr@9.1--14.2) [209460]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(l_2, j_6)];
          perm := FullPerm;
          assume l_2 != null;
          UnfoldingMask := UnfoldingMask[l_2, elem_1:=UnfoldingMask[l_2, elem_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume l_2 != null;
          UnfoldingMask := UnfoldingMask[l_2, next:=UnfoldingMask[l_2, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          if (UnfoldingHeap[l_2, next] != null) {
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, list2(UnfoldingHeap[l_2, next], j_6):=UnfoldingMask[null, list2(UnfoldingHeap[l_2, next], j_6)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(list2(l_2, j_6), UnfoldingHeap[null, list2(l_2, j_6)], list2(UnfoldingHeap[l_2, next], j_6), UnfoldingHeap[null, list2(UnfoldingHeap[l_2, next], j_6)]);
            assume state(UnfoldingHeap, UnfoldingMask);
          }
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0491.vpr@9.1--14.2) [209461]"}
            HasDirectPerm(UnfoldingMask, l_2, next);
          if (UnfoldingHeap[l_2, next] == null) {
          } else {
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.next (0491.vpr@9.1--14.2) [209462]"}
              HasDirectPerm(UnfoldingMask, l_2, next);
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := UnfoldingMask;
              ExhaleWellDef0Heap := UnfoldingHeap;
              perm := FullPerm;
              assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(l.next, j) (0491.vpr@13.68--13.82) [209463]"}
                NoPerm < perm ==> NoPerm < UnfoldingMask[null, list2(UnfoldingHeap[l_2, next], j_6)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
              UnfoldingHeap := ExhaleHeap;
              // Stop execution
              assume false;
            } else {
              // Enable postcondition for recursive call
              assume foo#trigger(UnfoldingHeap[null, list2(UnfoldingHeap[l_2, next], j_6)], UnfoldingHeap[l_2, next], j_6);
            }
          }
          
          // -- Free assumptions (exp module)
            Heap := Heap[null, list2#sm(l_2, j_6):=Heap[null, list2#sm(l_2, j_6)][l_2, elem_1:=true]];
            Heap := Heap[null, list2#sm(l_2, j_6):=Heap[null, list2#sm(l_2, j_6)][l_2, next:=true]];
            if (Heap[l_2, next] != null) {
              havoc newPMask;
              assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                { newPMask[o_15, f_20] }
                Heap[null, list2#sm(l_2, j_6)][o_15, f_20] || Heap[null, list2#sm(Heap[l_2, next], j_6)][o_15, f_20] ==> newPMask[o_15, f_20]
              );
              Heap := Heap[null, list2#sm(l_2, j_6):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume false;
      }
  
  // -- Translate function body
    Result := (forall j_2_1: int ::
      { Heap[null, list2(l_2, j_2_1)] } { foo#frame(Heap[null, list2(Heap[l_2, next], j_2_1)], Heap[l_2, next], j_2_1) }
      i == j_2_1 ==> Heap[l_2, next] == null || foo_2(Heap, Heap[l_2, next], j_2_1)
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
axiom (forall this: Ref, i: int, this2: Ref, i2_1: int ::
  { list2(this, i), list2(this2, i2_1) }
  list2(this, i) == list2(this2, i2_1) ==> this == this2 && i == i2_1
);
axiom (forall this: Ref, i: int, this2: Ref, i2_1: int ::
  { list2#sm(this, i), list2#sm(this2, i2_1) }
  list2#sm(this, i) == list2#sm(this2, i2_1) ==> this == this2 && i == i2_1
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
    Mask := Mask[this, elem_1:=Mask[this, elem_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, next:=Mask[this, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of this.next != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0491.vpr@4.1--7.2) [209464]"}
        HasDirectPerm(Mask, this, next);
    if (Heap[this, next] != null) {
      
      // -- Check definedness of acc(list2(this.next, i), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (0491.vpr@4.1--7.2) [209465]"}
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
  var l1_3: Ref;
  var l2_2: Ref;
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
    assume Heap[l1_3, $allocated];
    assume Heap[l2_2, $allocated];
  
  // -- Translating statement: l1 := new(elem, next) -- 0491.vpr@19.3--19.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    l1_3 := freshObj;
    Mask := Mask[l1_3, elem_1:=Mask[l1_3, elem_1] + FullPerm];
    Mask := Mask[l1_3, next:=Mask[l1_3, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: l1.next := null -- 0491.vpr@20.3--20.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access l1.next (0491.vpr@20.3--20.18) [209466]"}
      FullPerm == Mask[l1_3, next];
    Heap := Heap[l1_3, next:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(l1, k), write) -- 0491.vpr@22.3--22.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l1, k) might fail. There might be insufficient permission to access l1.elem (0491.vpr@22.3--22.20) [209469]"}
        perm <= Mask[l1_3, elem_1];
    }
    Mask := Mask[l1_3, elem_1:=Mask[l1_3, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l1, k) might fail. There might be insufficient permission to access l1.next (0491.vpr@22.3--22.20) [209471]"}
        perm <= Mask[l1_3, next];
    }
    Mask := Mask[l1_3, next:=Mask[l1_3, next] - perm];
    if (Heap[l1_3, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(l1, k) might fail. There might be insufficient permission to access list2(l1.next, k) (0491.vpr@22.3--22.20) [209473]"}
          perm <= Mask[null, list2(Heap[l1_3, next], k)];
      }
      Mask := Mask[null, list2(Heap[l1_3, next], k):=Mask[null, list2(Heap[l1_3, next], k)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(l1_3, k), Heap[null, list2(l1_3, k)], list2(Heap[l1_3, next], k), Heap[null, list2(Heap[l1_3, next], k)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(l1_3, k):=Mask[null, list2(l1_3, k)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(l1_3, k));
    assume Heap[null, list2(l1_3, k)] == CombineFrames(FrameFragment(Heap[l1_3, elem_1]), CombineFrames(FrameFragment(Heap[l1_3, next]), FrameFragment((if Heap[l1_3, next] != null then Heap[null, list2(Heap[l1_3, next], k)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(l1_3, k))) {
      Heap := Heap[null, list2#sm(l1_3, k):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(l1_3, k):=freshVersion];
    }
    Heap := Heap[null, list2#sm(l1_3, k):=Heap[null, list2#sm(l1_3, k)][l1_3, elem_1:=true]];
    Heap := Heap[null, list2#sm(l1_3, k):=Heap[null, list2#sm(l1_3, k)][l1_3, next:=true]];
    if (Heap[l1_3, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_32: Ref, f_38: (Field A B) ::
        { newPMask[o_32, f_38] }
        Heap[null, list2#sm(l1_3, k)][o_32, f_38] || Heap[null, list2#sm(Heap[l1_3, next], k)][o_32, f_38] ==> newPMask[o_32, f_38]
      );
      Heap := Heap[null, list2#sm(l1_3, k):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: l2 := new(elem, next) -- 0491.vpr@32.3--32.24
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    l2_2 := freshObj;
    Mask := Mask[l2_2, elem_1:=Mask[l2_2, elem_1] + FullPerm];
    Mask := Mask[l2_2, next:=Mask[l2_2, next] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: l2.next := l1 -- 0491.vpr@33.3--33.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access l2.next (0491.vpr@33.3--33.16) [209475]"}
      FullPerm == Mask[l2_2, next];
    Heap := Heap[l2_2, next:=l1_3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(list2(l2, k), write) -- 0491.vpr@35.3--35.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l2, k) might fail. There might be insufficient permission to access l2.elem (0491.vpr@35.3--35.20) [209478]"}
        perm <= Mask[l2_2, elem_1];
    }
    Mask := Mask[l2_2, elem_1:=Mask[l2_2, elem_1] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding list2(l2, k) might fail. There might be insufficient permission to access l2.next (0491.vpr@35.3--35.20) [209480]"}
        perm <= Mask[l2_2, next];
    }
    Mask := Mask[l2_2, next:=Mask[l2_2, next] - perm];
    if (Heap[l2_2, next] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding list2(l2, k) might fail. There might be insufficient permission to access list2(l2.next, k) (0491.vpr@35.3--35.20) [209482]"}
          perm <= Mask[null, list2(Heap[l2_2, next], k)];
      }
      Mask := Mask[null, list2(Heap[l2_2, next], k):=Mask[null, list2(Heap[l2_2, next], k)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(list2(l2_2, k), Heap[null, list2(l2_2, k)], list2(Heap[l2_2, next], k), Heap[null, list2(Heap[l2_2, next], k)]);
    }
    perm := FullPerm;
    Mask := Mask[null, list2(l2_2, k):=Mask[null, list2(l2_2, k)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume list2#trigger(Heap, list2(l2_2, k));
    assume Heap[null, list2(l2_2, k)] == CombineFrames(FrameFragment(Heap[l2_2, elem_1]), CombineFrames(FrameFragment(Heap[l2_2, next]), FrameFragment((if Heap[l2_2, next] != null then Heap[null, list2(Heap[l2_2, next], k)] else EmptyFrame))));
    if (!HasDirectPerm(Mask, null, list2(l2_2, k))) {
      Heap := Heap[null, list2#sm(l2_2, k):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, list2(l2_2, k):=freshVersion];
    }
    Heap := Heap[null, list2#sm(l2_2, k):=Heap[null, list2#sm(l2_2, k)][l2_2, elem_1:=true]];
    Heap := Heap[null, list2#sm(l2_2, k):=Heap[null, list2#sm(l2_2, k)][l2_2, next:=true]];
    if (Heap[l2_2, next] != null) {
      havoc newPMask;
      assume (forall <A, B> o_33: Ref, f_39: (Field A B) ::
        { newPMask[o_33, f_39] }
        Heap[null, list2#sm(l2_2, k)][o_33, f_39] || Heap[null, list2#sm(Heap[l2_2, next], k)][o_33, f_39] ==> newPMask[o_33, f_39]
      );
      Heap := Heap[null, list2#sm(l2_2, k):=newPMask];
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
        assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access list2(l2, k) (0491.vpr@39.10--39.20) [209484]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, list2(l2_2, k)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo(l2, k) might not hold. (0491.vpr@39.10--39.20) [209485]"}
      foo_2(Heap, l2_2, k);
    assume state(Heap, Mask);
}