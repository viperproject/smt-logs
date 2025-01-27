// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:41
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testLoopInvariantE1.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testLoopInvariantE1-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique Ref__res: Field NormalField int;
axiom !IsPredicateField(Ref__res);
axiom !IsWandField(Ref__res);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of method Ref__Mul
// ==================================================

procedure Ref__Mul(diz: Ref, n: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var __flatten_2: int;
  var __flatten_5: int;
  var __flatten_1: int;
  var __flatten_4: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var __flatten_6: int;
  var __flatten_3: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume n > 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Ref__res == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@12.12--12.29) [22168]"}
        HasDirectPerm(Mask, diz, Ref__res);
    assume Heap[diz, Ref__res] == 0;
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
    PostMask := PostMask[diz, Ref__res:=PostMask[diz, Ref__res] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__res == n * n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@14.11--14.32) [22169]"}
        HasDirectPerm(PostMask, diz, Ref__res);
    assume PostHeap[diz, Ref__res] == n * n;
    assume state(PostHeap, PostMask);
    assume n > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: i := 0 -- testLoopInvariantE1.vpr@24.3--24.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__res := 0 -- testLoopInvariantE1.vpr@25.3--25.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@25.3--25.20) [22170]"}
      FullPerm == Mask[diz, Ref__res];
    Heap := Heap[diz, Ref__res:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- testLoopInvariantE1.vpr@26.3--40.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Ref__res, write) might not hold on entry. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@27.15--27.39) [22171]"}
            perm <= Mask[diz, Ref__res];
        }
        Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] - perm];
        assert {:msg "  Loop invariant i <= n might not hold on entry. Assertion i <= n might not hold. (testLoopInvariantE1.vpr@29.15--29.21) [22172]"}
          i <= n;
        assert {:msg "  Loop invariant diz.Ref__res == i * n might not hold on entry. Assertion diz.Ref__res == i * n might not hold. (testLoopInvariantE1.vpr@32.15--32.36) [22173]"}
          Heap[diz, Ref__res] == i * n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i, __flatten_2, __flatten_5, __flatten_1, __flatten_4;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume i <= n;
        assume state(Heap, Mask);
        
        // -- Check definedness of diz.Ref__res == i * n
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@32.15--32.36) [22174]"}
            HasDirectPerm(Mask, diz, Ref__res);
        assume Heap[diz, Ref__res] == i * n;
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
        assume diz != null;
        Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] + perm];
        assume state(Heap, Mask);
        assume i <= n;
        assume Heap[diz, Ref__res] == i * n;
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < n;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: __flatten_4 := diz.Ref__res + n -- testLoopInvariantE1.vpr@34.5--34.36
            
            // -- Check definedness of diz.Ref__res + n
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@34.5--34.36) [22175]"}
                HasDirectPerm(Mask, diz, Ref__res);
            __flatten_4 := Heap[diz, Ref__res] + n;
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_1 := __flatten_4 -- testLoopInvariantE1.vpr@35.5--35.31
            __flatten_1 := __flatten_4;
            assume state(Heap, Mask);
          
          // -- Translating statement: diz.Ref__res := __flatten_1 -- testLoopInvariantE1.vpr@36.5--36.32
            assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@36.5--36.32) [22176]"}
              FullPerm == Mask[diz, Ref__res];
            Heap := Heap[diz, Ref__res:=__flatten_1];
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_5 := i + 2 -- testLoopInvariantE1.vpr@37.5--37.25
            __flatten_5 := i + 2;
            assume state(Heap, Mask);
          
          // -- Translating statement: __flatten_2 := __flatten_5 -- testLoopInvariantE1.vpr@38.5--38.31
            __flatten_2 := __flatten_5;
            assume state(Heap, Mask);
          
          // -- Translating statement: i := __flatten_2 -- testLoopInvariantE1.vpr@39.5--39.21
            i := __flatten_2;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Ref__res, write) might not be preserved. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@27.15--27.39) [22177]"}
            perm <= Mask[diz, Ref__res];
        }
        Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] - perm];
        assert {:msg "  Loop invariant i <= n might not be preserved. Assertion i <= n might not hold. (testLoopInvariantE1.vpr@29.15--29.21) [22178]"}
          i <= n;
        assert {:msg "  Loop invariant diz.Ref__res == i * n might not be preserved. Assertion diz.Ref__res == i * n might not hold. (testLoopInvariantE1.vpr@32.15--32.36) [22179]"}
          Heap[diz, Ref__res] == i * n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < n);
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] + perm];
      assume state(Heap, Mask);
      assume i <= n;
      assume Heap[diz, Ref__res] == i * n;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := diz.Ref__res -- testLoopInvariantE1.vpr@41.3--41.30
    
    // -- Check definedness of diz.Ref__res
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@41.3--41.30) [22180]"}
        HasDirectPerm(Mask, diz, Ref__res);
    __flatten_6 := Heap[diz, Ref__res];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := __flatten_6 -- testLoopInvariantE1.vpr@42.3--42.29
    __flatten_3 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_3 -- testLoopInvariantE1.vpr@43.3--43.29
    sys__result := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(diz.Ref__res, write) && (diz.Ref__res == n * n && n > 0) -- testLoopInvariantE1.vpr@44.3--44.72
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@44.10--44.72) [22182]"}
        perm <= AssertMask[diz, Ref__res];
    }
    AssertMask := AssertMask[diz, Ref__res:=AssertMask[diz, Ref__res] - perm];
    
    // -- Check definedness of diz.Ref__res == n * n
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@44.10--44.72) [22183]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__res);
    assert {:msg "  Assert might fail. Assertion diz.Ref__res == n * n might not hold. (testLoopInvariantE1.vpr@44.10--44.72) [22184]"}
      AssertHeap[diz, Ref__res] == n * n;
    assert {:msg "  Assert might fail. Assertion n > 0 might not hold. (testLoopInvariantE1.vpr@44.10--44.72) [22185]"}
      n > 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testLoopInvariantE1.vpr@45.3--45.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__Mul might not hold. There might be insufficient permission to access diz.Ref__res (testLoopInvariantE1.vpr@13.11--13.35) [22186]"}
        perm <= Mask[diz, Ref__res];
    }
    Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] - perm];
    assert {:msg "  Postcondition of Ref__Mul might not hold. Assertion diz.Ref__res == n * n might not hold. (testLoopInvariantE1.vpr@14.11--14.32) [22187]"}
      Heap[diz, Ref__res] == n * n;
    assert {:msg "  Postcondition of Ref__Mul might not hold. Assertion n > 0 might not hold. (testLoopInvariantE1.vpr@15.11--15.16) [22188]"}
      n > 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}