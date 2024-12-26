// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:14:41
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/while.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/while-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of method t1
// ==================================================

procedure t1(n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 0 -- while.vpr@10.5--10.20
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- while.vpr@12.5--16.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant i <= n might not hold on entry. Assertion i <= n might not hold. (while.vpr@13.19--13.25) [185793]"}
          i <= n;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        assume i <= n;
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
        assume i <= n;
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: i := i + 1 -- while.vpr@15.9--15.17
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant i <= n might not be preserved. Assertion i <= n might not hold. (while.vpr@13.19--13.25) [185794]"}
          i <= n;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      assume i <= n;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2(n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 0 -- while.vpr@22.5--22.20
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- while.vpr@24.5--29.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant i < n might not hold on entry. Assertion i < n might not hold. (while.vpr@26.19--26.24) [185795]"}
          i < n;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        assume i < n;
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
        assume i < n;
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: i := i + 1 -- while.vpr@28.9--28.17
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant i < n might not be preserved. Assertion i < n might not hold. (while.vpr@26.19--26.24) [185796]"}
          i < n;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      assume i < n;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t3
// ==================================================

procedure t3(n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume n > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 2 -- while.vpr@35.5--35.20
    i := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- while.vpr@37.5--42.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant i <= n might not hold on entry. Assertion i <= n might not hold. (while.vpr@39.19--39.25) [185797]"}
          i <= n;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        assume i <= n;
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
        assume i <= n;
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: i := i + 1 -- while.vpr@41.9--41.17
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant i <= n might not be preserved. Assertion i <= n might not hold. (while.vpr@39.19--39.25) [185798]"}
          i <= n;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      assume i <= n;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t4
// ==================================================

procedure t4(n: int, r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume n > 0;
    assume state(Heap, Mask);
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 2 -- while.vpr@49.5--49.20
    i := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < r.f) -- while.vpr@52.5--55.6
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
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
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of i < r.f
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.f (while.vpr@52.12--52.21) [185799]"}
            HasDirectPerm(Mask, r_1, f_7);
        assume i < Heap[r_1, f_7];
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: i := i + 1 -- while.vpr@54.9--54.17
            i := i + 1;
            assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < Heap[r_1, f_7]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t5
// ==================================================

procedure t5(n: int, r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume n > 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 2 -- while.vpr@62.5--62.20
    i := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < r.f) -- while.vpr@64.5--68.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.f, write) might not hold on entry. There might be insufficient permission to access r.f (while.vpr@65.19--65.34) [185800]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
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
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of i < r.f
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.f (while.vpr@64.12--64.21) [185801]"}
            HasDirectPerm(Mask, r_1, f_7);
        assume i < Heap[r_1, f_7];
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: i := i + 1 -- while.vpr@67.9--67.17
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.f, write) might not be preserved. There might be insufficient permission to access r.f (while.vpr@65.19--65.34) [185802]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < Heap[r_1, f_7]);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t6
// ==================================================

procedure t6(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: while (perm(r.f) == none) -- while.vpr@73.5--75.6
    
    // -- Check definedness of invariant
      if (*) {
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
        assume state(Heap, Mask);
        // Check and assume guard
        assume Mask[r_1, f_7] == NoPerm;
        assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Mask[r_1, f_7] == NoPerm);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t7
// ==================================================

procedure t7(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var j_9: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: i := 1 -- while.vpr@80.5--80.20
    i := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: j := 2 -- while.vpr@81.5--81.20
    j_9 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (true) -- while.vpr@83.5--89.6
    
    // -- Havoc loop written variables (except locals)
      havoc j_9;
    
    // -- Check definedness of invariant
      if (*) {
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
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: assert i == 1 -- while.vpr@85.9--85.22
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion i == 1 might not hold. (while.vpr@85.16--85.22) [185803]"}
              i == 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert j == 2 -- while.vpr@87.9--87.22
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            assert {:msg "  Assert might fail. Assertion j == 2 might not hold. (while.vpr@87.16--87.22) [185804]"}
              j_9 == 2;
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + 1 -- while.vpr@88.9--88.17
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t8
// ==================================================

procedure t8(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var j_9: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: j := 2 -- while.vpr@94.5--94.20
    j_9 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < 10) -- while.vpr@96.5--99.6
    
    // -- Havoc loop written variables (except locals)
      havoc j_9;
    
    // -- Check definedness of invariant
      if (*) {
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
        assume state(Heap, Mask);
        // Check and assume guard
        assume j_9 < 10;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: j := j + 1 -- while.vpr@98.9--98.17
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_9 < 10);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j >= 10 -- while.vpr@101.5--101.19
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion j >= 10 might not hold. (while.vpr@101.12--101.19) [185805]"}
      j_9 >= 10;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- while.vpr@103.5--103.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion false might not hold. (while.vpr@103.12--103.17) [185806]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t9
// ==================================================

procedure t9(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: j := 2 -- while.vpr@109.5--109.20
    j_9 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < r.f) -- while.vpr@110.5--114.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.f, write) might not hold on entry. There might be insufficient permission to access r.f (while.vpr@111.19--111.34) [185807]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j_9;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
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
        assume r_1 != null;
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of j < r.f
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.f (while.vpr@110.12--110.21) [185808]"}
            HasDirectPerm(Mask, r_1, f_7);
        assume j_9 < Heap[r_1, f_7];
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: j := j + 1 -- while.vpr@113.9--113.17
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(r.f, write) might not be preserved. There might be insufficient permission to access r.f (while.vpr@111.19--111.34) [185809]"}
            perm <= Mask[r_1, f_7];
        }
        Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_9 < Heap[r_1, f_7]);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j >= r.f -- while.vpr@115.5--115.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of j >= r.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (while.vpr@115.12--115.22) [185810]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion j >= r.f might not hold. (while.vpr@115.12--115.22) [185811]"}
      j_9 >= Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t10
// ==================================================

procedure t10(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var j_9: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: j := 2 -- while.vpr@121.5--121.20
    j_9 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < r.f) -- while.vpr@124.5--127.6
    
    // -- Havoc loop written variables (except locals)
      havoc j_9;
    
    // -- Check definedness of invariant
      if (*) {
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
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of j < r.f
          assert {:msg "  While statement might fail. There might be insufficient permission to access r.f (while.vpr@124.12--124.21) [185812]"}
            HasDirectPerm(Mask, r_1, f_7);
        assume j_9 < Heap[r_1, f_7];
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: j := j + 1 -- while.vpr@126.9--126.17
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_9 < Heap[r_1, f_7]);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert j >= r.f -- while.vpr@128.5--128.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of j >= r.f
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.f (while.vpr@128.12--128.22) [185813]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, f_7);
    assert {:msg "  Assert might fail. Assertion j >= r.f might not hold. (while.vpr@128.12--128.22) [185814]"}
      j_9 >= Heap[r_1, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t11
// ==================================================

procedure t11(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var j_9: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: j := 2 -- while.vpr@134.5--134.20
    j_9 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < 3) -- while.vpr@136.5--143.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant r != null && r.f == 2 might not hold on entry. Assertion r != null might not hold. (while.vpr@140.19--140.40) [185815]"}
          r_1 != null;
        assert {:msg "  Loop invariant r != null && r.f == 2 might not hold on entry. Assertion r.f == 2 might not hold. (while.vpr@140.19--140.40) [185816]"}
          Heap[r_1, f_7] == 2;
    
    // -- Havoc loop written variables (except locals)
      havoc j_9;
    
    // -- Check definedness of invariant
      if (*) {
        assume r_1 != null;
        
        // -- Check definedness of r.f == 2
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (while.vpr@140.19--140.40) [185817]"}
            HasDirectPerm(Mask, r_1, f_7);
        assume Heap[r_1, f_7] == 2;
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
        assume r_1 != null;
        assume Heap[r_1, f_7] == 2;
        assume state(Heap, Mask);
        // Check and assume guard
        assume j_9 < 3;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: j := j + 1 -- while.vpr@142.9--142.17
            j_9 := j_9 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Loop invariant r != null && r.f == 2 might not be preserved. Assertion r != null might not hold. (while.vpr@140.19--140.40) [185818]"}
          r_1 != null;
        assert {:msg "  Loop invariant r != null && r.f == 2 might not be preserved. Assertion r.f == 2 might not hold. (while.vpr@140.19--140.40) [185819]"}
          Heap[r_1, f_7] == 2;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_9 < 3);
      assume state(Heap, Mask);
      assume r_1 != null;
      assume Heap[r_1, f_7] == 2;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}