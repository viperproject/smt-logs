// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:37:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/WhileToIfAndGoto/nestedRef.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/transformations/WhileToIfAndGoto/nestedRef-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
  var skiploop1_lblGuard: bool;
  var skiploop2_lblGuard: bool;
  var loop2_lblGuard: bool;
  var loop1_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i: int;
  var j_9: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labelloop1Heap: HeapType;
  var Labelloop1Mask: MaskType;
  var frameMask6: MaskType;
  var frameHeap6: HeapType;
  var Labelloop2Heap: HeapType;
  var Labelloop2Mask: MaskType;
  var frameMask10: MaskType;
  var frameHeap10: HeapType;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var Labelskiploop2Heap: HeapType;
  var Labelskiploop2Mask: MaskType;
  var Labelskiploop1Heap: HeapType;
  var Labelskiploop1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    skiploop1_lblGuard := false;
    skiploop2_lblGuard := false;
    loop2_lblGuard := false;
    loop1_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: // id = 1
  // i := 1 -- nestedRef.vpr@6.5--6.19
    i := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // j := true -- nestedRef.vpr@7.5--7.23
    j_9 := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // assert i <= 5 -- nestedRef.vpr@9.5--9.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion i <= 5 might not hold. (nestedRef.vpr@9.12--9.18) [92336]"}
      i <= 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (!(i < 5)) -- nestedRef.vpr@10.5--12.6
    if (!(i < 5)) {
      
      // -- Translating statement: // id = 4
  // goto skiploop1 -- nestedRef.vpr@11.9--11.23
        goto skiploop1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 5
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // // LoopInfo(Some(6),Set(6))
  // label loop1
  //   invariant true -- nestedRef.vpr@14.5--14.31
    loop1:
    Labelloop1Heap := Heap;
    Labelloop1Mask := Mask;
    loop1_lblGuard := true;
    
    // -- Before loop head6
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
      
      // -- Store frame in mask associated with loop
        frameMask6 := Mask;
        frameHeap6 := Heap;
    
    // -- Code for loop head 6
      
      // -- Havoc loop written variables (except locals)
        havoc i, j_9;
      
      // -- Check definedness of invariant
        if (*) {
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // assert i <= 5 -- nestedRef.vpr@16.9--16.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion i <= 5 might not hold. (nestedRef.vpr@16.16--16.22) [92337]"}
      i <= 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (!j) -- nestedRef.vpr@17.9--19.10
    if (!j_9) {
      
      // -- Translating statement: // id = 8
  // goto skiploop2 -- nestedRef.vpr@18.13--18.27
        goto skiploop2;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 9
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set(6))
  // inhale true -- <no position>
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 10
  // // LoopInfo(Some(10),Set(6, 10))
  // label loop2
  //   invariant true -- nestedRef.vpr@21.9--21.35
    loop2:
    Labelloop2Heap := Heap;
    Labelloop2Mask := Mask;
    loop2_lblGuard := true;
    
    // -- Before loop head10
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
      
      // -- Store frame in mask associated with loop
        frameMask10 := Mask;
        frameHeap10 := Heap;
    
    // -- Code for loop head 10
      
      // -- Havoc loop written variables (except locals)
        havoc j_9;
      
      // -- Check definedness of invariant
        if (*) {
          assume state(Heap, Mask);
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 11
  // j := false -- nestedRef.vpr@23.13--23.23
    j_9 := false;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 12
  // // LoopInfo(None,Set(6, 10))
  // assert i <= 5 -- nestedRef.vpr@24.13--24.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion i <= 5 might not hold. (nestedRef.vpr@24.20--24.26) [92338]"}
      i <= 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (j) -- nestedRef.vpr@25.13--27.14
    if (j_9) {
      
      // -- Translating statement: // id = 13
  // goto loop2 -- nestedRef.vpr@26.17--26.27
        
        // -- Backedge to loop 10
          
          // -- Check definedness of invariant
            if (*) {
              assume state(Heap, Mask);
              assume false;
            }
          // Exhale invariant
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 14
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set(6))
  // inhale true -- <no position>
        
        // -- Exiting loops , 10
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap10, frameMask10);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask10);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 15
  // label skiploop2
  //   invariant true -- nestedRef.vpr@29.9--29.39
    skiploop2:
    Labelskiploop2Heap := Heap;
    Labelskiploop2Mask := Mask;
    skiploop2_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 16
  // i := i + 1 -- nestedRef.vpr@31.9--31.19
    i := i + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 17
  // // LoopInfo(None,Set(6))
  // assert i <= 5 -- nestedRef.vpr@32.9--32.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion i <= 5 might not hold. (nestedRef.vpr@32.16--32.22) [92339]"}
      i <= 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (i < 5) -- nestedRef.vpr@33.9--35.10
    if (i < 5) {
      
      // -- Translating statement: // id = 18
  // goto loop1 -- nestedRef.vpr@34.13--34.23
        
        // -- Backedge to loop 6
          
          // -- Check definedness of invariant
            if (*) {
              assume state(Heap, Mask);
              assume false;
            }
          // Exhale invariant
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 19
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
  
  // -- Translating statement: // id = 20
  // label skiploop1
  //   invariant true -- nestedRef.vpr@36.5--36.35
    skiploop1:
    Labelskiploop1Heap := Heap;
    Labelskiploop1Mask := Mask;
    skiploop1_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 21
  // assert i == 5 -- nestedRef.vpr@38.5--38.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion i == 5 might not hold. (nestedRef.vpr@38.12--38.18) [92340]"}
      i == 5;
    assume state(Heap, Mask);
}