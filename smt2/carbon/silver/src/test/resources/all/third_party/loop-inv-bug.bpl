// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:13:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/loop-inv-bug.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/loop-inv-bug-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of method test05
// ==================================================

procedure test05(n: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var i: int;
  var res: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale i == n -- loop-inv-bug.vpr@15.10--15.16
    assume i == n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale res == i * n -- loop-inv-bug.vpr@16.10--16.22
    assume res == i * n;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert res == n * n -- loop-inv-bug.vpr@17.3--17.22
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion res == n * n might not hold. (loop-inv-bug.vpr@17.10--17.22) [159727]"}
      res == n * n;
    assume state(Heap, Mask);
}

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
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@30.12--30.29) [159728]"}
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@32.11--32.32) [159729]"}
        HasDirectPerm(PostMask, diz, Ref__res);
    assume PostHeap[diz, Ref__res] == n * n;
    assume state(PostHeap, PostMask);
    assume n > 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: i := 0 -- loop-inv-bug.vpr@36.3--36.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__res := 0 -- loop-inv-bug.vpr@37.3--37.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@37.3--37.20) [159730]"}
      FullPerm == Mask[diz, Ref__res];
    Heap := Heap[diz, Ref__res:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < n) -- loop-inv-bug.vpr@38.3--45.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Ref__res, write) might not hold on entry. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@39.15--39.39) [159731]"}
            perm <= Mask[diz, Ref__res];
        }
        Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] - perm];
        assert {:msg "  Loop invariant i <= n might not hold on entry. Assertion i <= n might not hold. (loop-inv-bug.vpr@40.15--40.21) [159732]"}
          i <= n;
        assert {:msg "  Loop invariant diz.Ref__res == i * n might not hold on entry. Assertion diz.Ref__res == i * n might not hold. (loop-inv-bug.vpr@41.15--41.36) [159733]"}
          Heap[diz, Ref__res] == i * n;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
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
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@41.15--41.36) [159734]"}
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
          
          // -- Translating statement: diz.Ref__res := diz.Ref__res + n -- loop-inv-bug.vpr@43.5--43.37
            
            // -- Check definedness of diz.Ref__res + n
              assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@43.5--43.37) [159735]"}
                HasDirectPerm(Mask, diz, Ref__res);
            assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@43.5--43.37) [159736]"}
              FullPerm == Mask[diz, Ref__res];
            Heap := Heap[diz, Ref__res:=Heap[diz, Ref__res] + n];
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- loop-inv-bug.vpr@44.5--44.15
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Ref__res, write) might not be preserved. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@39.15--39.39) [159737]"}
            perm <= Mask[diz, Ref__res];
        }
        Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] - perm];
        assert {:msg "  Loop invariant i <= n might not be preserved. Assertion i <= n might not hold. (loop-inv-bug.vpr@40.15--40.21) [159738]"}
          i <= n;
        assert {:msg "  Loop invariant diz.Ref__res == i * n might not be preserved. Assertion diz.Ref__res == i * n might not hold. (loop-inv-bug.vpr@41.15--41.36) [159739]"}
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
  
  // -- Translating statement: assert i == n -- loop-inv-bug.vpr@46.3--46.16
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion i == n might not hold. (loop-inv-bug.vpr@46.10--46.16) [159740]"}
      i == n;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert diz.Ref__res == i * n -- loop-inv-bug.vpr@47.3--47.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of diz.Ref__res == i * n
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@47.10--47.31) [159741]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__res);
    assert {:msg "  Assert might fail. Assertion diz.Ref__res == i * n might not hold. (loop-inv-bug.vpr@47.10--47.31) [159742]"}
      Heap[diz, Ref__res] == i * n;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert diz.Ref__res == n * n -- loop-inv-bug.vpr@48.3--48.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of diz.Ref__res == n * n
      assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@48.10--48.31) [159743]"}
        HasDirectPerm(ExhaleWellDef0Mask, diz, Ref__res);
    assert {:msg "  Assert might fail. Assertion diz.Ref__res == n * n might not hold. (loop-inv-bug.vpr@48.10--48.31) [159744]"}
      Heap[diz, Ref__res] == n * n;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__Mul might not hold. There might be insufficient permission to access diz.Ref__res (loop-inv-bug.vpr@31.11--31.35) [159745]"}
        perm <= Mask[diz, Ref__res];
    }
    Mask := Mask[diz, Ref__res:=Mask[diz, Ref__res] - perm];
    assert {:msg "  Postcondition of Ref__Mul might not hold. Assertion diz.Ref__res == n * n might not hold. (loop-inv-bug.vpr@32.11--32.32) [159746]"}
      Heap[diz, Ref__res] == n * n;
    assert {:msg "  Postcondition of Ref__Mul might not hold. Assertion n > 0 might not hold. (loop-inv-bug.vpr@33.11--33.16) [159747]"}
      n > 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}