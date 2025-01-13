// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:18:16
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_example2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_example2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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

const unique Counter__x: Field NormalField int;
axiom !IsPredicateField(Counter__x);
axiom !IsWandField(Counter__x);

// ==================================================
// Translation of method Loop__incr
// ==================================================

procedure Loop__incr(diz: Ref, current_thread_id: int, c: Ref, y: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var __flatten_4: int;
  var __flatten_1: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume c != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume c != null;
    Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume y >= 0;
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
    assume c != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume c != null;
    PostMask := PostMask[c, Counter__x:=PostMask[c, Counter__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of c.Counter__x == old(c.Counter__x) + y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c.Counter__x (test_example2.vpr@14.11--14.48) [166949]"}
        HasDirectPerm(PostMask, c, Counter__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c.Counter__x (test_example2.vpr@14.11--14.48) [166950]"}
        HasDirectPerm(oldMask, c, Counter__x);
    assume PostHeap[c, Counter__x] == oldHeap[c, Counter__x] + y;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: i := 0 -- test_example2.vpr@19.3--19.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < y) -- test_example2.vpr@20.3--30.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i <= y might not hold on entry. Assertion 0 <= i might not hold. (test_example2.vpr@21.15--21.35) [166951]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i <= y might not hold on entry. Assertion i <= y might not hold. (test_example2.vpr@21.15--21.35) [166952]"}
          i <= y;
        assert {:msg "  Loop invariant c != null might not hold on entry. Assertion c != null might not hold. (test_example2.vpr@22.15--22.24) [166953]"}
          c != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(c.Counter__x, write) might not hold on entry. There might be insufficient permission to access c.Counter__x (test_example2.vpr@23.15--23.39) [166954]"}
            perm <= Mask[c, Counter__x];
        }
        Mask := Mask[c, Counter__x:=Mask[c, Counter__x] - perm];
        assert {:msg "  Loop invariant c.Counter__x == old(c.Counter__x) + i might not hold on entry. Assertion c.Counter__x == old(c.Counter__x) + i might not hold. (test_example2.vpr@24.15--24.52) [166955]"}
          Heap[c, Counter__x] == oldHeap[c, Counter__x] + i;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i, __flatten_4, __flatten_1;
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume i <= y;
        assume state(Heap, Mask);
        assume c != null;
        assume state(Heap, Mask);
        perm := FullPerm;
        assume c != null;
        Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of c.Counter__x == old(c.Counter__x) + i
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c.Counter__x (test_example2.vpr@24.15--24.52) [166956]"}
            HasDirectPerm(Mask, c, Counter__x);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c.Counter__x (test_example2.vpr@24.15--24.52) [166957]"}
            HasDirectPerm(oldMask, c, Counter__x);
        assume Heap[c, Counter__x] == oldHeap[c, Counter__x] + i;
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
        assume 0 <= i;
        assume i <= y;
        assume c != null;
        perm := FullPerm;
        assume c != null;
        Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
        assume state(Heap, Mask);
        assume Heap[c, Counter__x] == oldHeap[c, Counter__x] + i;
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < y;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: __flatten_1 := c.Counter__x + 1 -- test_example2.vpr@26.5--26.36
            
            // -- Check definedness of c.Counter__x + 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access c.Counter__x (test_example2.vpr@26.5--26.36) [166958]"}
                HasDirectPerm(Mask, c, Counter__x);
            __flatten_1 := Heap[c, Counter__x] + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_4 := __flatten_1 -- test_example2.vpr@27.5--27.31
            __flatten_4 := __flatten_1;
            assume state(Heap, Mask);
          
          // -- Translating statement: c.Counter__x := __flatten_4 -- test_example2.vpr@28.5--28.32
            assert {:msg "  Assignment might fail. There might be insufficient permission to access c.Counter__x (test_example2.vpr@28.5--28.32) [166959]"}
              FullPerm == Mask[c, Counter__x];
            Heap := Heap[c, Counter__x:=__flatten_4];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- test_example2.vpr@29.5--29.15
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i <= y might not be preserved. Assertion 0 <= i might not hold. (test_example2.vpr@21.15--21.35) [166960]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i <= y might not be preserved. Assertion i <= y might not hold. (test_example2.vpr@21.15--21.35) [166961]"}
          i <= y;
        assert {:msg "  Loop invariant c != null might not be preserved. Assertion c != null might not hold. (test_example2.vpr@22.15--22.24) [166962]"}
          c != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(c.Counter__x, write) might not be preserved. There might be insufficient permission to access c.Counter__x (test_example2.vpr@23.15--23.39) [166963]"}
            perm <= Mask[c, Counter__x];
        }
        Mask := Mask[c, Counter__x:=Mask[c, Counter__x] - perm];
        assert {:msg "  Loop invariant c.Counter__x == old(c.Counter__x) + i might not be preserved. Assertion c.Counter__x == old(c.Counter__x) + i might not hold. (test_example2.vpr@24.15--24.52) [166964]"}
          Heap[c, Counter__x] == oldHeap[c, Counter__x] + i;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < y);
      assume state(Heap, Mask);
      assume 0 <= i;
      assume i <= y;
      assume c != null;
      perm := FullPerm;
      assume c != null;
      Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
      assume state(Heap, Mask);
      assume Heap[c, Counter__x] == oldHeap[c, Counter__x] + i;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Loop__incr might not hold. Assertion c != null might not hold. (test_example2.vpr@12.11--12.20) [166965]"}
      c != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Loop__incr might not hold. There might be insufficient permission to access c.Counter__x (test_example2.vpr@13.11--13.35) [166966]"}
        perm <= Mask[c, Counter__x];
    }
    Mask := Mask[c, Counter__x:=Mask[c, Counter__x] - perm];
    assert {:msg "  Postcondition of Loop__incr might not hold. Assertion c.Counter__x == old(c.Counter__x) + y might not hold. (test_example2.vpr@14.11--14.48) [166967]"}
      Heap[c, Counter__x] == oldHeap[c, Counter__x] + y;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Loop__Loop
// ==================================================

procedure Loop__Loop(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- test_example2.vpr@38.3--38.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_example2.vpr@39.3--39.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- test_example2.vpr@40.3--40.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_example2.vpr@40.10--40.29) [166968]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_example2.vpr@41.3--41.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Loop__Loop might not hold. Assertion sys__result != null might not hold. (test_example2.vpr@35.11--35.30) [166969]"}
      sys__result != null;
}

// ==================================================
// Translation of method Counter__incr
// ==================================================

procedure Counter__incr(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_2: int;
  var __flatten_5: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, Counter__x:=PostMask[diz, Counter__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Counter__x == old(diz.Counter__x) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Counter__x (test_example2.vpr@49.11--49.52) [166970]"}
        HasDirectPerm(PostMask, diz, Counter__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Counter__x (test_example2.vpr@49.11--49.52) [166971]"}
        HasDirectPerm(oldMask, diz, Counter__x);
    assume PostHeap[diz, Counter__x] == oldHeap[diz, Counter__x] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_2 := diz.Counter__x + 1 -- test_example2.vpr@53.3--53.36
    
    // -- Check definedness of diz.Counter__x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example2.vpr@53.3--53.36) [166972]"}
        HasDirectPerm(Mask, diz, Counter__x);
    __flatten_2 := Heap[diz, Counter__x] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := __flatten_2 -- test_example2.vpr@54.3--54.29
    __flatten_5 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Counter__x := __flatten_5 -- test_example2.vpr@55.3--55.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example2.vpr@55.3--55.32) [166973]"}
      FullPerm == Mask[diz, Counter__x];
    Heap := Heap[diz, Counter__x:=__flatten_5];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Counter__incr might not hold. There might be insufficient permission to access diz.Counter__x (test_example2.vpr@48.11--48.37) [166974]"}
        perm <= Mask[diz, Counter__x];
    }
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] - perm];
    assert {:msg "  Postcondition of Counter__incr might not hold. Assertion diz.Counter__x == old(diz.Counter__x) + 1 might not hold. (test_example2.vpr@49.11--49.52) [166975]"}
      Heap[diz, Counter__x] == oldHeap[diz, Counter__x] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Counter__Counter
// ==================================================

procedure Counter__Counter(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_3: int;
  var __flatten_6: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Counter__x:=PostMask[sys__result, Counter__x] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Counter__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Counter__x (test_example2.vpr@61.11--61.78) [166976]"}
        HasDirectPerm(PostMask, sys__result, Counter__x);
    assume PostHeap[sys__result, Counter__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Counter__x) -- test_example2.vpr@66.3--66.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := 0 -- test_example2.vpr@67.3--67.19
    __flatten_3 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := __flatten_3 -- test_example2.vpr@68.3--68.29
    __flatten_6 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Counter__x := __flatten_6 -- test_example2.vpr@69.3--69.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example2.vpr@69.3--69.32) [166977]"}
      FullPerm == Mask[diz, Counter__x];
    Heap := Heap[diz, Counter__x:=__flatten_6];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_example2.vpr@70.3--70.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Counter__x, write) && sys__result.Counter__x == 0) -- test_example2.vpr@71.3--71.104
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_example2.vpr@71.10--71.104) [166978]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Counter__x (test_example2.vpr@71.10--71.104) [166980]"}
        perm <= AssertMask[sys__result, Counter__x];
    }
    AssertMask := AssertMask[sys__result, Counter__x:=AssertMask[sys__result, Counter__x] - perm];
    
    // -- Check definedness of sys__result.Counter__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Counter__x (test_example2.vpr@71.10--71.104) [166981]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Counter__x);
    assert {:msg "  Assert might fail. Assertion sys__result.Counter__x == 0 might not hold. (test_example2.vpr@71.10--71.104) [166982]"}
      AssertHeap[sys__result, Counter__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_example2.vpr@72.3--72.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Counter__Counter might not hold. Assertion sys__result != null might not hold. (test_example2.vpr@60.11--60.30) [166983]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Counter__Counter might not hold. There might be insufficient permission to access sys__result.Counter__x (test_example2.vpr@61.11--61.78) [166984]"}
        perm <= Mask[sys__result, Counter__x];
    }
    Mask := Mask[sys__result, Counter__x:=Mask[sys__result, Counter__x] - perm];
    assert {:msg "  Postcondition of Counter__Counter might not hold. Assertion sys__result.Counter__x == 0 might not hold. (test_example2.vpr@61.11--61.78) [166985]"}
      Heap[sys__result, Counter__x] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}