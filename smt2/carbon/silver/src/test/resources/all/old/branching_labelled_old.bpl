// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:37:16
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/old/branching_labelled_old.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/old/branching_labelled_old-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method main
// ==================================================

procedure main(i: int) returns ()
  modifies Heap, Mask;
{
  var initial_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var m_17: Ref;
  var freshObj: Ref;
  var LabelinitialMask: MaskType;
  var LabelinitialHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    initial_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[m_17, $allocated];
  
  // -- Translating statement: m := new(f) -- branching_labelled_old.vpr@8.3--8.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    m_17 := freshObj;
    Mask := Mask[m_17, f_7:=Mask[m_17, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := i -- branching_labelled_old.vpr@9.3--9.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@9.3--9.11) [157279]"}
      FullPerm == Mask[m_17, f_7];
    Heap := Heap[m_17, f_7:=i];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (m.f != 15) -- branching_labelled_old.vpr@11.3--14.4
    
    // -- Check definedness of m.f != 15
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@11.6--11.15) [157280]"}
        HasDirectPerm(Mask, m_17, f_7);
    if (Heap[m_17, f_7] != 15) {
      
      // -- Translating statement: m.f := 15 -- branching_labelled_old.vpr@12.5--12.14
        assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@12.5--12.14) [157281]"}
          FullPerm == Mask[m_17, f_7];
        Heap := Heap[m_17, f_7:=15];
        assume state(Heap, Mask);
      
      // -- Translating statement: label initial -- branching_labelled_old.vpr@13.1--13.14
        initial:
        LabelinitialMask := Mask;
        LabelinitialHeap := Heap;
        initial_lblGuard := true;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 3 -- branching_labelled_old.vpr@16.3--16.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@16.3--16.11) [157282]"}
      FullPerm == Mask[m_17, f_7];
    Heap := Heap[m_17, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m.f == 3 && old[initial](m.f) == 15 -- branching_labelled_old.vpr@20.3--20.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of m.f == 3
      assert {:msg "  Assert might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@20.10--20.45) [157283]"}
        HasDirectPerm(ExhaleWellDef0Mask, m_17, f_7);
    assert {:msg "  Assert might fail. Assertion m.f == 3 might not hold. (branching_labelled_old.vpr@20.10--20.45) [157284]"}
      Heap[m_17, f_7] == 3;
    
    // -- Check definedness of old[initial](m.f) == 15
      assert {:msg "  Assert might fail. Did not reach labelled state initial required to evaluate old[initial](m.f). (branching_labelled_old.vpr@20.10--20.45) [157285]"}
        initial_lblGuard;
      assert {:msg "  Assert might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@20.10--20.45) [157286]"}
        HasDirectPerm(LabelinitialMask, m_17, f_7);
    assert {:msg "  Assert might fail. Assertion old[initial](m.f) == 15 might not hold. (branching_labelled_old.vpr@20.10--20.45) [157287]"}
      LabelinitialHeap[m_17, f_7] == 15;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method main3
// ==================================================

procedure main3() returns ()
  modifies Heap, Mask;
{
  var initial_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var m_17: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var LabelinitialMask: MaskType;
  var LabelinitialHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    initial_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[m_17, $allocated];
  
  // -- Translating statement: m := new(f) -- branching_labelled_old.vpr@25.3--25.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    m_17 := freshObj;
    Mask := Mask[m_17, f_7:=Mask[m_17, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 15 -- branching_labelled_old.vpr@27.3--27.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@27.3--27.12) [157288]"}
      FullPerm == Mask[m_17, f_7];
    Heap := Heap[m_17, f_7:=15];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (m.f != 3) -- branching_labelled_old.vpr@30.3--35.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(m.f, write) might not hold on entry. There might be insufficient permission to access m.f (branching_labelled_old.vpr@31.15--31.23) [157289]"}
            perm <= Mask[m_17, f_7];
        }
        Mask := Mask[m_17, f_7:=Mask[m_17, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume m_17 != null;
        Mask := Mask[m_17, f_7:=Mask[m_17, f_7] + perm];
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
        assume m_17 != null;
        Mask := Mask[m_17, f_7:=Mask[m_17, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of m.f != 3
          assert {:msg "  While statement might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@30.9--30.17) [157290]"}
            HasDirectPerm(Mask, m_17, f_7);
        assume Heap[m_17, f_7] != 3;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: label initial -- branching_labelled_old.vpr@33.1--33.14
            initial:
            LabelinitialMask := Mask;
            LabelinitialHeap := Heap;
            initial_lblGuard := true;
            assume state(Heap, Mask);
          
          // -- Translating statement: m.f := m.f - 1 -- branching_labelled_old.vpr@34.5--34.19
            
            // -- Check definedness of m.f - 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@34.5--34.19) [157291]"}
                HasDirectPerm(Mask, m_17, f_7);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@34.5--34.19) [157292]"}
              FullPerm == Mask[m_17, f_7];
            Heap := Heap[m_17, f_7:=Heap[m_17, f_7] - 1];
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(m.f, write) might not be preserved. There might be insufficient permission to access m.f (branching_labelled_old.vpr@31.15--31.23) [157293]"}
            perm <= Mask[m_17, f_7];
        }
        Mask := Mask[m_17, f_7:=Mask[m_17, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Heap[m_17, f_7] != 3);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume m_17 != null;
      Mask := Mask[m_17, f_7:=Mask[m_17, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m.f == 3 && old[initial](m.f) == 15 -- branching_labelled_old.vpr@38.3--38.45
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of m.f == 3
      assert {:msg "  Assert might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@38.10--38.45) [157294]"}
        HasDirectPerm(ExhaleWellDef0Mask, m_17, f_7);
    assert {:msg "  Assert might fail. Assertion m.f == 3 might not hold. (branching_labelled_old.vpr@38.10--38.45) [157295]"}
      Heap[m_17, f_7] == 3;
    
    // -- Check definedness of old[initial](m.f) == 15
      assert {:msg "  Assert might fail. Did not reach labelled state initial required to evaluate old[initial](m.f). (branching_labelled_old.vpr@38.10--38.45) [157296]"}
        initial_lblGuard;
      assert {:msg "  Assert might fail. There might be insufficient permission to access m.f (branching_labelled_old.vpr@38.10--38.45) [157297]"}
        HasDirectPerm(LabelinitialMask, m_17, f_7);
    assert {:msg "  Assert might fail. Assertion old[initial](m.f) == 15 might not hold. (branching_labelled_old.vpr@38.10--38.45) [157298]"}
      LabelinitialHeap[m_17, f_7] == 15;
    assume state(Heap, Mask);
}