// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:24:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/invariants/loops1b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/invariants/loops1b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
  var lh1_lblGuard: bool;
  var lh2_lblGuard: bool;
  var endofprogram_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellh1Heap: HeapType;
  var Labellh1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var frameMask5: MaskType;
  var frameHeap5: HeapType;
  var n1: int;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var Labellh2Heap: HeapType;
  var Labellh2Mask: MaskType;
  var frameMask11: MaskType;
  var frameHeap11: HeapType;
  var n2: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1b.vpr@10.12--10.39) [86043]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1b.vpr@10.12--10.39) [86044]"}
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
  // // LoopInfo(None,Set())
  // assert acc(x.f, write) -- loops1b.vpr@15.3--15.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (loops1b.vpr@15.10--15.18) [86046]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // // LoopInfo(Some(5),Set(5))
  // label lh1
  //   invariant acc(x.f, 1 / 2) -- loops1b.vpr@17.3--18.28
    lh1:
    Labellh1Heap := Heap;
    Labellh1Mask := Mask;
    lh1_lblGuard := true;
    
    // -- Before loop head5
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (loops1b.vpr@18.15--18.28) [86047]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (loops1b.vpr@18.15--18.28) [86048]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask5 := Mask;
        frameHeap5 := Heap;
    
    // -- Code for loop head 5
      
      // -- Havoc loop written variables (except locals)
        havoc n1;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1b.vpr@18.15--18.28) [86049]"}
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
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (loops1b.vpr@18.15--18.28) [86050]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // assert perm(x.f) == 1 / 2 -- loops1b.vpr@20.3--20.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1b.vpr@20.10--20.26) [86051]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // // LoopInfo(None,Set(5))
  // n1 := n1 + 1 -- loops1b.vpr@22.3--22.15
    n1 := n1 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n1 != 0) -- loops1b.vpr@23.3--25.4
    if (n1 != 0) {
      
      // -- Translating statement: // id = 8
  // goto lh1 -- loops1b.vpr@24.5--24.13
        
        // -- Backedge to loop 5
          
          // -- Check definedness of invariant
            if (*) {
              perm := 1 / 2;
              assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1b.vpr@18.15--18.28) [86052]"}
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
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (loops1b.vpr@18.15--18.28) [86053]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (loops1b.vpr@18.15--18.28) [86054]"}
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
      
      // -- Translating statement: // id = 9
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        
        // -- Exiting loops , 5
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap5, frameMask5);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask5);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 10
  // // LoopInfo(None,Set())
  // assert acc(x.f, write) -- loops1b.vpr@27.3--27.18
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (loops1b.vpr@27.10--27.18) [86056]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 11
  // // LoopInfo(Some(11),Set(11))
  // label lh2
  //   invariant acc(x.f, 1 / 3) -- loops1b.vpr@29.3--30.28
    lh2:
    Labellh2Heap := Heap;
    Labellh2Mask := Mask;
    lh2_lblGuard := true;
    
    // -- Before loop head11
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 3;
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. Fraction 1 / 3 might be negative. (loops1b.vpr@30.15--30.28) [86057]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. There might be insufficient permission to access x.f (loops1b.vpr@30.15--30.28) [86058]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Store frame in mask associated with loop
        frameMask11 := Mask;
        frameHeap11 := Heap;
    
    // -- Code for loop head 11
      
      // -- Havoc loop written variables (except locals)
        havoc n2;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1b.vpr@30.15--30.28) [86059]"}
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
        assert {:msg "  While statement might fail. Fraction 1 / 3 might be negative. (loops1b.vpr@30.15--30.28) [86060]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 12
  // assert perm(x.f) == 1 / 3 -- loops1b.vpr@32.3--32.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 might not hold. (loops1b.vpr@32.10--32.26) [86061]"}
      Mask[x, f_7] == 1 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 13
  // // LoopInfo(None,Set(11))
  // n2 := n2 + 1 -- loops1b.vpr@34.3--34.15
    n2 := n2 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n2 == 0) -- loops1b.vpr@35.3--37.4
    if (n2 == 0) {
      
      // -- Translating statement: // id = 14
  // // LoopInfo(None,Set())
  // goto endofprogram -- loops1b.vpr@36.5--36.22
        
        // -- Exiting loops , 11
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap11, frameMask11);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask11);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        goto endofprogram;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 15
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 16
  // goto lh2 -- loops1b.vpr@38.3--38.11
    
    // -- Backedge to loop 11
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1b.vpr@30.15--30.28) [86062]"}
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
      assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. Fraction 1 / 3 might be negative. (loops1b.vpr@30.15--30.28) [86063]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. There might be insufficient permission to access x.f (loops1b.vpr@30.15--30.28) [86064]"}
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
  
  // -- Translating statement: // id = 17
  // label endofprogram -- loops1b.vpr@40.3--40.21
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
      assert {:msg "  Postcondition of test01 might not hold. There might be insufficient permission to access x.f (loops1b.vpr@10.12--10.39) [86065]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test01 might not hold. Assertion x.f == old(x.f) might not hold. (loops1b.vpr@10.12--10.39) [86066]"}
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
  var n1: int;
  var n2: int;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1b.vpr@45.12--45.39) [86067]"}
        HasDirectPerm(PostMask, x, f_7);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (loops1b.vpr@45.12--45.39) [86068]"}
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
  //   invariant acc(x.f, 1 / 2) -- loops1b.vpr@50.3--51.28
    lh1:
    Labellh1Heap := Heap;
    Labellh1Mask := Mask;
    lh1_lblGuard := true;
    
    // -- Before loop head4
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 2;
        assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. Fraction 1 / 2 might be negative. (loops1b.vpr@51.15--51.28) [86069]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not hold on entry. There might be insufficient permission to access x.f (loops1b.vpr@51.15--51.28) [86070]"}
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
        havoc n1, n2;
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1b.vpr@51.15--51.28) [86071]"}
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
        assert {:msg "  While statement might fail. Fraction 1 / 2 might be negative. (loops1b.vpr@51.15--51.28) [86072]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // // LoopInfo(None,Set(4))
  // assert perm(x.f) == 1 / 2 -- loops1b.vpr@53.3--53.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1b.vpr@53.10--53.26) [86073]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // // LoopInfo(Some(6),Set(6, 4))
  // label lh2
  //   invariant acc(x.f, 1 / 3) -- loops1b.vpr@55.3--56.28
    lh2:
    Labellh2Heap := Heap;
    Labellh2Mask := Mask;
    lh2_lblGuard := true;
    
    // -- Before loop head6
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := 1 / 3;
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. Fraction 1 / 3 might be negative. (loops1b.vpr@56.15--56.28) [86074]"}
          perm >= NoPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not hold on entry. There might be insufficient permission to access x.f (loops1b.vpr@56.15--56.28) [86075]"}
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
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1b.vpr@56.15--56.28) [86076]"}
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
        assert {:msg "  While statement might fail. Fraction 1 / 3 might be negative. (loops1b.vpr@56.15--56.28) [86077]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // assert perm(x.f) == 1 / 3 -- loops1b.vpr@58.3--58.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 3 might not hold. (loops1b.vpr@58.10--58.26) [86078]"}
      Mask[x, f_7] == 1 / 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // // LoopInfo(None,Set(6, 4))
  // n2 := n2 + 1 -- loops1b.vpr@60.3--60.15
    n2 := n2 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n2 == 0) -- loops1b.vpr@61.3--63.4
    if (n2 == 0) {
      
      // -- Translating statement: // id = 9
  // // LoopInfo(None,Set(4))
  // goto afterl1 -- loops1b.vpr@62.5--62.17
        
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
  // goto lh2 -- loops1b.vpr@64.3--64.11
    
    // -- Backedge to loop 6
      
      // -- Check definedness of invariant
        if (*) {
          perm := 1 / 3;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (loops1b.vpr@56.15--56.28) [86079]"}
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
      assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. Fraction 1 / 3 might be negative. (loops1b.vpr@56.15--56.28) [86080]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Loop invariant acc(x.f, 1 / 3) might not be preserved. There might be insufficient permission to access x.f (loops1b.vpr@56.15--56.28) [86081]"}
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
  // label afterl1 -- loops1b.vpr@66.3--66.16
    afterl1:
    Labelafterl1Heap := Heap;
    Labelafterl1Mask := Mask;
    afterl1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 13
  // assert perm(x.f) == 1 / 2 -- loops1b.vpr@68.3--68.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(x.f) == 1 / 2 might not hold. (loops1b.vpr@68.10--68.26) [86082]"}
      Mask[x, f_7] == 1 / 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 14
  // // LoopInfo(None,Set(4))
  // n1 := n1 + 1 -- loops1b.vpr@70.3--70.15
    n1 := n1 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (n1 != 0) -- loops1b.vpr@71.3--73.4
    if (n1 != 0) {
      
      // -- Translating statement: // id = 15
  // goto lh1 -- loops1b.vpr@72.5--72.13
        
        // -- Backedge to loop 4
          
          // -- Check definedness of invariant
            if (*) {
              perm := 1 / 2;
              assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (loops1b.vpr@51.15--51.28) [86083]"}
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
          assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. Fraction 1 / 2 might be negative. (loops1b.vpr@51.15--51.28) [86084]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant acc(x.f, 1 / 2) might not be preserved. There might be insufficient permission to access x.f (loops1b.vpr@51.15--51.28) [86085]"}
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
  // assert n1 == 0 -- loops1b.vpr@75.3--75.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion n1 == 0 might not hold. (loops1b.vpr@75.10--75.17) [86086]"}
      n1 == 0;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access x.f (loops1b.vpr@45.12--45.39) [86087]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test02 might not hold. Assertion x.f == old(x.f) might not hold. (loops1b.vpr@45.12--45.39) [86088]"}
      Heap[x, f_7] == oldHeap[x, f_7];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}