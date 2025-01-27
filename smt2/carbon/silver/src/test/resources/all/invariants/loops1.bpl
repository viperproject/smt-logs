// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:23
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/invariants/loops1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/invariants/loops1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IdenticalOnKnownLocationsLiberal(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
function  SumHeap(Heap: HeapType, Heap1: HeapType, mask1: MaskType, Heap2: HeapType, mask2: MaskType): bool;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
);
// IdenticalOnKnownLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
);
// IdenticalOnKnownLiberalLocations Heaps are Successor Heaps
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> succHeap(Heap, ExhaleHeap)
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
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_53: (Field A B) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_53] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_53) ==> Heap[o_41, f_53] == ExhaleHeap[o_41, f_53]
);
// Frame all predicate mask locations of predicates with direct permission. But don't propagate information  of locations that are not known-folded to allow for equating with multiple different (but compatible) heaps
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20), ExhaleHeap[null, PredicateMaskField(pm_f_20)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[null, PredicateMaskField(pm_f_20)][o2_20, f_53] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_53] ==> ExhaleHeap[null, PredicateMaskField(pm_f_20)][o2_20, f_53]
  )
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_20) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsPredicateField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, PredicateMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// Frame all wand mask locations of wands with direct permission (but don't propagate information about locations that are not known-folded)
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20), ExhaleHeap[null, WandMaskField(pm_f_20)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[null, WandMaskField(pm_f_20)][o2_20, f_53] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_53] ==> ExhaleHeap[null, WandMaskField(pm_f_20)][o2_20, f_53]
  )
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_20: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_20) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_20) && IsWandField(pm_f_20) ==> (forall <A, B> o2_20: Ref, f_53: (Field A B) ::
    { ExhaleHeap[o2_20, f_53] }
    Heap[null, WandMaskField(pm_f_20)][o2_20, f_53] ==> Heap[o2_20, f_53] == ExhaleHeap[o2_20, f_53]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// ==================================================
// Sum of heaps
// ==================================================

axiom (forall Heap: HeapType, Heap1: HeapType, Mask1: MaskType, Heap2: HeapType, Mask2: MaskType ::
  { SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) }
  SumHeap(Heap, Heap1, Mask1, Heap2, Mask2) <==> IdenticalOnKnownLocationsLiberal(Heap1, Heap, Mask1) && IdenticalOnKnownLocationsLiberal(Heap2, Heap, Mask2)
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
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var dummy_lblGuard: bool;
  var lh1_lblGuard: bool;
  var lh2_lblGuard: bool;
  var endofprogram_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var LabeldummyHeap: HeapType;
  var LabeldummyMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellh1Heap: HeapType;
  var Labellh1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var frameMask6: MaskType;
  var frameHeap6: HeapType;
  var n1: int;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var Labellh2Heap: HeapType;
  var Labellh2Mask: MaskType;
  var frameMask12: MaskType;
  var frameHeap12: HeapType;
  var n2: int;
  var LabelendofprogramHeap: HeapType;
  var LabelendofprogramMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    dummy_lblGuard := false;
    lh1_lblGuard := false;
    lh2_lblGuard := false;
    endofprogram_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1.vpr@10.12--10.39) [86573]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1.vpr@10.12--10.39) [86574]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // label dummy
  //   invariant acc(x.f, 1 / 2) -- loops1.vpr@15.3--16.28
    dummy_3:
    LabeldummyHeap := Heap;
    LabeldummyMask := Mask;
    dummy_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // // LoopInfo(None,Set())
  // assert acc(x.f, write) -- loops1.vpr@19.3--19.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (loops1.vpr@19.10--19.18) [86576]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // // LoopInfo(Some(6),Set(6))
  // label lh1
  //   invariant acc(x.f, 1 / 2) -- loops1.vpr@21.3--22.28
    lh1:
    Labellh1Heap := Heap;
    Labellh1Mask := Mask;
    lh1_lblGuard := true;
    
    // -- Before loop head6
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (loops1.vpr@22.15--22.28) [86577]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (loops1.vpr@22.15--22.28) [86578]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask6 := Mask;
        frameHeap6 := Heap;
    
    // -- Code for loop head 6
      
      // -- Havoc loop written variables (except locals)
        havoc n1;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1.vpr@22.15--22.28) [86579]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (loops1.vpr@22.15--22.28) [86580]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // assert perm(x.f) == 1 / 2 -- loops1.vpr@24.3--24.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1.vpr@24.10--24.26) [86581]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // // LoopInfo(None,Set(6))
  // n1 := n1 + 1 -- loops1.vpr@26.3--26.15
    n1 := n1 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n1 != 0) -- loops1.vpr@27.3--29.4
    if (n1 != 0) {
      
      // -- Translating statement: // id = 9
  // goto lh1 -- loops1.vpr@28.5--28.13
        
        // -- Backedge to loop 6
          
          // -- Check definedness of invariant
            if (*) {
              perm := 1 / 2;
              assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1.vpr@22.15--22.28) [86582]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> x != null;
              Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
              assume state(Heap, Mask);
              assume state(Heap, Mask);
              assume false;
            }
          // Exhale invariant
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := 1 / 2;
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (loops1.vpr@22.15--22.28) [86583]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (loops1.vpr@22.15--22.28) [86584]"}
              perm <= Mask[x, f_7];
          }
          Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 10
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        
        // -- Exiting loops , 6
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap6, frameMask6);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask6);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 11
  // // LoopInfo(None,Set())
  // assert acc(x.f, write) -- loops1.vpr@31.3--31.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (loops1.vpr@31.10--31.18) [86586]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 12
  // // LoopInfo(Some(12),Set(12))
  // label lh2
  //   invariant acc(x.f, 1 / 3) -- loops1.vpr@33.3--34.28
    lh2:
    Labellh2Heap := Heap;
    Labellh2Mask := Mask;
    lh2_lblGuard := true;
    
    // -- Before loop head12
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 3;
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. Fraction 1 / 3 might be negative. (loops1.vpr@34.15--34.28) [86587]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. There might be insufficient permission to access x.f (loops1.vpr@34.15--34.28) [86588]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask12 := Mask;
        frameHeap12 := Heap;
    
    // -- Code for loop head 12
      
      // -- Havoc loop written variables (except locals)
        havoc n2;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1.vpr@34.15--34.28) [86589]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 3;
        assert {:msg "  While statement might fail. Fraction 1 / 3 might be negative. (loops1.vpr@34.15--34.28) [86590]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 13
  // assert perm(x.f) == 1 / 3 -- loops1.vpr@36.3--36.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 might not hold. (loops1.vpr@36.10--36.26) [86591]"}
      Mask[x, f_7] == 1 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 14
  // // LoopInfo(None,Set(12))
  // n2 := n2 + 1 -- loops1.vpr@38.3--38.15
    n2 := n2 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n2 == 0) -- loops1.vpr@39.3--41.4
    if (n2 == 0) {
      
      // -- Translating statement: // id = 15
  // // LoopInfo(None,Set())
  // goto endofprogram -- loops1.vpr@40.5--40.22
        
        // -- Exiting loops , 12
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap12, frameMask12);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask12);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        goto endofprogram;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 16
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 17
  // goto lh2 -- loops1.vpr@42.3--42.11
    
    // -- Backedge to loop 12
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1.vpr@34.15--34.28) [86592]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      // Exhale invariant
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 1 / 3;
      assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. Fraction 1 / 3 might be negative. (loops1.vpr@34.15--34.28) [86593]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. There might be insufficient permission to access x.f (loops1.vpr@34.15--34.28) [86594]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
      // Terminate execution
      assume false;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 18
  // label endofprogram -- loops1.vpr@44.3--44.21
    endofprogram:
    LabelendofprogramHeap := Heap;
    LabelendofprogramMask := Mask;
    endofprogram_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.f (loops1.vpr@10.12--10.39) [86595]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test01 might not hold. Assertion x.f == old(x.f) might not hold. (loops1.vpr@10.12--10.39) [86596]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var lh1_lblGuard: bool;
  var lh2_lblGuard: bool;
  var afterl1_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Labellh1Heap: HeapType;
  var Labellh1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var frameMask4: MaskType;
  var frameHeap4: HeapType;
  var n2: int;
  var n1: int;
  var Labellh2Heap: HeapType;
  var Labellh2Mask: MaskType;
  var frameMask6: MaskType;
  var frameHeap6: HeapType;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var Labelafterl1Heap: HeapType;
  var Labelafterl1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    lh1_lblGuard := false;
    lh2_lblGuard := false;
    afterl1_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1.vpr@49.12--49.39) [86597]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1.vpr@49.12--49.39) [86598]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // // LoopInfo(Some(4),Set(4))
  // label lh1
  //   invariant acc(x.f, 1 / 2) -- loops1.vpr@54.3--55.28
    lh1:
    Labellh1Heap := Heap;
    Labellh1Mask := Mask;
    lh1_lblGuard := true;
    
    // -- Before loop head4
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (loops1.vpr@55.15--55.28) [86599]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (loops1.vpr@55.15--55.28) [86600]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask4 := Mask;
        frameHeap4 := Heap;
    
    // -- Code for loop head 4
      
      // -- Havoc loop written variables (except locals)
        havoc n2, n1;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1.vpr@55.15--55.28) [86601]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 2;
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (loops1.vpr@55.15--55.28) [86602]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // // LoopInfo(None,Set(4))
  // assert perm(x.f) == 1 / 2 -- loops1.vpr@57.3--57.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1.vpr@57.10--57.26) [86603]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // // LoopInfo(Some(6),Set(6, 4))
  // label lh2
  //   invariant acc(x.f, 1 / 3) -- loops1.vpr@59.3--60.28
    lh2:
    Labellh2Heap := Heap;
    Labellh2Mask := Mask;
    lh2_lblGuard := true;
    
    // -- Before loop head6
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 3;
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. Fraction 1 / 3 might be negative. (loops1.vpr@60.15--60.28) [86604]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. There might be insufficient permission to access x.f (loops1.vpr@60.15--60.28) [86605]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask6 := Mask;
        frameHeap6 := Heap;
    
    // -- Code for loop head 6
      
      // -- Havoc loop written variables (except locals)
        havoc n2;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1.vpr@60.15--60.28) [86606]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 3;
        assert {:msg "  While statement might fail. Fraction 1 / 3 might be negative. (loops1.vpr@60.15--60.28) [86607]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // assert perm(x.f) == 1 / 3 -- loops1.vpr@62.3--62.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 might not hold. (loops1.vpr@62.10--62.26) [86608]"}
      Mask[x, f_7] == 1 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // // LoopInfo(None,Set(6, 4))
  // n2 := n2 + 1 -- loops1.vpr@64.3--64.15
    n2 := n2 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n2 == 0) -- loops1.vpr@65.3--67.4
    if (n2 == 0) {
      
      // -- Translating statement: // id = 9
  // // LoopInfo(None,Set(4))
  // goto afterl1 -- loops1.vpr@66.5--66.17
        
        // -- Exiting loops , 6
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap6, frameMask6);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask6);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        goto afterl1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 10
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 11
  // goto lh2 -- loops1.vpr@68.3--68.11
    
    // -- Backedge to loop 6
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1.vpr@60.15--60.28) [86609]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      // Exhale invariant
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 1 / 3;
      assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. Fraction 1 / 3 might be negative. (loops1.vpr@60.15--60.28) [86610]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. There might be insufficient permission to access x.f (loops1.vpr@60.15--60.28) [86611]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
      // Terminate execution
      assume false;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 12
  // label afterl1 -- loops1.vpr@70.3--70.16
    afterl1:
    Labelafterl1Heap := Heap;
    Labelafterl1Mask := Mask;
    afterl1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 13
  // assert perm(x.f) == 1 / 2 -- loops1.vpr@72.3--72.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1.vpr@72.10--72.26) [86612]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 14
  // // LoopInfo(None,Set(4))
  // n1 := n1 + 1 -- loops1.vpr@74.3--74.15
    n1 := n1 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n1 != 0) -- loops1.vpr@75.3--77.4
    if (n1 != 0) {
      
      // -- Translating statement: // id = 15
  // goto lh1 -- loops1.vpr@76.5--76.13
        
        // -- Backedge to loop 4
          
          // -- Check definedness of invariant
            if (*) {
              perm := 1 / 2;
              assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1.vpr@55.15--55.28) [86613]"}
                perm >= NoPerm;
              assume perm > NoPerm ==> x != null;
              Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
              assume state(Heap, Mask);
              assume state(Heap, Mask);
              assume false;
            }
          // Exhale invariant
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := 1 / 2;
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (loops1.vpr@55.15--55.28) [86614]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (loops1.vpr@55.15--55.28) [86615]"}
              perm <= Mask[x, f_7];
          }
          Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 16
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        
        // -- Exiting loops , 4
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap4, frameMask4);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask4);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 17
  // assert n1 == 0 -- loops1.vpr@79.3--79.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion n1 == 0 might not hold. (loops1.vpr@79.10--79.17) [86616]"}
      n1 == 0;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access x.f (loops1.vpr@49.12--49.39) [86617]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test02 might not hold. Assertion x.f == old(x.f) might not hold. (loops1.vpr@49.12--49.39) [86618]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var lh1_lblGuard: bool;
  var lh2_lblGuard: bool;
  var endofprogram_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Labellh1Heap: HeapType;
  var Labellh1Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellh2Heap: HeapType;
  var Labellh2Mask: MaskType;
  var ExhaleHeap: HeapType;
  var frameMask6: MaskType;
  var frameHeap6: HeapType;
  var n2: int;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var n1: int;
  var LabelendofprogramHeap: HeapType;
  var LabelendofprogramMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    lh1_lblGuard := false;
    lh2_lblGuard := false;
    endofprogram_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
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
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == old(x.f)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1.vpr@84.12--84.39) [86619]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1.vpr@84.12--84.39) [86620]"}
        HasDirectPerm(oldMask, x, f_7);
    assume PostHeap[x, f_7] == oldHeap[x, f_7];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // label lh1
  //   invariant acc(x.f, 1 / 2) -- loops1.vpr@89.3--90.28
    lh1:
    Labellh1Heap := Heap;
    Labellh1Mask := Mask;
    lh1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // // LoopInfo(None,Set())
  // assert perm(x.f) == 1 / 2 -- loops1.vpr@92.3--92.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1.vpr@92.10--92.26) [86621]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // // LoopInfo(Some(6),Set(6))
  // label lh2
  //   invariant acc(x.f, 1 / 3) -- loops1.vpr@94.3--95.28
    lh2:
    Labellh2Heap := Heap;
    Labellh2Mask := Mask;
    lh2_lblGuard := true;
    
    // -- Before loop head6
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 3;
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. Fraction 1 / 3 might be negative. (loops1.vpr@95.15--95.28) [86622]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. There might be insufficient permission to access x.f (loops1.vpr@95.15--95.28) [86623]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask6 := Mask;
        frameHeap6 := Heap;
    
    // -- Code for loop head 6
      
      // -- Havoc loop written variables (except locals)
        havoc n2;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1.vpr@95.15--95.28) [86624]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := 1 / 3;
        assert {:msg "  While statement might fail. Fraction 1 / 3 might be negative. (loops1.vpr@95.15--95.28) [86625]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // assert perm(x.f) == 1 / 3 -- loops1.vpr@97.3--97.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 might not hold. (loops1.vpr@97.10--97.26) [86626]"}
      Mask[x, f_7] == 1 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // // LoopInfo(None,Set(6))
  // n2 := n2 + 1 -- loops1.vpr@99.3--99.15
    n2 := n2 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n2 == 0) -- loops1.vpr@100.3--102.4
    if (n2 == 0) {
      
      // -- Translating statement: // id = 9
  // // LoopInfo(None,Set())
  // goto endofprogram -- loops1.vpr@101.5--101.22
        
        // -- Exiting loops , 6
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap6, frameMask6);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask6);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        goto endofprogram;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 10
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 11
  // goto lh2 -- loops1.vpr@103.3--103.11
    
    // -- Backedge to loop 6
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1.vpr@95.15--95.28) [86627]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume false;
        }
      // Exhale invariant
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 1 / 3;
      assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. Fraction 1 / 3 might be negative. (loops1.vpr@95.15--95.28) [86628]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. There might be insufficient permission to access x.f (loops1.vpr@95.15--95.28) [86629]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
      // Terminate execution
      assume false;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 12
  // assert perm(x.f) == 1 / 2 -- loops1.vpr@106.3--106.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1.vpr@106.10--106.26) [86630]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 13
  // n1 := n1 + 1 -- loops1.vpr@108.3--108.15
    n1 := n1 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n1 != 0) -- loops1.vpr@109.3--111.4
    if (n1 != 0) {
      
      // -- Translating statement: // id = 14
  // goto lh1 -- loops1.vpr@110.5--110.13
        goto lh1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 15
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 16
  // label endofprogram -- loops1.vpr@115.3--115.21
    endofprogram:
    LabelendofprogramHeap := Heap;
    LabelendofprogramMask := Mask;
    endofprogram_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 17
  // assert n2 == 0 || n1 == 0 -- loops1.vpr@116.3--116.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion n2 == 0 || n1 == 0 might not hold. (loops1.vpr@116.10--116.28) [86631]"}
      n2 == 0 || n1 == 0;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test03 might not hold. There might be insufficient permission to access x.f (loops1.vpr@84.12--84.39) [86632]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test03 might not hold. Assertion x.f == old(x.f) might not hold. (loops1.vpr@84.12--84.39) [86633]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}