// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:56:44
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_example3.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_example3-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique Counter__x: Field NormalField int;
axiom !IsPredicateField(Counter__x);
axiom !IsWandField(Counter__x);

// ==================================================
// Translation of method parameters__drop
// ==================================================

procedure parameters__drop(diz: Ref, current_thread_id: int, c: Ref, p_1: Perm) returns (q_1: Perm)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
    assume Heap[c, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    assume c != null;
    assume state(Heap, Mask);
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    perm := p_1;
    assert {:msg "  Contract might not be well-formed. Fraction p might be negative. (test_example3.vpr@11.12--11.32) [160132]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> c != null;
    Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
    assume state(Heap, Mask);
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
    assume c != null;
    assume state(PostHeap, PostMask);
    assume NoPerm <= q_1;
    assume state(PostHeap, PostMask);
    perm := q_1;
    assert {:msg "  Contract might not be well-formed. Fraction q might be negative. (test_example3.vpr@14.11--14.31) [160133]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> c != null;
    PostMask := PostMask[c, Counter__x:=PostMask[c, Counter__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume q_1 <= p_1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: q := p / 2 -- test_example3.vpr@17.3--17.13
    q_1 := p_1 / 2;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of parameters__drop might not hold. Assertion c != null might not hold. (test_example3.vpr@12.11--12.20) [160134]"}
      c != null;
    assert {:msg "  Postcondition of parameters__drop might not hold. Assertion q >= none might not hold. (test_example3.vpr@13.11--13.20) [160135]"}
      NoPerm <= q_1;
    perm := q_1;
    assert {:msg "  Postcondition of parameters__drop might not hold. Fraction q might be negative. (test_example3.vpr@14.11--14.31) [160136]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of parameters__drop might not hold. There might be insufficient permission to access c.Counter__x (test_example3.vpr@14.11--14.31) [160137]"}
        perm <= Mask[c, Counter__x];
    }
    Mask := Mask[c, Counter__x:=Mask[c, Counter__x] - perm];
    assert {:msg "  Postcondition of parameters__drop might not hold. Assertion q <= p might not hold. (test_example3.vpr@15.11--15.17) [160138]"}
      q_1 <= p_1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method parameters__main
// ==================================================

procedure parameters__main(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var c: Ref;
  var __flatten_1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var __flatten_2: int;
  var __flatten_8: int;
  var arg_p: Perm;
  var ExhaleHeap: HeapType;
  var dummy_yields_1: Perm;
  var __flatten_4: int;
  var __flatten_10: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[c, $allocated];
    assume Heap[__flatten_1, $allocated];
  
  // -- Translating statement: __flatten_1 := Counter__Counter(current_thread_id) -- test_example3.vpr@31.3--31.53
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Counter__Counter might not hold. Assertion current_thread_id >= 0 might not hold. (test_example3.vpr@31.3--31.53) [160139]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_1;
    
    // -- Inhaling postcondition
      assume __flatten_1 != null;
      perm := FullPerm;
      assume __flatten_1 != null;
      Mask := Mask[__flatten_1, Counter__x:=Mask[__flatten_1, Counter__x] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_1, Counter__x] == 0;
      assume state(Heap, Mask);
    assume Heap[__flatten_1, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: c := __flatten_1 -- test_example3.vpr@32.3--32.19
    c := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := 37 -- test_example3.vpr@33.3--33.20
    __flatten_2 := 37;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := __flatten_2 -- test_example3.vpr@34.3--34.29
    __flatten_8 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: c.Counter__x := __flatten_8 -- test_example3.vpr@35.3--35.30
    assert {:msg "  Assignment might fail. There might be insufficient permission to access c.Counter__x (test_example3.vpr@35.3--35.30) [160140]"}
      FullPerm == Mask[c, Counter__x];
    Heap := Heap[c, Counter__x:=__flatten_8];
    assume state(Heap, Mask);
  
  // -- Translating statement: dummy_yields_1 := parameters__drop(diz, current_thread_id, c, write) -- test_example3.vpr@36.3--36.71
    PreCallHeap := Heap;
    PreCallMask := Mask;
    arg_p := FullPerm;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method parameters__drop might not hold. Assertion diz != null might not hold. (test_example3.vpr@36.3--36.71) [160141]"}
        diz != null;
      assert {:msg "  The precondition of method parameters__drop might not hold. Assertion current_thread_id >= 0 might not hold. (test_example3.vpr@36.3--36.71) [160142]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method parameters__drop might not hold. Assertion c != null might not hold. (test_example3.vpr@36.3--36.71) [160143]"}
        c != null;
      assert {:msg "  The precondition of method parameters__drop might not hold. Assertion write >= none might not hold. (test_example3.vpr@36.3--36.71) [160144]"}
        NoPerm <= arg_p;
      perm := arg_p;
      assert {:msg "  The precondition of method parameters__drop might not hold. Fraction write might be negative. (test_example3.vpr@36.3--36.71) [160145]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method parameters__drop might not hold. There might be insufficient permission to access c.Counter__x (test_example3.vpr@36.3--36.71) [160146]"}
          perm <= Mask[c, Counter__x];
      }
      Mask := Mask[c, Counter__x:=Mask[c, Counter__x] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc dummy_yields_1;
    
    // -- Inhaling postcondition
      assume c != null;
      assume NoPerm <= dummy_yields_1;
      perm := dummy_yields_1;
      assert {:msg "  Method call might fail. Fraction dummy_yields_1 might be negative. (test_example3.vpr@36.3--36.71) [160147]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> c != null;
      Mask := Mask[c, Counter__x:=Mask[c, Counter__x] + perm];
      assume state(Heap, Mask);
      assume dummy_yields_1 <= arg_p;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := 12 -- test_example3.vpr@37.3--37.20
    __flatten_4 := 12;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_10 := __flatten_4 -- test_example3.vpr@38.3--38.30
    __flatten_10 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: c.Counter__x := __flatten_10 -- test_example3.vpr@41.3--41.31
    assert {:msg "  Assignment might fail. There might be insufficient permission to access c.Counter__x (test_example3.vpr@41.3--41.31) [160148]"}
      FullPerm == Mask[c, Counter__x];
    Heap := Heap[c, Counter__x:=__flatten_10];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method parameters__parameters
// ==================================================

procedure parameters__parameters(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new() -- test_example3.vpr@49.3--49.15
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_example3.vpr@50.3--50.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- test_example3.vpr@51.3--51.29
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_example3.vpr@51.10--51.29) [160149]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_example3.vpr@52.3--52.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of parameters__parameters might not hold. Assertion sys__result != null might not hold. (test_example3.vpr@46.11--46.30) [160150]"}
      sys__result != null;
}

// ==================================================
// Translation of method Counter__incr
// ==================================================

procedure Counter__incr(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_5: int;
  var __flatten_11: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] + perm];
    assume state(Heap, Mask);
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
    PostMask := PostMask[diz, Counter__x:=PostMask[diz, Counter__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Counter__x == old(diz.Counter__x) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Counter__x (test_example3.vpr@60.11--60.52) [160151]"}
        HasDirectPerm(PostMask, diz, Counter__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Counter__x (test_example3.vpr@60.11--60.52) [160152]"}
        HasDirectPerm(oldMask, diz, Counter__x);
    assume PostHeap[diz, Counter__x] == oldHeap[diz, Counter__x] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_5 := diz.Counter__x + 1 -- test_example3.vpr@64.3--64.36
    
    // -- Check definedness of diz.Counter__x + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example3.vpr@64.3--64.36) [160153]"}
        HasDirectPerm(Mask, diz, Counter__x);
    __flatten_5 := Heap[diz, Counter__x] + 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := __flatten_5 -- test_example3.vpr@65.3--65.30
    __flatten_11 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Counter__x := __flatten_11 -- test_example3.vpr@66.3--66.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example3.vpr@66.3--66.33) [160154]"}
      FullPerm == Mask[diz, Counter__x];
    Heap := Heap[diz, Counter__x:=__flatten_11];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Counter__incr might not hold. There might be insufficient permission to access diz.Counter__x (test_example3.vpr@59.11--59.37) [160155]"}
        perm <= Mask[diz, Counter__x];
    }
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] - perm];
    assert {:msg "  Postcondition of Counter__incr might not hold. Assertion diz.Counter__x == old(diz.Counter__x) + 1 might not hold. (test_example3.vpr@60.11--60.52) [160156]"}
      Heap[diz, Counter__x] == oldHeap[diz, Counter__x] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Counter__Counter
// ==================================================

procedure Counter__Counter(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_6: int;
  var __flatten_12: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Counter__x:=PostMask[sys__result, Counter__x] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Counter__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Counter__x (test_example3.vpr@72.11--72.78) [160157]"}
        HasDirectPerm(PostMask, sys__result, Counter__x);
    assume PostHeap[sys__result, Counter__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Counter__x) -- test_example3.vpr@77.3--77.25
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Counter__x:=Mask[diz, Counter__x] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := 0 -- test_example3.vpr@78.3--78.19
    __flatten_6 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_12 := __flatten_6 -- test_example3.vpr@79.3--79.30
    __flatten_12 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Counter__x := __flatten_12 -- test_example3.vpr@80.3--80.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Counter__x (test_example3.vpr@80.3--80.33) [160158]"}
      FullPerm == Mask[diz, Counter__x];
    Heap := Heap[diz, Counter__x:=__flatten_12];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_example3.vpr@81.3--81.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Counter__x, write) && sys__result.Counter__x == 0) -- test_example3.vpr@82.3--82.104
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_example3.vpr@82.10--82.104) [160159]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Counter__x (test_example3.vpr@82.10--82.104) [160161]"}
        perm <= AssertMask[sys__result, Counter__x];
    }
    AssertMask := AssertMask[sys__result, Counter__x:=AssertMask[sys__result, Counter__x] - perm];
    
    // -- Check definedness of sys__result.Counter__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Counter__x (test_example3.vpr@82.10--82.104) [160162]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Counter__x);
    assert {:msg "  Assert might fail. Assertion sys__result.Counter__x == 0 might not hold. (test_example3.vpr@82.10--82.104) [160163]"}
      AssertHeap[sys__result, Counter__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_example3.vpr@83.3--83.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Counter__Counter might not hold. Assertion sys__result != null might not hold. (test_example3.vpr@71.11--71.30) [160164]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Counter__Counter might not hold. There might be insufficient permission to access sys__result.Counter__x (test_example3.vpr@72.11--72.78) [160165]"}
        perm <= Mask[sys__result, Counter__x];
    }
    Mask := Mask[sys__result, Counter__x:=Mask[sys__result, Counter__x] - perm];
    assert {:msg "  Postcondition of Counter__Counter might not hold. Assertion sys__result.Counter__x == 0 might not hold. (test_example3.vpr@72.11--72.78) [160166]"}
      Heap[sys__result, Counter__x] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}