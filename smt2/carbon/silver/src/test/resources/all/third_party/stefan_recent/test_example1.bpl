// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:38
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_example1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_example1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of method Main__main
// ==================================================

procedure Main__main(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var c: Ref;
  var __flatten_1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var __flatten_2: int;
  var __flatten_8: int;
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[c, $allocated];
    assume Heap[__flatten_1, $allocated];
  
  // -- Translating statement: __flatten_1 := Counter__Counter(current_thread_id) -- test_example1.vpr@14.3--14.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Counter__Counter might not hold. Assertion current_thread_id >= 0 might not hold. (test_example1.vpr@14.3--14.53) [25722]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_1;
    
    // -- Inhaling postcondition
      assume __flatten_1 != null;
      perm := FullPerm;
      assume __flatten_1 != null;
      Mask := Mask[__flatten_1, Counter__x:=Mask[__flatten_1, Counter__x] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_1, Counter__x] == 0;
      assume state(Heap, Mask);
    assume Heap[__flatten_1, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: c := __flatten_1 -- test_example1.vpr@15.3--15.19
    c := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := 16 -- test_example1.vpr@16.3--16.20
    __flatten_2 := 16;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := __flatten_2 -- test_example1.vpr@17.3--17.29
    __flatten_8 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: c.Counter__x := __flatten_8 -- test_example1.vpr@18.3--18.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access c.Counter__x (test_example1.vpr@18.3--18.30) [25723]"}
      FullPerm == Mask[c, Counter__x];
    Heap := Heap[c, Counter__x:=__flatten_8];
    assume state(Heap, Mask);
  
  // -- Translating statement: Counter__incr(c, current_thread_id) -- test_example1.vpr@19.3--19.38
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Counter__incr might not hold. Assertion c != null might not hold. (test_example1.vpr@19.3--19.38) [25724]"}
        c != null;
      assert {:msg "  The precondition of method Counter__incr might not hold. Assertion current_thread_id >= 0 might not hold. (test_example1.vpr@19.3--19.38) [25725]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Counter__incr might not hold. There might be insufficient permission to access c.Counter__x (test_example1.vpr@19.3--19.38) [25726]"}
          perm <= Mask[c, Counter__x];
      }
      Mask := Mask[c, Counter__x:=Mask[c, Counter__x] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume c != null;
      Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
      assume state(Heap, Mask);
      assume Heap[c, Counter__x] == PreCallHeap[c, Counter__x] + 1;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c.Counter__x == 17 -- test_example1.vpr@20.3--20.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of c.Counter__x == 17
      assert {:msg "  Assert might fail. There might be insufficient permission to access c.Counter__x (test_example1.vpr@20.10--20.28) [25727]"}
        HasDirectPerm(ExhaleWellDef0Mask, c, Counter__x);
    assert {:msg "  Assert might fail. Assertion c.Counter__x == 17 might not hold. (test_example1.vpr@20.10--20.28) [25728]"}
      Heap[c, Counter__x] == 17;
    assume state(Heap, Mask);
  
  // -- Translating statement: Counter__incr(c, current_thread_id) -- test_example1.vpr@21.3--21.38
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Counter__incr might not hold. Assertion c != null might not hold. (test_example1.vpr@21.3--21.38) [25729]"}
        c != null;
      assert {:msg "  The precondition of method Counter__incr might not hold. Assertion current_thread_id >= 0 might not hold. (test_example1.vpr@21.3--21.38) [25730]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Counter__incr might not hold. There might be insufficient permission to access c.Counter__x (test_example1.vpr@21.3--21.38) [25731]"}
          perm <= Mask[c, Counter__x];
      }
      Mask := Mask[c, Counter__x:=Mask[c, Counter__x] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume c != null;
      Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
      assume state(Heap, Mask);
      assume Heap[c, Counter__x] == PreCallHeap[c, Counter__x] + 1;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c.Counter__x == 17 -- test_example1.vpr@24.3--24.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of c.Counter__x == 17
      assert {:msg "  Assert might fail. There might be insufficient permission to access c.Counter__x (test_example1.vpr@24.10--24.28) [25732]"}
        HasDirectPerm(ExhaleWellDef0Mask, c, Counter__x);
    assert {:msg "  Assert might fail. Assertion c.Counter__x == 17 might not hold. (test_example1.vpr@24.10--24.28) [25733]"}
      Heap[c, Counter__x] == 17;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Main__Main
// ==================================================

procedure Main__Main(current_thread_id: int) returns (sys__result: Ref)
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
  
  // -- Translating statement: diz := new() -- test_example1.vpr@32.3--32.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_example1.vpr@33.3--33.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- test_example1.vpr@34.3--34.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_example1.vpr@34.10--34.29) [25734]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_example1.vpr@35.3--35.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion sys__result != null might not hold. (test_example1.vpr@29.11--29.30) [25735]"}
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
  var __flatten_5: int;
  var __flatten_11: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Counter__x (test_example1.vpr@43.11--43.52) [25736]"}
        HasDirectPerm(PostMask, diz, Counter__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Counter__x (test_example1.vpr@43.11--43.52) [25737]"}
        HasDirectPerm(oldMask, diz, Counter__x);
    assume PostHeap[diz, Counter__x] == oldHeap[diz, Counter__x] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_5 := diz.Counter__x + 1 -- test_example1.vpr@47.3--47.36
    
    // -- Check definedness of diz.Counter__x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example1.vpr@47.3--47.36) [25738]"}
        HasDirectPerm(Mask, diz, Counter__x);
    __flatten_5 := Heap[diz, Counter__x] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := __flatten_5 -- test_example1.vpr@48.3--48.30
    __flatten_11 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Counter__x := __flatten_11 -- test_example1.vpr@49.3--49.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example1.vpr@49.3--49.33) [25739]"}
      FullPerm == Mask[diz, Counter__x];
    Heap := Heap[diz, Counter__x:=__flatten_11];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Counter__incr might not hold. There might be insufficient permission to access diz.Counter__x (test_example1.vpr@42.11--42.37) [25740]"}
        perm <= Mask[diz, Counter__x];
    }
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] - perm];
    assert {:msg "  Postcondition of Counter__incr might not hold. Assertion diz.Counter__x == old(diz.Counter__x) + 1 might not hold. (test_example1.vpr@43.11--43.52) [25741]"}
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
  var __flatten_6: int;
  var __flatten_12: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Counter__x (test_example1.vpr@55.11--55.78) [25742]"}
        HasDirectPerm(PostMask, sys__result, Counter__x);
    assume PostHeap[sys__result, Counter__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Counter__x) -- test_example1.vpr@60.3--60.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := 0 -- test_example1.vpr@61.3--61.19
    __flatten_6 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_12 := __flatten_6 -- test_example1.vpr@62.3--62.30
    __flatten_12 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Counter__x := __flatten_12 -- test_example1.vpr@63.3--63.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example1.vpr@63.3--63.33) [25743]"}
      FullPerm == Mask[diz, Counter__x];
    Heap := Heap[diz, Counter__x:=__flatten_12];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_example1.vpr@64.3--64.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Counter__x, write) && sys__result.Counter__x == 0) -- test_example1.vpr@65.3--65.104
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_example1.vpr@65.10--65.104) [25744]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Counter__x (test_example1.vpr@65.10--65.104) [25746]"}
        perm <= AssertMask[sys__result, Counter__x];
    }
    AssertMask := AssertMask[sys__result, Counter__x:=AssertMask[sys__result, Counter__x] - perm];
    
    // -- Check definedness of sys__result.Counter__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Counter__x (test_example1.vpr@65.10--65.104) [25747]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Counter__x);
    assert {:msg "  Assert might fail. Assertion sys__result.Counter__x == 0 might not hold. (test_example1.vpr@65.10--65.104) [25748]"}
      AssertHeap[sys__result, Counter__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_example1.vpr@66.3--66.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Counter__Counter might not hold. Assertion sys__result != null might not hold. (test_example1.vpr@54.11--54.30) [25749]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Counter__Counter might not hold. There might be insufficient permission to access sys__result.Counter__x (test_example1.vpr@55.11--55.78) [25750]"}
        perm <= Mask[sys__result, Counter__x];
    }
    Mask := Mask[sys__result, Counter__x:=Mask[sys__result, Counter__x] - perm];
    assert {:msg "  Postcondition of Counter__Counter might not hold. Assertion sys__result.Counter__x == 0 might not hold. (test_example1.vpr@55.11--55.78) [25751]"}
      Heap[sys__result, Counter__x] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}