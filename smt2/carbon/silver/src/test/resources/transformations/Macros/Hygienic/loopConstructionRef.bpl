// 
// Translation of Viper program.
// 
// Date:         2025-01-13 12:55:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/Macros/Hygienic/loopConstructionRef.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/Macros/Hygienic/loopConstructionRef-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission. But don't propagate information  of locations that are not known-folded to allow for equating with multiple different (but compatible) heaps
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> ExhaleHeap[null, PredicateMaskField(pm_f_22)][o2_22, f_37]
  )
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission (but don't propagate information about locations that are not known-folded)
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[null, WandMaskField(pm_f_22)][o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> ExhaleHeap[null, WandMaskField(pm_f_22)][o2_22, f_37]
  )
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocationsLiberal(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
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
// Translation of method main
// ==================================================

procedure main() returns ()
  modifies Heap, Mask;
{
  var loop_lblGuard: bool;
  var loop$0_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var value_1: int;
  var oldX: int;
  var ctr: int;
  var LabelloopHeap: HeapType;
  var LabelloopMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var frameMask8: MaskType;
  var frameHeap8: HeapType;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var oldX$0: int;
  var ctr$0: int;
  var Labelloop$0Heap: HeapType;
  var Labelloop$0Mask: MaskType;
  var frameMask20: MaskType;
  var frameHeap20: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    loop_lblGuard := false;
    loop$0_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // value := 0 -- loopConstructionRef.vpr@7.5--7.15
    value_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // oldX := value -- loopConstructionRef.vpr@11.5--11.18
    oldX := value_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // // LoopInfo(None,Set())
  // ctr := 0 -- loopConstructionRef.vpr@12.5--12.13
    ctr := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // // LoopInfo(Some(8),Set(8))
  // label loop
  //   invariant ctr < 5 && value == oldX + ctr -- loopConstructionRef.vpr@13.5--13.56
    loop:
    LabelloopHeap := Heap;
    LabelloopMask := Mask;
    loop_lblGuard := true;
    
    // -- Before loop head8
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant ctr < 5 && value == oldX + ctr might not hold on entry. Assertion ctr < 5 might not hold. (loopConstructionRef.vpr@13.26--13.56) [101744]"}
          ctr < 5;
        assert {:msg "  Loop invariant ctr < 5 && value == oldX + ctr might not hold on entry. Assertion value == oldX + ctr might not hold. (loopConstructionRef.vpr@13.26--13.56) [101745]"}
          value_1 == oldX + ctr;
      
      // -- Store frame in mask associated with loop
        frameMask8 := Mask;
        frameHeap8 := Heap;
    
    // -- Code for loop head 8
      
      // -- Havoc loop written variables (except locals)
        havoc value_1, ctr;
      
      // -- Check definedness of invariant
        if (*) {
          assume ctr < 5;
          assume value_1 == oldX + ctr;
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume ctr < 5;
        assume value_1 == oldX + ctr;
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 9
  // value := value + 1 -- loopConstructionRef.vpr@14.5--14.23
    value_1 := value_1 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 10
  // // LoopInfo(None,Set(8))
  // ctr := ctr + 1 -- loopConstructionRef.vpr@15.5--15.19
    ctr := ctr + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (ctr < 5) -- loopConstructionRef.vpr@16.5--18.6
    if (ctr < 5) {
      
      // -- Translating statement: // id = 11
  // goto loop -- loopConstructionRef.vpr@17.9--17.18
        
        // -- Backedge to loop 8
          
          // -- Check definedness of invariant
            if (*) {
              assume ctr < 5;
              assume value_1 == oldX + ctr;
              assume state(Heap, Mask);
              assume false;
            }
          // Exhale invariant
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Loop invariant ctr < 5 && value == oldX + ctr might not be preserved. Assertion ctr < 5 might not hold. (loopConstructionRef.vpr@13.26--13.56) [101746]"}
            ctr < 5;
          assert {:msg "  Loop invariant ctr < 5 && value == oldX + ctr might not be preserved. Assertion value == oldX + ctr might not hold. (loopConstructionRef.vpr@13.26--13.56) [101747]"}
            value_1 == oldX + ctr;
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 12
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        
        // -- Exiting loops , 8
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap8, frameMask8);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask8);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 13
  // assert ctr == 5 -- loopConstructionRef.vpr@19.5--19.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion ctr == 5 might not hold. (loopConstructionRef.vpr@19.12--19.20) [101748]"}
      ctr == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 14
  // assert oldX + 5 == value -- loopConstructionRef.vpr@20.5--20.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion oldX + 5 == value might not hold. (loopConstructionRef.vpr@20.12--20.29) [101749]"}
      oldX + 5 == value_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 15
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 16
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 17
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 18
  // oldX$0 := value -- loopConstructionRef.vpr@24.5--24.20
    oldX$0 := value_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 19
  // // LoopInfo(None,Set())
  // ctr$0 := 0 -- loopConstructionRef.vpr@25.5--25.15
    ctr$0 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 20
  // // LoopInfo(Some(20),Set(20))
  // label loop$0
  //   invariant ctr$0 < 5 && value == oldX$0 + ctr$0 -- loopConstructionRef.vpr@26.5--26.64
    loop$0:
    Labelloop$0Heap := Heap;
    Labelloop$0Mask := Mask;
    loop$0_lblGuard := true;
    
    // -- Before loop head20
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant ctr$0 < 5 && value == oldX$0 + ctr$0 might not hold on entry. Assertion ctr$0 < 5 might not hold. (loopConstructionRef.vpr@26.28--26.64) [101750]"}
          ctr$0 < 5;
        assert {:msg "  Loop invariant ctr$0 < 5 && value == oldX$0 + ctr$0 might not hold on entry. Assertion value == oldX$0 + ctr$0 might not hold. (loopConstructionRef.vpr@26.28--26.64) [101751]"}
          value_1 == oldX$0 + ctr$0;
      
      // -- Store frame in mask associated with loop
        frameMask20 := Mask;
        frameHeap20 := Heap;
    
    // -- Code for loop head 20
      
      // -- Havoc loop written variables (except locals)
        havoc value_1, ctr$0;
      
      // -- Check definedness of invariant
        if (*) {
          assume ctr$0 < 5;
          assume value_1 == oldX$0 + ctr$0;
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume ctr$0 < 5;
        assume value_1 == oldX$0 + ctr$0;
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 21
  // value := value + 1 -- loopConstructionRef.vpr@27.5--27.23
    value_1 := value_1 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 22
  // // LoopInfo(None,Set(20))
  // ctr$0 := ctr$0 + 1 -- loopConstructionRef.vpr@28.5--28.23
    ctr$0 := ctr$0 + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (ctr$0 < 5) -- loopConstructionRef.vpr@29.5--31.6
    if (ctr$0 < 5) {
      
      // -- Translating statement: // id = 23
  // goto loop$0 -- loopConstructionRef.vpr@30.9--30.20
        
        // -- Backedge to loop 20
          
          // -- Check definedness of invariant
            if (*) {
              assume ctr$0 < 5;
              assume value_1 == oldX$0 + ctr$0;
              assume state(Heap, Mask);
              assume false;
            }
          // Exhale invariant
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  Loop invariant ctr$0 < 5 && value == oldX$0 + ctr$0 might not be preserved. Assertion ctr$0 < 5 might not hold. (loopConstructionRef.vpr@26.28--26.64) [101752]"}
            ctr$0 < 5;
          assert {:msg "  Loop invariant ctr$0 < 5 && value == oldX$0 + ctr$0 might not be preserved. Assertion value == oldX$0 + ctr$0 might not hold. (loopConstructionRef.vpr@26.28--26.64) [101753]"}
            value_1 == oldX$0 + ctr$0;
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 24
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        
        // -- Exiting loops , 20
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap20, frameMask20);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask20);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 25
  // assert ctr$0 == 5 -- loopConstructionRef.vpr@32.5--32.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion ctr$0 == 5 might not hold. (loopConstructionRef.vpr@32.12--32.22) [101754]"}
      ctr$0 == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 26
  // assert oldX$0 + 5 == value -- loopConstructionRef.vpr@33.5--33.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion oldX$0 + 5 == value might not hold. (loopConstructionRef.vpr@33.12--33.31) [101755]"}
      oldX$0 + 5 == value_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 27
  // assert value == 10 -- loopConstructionRef.vpr@35.5--35.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion value == 10 might not hold. (loopConstructionRef.vpr@35.12--35.23) [101756]"}
      value_1 == 10;
    assume state(Heap, Mask);
}