// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:16:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0269.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0269-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique Container_value: Field NormalField Ref;
axiom !IsPredicateField(Container_value);
axiom !IsWandField(Container_value);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method nested_try_finally_fails
// ==================================================

procedure nested_try_finally_fails(out: Ref) returns ()
  modifies Heap, Mask;
{
  var try_finally_0_lblGuard: bool;
  var __end_lblGuard: bool;
  var handlerMyException_lblGuard: bool;
  var try_finally_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var error_0: Ref;
  var try_finally_2: int;
  var LabelhandlerMyExceptionMask: MaskType;
  var LabelhandlerMyExceptionHeap: HeapType;
  var Labeltry_finallyMask: MaskType;
  var Labeltry_finallyHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var nonDet: bool;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  var frameHeap18: HeapType;
  var frameMask18: MaskType;
  var Labeltry_finally_0Mask: MaskType;
  var Labeltry_finally_0Heap: HeapType;
  var Label__endMask: MaskType;
  var Label__endHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    try_finally_0_lblGuard := false;
    __end_lblGuard := false;
    handlerMyException_lblGuard := false;
    try_finally_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[out, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume out != null;
    Mask := Mask[out, Container_value:=Mask[out, Container_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[error_0, $allocated];
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // try_finally_2 := 0 -- 0269.vpr@10.3--10.30
    try_finally_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // // LoopInfo(None,Set())
  // goto try_finally_0 -- 0269.vpr@12.3--12.21
    goto try_finally_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // label handlerMyException -- 0269.vpr@14.3--14.27
    handlerMyException:
    LabelhandlerMyExceptionMask := Mask;
    LabelhandlerMyExceptionHeap := Heap;
    handlerMyException_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // try_finally_2 := 0 -- 0269.vpr@15.5--15.23
    try_finally_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // goto try_finally -- 0269.vpr@16.5--16.21
    goto try_finally;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // label try_finally -- 0269.vpr@18.3--18.20
    try_finally:
    Labeltry_finallyMask := Mask;
    Labeltry_finallyHeap := Heap;
    try_finally_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // // LoopInfo(None,Set(18))
  // assert try_finally_2 == 0 -- 0269.vpr@19.5--19.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion try_finally_2 == 0 might not hold. (0269.vpr@19.12--19.30) [58111]"}
      try_finally_2 == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (try_finally_2 > 1) -- 0269.vpr@20.5--31.6
    if (try_finally_2 > 1) {
      
      // -- Translating statement: // id = 9
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 10
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 11
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set(18))
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: if (nonDet) -- 0269.vpr@22.7--24.8
        if (nonDet) {
          
          // -- Translating statement: // id = 12
  // // LoopInfo(None,Set())
  // goto __end -- 0269.vpr@23.9--23.19
            
            // -- Exiting loops , 18
              havoc LoopSumHeap;
              havoc LoopSumMask;
              assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap18, frameMask18);
              Heap := LoopSumHeap;
              assume sumMask(LoopSumMask, Mask, frameMask18);
              Mask := LoopSumMask;
              assume state(Heap, Mask);
            goto __end;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: // id = 13
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 14
  // exhale false -- 0269.vpr@25.7--25.19
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion false might not hold. (0269.vpr@25.14--25.19) [58112]"}
          false;
        
        // -- Backedge to loop 18
          
          // -- Check definedness of invariant
            if (*) {
              assume false;
            }
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 15
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        
        // -- Exiting loops , 18
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap18, frameMask18);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask18);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: if (try_finally_2 > 0) -- 0269.vpr@27.7--31.6
        if (try_finally_2 > 0) {
          
          // -- Translating statement: // id = 16
  // goto __end -- 0269.vpr@28.7--28.17
            goto __end;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: // id = 17
  // goto __end -- 0269.vpr@30.7--30.17
            goto __end;
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 18
  // // LoopInfo(Some(18),Set(18))
  // label try_finally_0 -- 0269.vpr@34.3--34.22
    try_finally_0:
    Labeltry_finally_0Mask := Mask;
    Labeltry_finally_0Heap := Heap;
    try_finally_0_lblGuard := true;
    
    // -- Before loop head18
      
      // -- Store frame in mask associated with loop
        frameMask18 := Mask;
        frameHeap18 := Heap;
    
    // -- Code for loop head 18
      
      // -- Havoc loop written variables (except locals)
        havoc try_finally_2;
      
      // -- Check definedness of invariant
        if (*) {
          assume false;
        }
      
      // -- Check the loop body
        // Reset state
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 19
  // out.Container_value := null -- 0269.vpr@37.5--37.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access out.Container_value (0269.vpr@37.5--37.32) [58113]"}
      FullPerm == Mask[out, Container_value];
    Heap := Heap[out, Container_value:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 20
  // goto handlerMyException -- 0269.vpr@38.5--38.28
    goto handlerMyException;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 21
  // label __end -- 0269.vpr@40.3--40.14
    __end:
    Label__endMask := Mask;
    Label__endHeap := Heap;
    __end_lblGuard := true;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method nested_try_finally_fixed
// ==================================================

procedure nested_try_finally_fixed(out: Ref) returns ()
  modifies Heap, Mask;
{
  var try_finally_0_lblGuard: bool;
  var __end_lblGuard: bool;
  var handlerMyException_lblGuard: bool;
  var try_finally_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var error_0: Ref;
  var try_finally_2: int;
  var LabelhandlerMyExceptionMask: MaskType;
  var LabelhandlerMyExceptionHeap: HeapType;
  var Labeltry_finallyMask: MaskType;
  var Labeltry_finallyHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var nonDet: bool;
  var Labeltry_finally_0Mask: MaskType;
  var Labeltry_finally_0Heap: HeapType;
  var Label__endMask: MaskType;
  var Label__endHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    try_finally_0_lblGuard := false;
    __end_lblGuard := false;
    handlerMyException_lblGuard := false;
    try_finally_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[out, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume out != null;
    Mask := Mask[out, Container_value:=Mask[out, Container_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[error_0, $allocated];
  
  // -- Translating statement: // id = 1
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // try_finally_2 := 0 -- 0269.vpr@47.3--47.30
    try_finally_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 3
  // goto try_finally_0 -- 0269.vpr@49.3--49.21
    goto try_finally_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // label handlerMyException -- 0269.vpr@51.3--51.27
    handlerMyException:
    LabelhandlerMyExceptionMask := Mask;
    LabelhandlerMyExceptionHeap := Heap;
    handlerMyException_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 5
  // try_finally_2 := 0 -- 0269.vpr@52.5--52.23
    try_finally_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 6
  // goto try_finally -- 0269.vpr@53.5--53.21
    goto try_finally;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 7
  // label try_finally -- 0269.vpr@55.3--55.20
    try_finally:
    Labeltry_finallyMask := Mask;
    Labeltry_finallyHeap := Heap;
    try_finally_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 8
  // assert try_finally_2 == 0 -- 0269.vpr@56.5--56.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion try_finally_2 == 0 might not hold. (0269.vpr@56.12--56.30) [58114]"}
      try_finally_2 == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (try_finally_2 > 1) -- 0269.vpr@57.5--68.6
    if (try_finally_2 > 1) {
      
      // -- Translating statement: // id = 9
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 10
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 11
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: if (nonDet) -- 0269.vpr@59.7--61.8
        if (nonDet) {
          
          // -- Translating statement: // id = 12
  // goto __end -- 0269.vpr@60.9--60.19
            goto __end;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: // id = 13
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 14
  // exhale false -- 0269.vpr@62.7--62.19
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Exhale might fail. Assertion false might not hold. (0269.vpr@62.14--62.19) [58115]"}
          false;
        assume state(Heap, Mask);
      
      // -- Translating statement: // id = 15
  // goto __end -- 0269.vpr@63.7--63.17
        goto __end;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 16
  // // LoopDummyStmtInfo()
  // inhale true -- <no position>
        assume state(Heap, Mask);
      
      // -- Translating statement: if (try_finally_2 > 0) -- 0269.vpr@64.7--68.6
        if (try_finally_2 > 0) {
          
          // -- Translating statement: // id = 17
  // goto __end -- 0269.vpr@65.7--65.17
            goto __end;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: // id = 18
  // goto __end -- 0269.vpr@67.7--67.17
            goto __end;
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 19
  // label try_finally_0 -- 0269.vpr@70.3--70.22
    try_finally_0:
    Labeltry_finally_0Mask := Mask;
    Labeltry_finally_0Heap := Heap;
    try_finally_0_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 20
  // out.Container_value := null -- 0269.vpr@72.5--72.32
    assert {:msg "  Assignment might fail. There might be insufficient permission to access out.Container_value (0269.vpr@72.5--72.32) [58116]"}
      FullPerm == Mask[out, Container_value];
    Heap := Heap[out, Container_value:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 21
  // goto handlerMyException -- 0269.vpr@73.5--73.28
    goto handlerMyException;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 22
  // label __end -- 0269.vpr@75.3--75.14
    __end:
    Label__endMask := Mask;
    Label__endHeap := Heap;
    __end_lblGuard := true;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(x: Ref) returns (b_24: bool)
  modifies Heap, Mask;
{
  var pseudo_loop_head_lblGuard: bool;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Labelpseudo_loop_headMask: MaskType;
  var Labelpseudo_loop_headHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var frameMask2: MaskType;
  var frameHeap2: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var LoopSumHeap: HeapType;
  var LoopSumMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    pseudo_loop_head_lblGuard := false;
  
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: // id = 1
  // // LoopInfo(None,Set())
  // b := false -- 0269.vpr@85.3--85.13
    b_24 := false;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 2
  // // LoopInfo(Some(2),Set(2))
  // label pseudo_loop_head
  //   invariant true -- 0269.vpr@87.3--88.19
    pseudo_loop_head:
    Labelpseudo_loop_headMask := Mask;
    Labelpseudo_loop_headHeap := Heap;
    pseudo_loop_head_lblGuard := true;
    
    // -- Before loop head2
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
      
      // -- Store frame in mask associated with loop
        frameMask2 := Mask;
        frameHeap2 := Heap;
    
    // -- Code for loop head 2
      
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
  
  // -- Translating statement: // id = 3
  // assert !b -- 0269.vpr@90.5--90.14
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion !b might not hold. (0269.vpr@90.12--90.14) [58117]"}
      !b_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: // id = 4
  // // LoopInfo(None,Set(2))
  // assert acc(x.f, write) -- 0269.vpr@92.5--92.20
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (0269.vpr@92.12--92.20) [58119]"}
        perm <= AssertMask[x, f_7];
    }
    AssertMask := AssertMask[x, f_7:=AssertMask[x, f_7] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- 0269.vpr@94.5--97.6
    if (b_24) {
      
      // -- Translating statement: // id = 5
  // goto pseudo_loop_head -- 0269.vpr@96.7--96.28
        
        // -- Backedge to loop 2
          
          // -- Check definedness of invariant
            if (*) {
              assume state(Heap, Mask);
              assume false;
            }
          // Exhale invariant
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          // Terminate execution
          assume false;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: // id = 6
  // // LoopDummyStmtInfo()
  // // LoopInfo(None,Set())
  // inhale true -- <no position>
        
        // -- Exiting loops , 2
          havoc LoopSumHeap;
          havoc LoopSumMask;
          assume SumHeap(LoopSumHeap, Heap, Mask, frameHeap2, frameMask2);
          Heap := LoopSumHeap;
          assume sumMask(LoopSumMask, Mask, frameMask2);
          Mask := LoopSumMask;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}