// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:51
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryProcessesPVL.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/testHistoryProcessesPVL-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique Ref__x: Field NormalField int;
axiom !IsPredicateField(Ref__x);
axiom !IsWandField(Ref__x);
const unique Ref__x_old: Field NormalField int;
axiom !IsPredicateField(Ref__x_old);
axiom !IsWandField(Ref__x_old);
const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of method Ref__empty
// ==================================================

procedure Ref__empty(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__x == old(diz.Ref__x)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@14.11--14.40) [44693]"}
        HasDirectPerm(PostMask, diz, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@14.11--14.40) [44694]"}
        HasDirectPerm(oldMask, diz, Ref__x);
    assume PostHeap[diz, Ref__x] == oldHeap[diz, Ref__x];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@16.3--16.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@13.11--13.33) [44695]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__empty might not hold. Assertion diz.Ref__x == old(diz.Ref__x) might not hold. (testHistoryProcessesPVL.vpr@14.11--14.40) [44696]"}
      Heap[diz, Ref__x] == oldHeap[diz, Ref__x];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__incr
// ==================================================

procedure Ref__incr(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__x == old(diz.Ref__x) + 1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@23.11--23.44) [44697]"}
        HasDirectPerm(PostMask, diz, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@23.11--23.44) [44698]"}
        HasDirectPerm(oldMask, diz, Ref__x);
    assume PostHeap[diz, Ref__x] == oldHeap[diz, Ref__x] + 1;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@25.3--25.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@22.11--22.33) [44699]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__incr might not hold. Assertion diz.Ref__x == old(diz.Ref__x) + 1 might not hold. (testHistoryProcessesPVL.vpr@23.11--23.44) [44700]"}
      Heap[diz, Ref__x] == oldHeap[diz, Ref__x] + 1;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__single
// ==================================================

procedure Ref__single(diz: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__x == old(diz.Ref__x) + n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@33.11--33.44) [44701]"}
        HasDirectPerm(PostMask, diz, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@33.11--33.44) [44702]"}
        HasDirectPerm(oldMask, diz, Ref__x);
    assume PostHeap[diz, Ref__x] == oldHeap[diz, Ref__x] + n;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (n > 0) -- testHistoryProcessesPVL.vpr@36.3--41.4
    if (n > 0) {
      
      // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@37.5--37.19
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@37.5--37.19) [44703]"}
            diz != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@37.5--37.19) [44704]"}
              perm <= Mask[diz, Ref__x];
          }
          Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          assume diz != null;
          Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
          assume state(Heap, Mask);
          assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: Ref__single(diz, n - 1) -- testHistoryProcessesPVL.vpr@38.5--38.28
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_n := n - 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__single might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@38.5--38.28) [44705]"}
            diz != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__single might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@38.5--38.28) [44706]"}
              perm <= Mask[diz, Ref__x];
          }
          Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
          assert {:msg "  The precondition of method Ref__single might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@38.5--38.28) [44707]"}
            arg_n >= 0;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          assume diz != null;
          Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
          assume state(Heap, Mask);
          assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n;
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@40.5--40.20
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@40.5--40.20) [44708]"}
            diz != null;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@40.5--40.20) [44709]"}
              perm <= Mask[diz, Ref__x];
          }
          Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          assume diz != null;
          Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
          assume state(Heap, Mask);
          assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__single might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@32.11--32.33) [44710]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__single might not hold. Assertion diz.Ref__x == old(diz.Ref__x) + n might not hold. (testHistoryProcessesPVL.vpr@33.11--33.44) [44711]"}
      Heap[diz, Ref__x] == oldHeap[diz, Ref__x] + n;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__dual
// ==================================================

procedure Ref__dual(diz: Ref, n: int, m_18: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var __flatten_5: bool;
  var __flatten_4: bool;
  var if_any_bool: bool;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  var arg_n_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
    assume m_18 >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__x == old(diz.Ref__x) + n + m
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@49.11--49.48) [44712]"}
        HasDirectPerm(PostMask, diz, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@49.11--49.48) [44713]"}
        HasDirectPerm(oldMask, diz, Ref__x);
    assume PostHeap[diz, Ref__x] == oldHeap[diz, Ref__x] + n + m_18;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_5 := Ref__if_any_random(diz) -- testHistoryProcessesPVL.vpr@54.3--54.41
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@54.3--54.41) [44714]"}
        diz != null;
    
    // -- Havocing target variables
      havoc __flatten_5;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := __flatten_5 -- testHistoryProcessesPVL.vpr@55.3--55.29
    __flatten_4 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: if_any_bool := __flatten_4 -- testHistoryProcessesPVL.vpr@56.3--56.29
    if_any_bool := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (if_any_bool) -- testHistoryProcessesPVL.vpr@57.3--71.4
    if (if_any_bool) {
      
      // -- Translating statement: if (n > 0) -- testHistoryProcessesPVL.vpr@58.5--64.6
        if (n > 0) {
          
          // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@59.7--59.21
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@59.7--59.21) [44715]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@59.7--59.21) [44716]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__dual(diz, n - 1, m) -- testHistoryProcessesPVL.vpr@60.7--60.31
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n := n - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@60.7--60.31) [44717]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@60.7--60.31) [44718]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@60.7--60.31) [44719]"}
                arg_n >= 0;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@60.7--60.31) [44720]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@62.7--62.22
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@62.7--62.22) [44721]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@62.7--62.22) [44722]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__single(diz, m) -- testHistoryProcessesPVL.vpr@63.7--63.26
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__single might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@63.7--63.26) [44723]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__single might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@63.7--63.26) [44724]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__single might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@63.7--63.26) [44725]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (m > 0) -- testHistoryProcessesPVL.vpr@65.5--71.4
        if (m_18 > 0) {
          
          // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@66.5--66.19
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@66.5--66.19) [44726]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@66.5--66.19) [44727]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__dual(diz, m - 1, n) -- testHistoryProcessesPVL.vpr@67.5--67.29
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n_1 := m_18 - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@67.5--67.29) [44728]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@67.5--67.29) [44729]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion m - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@67.5--67.29) [44730]"}
                arg_n_1 >= 0;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@67.5--67.29) [44731]"}
                n >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n_1 + n;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@69.5--69.20
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@69.5--69.20) [44732]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@69.5--69.20) [44733]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__single(diz, n) -- testHistoryProcessesPVL.vpr@70.5--70.24
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__single might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@70.5--70.24) [44734]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__single might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@70.5--70.24) [44735]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__single might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@70.5--70.24) [44736]"}
                n >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + n;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@48.11--48.33) [44737]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__dual might not hold. Assertion diz.Ref__x == old(diz.Ref__x) + n + m might not hold. (testHistoryProcessesPVL.vpr@49.11--49.48) [44738]"}
      Heap[diz, Ref__x] == oldHeap[diz, Ref__x] + n + m_18;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__triple21
// ==================================================

procedure Ref__triple21(diz: Ref, n: int, m_18: int, k: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var __flatten_15: bool;
  var __flatten_14: bool;
  var if_any_bool: bool;
  var __flatten_17: bool;
  var __flatten_16: bool;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  var arg_n_1: int;
  var arg_n_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
    assume m_18 >= 0;
    assume k >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__x == old(diz.Ref__x) + n + m + k
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@79.11--79.52) [44739]"}
        HasDirectPerm(PostMask, diz, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@79.11--79.52) [44740]"}
        HasDirectPerm(oldMask, diz, Ref__x);
    assume PostHeap[diz, Ref__x] == oldHeap[diz, Ref__x] + n + m_18 + k;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_15 := Ref__if_any_random(diz) -- testHistoryProcessesPVL.vpr@86.3--86.42
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@86.3--86.42) [44741]"}
        diz != null;
    
    // -- Havocing target variables
      havoc __flatten_15;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_14 := __flatten_15 -- testHistoryProcessesPVL.vpr@87.3--87.31
    __flatten_14 := __flatten_15;
    assume state(Heap, Mask);
  
  // -- Translating statement: if_any_bool := __flatten_14 -- testHistoryProcessesPVL.vpr@88.3--88.30
    if_any_bool := __flatten_14;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (if_any_bool) -- testHistoryProcessesPVL.vpr@89.3--114.4
    if (if_any_bool) {
      
      // -- Translating statement: __flatten_17 := Ref__if_any_random(diz) -- testHistoryProcessesPVL.vpr@90.5--90.44
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@90.5--90.44) [44742]"}
            diz != null;
        
        // -- Havocing target variables
          havoc __flatten_17;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_16 := __flatten_17 -- testHistoryProcessesPVL.vpr@91.5--91.33
        __flatten_16 := __flatten_17;
        assume state(Heap, Mask);
      
      // -- Translating statement: if_any_bool := __flatten_16 -- testHistoryProcessesPVL.vpr@92.5--92.32
        if_any_bool := __flatten_16;
        assume state(Heap, Mask);
      
      // -- Translating statement: if (if_any_bool) -- testHistoryProcessesPVL.vpr@93.5--107.6
        if (if_any_bool) {
          
          // -- Translating statement: if (n > 0) -- testHistoryProcessesPVL.vpr@94.7--100.8
            if (n > 0) {
              
              // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@95.9--95.23
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@95.9--95.23) [44743]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@95.9--95.23) [44744]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__triple21(diz, n - 1, m, k) -- testHistoryProcessesPVL.vpr@96.9--96.40
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n := n - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@96.9--96.40) [44745]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__triple21 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@96.9--96.40) [44746]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@96.9--96.40) [44747]"}
                    arg_n >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@96.9--96.40) [44748]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@96.9--96.40) [44749]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n + m_18 + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@98.9--98.24
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@98.9--98.24) [44750]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@98.9--98.24) [44751]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__dual(diz, m, k) -- testHistoryProcessesPVL.vpr@99.9--99.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@99.9--99.29) [44752]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@99.9--99.29) [44753]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@99.9--99.29) [44754]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@99.9--99.29) [44755]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + m_18 + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (m > 0) -- testHistoryProcessesPVL.vpr@101.7--107.6
            if (m_18 > 0) {
              
              // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@102.7--102.21
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@102.7--102.21) [44756]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@102.7--102.21) [44757]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__triple21(diz, m - 1, n, k) -- testHistoryProcessesPVL.vpr@103.7--103.38
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n_1 := m_18 - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@103.7--103.38) [44758]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__triple21 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@103.7--103.38) [44759]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion m - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@103.7--103.38) [44760]"}
                    arg_n_1 >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@103.7--103.38) [44761]"}
                    n >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@103.7--103.38) [44762]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n_1 + n + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@105.7--105.22
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@105.7--105.22) [44763]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@105.7--105.22) [44764]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__dual(diz, n, k) -- testHistoryProcessesPVL.vpr@106.7--106.27
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@106.7--106.27) [44765]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@106.7--106.27) [44766]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@106.7--106.27) [44767]"}
                    n >= 0;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@106.7--106.27) [44768]"}
                    k >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + n + k;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (k > 0) -- testHistoryProcessesPVL.vpr@108.5--114.4
        if (k > 0) {
          
          // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@109.5--109.19
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@109.5--109.19) [44769]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@109.5--109.19) [44770]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__triple12(diz, k - 1, n, m) -- testHistoryProcessesPVL.vpr@110.5--110.36
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n_2 := k - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@110.5--110.36) [44771]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__triple12 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@110.5--110.36) [44772]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion k - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@110.5--110.36) [44773]"}
                arg_n_2 >= 0;
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@110.5--110.36) [44774]"}
                n >= 0;
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@110.5--110.36) [44775]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n_2 + n + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@112.5--112.20
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@112.5--112.20) [44776]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@112.5--112.20) [44777]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__dual(diz, n, m) -- testHistoryProcessesPVL.vpr@113.5--113.25
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@113.5--113.25) [44778]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@113.5--113.25) [44779]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@113.5--113.25) [44780]"}
                n >= 0;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@113.5--113.25) [44781]"}
                m_18 >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + n + m_18;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__triple21 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@78.11--78.33) [44782]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__triple21 might not hold. Assertion diz.Ref__x == old(diz.Ref__x) + n + m + k might not hold. (testHistoryProcessesPVL.vpr@79.11--79.52) [44783]"}
      Heap[diz, Ref__x] == oldHeap[diz, Ref__x] + n + m_18 + k;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__triple12
// ==================================================

procedure Ref__triple12(diz: Ref, n: int, m_18: int, k: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var __flatten_31: bool;
  var __flatten_30: bool;
  var if_any_bool: bool;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  var __flatten_37: bool;
  var __flatten_36: bool;
  var arg_n_1: int;
  var arg_n_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume n >= 0;
    assume m_18 >= 0;
    assume k >= 0;
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Ref__x == old(diz.Ref__x) + n + m + k
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@122.11--122.52) [44784]"}
        HasDirectPerm(PostMask, diz, Ref__x);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@122.11--122.52) [44785]"}
        HasDirectPerm(oldMask, diz, Ref__x);
    assume PostHeap[diz, Ref__x] == oldHeap[diz, Ref__x] + n + m_18 + k;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: __flatten_31 := Ref__if_any_random(diz) -- testHistoryProcessesPVL.vpr@129.3--129.42
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Ref__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@129.3--129.42) [44786]"}
        diz != null;
    
    // -- Havocing target variables
      havoc __flatten_31;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_30 := __flatten_31 -- testHistoryProcessesPVL.vpr@130.3--130.31
    __flatten_30 := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: if_any_bool := __flatten_30 -- testHistoryProcessesPVL.vpr@131.3--131.30
    if_any_bool := __flatten_30;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (if_any_bool) -- testHistoryProcessesPVL.vpr@132.3--159.4
    if (if_any_bool) {
      
      // -- Translating statement: if (n > 0) -- testHistoryProcessesPVL.vpr@133.5--139.6
        if (n > 0) {
          
          // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@134.7--134.21
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@134.7--134.21) [44787]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@134.7--134.21) [44788]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__triple12(diz, n - 1, m, k) -- testHistoryProcessesPVL.vpr@135.7--135.38
            PreCallHeap := Heap;
            PreCallMask := Mask;
            arg_n := n - 1;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@135.7--135.38) [44789]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__triple12 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@135.7--135.38) [44790]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion n - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@135.7--135.38) [44791]"}
                arg_n >= 0;
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@135.7--135.38) [44792]"}
                m_18 >= 0;
              assert {:msg "  The precondition of method Ref__triple12 might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@135.7--135.38) [44793]"}
                k >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n + m_18 + k;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@137.7--137.22
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@137.7--137.22) [44794]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@137.7--137.22) [44795]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: Ref__dual(diz, m, k) -- testHistoryProcessesPVL.vpr@138.7--138.27
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@138.7--138.27) [44796]"}
                diz != null;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@138.7--138.27) [44797]"}
                  perm <= Mask[diz, Ref__x];
              }
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@138.7--138.27) [44798]"}
                m_18 >= 0;
              assert {:msg "  The precondition of method Ref__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@138.7--138.27) [44799]"}
                k >= 0;
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
            
            // -- Inhaling postcondition
              perm := FullPerm;
              assume diz != null;
              Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
              assume state(Heap, Mask);
              assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + m_18 + k;
              assume state(Heap, Mask);
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_37 := Ref__if_any_random(diz) -- testHistoryProcessesPVL.vpr@141.5--141.44
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method Ref__if_any_random might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@141.5--141.44) [44800]"}
            diz != null;
        
        // -- Havocing target variables
          havoc __flatten_37;
        
        // -- Inhaling postcondition
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_36 := __flatten_37 -- testHistoryProcessesPVL.vpr@142.5--142.33
        __flatten_36 := __flatten_37;
        assume state(Heap, Mask);
      
      // -- Translating statement: if_any_bool := __flatten_36 -- testHistoryProcessesPVL.vpr@143.5--143.32
        if_any_bool := __flatten_36;
        assume state(Heap, Mask);
      
      // -- Translating statement: if (if_any_bool) -- testHistoryProcessesPVL.vpr@144.5--158.6
        if (if_any_bool) {
          
          // -- Translating statement: if (m > 0) -- testHistoryProcessesPVL.vpr@145.7--151.8
            if (m_18 > 0) {
              
              // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@146.9--146.23
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@146.9--146.23) [44801]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@146.9--146.23) [44802]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__triple21(diz, m - 1, k, n) -- testHistoryProcessesPVL.vpr@147.9--147.40
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n_1 := m_18 - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@147.9--147.40) [44803]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__triple21 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@147.9--147.40) [44804]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion m - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@147.9--147.40) [44805]"}
                    arg_n_1 >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@147.9--147.40) [44806]"}
                    k >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@147.9--147.40) [44807]"}
                    n >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n_1 + k + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@149.9--149.24
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@149.9--149.24) [44808]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@149.9--149.24) [44809]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__dual(diz, k, n) -- testHistoryProcessesPVL.vpr@150.9--150.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@150.9--150.29) [44810]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@150.9--150.29) [44811]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion k >= 0 might not hold. (testHistoryProcessesPVL.vpr@150.9--150.29) [44812]"}
                    k >= 0;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@150.9--150.29) [44813]"}
                    n >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + k + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (k > 0) -- testHistoryProcessesPVL.vpr@152.7--158.6
            if (k > 0) {
              
              // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@153.7--153.21
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@153.7--153.21) [44814]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@153.7--153.21) [44815]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__triple21(diz, k - 1, m, n) -- testHistoryProcessesPVL.vpr@154.7--154.38
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_n_2 := k - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@154.7--154.38) [44816]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__triple21 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@154.7--154.38) [44817]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion k - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@154.7--154.38) [44818]"}
                    arg_n_2 >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@154.7--154.38) [44819]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method Ref__triple21 might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@154.7--154.38) [44820]"}
                    n >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n_2 + m_18 + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: Ref__empty(diz) -- testHistoryProcessesPVL.vpr@156.7--156.22
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__empty might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@156.7--156.22) [44821]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__empty might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@156.7--156.22) [44822]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: Ref__dual(diz, m, n) -- testHistoryProcessesPVL.vpr@157.7--157.27
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@157.7--157.27) [44823]"}
                    diz != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Ref__dual might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@157.7--157.27) [44824]"}
                      perm <= Mask[diz, Ref__x];
                  }
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion m >= 0 might not hold. (testHistoryProcessesPVL.vpr@157.7--157.27) [44825]"}
                    m_18 >= 0;
                  assert {:msg "  The precondition of method Ref__dual might not hold. Assertion n >= 0 might not hold. (testHistoryProcessesPVL.vpr@157.7--157.27) [44826]"}
                    n >= 0;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume diz != null;
                  Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
                  assume state(Heap, Mask);
                  assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + m_18 + n;
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__triple12 might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@121.11--121.33) [44827]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__triple12 might not hold. Assertion diz.Ref__x == old(diz.Ref__x) + n + m + k might not hold. (testHistoryProcessesPVL.vpr@122.11--122.52) [44828]"}
      Heap[diz, Ref__x] == oldHeap[diz, Ref__x] + n + m_18 + k;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__destroy_check
// ==================================================

procedure Ref__destroy_check(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var arg_n: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
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
    assume diz != null;
    PostMask := PostMask[diz, Ref__x:=PostMask[diz, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(diz.Ref__x) == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@166.11--166.55) [44829]"}
        HasDirectPerm(oldMask, diz, Ref__x);
    if (oldHeap[diz, Ref__x] == 0) {
      
      // -- Check definedness of diz.Ref__x == 1
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@166.11--166.55) [44830]"}
          HasDirectPerm(PostMask, diz, Ref__x);
      assume PostHeap[diz, Ref__x] == 1;
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (1 > 0) -- testHistoryProcessesPVL.vpr@169.3--174.4
    
    // -- Translating statement: Ref__incr(diz) -- testHistoryProcessesPVL.vpr@170.5--170.19
      PreCallHeap := Heap;
      PreCallMask := Mask;
      
      // -- Exhaling precondition
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  The precondition of method Ref__incr might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@170.5--170.19) [44831]"}
          diz != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__incr might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@170.5--170.19) [44832]"}
            perm <= Mask[diz, Ref__x];
        }
        Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Inhaling postcondition
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
        assume state(Heap, Mask);
        assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + 1;
        assume state(Heap, Mask);
      assume state(Heap, Mask);
    
    // -- Translating statement: Ref__single(diz, 1 - 1) -- testHistoryProcessesPVL.vpr@171.5--171.28
      PreCallHeap := Heap;
      PreCallMask := Mask;
      arg_n := 0;
      
      // -- Exhaling precondition
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  The precondition of method Ref__single might not hold. Assertion diz != null might not hold. (testHistoryProcessesPVL.vpr@171.5--171.28) [44833]"}
          diz != null;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method Ref__single might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@171.5--171.28) [44834]"}
            perm <= Mask[diz, Ref__x];
        }
        Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
        assert {:msg "  The precondition of method Ref__single might not hold. Assertion 1 - 1 >= 0 might not hold. (testHistoryProcessesPVL.vpr@171.5--171.28) [44835]"}
          arg_n >= 0;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
      
      // -- Inhaling postcondition
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] + perm];
        assume state(Heap, Mask);
        assume Heap[diz, Ref__x] == PreCallHeap[diz, Ref__x] + arg_n;
        assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__destroy_check might not hold. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@165.11--165.33) [44838]"}
        perm <= Mask[diz, Ref__x];
    }
    Mask := Mask[diz, Ref__x:=Mask[diz, Ref__x] - perm];
    if (oldHeap[diz, Ref__x] == 0) {
      assert {:msg "  Postcondition of Ref__destroy_check might not hold. Assertion diz.Ref__x == 1 might not hold. (testHistoryProcessesPVL.vpr@166.11--166.55) [44839]"}
        Heap[diz, Ref__x] == 1;
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__Ref
// ==================================================

procedure Ref__Ref() returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var __flatten_92: Ref;
  var freshObj: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Ref__x:=PostMask[sys__result, Ref__x] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Ref__x == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Ref__x (testHistoryProcessesPVL.vpr@179.11--179.70) [44840]"}
        HasDirectPerm(PostMask, sys__result, Ref__x);
    assume PostHeap[sys__result, Ref__x] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_92, $allocated];
  
  // -- Translating statement: __flatten_92 := new(Ref__x, Ref__x_old, Ref__Integer_value) -- testHistoryProcessesPVL.vpr@183.3--183.62
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    __flatten_92 := freshObj;
    Mask := Mask[__flatten_92, Ref__x:=Mask[__flatten_92, Ref__x] + FullPerm];
    Mask := Mask[__flatten_92, Ref__x_old:=Mask[__flatten_92, Ref__x_old] + FullPerm];
    Mask := Mask[__flatten_92, Ref__Integer_value:=Mask[__flatten_92, Ref__Integer_value] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz := __flatten_92 -- testHistoryProcessesPVL.vpr@184.3--184.22
    diz := __flatten_92;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Ref__x := 0 -- testHistoryProcessesPVL.vpr@185.3--185.18
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Ref__x (testHistoryProcessesPVL.vpr@185.3--185.18) [44841]"}
      FullPerm == Mask[diz, Ref__x];
    Heap := Heap[diz, Ref__x:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testHistoryProcessesPVL.vpr@186.3--186.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Ref__x, write) && sys__result.Ref__x == 0) -- testHistoryProcessesPVL.vpr@187.3--187.96
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testHistoryProcessesPVL.vpr@187.10--187.96) [44842]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Ref__x (testHistoryProcessesPVL.vpr@187.10--187.96) [44844]"}
        perm <= AssertMask[sys__result, Ref__x];
    }
    AssertMask := AssertMask[sys__result, Ref__x:=AssertMask[sys__result, Ref__x] - perm];
    
    // -- Check definedness of sys__result.Ref__x == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Ref__x (testHistoryProcessesPVL.vpr@187.10--187.96) [44845]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Ref__x);
    assert {:msg "  Assert might fail. Assertion sys__result.Ref__x == 0 might not hold. (testHistoryProcessesPVL.vpr@187.10--187.96) [44846]"}
      AssertHeap[sys__result, Ref__x] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@188.3--188.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result != null might not hold. (testHistoryProcessesPVL.vpr@178.11--178.30) [44847]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__Ref might not hold. There might be insufficient permission to access sys__result.Ref__x (testHistoryProcessesPVL.vpr@179.11--179.70) [44848]"}
        perm <= Mask[sys__result, Ref__x];
    }
    Mask := Mask[sys__result, Ref__x:=Mask[sys__result, Ref__x] - perm];
    assert {:msg "  Postcondition of Ref__Ref might not hold. Assertion sys__result.Ref__x == 0 might not hold. (testHistoryProcessesPVL.vpr@179.11--179.70) [44849]"}
      Heap[sys__result, Ref__x] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__empty_begin
// ==================================================

procedure Ref__empty_begin(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@194.3--194.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__empty_commit
// ==================================================

procedure Ref__empty_commit(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@200.3--200.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__incr_begin
// ==================================================

procedure Ref__incr_begin(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@206.3--206.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__incr_commit
// ==================================================

procedure Ref__incr_commit(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@212.3--212.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Ref__if_any_random
// ==================================================

procedure Ref__if_any_random(diz: Ref) returns (sys__result: bool)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testHistoryProcessesPVL.vpr@218.3--218.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}