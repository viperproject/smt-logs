// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:09:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryProcesses.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryProcesses-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
const unique History__x_old: Field NormalField int;
axiom !IsPredicateField(History__x_old);
axiom !IsWandField(History__x_old);
const unique History__Integer_value: Field NormalField int;
axiom !IsPredicateField(History__Integer_value);
axiom !IsWandField(History__Integer_value);

// ==================================================
// Translation of method History__empty
// ==================================================

procedure History__empty(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@14.11--14.48) [21792]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@14.11--14.48) [21793]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@16.3--16.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@13.11--13.37) [21794]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__empty might not hold. Assertion diz.History__x == old(diz.History__x) might not hold. (testHistoryProcesses.vpr@14.11--14.48) [21795]"}
      Heap[diz, History__x] == oldHeap[diz, History__x];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__incr
// ==================================================

procedure History__incr(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@23.11--23.52) [21796]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@23.11--23.52) [21797]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@25.3--25.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@22.11--22.37) [21798]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__incr might not hold. Assertion diz.History__x == old(diz.History__x) + 1 might not hold. (testHistoryProcesses.vpr@23.11--23.52) [21799]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__single
// ==================================================

procedure History__single(diz: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@33.11--33.52) [21800]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@33.11--33.52) [21801]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + n;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (n > 0) -- testHistoryProcesses.vpr@36.3--41.4
    if (n > 0) {
      
      // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@37.5--37.23
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@37.5--37.23) [21802]"}
            diz != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@37.5--37.23) [21803]"}
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
      
      // -- Translating statement: History__single(diz, n - 1) -- testHistoryProcesses.vpr@38.5--38.32
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_n := n - 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method History__single might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@38.5--38.32) [21804]"}
            diz != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@38.5--38.32) [21805]"}
              perm <= Mask[diz, History__x];
          }
          Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
          assert {:msg "  The precondition of method History__single might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcesses.vpr@38.5--38.32) [21806]"}
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
    } else {
      
      // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@40.5--40.24
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@40.5--40.24) [21807]"}
            diz != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@40.5--40.24) [21808]"}
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
          assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@32.11--32.37) [21809]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__single might not hold. Assertion diz.History__x == old(diz.History__x) + n might not hold. (testHistoryProcesses.vpr@33.11--33.52) [21810]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + n;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__dual
// ==================================================

procedure History__dual(diz: Ref, n: int, m_18: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var __flatten_5: bool;
  var __flatten_4: bool;
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
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
    assume m_18 >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + n + m
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@49.11--49.56) [21811]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@49.11--49.56) [21812]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + n + m_18;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_5 := History__if_any_random(diz) -- testHistoryProcesses.vpr@54.3--54.45
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@54.3--54.45) [21813]"}
        diz != null;
    
    // -- Havocing target variables
      havoc __flatten_5;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := __flatten_5 -- testHistoryProcesses.vpr@55.3--55.29
    __flatten_4 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: if_any_bool := __flatten_4 -- testHistoryProcesses.vpr@56.3--56.29
    if_any_bool := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (if_any_bool) -- testHistoryProcesses.vpr@57.3--71.4
    if (if_any_bool) {
      
      // -- Translating statement: if (n > 0) -- testHistoryProcesses.vpr@58.5--64.6
        if (n > 0) {
          
          // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@59.7--59.25
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@59.7--59.25) [21814]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@59.7--59.25) [21815]"}
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
          
          // -- Translating statement: History__dual(diz, n - 1, m) -- testHistoryProcesses.vpr@60.7--60.35
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n := n - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@60.7--60.35) [21816]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@60.7--60.35) [21817]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__dual might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcesses.vpr@60.7--60.35) [21818]"}
                arg_n >= 0;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@60.7--60.35) [21819]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@62.7--62.26
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@62.7--62.26) [21820]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@62.7--62.26) [21821]"}
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
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__single(diz, m) -- testHistoryProcesses.vpr@63.7--63.30
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__single might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@63.7--63.30) [21822]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@63.7--63.30) [21823]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__single might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@63.7--63.30) [21824]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (m > 0) -- testHistoryProcesses.vpr@65.5--71.4
        if (m_18 > 0) {
          
          // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@66.5--66.23
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@66.5--66.23) [21825]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@66.5--66.23) [21826]"}
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
          
          // -- Translating statement: History__dual(diz, m - 1, n) -- testHistoryProcesses.vpr@67.5--67.33
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n_1 := m_18 - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@67.5--67.33) [21827]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@67.5--67.33) [21828]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__dual might not hold. Assertion m - 1 >= 0 might not hold. (testHistoryProcesses.vpr@67.5--67.33) [21829]"}
                arg_n_1 >= 0;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@67.5--67.33) [21830]"}
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
          
          // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@69.5--69.24
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@69.5--69.24) [21831]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@69.5--69.24) [21832]"}
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
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__single(diz, n) -- testHistoryProcesses.vpr@70.5--70.28
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__single might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@70.5--70.28) [21833]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@70.5--70.28) [21834]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__single might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@70.5--70.28) [21835]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@48.11--48.37) [21836]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__dual might not hold. Assertion diz.History__x == old(diz.History__x) + n + m might not hold. (testHistoryProcesses.vpr@49.11--49.56) [21837]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + n + m_18;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__triple21
// ==================================================

procedure History__triple21(diz: Ref, n: int, m_18: int, k: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var __flatten_15: bool;
  var __flatten_14: bool;
  var if_any_bool: bool;
  var __flatten_17: bool;
  var __flatten_16: bool;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  var arg_n_1: int;
  var arg_n_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
    assume m_18 >= 0;
    assume k >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + n + m + k
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@79.11--79.60) [21838]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@79.11--79.60) [21839]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + n + m_18 + k;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_15 := History__if_any_random(diz) -- testHistoryProcesses.vpr@86.3--86.46
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@86.3--86.46) [21840]"}
        diz != null;
    
    // -- Havocing target variables
      havoc __flatten_15;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_14 := __flatten_15 -- testHistoryProcesses.vpr@87.3--87.31
    __flatten_14 := __flatten_15;
    assume state(Heap, Mask);
  
  // -- Translating statement: if_any_bool := __flatten_14 -- testHistoryProcesses.vpr@88.3--88.30
    if_any_bool := __flatten_14;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (if_any_bool) -- testHistoryProcesses.vpr@89.3--114.4
    if (if_any_bool) {
      
      // -- Translating statement: __flatten_17 := History__if_any_random(diz) -- testHistoryProcesses.vpr@90.5--90.48
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method History__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@90.5--90.48) [21841]"}
            diz != null;
        
        // -- Havocing target variables
          havoc __flatten_17;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_16 := __flatten_17 -- testHistoryProcesses.vpr@91.5--91.33
        __flatten_16 := __flatten_17;
        assume state(Heap, Mask);
      
      // -- Translating statement: if_any_bool := __flatten_16 -- testHistoryProcesses.vpr@92.5--92.32
        if_any_bool := __flatten_16;
        assume state(Heap, Mask);
      
      // -- Translating statement: if (if_any_bool) -- testHistoryProcesses.vpr@93.5--107.6
        if (if_any_bool) {
          
          // -- Translating statement: if (n > 0) -- testHistoryProcesses.vpr@94.7--100.8
            if (n > 0) {
              
              // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@95.9--95.27
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@95.9--95.27) [21842]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@95.9--95.27) [21843]"}
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
              
              // -- Translating statement: History__triple21(diz, n - 1, m, k) -- testHistoryProcesses.vpr@96.9--96.44
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n := n - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@96.9--96.44) [21844]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__triple21 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@96.9--96.44) [21845]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcesses.vpr@96.9--96.44) [21846]"}
                    arg_n >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@96.9--96.44) [21847]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@96.9--96.44) [21848]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n + m_18 + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@98.9--98.28
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@98.9--98.28) [21849]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@98.9--98.28) [21850]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: History__dual(diz, m, k) -- testHistoryProcesses.vpr@99.9--99.33
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@99.9--99.33) [21851]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@99.9--99.33) [21852]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@99.9--99.33) [21853]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@99.9--99.33) [21854]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + m_18 + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (m > 0) -- testHistoryProcesses.vpr@101.7--107.6
            if (m_18 > 0) {
              
              // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@102.7--102.25
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@102.7--102.25) [21855]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@102.7--102.25) [21856]"}
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
              
              // -- Translating statement: History__triple21(diz, m - 1, n, k) -- testHistoryProcesses.vpr@103.7--103.42
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n_1 := m_18 - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@103.7--103.42) [21857]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__triple21 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@103.7--103.42) [21858]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion m - 1 >= 0 might not hold. (testHistoryProcesses.vpr@103.7--103.42) [21859]"}
                    arg_n_1 >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@103.7--103.42) [21860]"}
                    n >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@103.7--103.42) [21861]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n_1 + n + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@105.7--105.26
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@105.7--105.26) [21862]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@105.7--105.26) [21863]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: History__dual(diz, n, k) -- testHistoryProcesses.vpr@106.7--106.31
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@106.7--106.31) [21864]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@106.7--106.31) [21865]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@106.7--106.31) [21866]"}
                    n >= 0;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@106.7--106.31) [21867]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + n + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (k > 0) -- testHistoryProcesses.vpr@108.5--114.4
        if (k > 0) {
          
          // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@109.5--109.23
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@109.5--109.23) [21868]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@109.5--109.23) [21869]"}
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
          
          // -- Translating statement: History__triple12(diz, k - 1, n, m) -- testHistoryProcesses.vpr@110.5--110.40
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n_2 := k - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@110.5--110.40) [21870]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__triple12 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@110.5--110.40) [21871]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion k - 1 >= 0 might not hold. (testHistoryProcesses.vpr@110.5--110.40) [21872]"}
                arg_n_2 >= 0;
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@110.5--110.40) [21873]"}
                n >= 0;
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@110.5--110.40) [21874]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n_2 + n + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@112.5--112.24
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@112.5--112.24) [21875]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@112.5--112.24) [21876]"}
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
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__dual(diz, n, m) -- testHistoryProcesses.vpr@113.5--113.29
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@113.5--113.29) [21877]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@113.5--113.29) [21878]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@113.5--113.29) [21879]"}
                n >= 0;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@113.5--113.29) [21880]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + n + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__triple21 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@78.11--78.37) [21881]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__triple21 might not hold. Assertion diz.History__x == old(diz.History__x) + n + m + k might not hold. (testHistoryProcesses.vpr@79.11--79.60) [21882]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + n + m_18 + k;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__triple12
// ==================================================

procedure History__triple12(diz: Ref, n: int, m_18: int, k: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var __flatten_31: bool;
  var __flatten_30: bool;
  var if_any_bool: bool;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  var __flatten_37: bool;
  var __flatten_36: bool;
  var arg_n_1: int;
  var arg_n_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
    assume m_18 >= 0;
    assume k >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.History__x == old(diz.History__x) + n + m + k
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@122.11--122.60) [21883]"}
        HasDirectPerm(PostMask, diz, History__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@122.11--122.60) [21884]"}
        HasDirectPerm(oldMask, diz, History__x);
    assume PostHeap[diz, History__x] == oldHeap[diz, History__x] + n + m_18 + k;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_31 := History__if_any_random(diz) -- testHistoryProcesses.vpr@129.3--129.46
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method History__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@129.3--129.46) [21885]"}
        diz != null;
    
    // -- Havocing target variables
      havoc __flatten_31;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_30 := __flatten_31 -- testHistoryProcesses.vpr@130.3--130.31
    __flatten_30 := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: if_any_bool := __flatten_30 -- testHistoryProcesses.vpr@131.3--131.30
    if_any_bool := __flatten_30;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (if_any_bool) -- testHistoryProcesses.vpr@132.3--159.4
    if (if_any_bool) {
      
      // -- Translating statement: if (n > 0) -- testHistoryProcesses.vpr@133.5--139.6
        if (n > 0) {
          
          // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@134.7--134.25
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@134.7--134.25) [21886]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@134.7--134.25) [21887]"}
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
          
          // -- Translating statement: History__triple12(diz, n - 1, m, k) -- testHistoryProcesses.vpr@135.7--135.42
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n := n - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@135.7--135.42) [21888]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__triple12 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@135.7--135.42) [21889]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcesses.vpr@135.7--135.42) [21890]"}
                arg_n >= 0;
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@135.7--135.42) [21891]"}
                m_18 >= 0;
              assert {:msg "  The precondition of method History__triple12 might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@135.7--135.42) [21892]"}
                k >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n + m_18 + k;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@137.7--137.26
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@137.7--137.26) [21893]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@137.7--137.26) [21894]"}
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
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: History__dual(diz, m, k) -- testHistoryProcesses.vpr@138.7--138.31
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Mask := Mask;
              ExhaleWellDef0Heap := Heap;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@138.7--138.31) [21895]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@138.7--138.31) [21896]"}
                  perm <= Mask[diz, History__x];
              }
              Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
              assert {:msg "  The precondition of method History__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@138.7--138.31) [21897]"}
                m_18 >= 0;
              assert {:msg "  The precondition of method History__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@138.7--138.31) [21898]"}
                k >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + m_18 + k;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_37 := History__if_any_random(diz) -- testHistoryProcesses.vpr@141.5--141.48
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method History__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@141.5--141.48) [21899]"}
            diz != null;
        
        // -- Havocing target variables
          havoc __flatten_37;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_36 := __flatten_37 -- testHistoryProcesses.vpr@142.5--142.33
        __flatten_36 := __flatten_37;
        assume state(Heap, Mask);
      
      // -- Translating statement: if_any_bool := __flatten_36 -- testHistoryProcesses.vpr@143.5--143.32
        if_any_bool := __flatten_36;
        assume state(Heap, Mask);
      
      // -- Translating statement: if (if_any_bool) -- testHistoryProcesses.vpr@144.5--158.6
        if (if_any_bool) {
          
          // -- Translating statement: if (m > 0) -- testHistoryProcesses.vpr@145.7--151.8
            if (m_18 > 0) {
              
              // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@146.9--146.27
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@146.9--146.27) [21900]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@146.9--146.27) [21901]"}
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
              
              // -- Translating statement: History__triple21(diz, m - 1, k, n) -- testHistoryProcesses.vpr@147.9--147.44
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n_1 := m_18 - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@147.9--147.44) [21902]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__triple21 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@147.9--147.44) [21903]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion m - 1 >= 0 might not hold. (testHistoryProcesses.vpr@147.9--147.44) [21904]"}
                    arg_n_1 >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@147.9--147.44) [21905]"}
                    k >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@147.9--147.44) [21906]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n_1 + k + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@149.9--149.28
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@149.9--149.28) [21907]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@149.9--149.28) [21908]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: History__dual(diz, k, n) -- testHistoryProcesses.vpr@150.9--150.33
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@150.9--150.33) [21909]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@150.9--150.33) [21910]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcesses.vpr@150.9--150.33) [21911]"}
                    k >= 0;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@150.9--150.33) [21912]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + k + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (k > 0) -- testHistoryProcesses.vpr@152.7--158.6
            if (k > 0) {
              
              // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@153.7--153.25
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@153.7--153.25) [21913]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@153.7--153.25) [21914]"}
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
              
              // -- Translating statement: History__triple21(diz, k - 1, m, n) -- testHistoryProcesses.vpr@154.7--154.42
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n_2 := k - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@154.7--154.42) [21915]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__triple21 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@154.7--154.42) [21916]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion k - 1 >= 0 might not hold. (testHistoryProcesses.vpr@154.7--154.42) [21917]"}
                    arg_n_2 >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@154.7--154.42) [21918]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method History__triple21 might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@154.7--154.42) [21919]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + arg_n_2 + m_18 + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: History__empty(diz) -- testHistoryProcesses.vpr@156.7--156.26
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__empty might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@156.7--156.26) [21920]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__empty might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@156.7--156.26) [21921]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: History__dual(diz, m, n) -- testHistoryProcesses.vpr@157.7--157.31
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@157.7--157.31) [21922]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method History__dual might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@157.7--157.31) [21923]"}
                      perm <= Mask[diz, History__x];
                  }
                  Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcesses.vpr@157.7--157.31) [21924]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method History__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcesses.vpr@157.7--157.31) [21925]"}
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
                  assume Heap[diz, History__x] == PreCallHeap[diz, History__x] + m_18 + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__triple12 might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@121.11--121.37) [21926]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    assert {:msg "  Postcondition of History__triple12 might not hold. Assertion diz.History__x == old(diz.History__x) + n + m + k might not hold. (testHistoryProcesses.vpr@122.11--122.60) [21927]"}
      Heap[diz, History__x] == oldHeap[diz, History__x] + n + m_18 + k;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__destroy_check
// ==================================================

procedure History__destroy_check(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, History__x:=Mask[diz, History__x] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, History__x:=PostMask[diz, History__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(diz.History__x) == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@166.11--166.63) [21928]"}
        HasDirectPerm(oldMask, diz, History__x);
    if (oldHeap[diz, History__x] == 0) {
      
      // -- Check definedness of diz.History__x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@166.11--166.63) [21929]"}
          HasDirectPerm(PostMask, diz, History__x);
      assume PostHeap[diz, History__x] == 1;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (1 > 0) -- testHistoryProcesses.vpr@169.3--174.4
    
    // -- Translating statement: History__incr(diz) -- testHistoryProcesses.vpr@170.5--170.23
      PreCallHeap := Heap;
      PreCallMask := Mask;
      
      // -- Exhaling precondition
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  The precondition of method History__incr might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@170.5--170.23) [21930]"}
          diz != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method History__incr might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@170.5--170.23) [21931]"}
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
    
    // -- Translating statement: History__single(diz, 1 - 1) -- testHistoryProcesses.vpr@171.5--171.32
      PreCallHeap := Heap;
      PreCallMask := Mask;
      arg_n := 0;
      
      // -- Exhaling precondition
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  The precondition of method History__single might not hold. Assertion diz != null might not hold. (testHistoryProcesses.vpr@171.5--171.32) [21932]"}
          diz != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method History__single might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@171.5--171.32) [21933]"}
            perm <= Mask[diz, History__x];
        }
        Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
        assert {:msg "  The precondition of method History__single might not hold. Assertion 1 - 1 >= 0 might not hold. (testHistoryProcesses.vpr@171.5--171.32) [21934]"}
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
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__destroy_check might not hold. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@165.11--165.37) [21937]"}
        perm <= Mask[diz, History__x];
    }
    Mask := Mask[diz, History__x:=Mask[diz, History__x] - perm];
    if (oldHeap[diz, History__x] == 0) {
      assert {:msg "  Postcondition of History__destroy_check might not hold. Assertion diz.History__x == 1 might not hold. (testHistoryProcesses.vpr@166.11--166.63) [21938]"}
        Heap[diz, History__x] == 1;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__History
// ==================================================

procedure History__History() returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var __flatten_92: Ref;
  var freshObj: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, History__x:=PostMask[sys__result, History__x] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.History__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.History__x (testHistoryProcesses.vpr@179.11--179.78) [21939]"}
        HasDirectPerm(PostMask, sys__result, History__x);
    assume PostHeap[sys__result, History__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_92, $allocated];
  
  // -- Translating statement: __flatten_92 := new(History__x, History__x_old, History__Integer_value) -- testHistoryProcesses.vpr@183.3--183.74
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    __flatten_92 := freshObj;
    Mask := Mask[__flatten_92, History__x:=Mask[__flatten_92, History__x] + FullPerm];
    Mask := Mask[__flatten_92, History__x_old:=Mask[__flatten_92, History__x_old] + FullPerm];
    Mask := Mask[__flatten_92, History__Integer_value:=Mask[__flatten_92, History__Integer_value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz := __flatten_92 -- testHistoryProcesses.vpr@184.3--184.22
    diz := __flatten_92;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.History__x := 0 -- testHistoryProcesses.vpr@185.3--185.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.History__x (testHistoryProcesses.vpr@185.3--185.22) [21940]"}
      FullPerm == Mask[diz, History__x];
    Heap := Heap[diz, History__x:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryProcesses.vpr@186.3--186.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.History__x, write) && sys__result.History__x == 0) -- testHistoryProcesses.vpr@187.3--187.104
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryProcesses.vpr@187.10--187.104) [21941]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x (testHistoryProcesses.vpr@187.10--187.104) [21943]"}
        perm <= AssertMask[sys__result, History__x];
    }
    AssertMask := AssertMask[sys__result, History__x:=AssertMask[sys__result, History__x] - perm];
    
    // -- Check definedness of sys__result.History__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.History__x (testHistoryProcesses.vpr@187.10--187.104) [21944]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, History__x);
    assert {:msg "  Assert might fail. Assertion sys__result.History__x == 0 might not hold. (testHistoryProcesses.vpr@187.10--187.104) [21945]"}
      AssertHeap[sys__result, History__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@188.3--188.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result != null might not hold. (testHistoryProcesses.vpr@178.11--178.30) [21946]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of History__History might not hold. There might be insufficient permission to access sys__result.History__x (testHistoryProcesses.vpr@179.11--179.78) [21947]"}
        perm <= Mask[sys__result, History__x];
    }
    Mask := Mask[sys__result, History__x:=Mask[sys__result, History__x] - perm];
    assert {:msg "  Postcondition of History__History might not hold. Assertion sys__result.History__x == 0 might not hold. (testHistoryProcesses.vpr@179.11--179.78) [21948]"}
      Heap[sys__result, History__x] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method History__empty_begin
// ==================================================

procedure History__empty_begin(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@194.3--194.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method History__empty_commit
// ==================================================

procedure History__empty_commit(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@200.3--200.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method History__incr_begin
// ==================================================

procedure History__incr_begin(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@206.3--206.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method History__incr_commit
// ==================================================

procedure History__incr_commit(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@212.3--212.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method History__if_any_random
// ==================================================

procedure History__if_any_random(diz: Ref) returns (sys__result: bool)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- testHistoryProcesses.vpr@218.3--218.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}