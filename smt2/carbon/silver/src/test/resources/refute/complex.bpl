// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:45:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/refute/complex.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/refute/complex-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

// Function heights (higher height means its body is available earlier):
// - height 0: foo
const AssumeFunctionsAbove: int;
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
// Translation of function foo
// ==================================================

// Uninterpreted function definitions
function  foo_1(Heap: HeapType, x: Ref): bool;
function  foo'(Heap: HeapType, x: Ref): bool;
axiom (forall Heap: HeapType, x: Ref ::
  { foo_1(Heap, x) }
  foo_1(Heap, x) == foo'(Heap, x) && dummyFunction(foo#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { foo'(Heap, x) }
  dummyFunction(foo#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo_1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_1(Heap, x) == (Heap[x, f_7] == Heap[x, f_7])
);

// Framing axioms
function  foo#frame(frame: FrameType, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), foo'(Heap, x) }
  state(Heap, Mask) ==> foo'(Heap, x) == foo#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  foo#trigger_1(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  foo#triggerStateless(x: Ref): bool;

// Check contract well-formedness and postcondition
procedure foo#definedness(x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of x.f == x.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (complex.vpr@3.1--4.37) [225319]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (complex.vpr@3.1--4.37) [225320]"}
        HasDirectPerm(Mask, x, f_7);
  
  // -- Translate function body
    Result := Heap[x, f_7] == Heap[x, f_7];
}

// ==================================================
// Translation of method bar
// ==================================================

procedure bar_2(y: int) returns ()
  modifies Heap, Mask;
{
  var l_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var perm: Perm;
  var LabellMask: MaskType;
  var LabellHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var __plugin_refute_nondet1: bool;
  var __plugin_refute_nondet2: bool;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var __plugin_refute_nondet3: bool;
  var z: int;
  var __plugin_refute_nondet4: bool;
  var __plugin_refute_nondet5: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    l_lblGuard := false;
  
  // -- Checked inhaling of precondition
    assume y > 10;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
  
  // -- Translating statement: inhale acc(x.f, write) -- complex.vpr@10.5--10.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label l -- complex.vpr@11.5--11.12
    l_8:
    LabellMask := Mask;
    LabellHeap := Heap;
    l_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (x.f > y) -- complex.vpr@12.5--19.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, write) && (old[l](x.f >= y) ==> x.f >= y) might not hold on entry. There might be insufficient permission to access x.f (complex.vpr@13.19--13.62) [225322]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        if (LabellHeap[x, f_7] >= y) {
          assert {:msg "  Loop invariant acc(x.f, write) && (old[l](x.f >= y) ==> x.f >= y) might not hold on entry. Assertion x.f >= y might not hold. (complex.vpr@13.19--13.62) [225323]"}
            Heap[x, f_7] >= y;
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        
        // -- Check definedness of old[l](x.f >= y)
          assert {:msg "  Contract might not be well-formed. Did not reach labelled state l required to evaluate old[l](x.f >= y). (complex.vpr@13.19--13.62) [225324]"}
            l_lblGuard;
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (complex.vpr@13.19--13.62) [225325]"}
            HasDirectPerm(LabellMask, x, f_7);
        if (LabellHeap[x, f_7] >= y) {
          
          // -- Check definedness of x.f >= y
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (complex.vpr@13.19--13.62) [225326]"}
              HasDirectPerm(Mask, x, f_7);
          assume Heap[x, f_7] >= y;
        }
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
        assume x != null;
        Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
        assume state(Heap, Mask);
        if (LabellHeap[x, f_7] >= y) {
          assume Heap[x, f_7] >= y;
        }
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of x.f > y
          assert {:msg "  While statement might fail. There might be insufficient permission to access x.f (complex.vpr@12.12--12.19) [225327]"}
            HasDirectPerm(Mask, x, f_7);
        assume Heap[x, f_7] > y;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (__plugin_refute_nondet1) -- complex.vpr@15.9--15.23
            if (__plugin_refute_nondet1) {
              
              // -- Translating statement: assert x.f < y -- complex.vpr@15.9--15.23
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of x.f < y
                  assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (complex.vpr@15.16--15.23) [225328]"}
                    HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
                assert {:msg "  Assert might fail. Assertion x.f < y might not hold. (complex.vpr@15.16--15.23) [225329]"}
                  Heap[x, f_7] < y;
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale false -- complex.vpr@15.9--15.23
                assume false;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: x.f := x.f - 1 -- complex.vpr@16.9--16.23
            
            // -- Check definedness of x.f - 1
              assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (complex.vpr@16.9--16.23) [225330]"}
                HasDirectPerm(Mask, x, f_7);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (complex.vpr@16.9--16.23) [225331]"}
              FullPerm == Mask[x, f_7];
            Heap := Heap[x, f_7:=Heap[x, f_7] - 1];
            assume state(Heap, Mask);
          
          // -- Translating statement: if (__plugin_refute_nondet2) -- complex.vpr@18.9--18.22
            if (__plugin_refute_nondet2) {
              
              // -- Translating statement: assert foo(x) -- complex.vpr@18.9--18.22
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of foo(x)
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function foo might not hold. There might be insufficient permission to access x.f (complex.vpr@18.16--18.22) [225332]"}
                      NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                    ExhaleWellDef0Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion foo(x) might not hold. (complex.vpr@18.16--18.22) [225333]"}
                  foo_1(Heap, x);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale false -- complex.vpr@18.9--18.22
                assume false;
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(x.f, write) && (old[l](x.f >= y) ==> x.f >= y) might not be preserved. There might be insufficient permission to access x.f (complex.vpr@13.19--13.62) [225334]"}
            perm <= Mask[x, f_7];
        }
        Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
        if (LabellHeap[x, f_7] >= y) {
          assert {:msg "  Loop invariant acc(x.f, write) && (old[l](x.f >= y) ==> x.f >= y) might not be preserved. Assertion x.f >= y might not hold. (complex.vpr@13.19--13.62) [225335]"}
            Heap[x, f_7] >= y;
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(Heap[x, f_7] > y);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      if (LabellHeap[x, f_7] >= y) {
        assume Heap[x, f_7] >= y;
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet3) -- complex.vpr@20.5--20.20
    if (__plugin_refute_nondet3) {
      
      // -- Translating statement: assert x.f == y -- complex.vpr@20.5--20.20
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of x.f == y
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (complex.vpr@20.12--20.20) [225336]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
        assert {:msg "  Assert might fail. Assertion x.f == y might not hold. (complex.vpr@20.12--20.20) [225337]"}
          Heap[x, f_7] == y;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- complex.vpr@20.5--20.20
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (z > 10) -- complex.vpr@23.5--27.6
    if (z > 10) {
      
      // -- Translating statement: z := z + 1 -- complex.vpr@24.9--24.17
        z := z + 1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: z := z - 1 -- complex.vpr@26.9--26.17
        z := z - 1;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (z < -10) -- complex.vpr@28.5--32.6
    if (z < -10) {
      
      // -- Translating statement: z := z + 1 -- complex.vpr@29.9--29.17
        z := z + 1;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: z := z - 1 -- complex.vpr@31.9--31.17
        z := z - 1;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet4) -- complex.vpr@33.5--33.19
    if (__plugin_refute_nondet4) {
      
      // -- Translating statement: assert z == 10 -- complex.vpr@33.5--33.19
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion z == 10 might not hold. (complex.vpr@33.12--33.19) [225338]"}
          z == 10;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- complex.vpr@33.5--33.19
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (__plugin_refute_nondet5) -- complex.vpr@35.5--35.27
    if (__plugin_refute_nondet5) {
      
      // -- Translating statement: assert z < 9 || z > 10 -- complex.vpr@35.5--35.27
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion z < 9 || z > 10 might not hold. (complex.vpr@35.12--35.27) [225339]"}
          z < 9 || z > 10;
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- complex.vpr@35.5--35.27
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}