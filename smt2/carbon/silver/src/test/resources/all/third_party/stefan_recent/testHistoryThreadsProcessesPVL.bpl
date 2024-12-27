// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:41:10
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryThreadsProcessesPVL.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testHistoryThreadsProcessesPVL-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique History__x: Field NormalField int;
axiom !IsPredicateField(History__x);
axiom !IsWandField(History__x);

// ==================================================
// Translation of method History__incr
// ==================================================

procedure History__incr(diz: Ref, current_thread_id: int) returns ()
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
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
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
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@11.11--11.52) [161135]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@11.11--11.52) [161136]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryThreadsProcessesPVL.vpr@13.3--13.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@10.11--10.37) [161137]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__incr might not hold. Assertion diz.History__x == old(diz.History__x) + 1 might not hold. (testHistoryThreadsProcessesPVL.vpr@11.11--11.52) [161138]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__single
// ==================================================

procedure History__single(diz: Ref, current_thread_id: int, n: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  
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
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
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
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@22.11--22.52) [161139]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@22.11--22.52) [161140]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + n;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (n > 0) -- testHistoryThreadsProcessesPVL.vpr@25.3--28.4
    if (n > 0) {
      
      // -- Translating statement: History__incr(diz, current_thread_id) -- testHistoryThreadsProcessesPVL.vpr@26.5--26.42
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@26.5--26.42) [161141]"}
            diz != null;
          assert {:msg "  The precondition of method History__incr might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@26.5--26.42) [161142]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@26.5--26.42) [161143]"}
              perm <= Mask[diz, History__x];
          }
          Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          assume diz != null;
          Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
          assume state(Heap, Mask);
          assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + 1;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: History__single(diz, current_thread_id, n - 1) -- testHistoryThreadsProcessesPVL.vpr@27.5--27.51
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_n := n - 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method History__single might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@27.5--27.51) [161144]"}
            diz != null;
          assert {:msg "  The precondition of method History__single might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@27.5--27.51) [161145]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@27.5--27.51) [161146]"}
              perm <= Mask[diz, History__x];
          }
          Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
          assert {:msg "  The precondition of method History__single might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@27.5--27.51) [161147]"}
            arg_n >= 0;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          assume diz != null;
          Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
          assume state(Heap, Mask);
          assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@21.11--21.37) [161148]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__single might not hold. Assertion diz.History__x == old(diz.History__x) + n might not hold. (testHistoryThreadsProcessesPVL.vpr@22.11--22.52) [161149]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + n;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__dual
// ==================================================

procedure History__dual(diz: Ref, current_thread_id: int, n: int, m_17: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var __flatten_3: bool;
  var if_any_bool: bool;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  var arg_n_1: int;
  
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
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
    assume m_17 >= 0;
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
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + n + m
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@37.11--37.56) [161150]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@37.11--37.56) [161151]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + n + m_17;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_3 := History__if_any_random(diz, current_thread_id) -- testHistoryThreadsProcessesPVL.vpr@41.3--41.64
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method History__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@41.3--41.64) [161152]"}
        diz != null;
      assert {:msg "  The precondition of method History__if_any_random might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@41.3--41.64) [161153]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_3;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if_any_bool := __flatten_3 -- testHistoryThreadsProcessesPVL.vpr@42.3--42.29
    if_any_bool := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (if_any_bool) -- testHistoryThreadsProcessesPVL.vpr@43.3--55.4
    if (if_any_bool) {
      
      // -- Translating statement: if (n > 0) -- testHistoryThreadsProcessesPVL.vpr@44.5--49.6
        if (n > 0) {
          
          // -- Translating statement: History__incr(diz, current_thread_id) -- testHistoryThreadsProcessesPVL.vpr@45.7--45.44
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@45.7--45.44) [161154]"}
                diz != null;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@45.7--45.44) [161155]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@45.7--45.44) [161156]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + 1;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__dual(diz, current_thread_id, n - 1, m) -- testHistoryThreadsProcessesPVL.vpr@46.7--46.54
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n := n - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@46.7--46.54) [161157]"}
                diz != null;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@46.7--46.54) [161158]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@46.7--46.54) [161159]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__dual might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@46.7--46.54) [161160]"}
                arg_n >= 0;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion m >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@46.7--46.54) [161161]"}
                m_17 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n + m_17;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: History__single(diz, current_thread_id, m) -- testHistoryThreadsProcessesPVL.vpr@48.7--48.49
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method History__single might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@48.7--48.49) [161162]"}
                diz != null;
              assert {:msg "  The precondition of method History__single might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@48.7--48.49) [161163]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@48.7--48.49) [161164]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__single might not hold. Assertion m >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@48.7--48.49) [161165]"}
                m_17 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + m_17;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (m > 0) -- testHistoryThreadsProcessesPVL.vpr@50.5--55.4
        if (m_17 > 0) {
          
          // -- Translating statement: History__incr(diz, current_thread_id) -- testHistoryThreadsProcessesPVL.vpr@51.5--51.42
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@51.5--51.42) [161166]"}
                diz != null;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@51.5--51.42) [161167]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@51.5--51.42) [161168]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + 1;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__dual(diz, current_thread_id, m - 1, n) -- testHistoryThreadsProcessesPVL.vpr@52.5--52.52
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n_1 := m_17 - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@52.5--52.52) [161169]"}
                diz != null;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@52.5--52.52) [161170]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@52.5--52.52) [161171]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__dual might not hold. Assertion m - 1 >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@52.5--52.52) [161172]"}
                arg_n_1 >= 0;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion n >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@52.5--52.52) [161173]"}
                n >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n_1 + n;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: History__single(diz, current_thread_id, n) -- testHistoryThreadsProcessesPVL.vpr@54.5--54.47
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method History__single might not hold. Assertion diz != null might not hold. (testHistoryThreadsProcessesPVL.vpr@54.5--54.47) [161174]"}
                diz != null;
              assert {:msg "  The precondition of method History__single might not hold. Assertion current_thread_id >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@54.5--54.47) [161175]"}
                current_thread_id >= 0;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@54.5--54.47) [161176]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__single might not hold. Assertion n >= 0 might not hold. (testHistoryThreadsProcessesPVL.vpr@54.5--54.47) [161177]"}
                n >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + n;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryThreadsProcessesPVL.vpr@36.11--36.37) [161178]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__dual might not hold. Assertion diz.History__x == old(diz.History__x) + n + m might not hold. (testHistoryThreadsProcessesPVL.vpr@37.11--37.56) [161179]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + n + m_17;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__if_any_random
// ==================================================

procedure History__if_any_random(diz: Ref, current_thread_id: int) returns (sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
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
  
  // -- Translating statement: inhale false -- testHistoryThreadsProcessesPVL.vpr@62.3--62.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}