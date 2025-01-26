// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:37
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testPVLLocks.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testPVLLocks-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique Main__q1: Field NormalField Ref;
axiom !IsPredicateField(Main__q1);
axiom !IsWandField(Main__q1);
const unique Main__q2: Field NormalField Ref;
axiom !IsPredicateField(Main__q2);
axiom !IsWandField(Main__q2);
const unique Worker__q1: Field NormalField Ref;
axiom !IsPredicateField(Worker__q1);
axiom !IsWandField(Worker__q1);
const unique Worker__q2: Field NormalField Ref;
axiom !IsPredicateField(Worker__q2);
axiom !IsWandField(Worker__q2);
const unique Queue__data: Field NormalField int;
axiom !IsPredicateField(Queue__data);
axiom !IsWandField(Queue__data);
const unique Queue__used: Field NormalField bool;
axiom !IsPredicateField(Queue__used);
axiom !IsWandField(Queue__used);

// ==================================================
// Translation of predicate Worker__joinToken
// ==================================================

type PredicateType_Worker__joinToken;
function  Worker__joinToken(diz: Ref): Field PredicateType_Worker__joinToken FrameType;
function  Worker__joinToken#sm(diz: Ref): Field PredicateType_Worker__joinToken PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Worker__joinToken(diz)) }
  PredicateMaskField(Worker__joinToken(diz)) == Worker__joinToken#sm(diz)
);
axiom (forall diz: Ref ::
  { Worker__joinToken(diz) }
  IsPredicateField(Worker__joinToken(diz))
);
axiom (forall diz: Ref ::
  { Worker__joinToken(diz) }
  getPredWandId(Worker__joinToken(diz)) == 0
);
function  Worker__joinToken#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Worker__joinToken#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__joinToken(diz), Worker__joinToken(diz2) }
  Worker__joinToken(diz) == Worker__joinToken(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Worker__joinToken#sm(diz), Worker__joinToken#sm(diz2) }
  Worker__joinToken#sm(diz) == Worker__joinToken#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Worker__joinToken#trigger(Heap, Worker__joinToken(diz)) }
  Worker__joinToken#everUsed(Worker__joinToken(diz))
);

// ==================================================
// Translation of predicate Queue__lock_held
// ==================================================

type PredicateType_Queue__lock_held;
function  Queue__lock_held(diz: Ref): Field PredicateType_Queue__lock_held FrameType;
function  Queue__lock_held#sm(diz: Ref): Field PredicateType_Queue__lock_held PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Queue__lock_held(diz)) }
  PredicateMaskField(Queue__lock_held(diz)) == Queue__lock_held#sm(diz)
);
axiom (forall diz: Ref ::
  { Queue__lock_held(diz) }
  IsPredicateField(Queue__lock_held(diz))
);
axiom (forall diz: Ref ::
  { Queue__lock_held(diz) }
  getPredWandId(Queue__lock_held(diz)) == 1
);
function  Queue__lock_held#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Queue__lock_held#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Queue__lock_held(diz), Queue__lock_held(diz2) }
  Queue__lock_held(diz) == Queue__lock_held(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Queue__lock_held#sm(diz), Queue__lock_held#sm(diz2) }
  Queue__lock_held#sm(diz) == Queue__lock_held#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Queue__lock_held#trigger(Heap, Queue__lock_held(diz)) }
  Queue__lock_held#everUsed(Queue__lock_held(diz))
);

// ==================================================
// Translation of predicate Queue__lock_invariant
// ==================================================

type PredicateType_Queue__lock_invariant;
function  Queue__lock_invariant(diz: Ref): Field PredicateType_Queue__lock_invariant FrameType;
function  Queue__lock_invariant#sm(diz: Ref): Field PredicateType_Queue__lock_invariant PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Queue__lock_invariant(diz)) }
  PredicateMaskField(Queue__lock_invariant(diz)) == Queue__lock_invariant#sm(diz)
);
axiom (forall diz: Ref ::
  { Queue__lock_invariant(diz) }
  IsPredicateField(Queue__lock_invariant(diz))
);
axiom (forall diz: Ref ::
  { Queue__lock_invariant(diz) }
  getPredWandId(Queue__lock_invariant(diz)) == 2
);
function  Queue__lock_invariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Queue__lock_invariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Queue__lock_invariant(diz), Queue__lock_invariant(diz2) }
  Queue__lock_invariant(diz) == Queue__lock_invariant(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Queue__lock_invariant#sm(diz), Queue__lock_invariant#sm(diz2) }
  Queue__lock_invariant#sm(diz) == Queue__lock_invariant#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz)) }
  Queue__lock_invariant#everUsed(Queue__lock_invariant(diz))
);

procedure Queue__lock_invariant#definedness(diz: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Queue__lock_invariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[diz, $allocated];
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Main__Main
// ==================================================

procedure Main__Main(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var diz: Ref;
  var __flatten_1: Ref;
  var __flatten_2: Ref;
  var __flatten_3: Ref;
  var __flatten_4: Ref;
  var __flatten_24: Ref;
  var __flatten_26: Ref;
  var freshObj: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var arg_diz: Ref;
  var arg_diz_1: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
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
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Main__q1:=PostMask[sys__result, Main__q1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Main__q1 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Main__q1 (testPVLLocks.vpr@28.11--28.39) [24888]"}
        HasDirectPerm(PostMask, sys__result, Main__q1);
    assume PostHeap[sys__result, Main__q1] != null;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Main__q2:=PostMask[sys__result, Main__q2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Main__q2 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Main__q2 (testPVLLocks.vpr@30.11--30.39) [24889]"}
        HasDirectPerm(PostMask, sys__result, Main__q2);
    assume PostHeap[sys__result, Main__q2] != null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_1, $allocated];
    assume Heap[__flatten_2, $allocated];
    assume Heap[__flatten_3, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_24, $allocated];
    assume Heap[__flatten_26, $allocated];
  
  // -- Translating statement: diz := new(Main__q1, Main__q2) -- testPVLLocks.vpr@39.3--39.33
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Main__q1:=Mask[diz, Main__q1] + FullPerm];
    Mask := Mask[diz, Main__q2:=Mask[diz, Main__q2] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2 := Queue__Queue(current_thread_id) -- testPVLLocks.vpr@40.3--40.49
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Queue__Queue might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@40.3--40.49) [24890]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_2;
    
    // -- Inhaling postcondition
      assume __flatten_2 != null;
      assume state(Heap, Mask);
    assume Heap[__flatten_2, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_1 := __flatten_2 -- testPVLLocks.vpr@41.3--41.29
    __flatten_1 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_24 := __flatten_1 -- testPVLLocks.vpr@42.3--42.30
    __flatten_24 := __flatten_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Main__q1 := __flatten_24 -- testPVLLocks.vpr@43.3--43.31
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Main__q1 (testPVLLocks.vpr@43.3--43.31) [24891]"}
      FullPerm == Mask[diz, Main__q1];
    Heap := Heap[diz, Main__q1:=__flatten_24];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := Queue__Queue(current_thread_id) -- testPVLLocks.vpr@44.3--44.49
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Queue__Queue might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@44.3--44.49) [24892]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_4;
    
    // -- Inhaling postcondition
      assume __flatten_4 != null;
      assume state(Heap, Mask);
    assume Heap[__flatten_4, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := __flatten_4 -- testPVLLocks.vpr@45.3--45.29
    __flatten_3 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_26 := __flatten_3 -- testPVLLocks.vpr@46.3--46.30
    __flatten_26 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Main__q2 := __flatten_26 -- testPVLLocks.vpr@47.3--47.31
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Main__q2 (testPVLLocks.vpr@47.3--47.31) [24893]"}
      FullPerm == Mask[diz, Main__q2];
    Heap := Heap[diz, Main__q2:=__flatten_26];
    assume state(Heap, Mask);
  
  // -- Translating statement: Queue__put(diz.Main__q1, current_thread_id, 1) -- testPVLLocks.vpr@48.3--48.49
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Main__q1
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Main__q1 (testPVLLocks.vpr@48.3--48.49) [24894]"}
        HasDirectPerm(Mask, diz, Main__q1);
    arg_diz := Heap[diz, Main__q1];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Queue__put might not hold. Assertion diz.Main__q1 != null might not hold. (testPVLLocks.vpr@48.3--48.49) [24895]"}
        arg_diz != null;
      assert {:msg "  The precondition of method Queue__put might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@48.3--48.49) [24896]"}
        current_thread_id >= 0;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Queue__put(diz.Main__q2, current_thread_id, 2) -- testPVLLocks.vpr@49.3--49.49
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Main__q2
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Main__q2 (testPVLLocks.vpr@49.3--49.49) [24897]"}
        HasDirectPerm(Mask, diz, Main__q2);
    arg_diz_1 := Heap[diz, Main__q2];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Queue__put might not hold. Assertion diz.Main__q2 != null might not hold. (testPVLLocks.vpr@49.3--49.49) [24898]"}
        arg_diz_1 != null;
      assert {:msg "  The precondition of method Queue__put might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@49.3--49.49) [24899]"}
        current_thread_id >= 0;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testPVLLocks.vpr@50.3--50.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Main__q1, wildcard) &&
  //   (sys__result.Main__q1 != null &&
  //   (acc(sys__result.Main__q2, wildcard) && sys__result.Main__q2 != null))) -- testPVLLocks.vpr@51.3--51.177
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testPVLLocks.vpr@51.10--51.177) [24900]"}
      sys__result != null;
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Main__q1 (testPVLLocks.vpr@51.10--51.177) [24901]"}
      AssertMask[sys__result, Main__q1] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Main__q1];
    AssertMask := AssertMask[sys__result, Main__q1:=AssertMask[sys__result, Main__q1] - wildcard];
    
    // -- Check definedness of sys__result.Main__q1 != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Main__q1 (testPVLLocks.vpr@51.10--51.177) [24902]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Main__q1);
    assert {:msg "  Assert might fail. Assertion sys__result.Main__q1 != null might not hold. (testPVLLocks.vpr@51.10--51.177) [24903]"}
      AssertHeap[sys__result, Main__q1] != null;
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Main__q2 (testPVLLocks.vpr@51.10--51.177) [24904]"}
      AssertMask[sys__result, Main__q2] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Main__q2];
    AssertMask := AssertMask[sys__result, Main__q2:=AssertMask[sys__result, Main__q2] - wildcard];
    
    // -- Check definedness of sys__result.Main__q2 != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Main__q2 (testPVLLocks.vpr@51.10--51.177) [24905]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Main__q2);
    assert {:msg "  Assert might fail. Assertion sys__result.Main__q2 != null might not hold. (testPVLLocks.vpr@51.10--51.177) [24906]"}
      AssertHeap[sys__result, Main__q2] != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testPVLLocks.vpr@52.3--52.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion sys__result != null might not hold. (testPVLLocks.vpr@26.11--26.30) [24907]"}
      sys__result != null;
    assert {:msg "  Postcondition of Main__Main might not hold. There might be insufficient permission to access sys__result.Main__q1 (testPVLLocks.vpr@27.11--27.46) [24908]"}
      Mask[sys__result, Main__q1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Main__q1];
    Mask := Mask[sys__result, Main__q1:=Mask[sys__result, Main__q1] - wildcard];
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion sys__result.Main__q1 != null might not hold. (testPVLLocks.vpr@28.11--28.39) [24909]"}
      Heap[sys__result, Main__q1] != null;
    assert {:msg "  Postcondition of Main__Main might not hold. There might be insufficient permission to access sys__result.Main__q2 (testPVLLocks.vpr@29.11--29.46) [24910]"}
      Mask[sys__result, Main__q2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Main__q2];
    Mask := Mask[sys__result, Main__q2:=Mask[sys__result, Main__q2] - wildcard];
    assert {:msg "  Postcondition of Main__Main might not hold. Assertion sys__result.Main__q2 != null might not hold. (testPVLLocks.vpr@30.11--30.39) [24911]"}
      Heap[sys__result, Main__q2] != null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Main__main
// ==================================================

procedure Main__main(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var w1: Ref;
  var __flatten_7: Ref;
  var w2: Ref;
  var __flatten_8: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_q1: Ref;
  var arg_q2: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var arg_q1_1: Ref;
  var arg_q2_1: Ref;
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
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Main__q1:=Mask[diz, Main__q1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Main__q1 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Main__q1 (testPVLLocks.vpr@59.12--59.32) [24912]"}
        HasDirectPerm(Mask, diz, Main__q1);
    assume Heap[diz, Main__q1] != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Main__q2:=Mask[diz, Main__q2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Main__q2 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Main__q2 (testPVLLocks.vpr@61.12--61.32) [24913]"}
        HasDirectPerm(Mask, diz, Main__q2);
    assume Heap[diz, Main__q2] != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[w1, $allocated];
    assume Heap[__flatten_7, $allocated];
    assume Heap[w2, $allocated];
    assume Heap[__flatten_8, $allocated];
  
  // -- Translating statement: __flatten_7 := Worker__Worker(current_thread_id, diz.Main__q1, diz.Main__q2) -- testPVLLocks.vpr@67.3--67.79
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Main__q1
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Main__q1 (testPVLLocks.vpr@67.3--67.79) [24914]"}
        HasDirectPerm(Mask, diz, Main__q1);
    
    // -- Check definedness of diz.Main__q2
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Main__q2 (testPVLLocks.vpr@67.3--67.79) [24915]"}
        HasDirectPerm(Mask, diz, Main__q2);
    arg_q1 := Heap[diz, Main__q1];
    arg_q2 := Heap[diz, Main__q2];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@67.3--67.79) [24916]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_7;
    
    // -- Inhaling postcondition
      assume __flatten_7 != null;
      havoc wildcard;
      perm := wildcard;
      assume __flatten_7 != null;
      Mask := Mask[__flatten_7, Worker__q1:=Mask[__flatten_7, Worker__q1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_7, Worker__q1] == arg_q1;
      havoc wildcard;
      perm := wildcard;
      assume __flatten_7 != null;
      Mask := Mask[__flatten_7, Worker__q2:=Mask[__flatten_7, Worker__q2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_7, Worker__q2] == arg_q2;
      assume state(Heap, Mask);
    assume Heap[__flatten_7, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: w1 := __flatten_7 -- testPVLLocks.vpr@68.3--68.20
    w1 := __flatten_7;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := Worker__Worker(current_thread_id, diz.Main__q2, diz.Main__q1) -- testPVLLocks.vpr@69.3--69.79
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Check definedness of diz.Main__q2
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Main__q2 (testPVLLocks.vpr@69.3--69.79) [24917]"}
        HasDirectPerm(Mask, diz, Main__q2);
    
    // -- Check definedness of diz.Main__q1
      assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Main__q1 (testPVLLocks.vpr@69.3--69.79) [24918]"}
        HasDirectPerm(Mask, diz, Main__q1);
    arg_q1_1 := Heap[diz, Main__q2];
    arg_q2_1 := Heap[diz, Main__q1];
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__Worker might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@69.3--69.79) [24919]"}
        current_thread_id >= 0;
    
    // -- Havocing target variables
      havoc __flatten_8;
    
    // -- Inhaling postcondition
      assume __flatten_8 != null;
      havoc wildcard;
      perm := wildcard;
      assume __flatten_8 != null;
      Mask := Mask[__flatten_8, Worker__q1:=Mask[__flatten_8, Worker__q1] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_8, Worker__q1] == arg_q1_1;
      havoc wildcard;
      perm := wildcard;
      assume __flatten_8 != null;
      Mask := Mask[__flatten_8, Worker__q2:=Mask[__flatten_8, Worker__q2] + perm];
      assume state(Heap, Mask);
      assume Heap[__flatten_8, Worker__q2] == arg_q2_1;
      assume state(Heap, Mask);
    assume Heap[__flatten_8, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: w2 := __flatten_8 -- testPVLLocks.vpr@70.3--70.20
    w2 := __flatten_8;
    assume state(Heap, Mask);
  
  // -- Translating statement: Worker__forkOperator(w1, current_thread_id) -- testPVLLocks.vpr@71.3--71.46
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion w1 != null might not hold. (testPVLLocks.vpr@71.3--71.46) [24920]"}
        w1 != null;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@71.3--71.46) [24921]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. There might be insufficient permission to access w1.Worker__q1 (testPVLLocks.vpr@71.3--71.46) [24922]"}
        Mask[w1, Worker__q1] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[w1, Worker__q1];
      Mask := Mask[w1, Worker__q1:=Mask[w1, Worker__q1] - wildcard];
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion w1.Worker__q1 != null might not hold. (testPVLLocks.vpr@71.3--71.46) [24923]"}
        Heap[w1, Worker__q1] != null;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. There might be insufficient permission to access w1.Worker__q2 (testPVLLocks.vpr@71.3--71.46) [24924]"}
        Mask[w1, Worker__q2] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[w1, Worker__q2];
      Mask := Mask[w1, Worker__q2:=Mask[w1, Worker__q2] - wildcard];
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion w1.Worker__q2 != null might not hold. (testPVLLocks.vpr@71.3--71.46) [24925]"}
        Heap[w1, Worker__q2] != null;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__joinToken(w1):=Mask[null, Worker__joinToken(w1)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Worker__forkOperator(w2, current_thread_id) -- testPVLLocks.vpr@72.3--72.46
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion w2 != null might not hold. (testPVLLocks.vpr@72.3--72.46) [24926]"}
        w2 != null;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@72.3--72.46) [24927]"}
        current_thread_id >= 0;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. There might be insufficient permission to access w2.Worker__q1 (testPVLLocks.vpr@72.3--72.46) [24928]"}
        Mask[w2, Worker__q1] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[w2, Worker__q1];
      Mask := Mask[w2, Worker__q1:=Mask[w2, Worker__q1] - wildcard];
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion w2.Worker__q1 != null might not hold. (testPVLLocks.vpr@72.3--72.46) [24929]"}
        Heap[w2, Worker__q1] != null;
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. There might be insufficient permission to access w2.Worker__q2 (testPVLLocks.vpr@72.3--72.46) [24930]"}
        Mask[w2, Worker__q2] > NoPerm;
      havoc wildcard;
      assume wildcard < Mask[w2, Worker__q2];
      Mask := Mask[w2, Worker__q2:=Mask[w2, Worker__q2] - wildcard];
      assert {:msg "  The precondition of method Worker__forkOperator might not hold. Assertion w2.Worker__q2 != null might not hold. (testPVLLocks.vpr@72.3--72.46) [24931]"}
        Heap[w2, Worker__q2] != null;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      Mask := Mask[null, Worker__joinToken(w2):=Mask[null, Worker__joinToken(w2)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Worker__joinOperator(w1, current_thread_id) -- testPVLLocks.vpr@73.3--73.46
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__joinOperator might not hold. Assertion w1 != null might not hold. (testPVLLocks.vpr@73.3--73.46) [24932]"}
        w1 != null;
      assert {:msg "  The precondition of method Worker__joinOperator might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@73.3--73.46) [24933]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__joinOperator might not hold. There might be insufficient permission to access Worker__joinToken(w1) (testPVLLocks.vpr@73.3--73.46) [24934]"}
          perm <= Mask[null, Worker__joinToken(w1)];
      }
      Mask := Mask[null, Worker__joinToken(w1):=Mask[null, Worker__joinToken(w1)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: Worker__joinOperator(w2, current_thread_id) -- testPVLLocks.vpr@74.3--74.46
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method Worker__joinOperator might not hold. Assertion w2 != null might not hold. (testPVLLocks.vpr@74.3--74.46) [24935]"}
        w2 != null;
      assert {:msg "  The precondition of method Worker__joinOperator might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@74.3--74.46) [24936]"}
        current_thread_id >= 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method Worker__joinOperator might not hold. There might be insufficient permission to access Worker__joinToken(w2) (testPVLLocks.vpr@74.3--74.46) [24937]"}
          perm <= Mask[null, Worker__joinToken(w2)];
      }
      Mask := Mask[null, Worker__joinToken(w2):=Mask[null, Worker__joinToken(w2)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Worker__Worker
// ==================================================

procedure Worker__Worker(current_thread_id: int, q1: Ref, q2: Ref) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var diz: Ref;
  var __flatten_13: Ref;
  var __flatten_14: Ref;
  var __flatten_35: Ref;
  var __flatten_36: Ref;
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
  
  // -- Assumptions about method arguments
    assume Heap[q1, $allocated];
    assume Heap[q2, $allocated];
  
  // -- Checked inhaling of precondition
    assume current_thread_id >= 0;
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
    assume sys__result != null;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__q1:=PostMask[sys__result, Worker__q1] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__q1 == q1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__q1 (testPVLLocks.vpr@81.11--81.39) [24938]"}
        HasDirectPerm(PostMask, sys__result, Worker__q1);
    assume PostHeap[sys__result, Worker__q1] == q1;
    assume state(PostHeap, PostMask);
    havoc wildcard;
    perm := wildcard;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Worker__q2:=PostMask[sys__result, Worker__q2] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Worker__q2 == q2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Worker__q2 (testPVLLocks.vpr@83.11--83.39) [24939]"}
        HasDirectPerm(PostMask, sys__result, Worker__q2);
    assume PostHeap[sys__result, Worker__q2] == q2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
    assume Heap[__flatten_13, $allocated];
    assume Heap[__flatten_14, $allocated];
    assume Heap[__flatten_35, $allocated];
    assume Heap[__flatten_36, $allocated];
  
  // -- Translating statement: diz := new(Worker__q1, Worker__q2) -- testPVLLocks.vpr@90.3--90.37
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] + FullPerm];
    Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_13 := q1 -- testPVLLocks.vpr@91.3--91.21
    __flatten_13 := q1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_35 := __flatten_13 -- testPVLLocks.vpr@92.3--92.31
    __flatten_35 := __flatten_13;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__q1 := __flatten_35 -- testPVLLocks.vpr@93.3--93.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__q1 (testPVLLocks.vpr@93.3--93.33) [24940]"}
      FullPerm == Mask[diz, Worker__q1];
    Heap := Heap[diz, Worker__q1:=__flatten_35];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_14 := q2 -- testPVLLocks.vpr@94.3--94.21
    __flatten_14 := q2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_36 := __flatten_14 -- testPVLLocks.vpr@95.3--95.31
    __flatten_36 := __flatten_14;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Worker__q2 := __flatten_36 -- testPVLLocks.vpr@96.3--96.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Worker__q2 (testPVLLocks.vpr@96.3--96.33) [24941]"}
      FullPerm == Mask[diz, Worker__q2];
    Heap := Heap[diz, Worker__q2:=__flatten_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testPVLLocks.vpr@97.3--97.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Worker__q1, wildcard) &&
  //   (sys__result.Worker__q1 == q1 &&
  //   (acc(sys__result.Worker__q2, wildcard) && sys__result.Worker__q2 == q2))) -- testPVLLocks.vpr@98.3--98.181
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testPVLLocks.vpr@98.10--98.181) [24942]"}
      sys__result != null;
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__q1 (testPVLLocks.vpr@98.10--98.181) [24943]"}
      AssertMask[sys__result, Worker__q1] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Worker__q1];
    AssertMask := AssertMask[sys__result, Worker__q1:=AssertMask[sys__result, Worker__q1] - wildcard];
    
    // -- Check definedness of sys__result.Worker__q1 == q1
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__q1 (testPVLLocks.vpr@98.10--98.181) [24944]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Worker__q1);
    assert {:msg "  Assert might fail. Assertion sys__result.Worker__q1 == q1 might not hold. (testPVLLocks.vpr@98.10--98.181) [24945]"}
      AssertHeap[sys__result, Worker__q1] == q1;
    assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__q2 (testPVLLocks.vpr@98.10--98.181) [24946]"}
      AssertMask[sys__result, Worker__q2] > NoPerm;
    havoc wildcard;
    assume wildcard < AssertMask[sys__result, Worker__q2];
    AssertMask := AssertMask[sys__result, Worker__q2:=AssertMask[sys__result, Worker__q2] - wildcard];
    
    // -- Check definedness of sys__result.Worker__q2 == q2
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Worker__q2 (testPVLLocks.vpr@98.10--98.181) [24947]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Worker__q2);
    assert {:msg "  Assert might fail. Assertion sys__result.Worker__q2 == q2 might not hold. (testPVLLocks.vpr@98.10--98.181) [24948]"}
      AssertHeap[sys__result, Worker__q2] == q2;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testPVLLocks.vpr@99.3--99.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result != null might not hold. (testPVLLocks.vpr@79.11--79.30) [24949]"}
      sys__result != null;
    assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access sys__result.Worker__q1 (testPVLLocks.vpr@80.11--80.48) [24950]"}
      Mask[sys__result, Worker__q1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__q1];
    Mask := Mask[sys__result, Worker__q1:=Mask[sys__result, Worker__q1] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result.Worker__q1 == q1 might not hold. (testPVLLocks.vpr@81.11--81.39) [24951]"}
      Heap[sys__result, Worker__q1] == q1;
    assert {:msg "  Postcondition of Worker__Worker might not hold. There might be insufficient permission to access sys__result.Worker__q2 (testPVLLocks.vpr@82.11--82.48) [24952]"}
      Mask[sys__result, Worker__q2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[sys__result, Worker__q2];
    Mask := Mask[sys__result, Worker__q2:=Mask[sys__result, Worker__q2] - wildcard];
    assert {:msg "  Postcondition of Worker__Worker might not hold. Assertion sys__result.Worker__q2 == q2 might not hold. (testPVLLocks.vpr@83.11--83.39) [24953]"}
      Heap[sys__result, Worker__q2] == q2;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__forkOperator
// ==================================================

procedure Worker__forkOperator(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
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
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__q1 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Worker__q1 (testPVLLocks.vpr@106.12--106.34) [24954]"}
        HasDirectPerm(Mask, diz, Worker__q1);
    assume Heap[diz, Worker__q1] != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__q2 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Worker__q2 (testPVLLocks.vpr@108.12--108.34) [24955]"}
        HasDirectPerm(Mask, diz, Worker__q2);
    assume Heap[diz, Worker__q2] != null;
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
    PostMask := PostMask[null, Worker__joinToken(diz):=PostMask[null, Worker__joinToken(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- testPVLLocks.vpr@111.3--111.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Worker__forkOperator might not hold. There might be insufficient permission to access Worker__joinToken(diz) (testPVLLocks.vpr@109.11--109.45) [24956]"}
        perm <= Mask[null, Worker__joinToken(diz)];
    }
    Mask := Mask[null, Worker__joinToken(diz):=Mask[null, Worker__joinToken(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Worker__joinOperator
// ==================================================

procedure Worker__joinOperator(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
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
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Worker__joinToken(diz):=Mask[null, Worker__joinToken(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale false -- testPVLLocks.vpr@119.3--119.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Worker__run
// ==================================================

procedure Worker__run(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var tmp: int;
  var __flatten_15: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_diz: Ref;
  var arg_diz_1: Ref;
  
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
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__q1 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Worker__q1 (testPVLLocks.vpr@126.12--126.34) [24957]"}
        HasDirectPerm(Mask, diz, Worker__q1);
    assume Heap[diz, Worker__q1] != null;
    assume state(Heap, Mask);
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Worker__q2 != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Worker__q2 (testPVLLocks.vpr@128.12--128.34) [24958]"}
        HasDirectPerm(Mask, diz, Worker__q2);
    assume Heap[diz, Worker__q2] != null;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: i := 0 -- testPVLLocks.vpr@133.3--133.9
    i := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < 4) -- testPVLLocks.vpr@134.3--146.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i <= 4 might not hold on entry. Assertion 0 <= i might not hold. (testPVLLocks.vpr@135.15--135.35) [24959]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i <= 4 might not hold on entry. Assertion i <= 4 might not hold. (testPVLLocks.vpr@135.15--135.35) [24960]"}
          i <= 4;
        assert {:msg "  Loop invariant acc(diz.Worker__q1, wildcard) might not hold on entry. There might be insufficient permission to access diz.Worker__q1 (testPVLLocks.vpr@136.15--136.44) [24961]"}
          Mask[diz, Worker__q1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, Worker__q1];
        Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] - wildcard];
        assert {:msg "  Loop invariant diz.Worker__q1 != null might not hold on entry. Assertion diz.Worker__q1 != null might not hold. (testPVLLocks.vpr@137.15--137.37) [24962]"}
          Heap[diz, Worker__q1] != null;
        assert {:msg "  Loop invariant acc(diz.Worker__q2, wildcard) might not hold on entry. There might be insufficient permission to access diz.Worker__q2 (testPVLLocks.vpr@138.15--138.44) [24963]"}
          Mask[diz, Worker__q2] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, Worker__q2];
        Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] - wildcard];
        assert {:msg "  Loop invariant diz.Worker__q2 != null might not hold on entry. Assertion diz.Worker__q2 != null might not hold. (testPVLLocks.vpr@139.15--139.37) [24964]"}
          Heap[diz, Worker__q2] != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc i, tmp, __flatten_15;
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume i <= 4;
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of diz.Worker__q1 != null
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Worker__q1 (testPVLLocks.vpr@137.15--137.37) [24965]"}
            HasDirectPerm(Mask, diz, Worker__q1);
        assume Heap[diz, Worker__q1] != null;
        assume state(Heap, Mask);
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of diz.Worker__q2 != null
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Worker__q2 (testPVLLocks.vpr@139.15--139.37) [24966]"}
            HasDirectPerm(Mask, diz, Worker__q2);
        assume Heap[diz, Worker__q2] != null;
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
        assume 0 <= i;
        assume i <= 4;
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] + perm];
        assume state(Heap, Mask);
        assume Heap[diz, Worker__q1] != null;
        havoc wildcard;
        perm := wildcard;
        assume diz != null;
        Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] + perm];
        assume state(Heap, Mask);
        assume Heap[diz, Worker__q2] != null;
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < 4;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: __flatten_15 := Queue__take(diz.Worker__q1, current_thread_id) -- testPVLLocks.vpr@141.5--141.67
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Check definedness of diz.Worker__q1
              assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Worker__q1 (testPVLLocks.vpr@141.5--141.67) [24967]"}
                HasDirectPerm(Mask, diz, Worker__q1);
            arg_diz := Heap[diz, Worker__q1];
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Queue__take might not hold. Assertion diz.Worker__q1 != null might not hold. (testPVLLocks.vpr@141.5--141.67) [24968]"}
                arg_diz != null;
              assert {:msg "  The precondition of method Queue__take might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@141.5--141.67) [24969]"}
                current_thread_id >= 0;
            
            // -- Havocing target variables
              havoc __flatten_15;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: tmp := __flatten_15 -- testPVLLocks.vpr@142.5--142.24
            tmp := __flatten_15;
            assume state(Heap, Mask);
          
          // -- Translating statement: tmp := tmp + 2 -- testPVLLocks.vpr@143.5--143.19
            tmp := tmp + 2;
            assume state(Heap, Mask);
          
          // -- Translating statement: Queue__put(diz.Worker__q2, current_thread_id, tmp) -- testPVLLocks.vpr@144.5--144.55
            PreCallHeap := Heap;
            PreCallMask := Mask;
            
            // -- Check definedness of diz.Worker__q2
              assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Worker__q2 (testPVLLocks.vpr@144.5--144.55) [24970]"}
                HasDirectPerm(Mask, diz, Worker__q2);
            arg_diz_1 := Heap[diz, Worker__q2];
            
            // -- Exhaling precondition
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              assert {:msg "  The precondition of method Queue__put might not hold. Assertion diz.Worker__q2 != null might not hold. (testPVLLocks.vpr@144.5--144.55) [24971]"}
                arg_diz_1 != null;
              assert {:msg "  The precondition of method Queue__put might not hold. Assertion current_thread_id >= 0 might not hold. (testPVLLocks.vpr@144.5--144.55) [24972]"}
                current_thread_id >= 0;
            
            // -- Inhaling postcondition
              assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: i := i + 1 -- testPVLLocks.vpr@145.5--145.15
            i := i + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i <= 4 might not be preserved. Assertion 0 <= i might not hold. (testPVLLocks.vpr@135.15--135.35) [24973]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i <= 4 might not be preserved. Assertion i <= 4 might not hold. (testPVLLocks.vpr@135.15--135.35) [24974]"}
          i <= 4;
        assert {:msg "  Loop invariant acc(diz.Worker__q1, wildcard) might not be preserved. There might be insufficient permission to access diz.Worker__q1 (testPVLLocks.vpr@136.15--136.44) [24975]"}
          Mask[diz, Worker__q1] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, Worker__q1];
        Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] - wildcard];
        assert {:msg "  Loop invariant diz.Worker__q1 != null might not be preserved. Assertion diz.Worker__q1 != null might not hold. (testPVLLocks.vpr@137.15--137.37) [24976]"}
          Heap[diz, Worker__q1] != null;
        assert {:msg "  Loop invariant acc(diz.Worker__q2, wildcard) might not be preserved. There might be insufficient permission to access diz.Worker__q2 (testPVLLocks.vpr@138.15--138.44) [24977]"}
          Mask[diz, Worker__q2] > NoPerm;
        havoc wildcard;
        assume wildcard < Mask[diz, Worker__q2];
        Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] - wildcard];
        assert {:msg "  Loop invariant diz.Worker__q2 != null might not be preserved. Assertion diz.Worker__q2 != null might not hold. (testPVLLocks.vpr@139.15--139.37) [24978]"}
          Heap[diz, Worker__q2] != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < 4);
      assume state(Heap, Mask);
      assume 0 <= i;
      assume i <= 4;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, Worker__q1:=Mask[diz, Worker__q1] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Worker__q1] != null;
      havoc wildcard;
      perm := wildcard;
      assume diz != null;
      Mask := Mask[diz, Worker__q2:=Mask[diz, Worker__q2] + perm];
      assume state(Heap, Mask);
      assume Heap[diz, Worker__q2] != null;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Queue__Queue
// ==================================================

procedure Queue__Queue(current_thread_id: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_17: int;
  var __flatten_39: int;
  var __flatten_18: bool;
  var __flatten_40: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
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
      oldHeap := Heap;
      oldMask := Mask;
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
  
  // -- Translating statement: diz := new(Queue__data, Queue__used) -- testPVLLocks.vpr@158.3--158.39
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + FullPerm];
    Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_17 := 37 -- testPVLLocks.vpr@159.3--159.21
    __flatten_17 := 37;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_39 := __flatten_17 -- testPVLLocks.vpr@160.3--160.31
    __flatten_39 := __flatten_17;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Queue__data := __flatten_39 -- testPVLLocks.vpr@161.3--161.34
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@161.3--161.34) [24979]"}
      FullPerm == Mask[diz, Queue__data];
    Heap := Heap[diz, Queue__data:=__flatten_39];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_18 := false -- testPVLLocks.vpr@162.3--162.24
    __flatten_18 := false;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_40 := __flatten_18 -- testPVLLocks.vpr@163.3--163.31
    __flatten_40 := __flatten_18;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Queue__used := __flatten_40 -- testPVLLocks.vpr@164.3--164.34
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@164.3--164.34) [24980]"}
      FullPerm == Mask[diz, Queue__used];
    Heap := Heap[diz, Queue__used:=__flatten_40];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@165.3--165.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@165.3--165.46) [24983]"}
        perm <= Mask[diz, Queue__used];
    }
    Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@165.3--165.46) [24985]"}
        perm <= Mask[diz, Queue__data];
    }
    Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
    perm := FullPerm;
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
    assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
    if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
      Heap := Heap[null, Queue__lock_invariant#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Queue__lock_invariant(diz):=freshVersion];
    }
    Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__used:=true]];
    Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__data:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@166.3--166.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@166.10--166.48) [24988]"}
        perm <= Mask[null, Queue__lock_invariant(diz)];
    }
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testPVLLocks.vpr@167.3--167.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null -- testPVLLocks.vpr@168.3--168.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testPVLLocks.vpr@168.10--168.29) [24989]"}
      sys__result != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testPVLLocks.vpr@169.3--169.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Queue__Queue might not hold. Assertion sys__result != null might not hold. (testPVLLocks.vpr@151.11--151.30) [24990]"}
      sys__result != null;
}

// ==================================================
// Translation of method Queue__put
// ==================================================

procedure Queue__put(diz: Ref, current_thread_id: int, x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var freshVersion: FrameType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var __flatten_19: bool;
  var __flatten_41: bool;
  var __flatten_20: int;
  var __flatten_42: int;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@180.3--180.48
    perm := FullPerm;
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@181.3--181.48
    assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
    assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@181.3--181.48) [24994]"}
        perm <= Mask[null, Queue__lock_invariant(diz)];
    }
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
        havoc newVersion;
        Heap := Heap[null, Queue__lock_invariant(diz):=newVersion];
      }
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@182.3--182.43
    perm := FullPerm;
    Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (diz.Queue__used) -- testPVLLocks.vpr@183.3--193.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__used, write) might not hold on entry. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@184.15--184.42) [24998]"}
            perm <= Mask[diz, Queue__used];
        }
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__data, write) might not hold on entry. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@185.15--185.42) [24999]"}
            perm <= Mask[diz, Queue__data];
        }
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Queue__lock_held(diz), write) might not hold on entry. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@186.15--186.48) [25000]"}
            perm <= Mask[null, Queue__lock_held(diz)];
        }
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
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
        assume diz != null;
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of diz.Queue__used
          assert {:msg "  While statement might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@183.10--183.25) [25001]"}
            HasDirectPerm(Mask, diz, Queue__used);
        assume Heap[diz, Queue__used];
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: fold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@188.5--188.48
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@188.5--188.48) [25002]"}
                perm <= Mask[diz, Queue__used];
            }
            Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@188.5--188.48) [25003]"}
                perm <= Mask[diz, Queue__data];
            }
            Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
            perm := FullPerm;
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
            assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
            if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
              Heap := Heap[null, Queue__lock_invariant#sm(diz):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, Queue__lock_invariant(diz):=freshVersion];
            }
            Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__used:=true]];
            Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__data:=true]];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@189.5--189.50
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@189.12--189.50) [25004]"}
                perm <= Mask[null, Queue__lock_invariant(diz)];
            }
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@190.5--190.45
            AssertHeap := Heap;
            AssertMask := Mask;
            ExhaleWellDef0Heap := AssertHeap;
            ExhaleWellDef0Mask := AssertMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Assert might fail. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@190.12--190.45) [25005]"}
                perm <= AssertMask[null, Queue__lock_held(diz)];
            }
            AssertMask := AssertMask[null, Queue__lock_held(diz):=AssertMask[null, Queue__lock_held(diz)] - perm];
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@191.5--191.50
            perm := FullPerm;
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@192.5--192.50
            assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
            assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@192.5--192.50) [25006]"}
                perm <= Mask[null, Queue__lock_invariant(diz)];
            }
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
                havoc newVersion;
                Heap := Heap[null, Queue__lock_invariant(diz):=newVersion];
              }
            perm := FullPerm;
            assume diz != null;
            Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume diz != null;
            Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__used, write) might not be preserved. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@184.15--184.42) [25007]"}
            perm <= Mask[diz, Queue__used];
        }
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__data, write) might not be preserved. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@185.15--185.42) [25008]"}
            perm <= Mask[diz, Queue__data];
        }
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Queue__lock_held(diz), write) might not be preserved. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@186.15--186.48) [25009]"}
            perm <= Mask[null, Queue__lock_held(diz)];
        }
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !Heap[diz, Queue__used];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_19 := true -- testPVLLocks.vpr@194.3--194.23
    __flatten_19 := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_41 := __flatten_19 -- testPVLLocks.vpr@195.3--195.31
    __flatten_41 := __flatten_19;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Queue__used := __flatten_41 -- testPVLLocks.vpr@196.3--196.34
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@196.3--196.34) [25010]"}
      FullPerm == Mask[diz, Queue__used];
    Heap := Heap[diz, Queue__used:=__flatten_41];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_20 := x -- testPVLLocks.vpr@197.3--197.20
    __flatten_20 := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_42 := __flatten_20 -- testPVLLocks.vpr@198.3--198.31
    __flatten_42 := __flatten_20;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Queue__data := __flatten_42 -- testPVLLocks.vpr@199.3--199.34
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@199.3--199.34) [25011]"}
      FullPerm == Mask[diz, Queue__data];
    Heap := Heap[diz, Queue__data:=__flatten_42];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@200.3--200.43
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@200.10--200.43) [25013]"}
        perm <= AssertMask[null, Queue__lock_held(diz)];
    }
    AssertMask := AssertMask[null, Queue__lock_held(diz):=AssertMask[null, Queue__lock_held(diz)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@201.3--201.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@201.10--201.43) [25015]"}
        perm <= Mask[null, Queue__lock_held(diz)];
    }
    Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@202.3--202.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@202.3--202.46) [25018]"}
        perm <= Mask[diz, Queue__used];
    }
    Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@202.3--202.46) [25020]"}
        perm <= Mask[diz, Queue__data];
    }
    Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
    perm := FullPerm;
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
    assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
    if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
      Heap := Heap[null, Queue__lock_invariant#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Queue__lock_invariant(diz):=freshVersion];
    }
    Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__used:=true]];
    Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__data:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@203.3--203.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@203.10--203.48) [25023]"}
        perm <= Mask[null, Queue__lock_invariant(diz)];
    }
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Queue__take
// ==================================================

procedure Queue__take(diz: Ref, current_thread_id: int) returns (sys__result: int)
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var freshVersion: FrameType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var res: int;
  var __flatten_21: bool;
  var __flatten_43: bool;
  var __flatten_22: int;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@214.3--214.48
    perm := FullPerm;
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@215.3--215.48
    assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
    assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@215.3--215.48) [25027]"}
        perm <= Mask[null, Queue__lock_invariant(diz)];
    }
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
        havoc newVersion;
        Heap := Heap[null, Queue__lock_invariant(diz):=newVersion];
      }
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@216.3--216.43
    perm := FullPerm;
    Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (!diz.Queue__used) -- testPVLLocks.vpr@217.3--227.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__used, write) might not hold on entry. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@218.15--218.42) [25031]"}
            perm <= Mask[diz, Queue__used];
        }
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__data, write) might not hold on entry. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@219.15--219.42) [25032]"}
            perm <= Mask[diz, Queue__data];
        }
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Queue__lock_held(diz), write) might not hold on entry. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@220.15--220.48) [25033]"}
            perm <= Mask[null, Queue__lock_held(diz)];
        }
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
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
        assume diz != null;
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        assume diz != null;
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
        assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        
        // -- Check definedness of !diz.Queue__used
          assert {:msg "  While statement might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@217.10--217.26) [25034]"}
            HasDirectPerm(Mask, diz, Queue__used);
        assume !Heap[diz, Queue__used];
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: fold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@222.5--222.48
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@222.5--222.48) [25035]"}
                perm <= Mask[diz, Queue__used];
            }
            Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@222.5--222.48) [25036]"}
                perm <= Mask[diz, Queue__data];
            }
            Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
            perm := FullPerm;
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
            assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
            if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
              Heap := Heap[null, Queue__lock_invariant#sm(diz):=ZeroPMask];
              havoc freshVersion;
              Heap := Heap[null, Queue__lock_invariant(diz):=freshVersion];
            }
            Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__used:=true]];
            Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__data:=true]];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: exhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@223.5--223.50
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@223.12--223.50) [25037]"}
                perm <= Mask[null, Queue__lock_invariant(diz)];
            }
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@224.5--224.45
            AssertHeap := Heap;
            AssertMask := Mask;
            ExhaleWellDef0Heap := AssertHeap;
            ExhaleWellDef0Mask := AssertMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Assert might fail. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@224.12--224.45) [25038]"}
                perm <= AssertMask[null, Queue__lock_held(diz)];
            }
            AssertMask := AssertMask[null, Queue__lock_held(diz):=AssertMask[null, Queue__lock_held(diz)] - perm];
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@225.5--225.50
            perm := FullPerm;
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
          
          // -- Translating statement: unfold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@226.5--226.50
            assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
            assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Unfolding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@226.5--226.50) [25039]"}
                perm <= Mask[null, Queue__lock_invariant(diz)];
            }
            Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
            
            // -- Update version of predicate
              if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
                havoc newVersion;
                Heap := Heap[null, Queue__lock_invariant(diz):=newVersion];
              }
            perm := FullPerm;
            assume diz != null;
            Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume diz != null;
            Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__used, write) might not be preserved. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@218.15--218.42) [25040]"}
            perm <= Mask[diz, Queue__used];
        }
        Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(diz.Queue__data, write) might not be preserved. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@219.15--219.42) [25041]"}
            perm <= Mask[diz, Queue__data];
        }
        Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Loop invariant acc(Queue__lock_held(diz), write) might not be preserved. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@220.15--220.48) [25042]"}
            perm <= Mask[null, Queue__lock_held(diz)];
        }
        Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] - perm];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume Heap[diz, Queue__used];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume diz != null;
      Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := diz.Queue__data -- testPVLLocks.vpr@228.3--228.25
    
    // -- Check definedness of diz.Queue__data
      assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@228.3--228.25) [25043]"}
        HasDirectPerm(Mask, diz, Queue__data);
    res := Heap[diz, Queue__data];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_21 := false -- testPVLLocks.vpr@229.3--229.24
    __flatten_21 := false;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_43 := __flatten_21 -- testPVLLocks.vpr@230.3--230.31
    __flatten_43 := __flatten_21;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Queue__used := __flatten_43 -- testPVLLocks.vpr@231.3--231.34
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@231.3--231.34) [25044]"}
      FullPerm == Mask[diz, Queue__used];
    Heap := Heap[diz, Queue__used:=__flatten_43];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@232.3--232.43
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@232.10--232.43) [25046]"}
        perm <= AssertMask[null, Queue__lock_held(diz)];
    }
    AssertMask := AssertMask[null, Queue__lock_held(diz):=AssertMask[null, Queue__lock_held(diz)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(Queue__lock_held(diz), write) -- testPVLLocks.vpr@233.3--233.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access Queue__lock_held(diz) (testPVLLocks.vpr@233.10--233.43) [25048]"}
        perm <= Mask[null, Queue__lock_held(diz)];
    }
    Mask := Mask[null, Queue__lock_held(diz):=Mask[null, Queue__lock_held(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@234.3--234.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__used (testPVLLocks.vpr@234.3--234.46) [25051]"}
        perm <= Mask[diz, Queue__used];
    }
    Mask := Mask[diz, Queue__used:=Mask[diz, Queue__used] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Queue__lock_invariant(diz) might fail. There might be insufficient permission to access diz.Queue__data (testPVLLocks.vpr@234.3--234.46) [25053]"}
        perm <= Mask[diz, Queue__data];
    }
    Mask := Mask[diz, Queue__data:=Mask[diz, Queue__data] - perm];
    perm := FullPerm;
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Queue__lock_invariant#trigger(Heap, Queue__lock_invariant(diz));
    assume Heap[null, Queue__lock_invariant(diz)] == CombineFrames(FrameFragment(Heap[diz, Queue__used]), FrameFragment(Heap[diz, Queue__data]));
    if (!HasDirectPerm(Mask, null, Queue__lock_invariant(diz))) {
      Heap := Heap[null, Queue__lock_invariant#sm(diz):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Queue__lock_invariant(diz):=freshVersion];
    }
    Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__used:=true]];
    Heap := Heap[null, Queue__lock_invariant#sm(diz):=Heap[null, Queue__lock_invariant#sm(diz)][diz, Queue__data:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(Queue__lock_invariant(diz), write) -- testPVLLocks.vpr@235.3--235.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access Queue__lock_invariant(diz) (testPVLLocks.vpr@235.10--235.48) [25056]"}
        perm <= Mask[null, Queue__lock_invariant(diz)];
    }
    Mask := Mask[null, Queue__lock_invariant(diz):=Mask[null, Queue__lock_invariant(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_22 := res -- testPVLLocks.vpr@236.3--236.22
    __flatten_22 := res;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_22 -- testPVLLocks.vpr@237.3--237.30
    sys__result := __flatten_22;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert true -- testPVLLocks.vpr@238.3--238.14
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testPVLLocks.vpr@239.3--239.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}