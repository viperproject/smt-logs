// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:21:13
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/macros/define.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/macros/define-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: fun01
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

const unique f_7: Field NormalField Ref;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function fun01
// ==================================================

// Uninterpreted function definitions
function  fun01(Heap: HeapType, b_24: bool): bool;
function  fun01'(Heap: HeapType, b_24: bool): bool;
axiom (forall Heap: HeapType, b_24: bool ::
  { fun01(Heap, b_24) }
  fun01(Heap, b_24) == fun01'(Heap, b_24) && dummyFunction(fun01#triggerStateless(b_24))
);
axiom (forall Heap: HeapType, b_24: bool ::
  { fun01'(Heap, b_24) }
  dummyFunction(fun01#triggerStateless(b_24))
);

// Framing axioms
function  fun01#frame(frame: FrameType, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool ::
  { state(Heap, Mask), fun01'(Heap, b_24) }
  state(Heap, Mask) ==> fun01'(Heap, b_24) == fun01#frame(EmptyFrame, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun01#trigger(frame: FrameType, b_24: bool): bool;

// State-independent trigger function
function  fun01#triggerStateless(b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure fun01#definedness(b_24: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale true ==> true -- define.vpr@10.3--10.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale true ==> true -- define.vpr@18.3--18.17
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale true ==> true -- define.vpr@19.3--19.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
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
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, write) && true -- define.vpr@27.3--27.16
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) -- define.vpr@28.3--28.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (define.vpr@28.10--28.18) [189466]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: Ref;
  var z: Ref;
  var perm: Perm;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Translating statement: inhale acc(x.f, write) && x.f == null -- define.vpr@35.3--35.20
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f == null
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (define.vpr@35.10--35.20) [189468]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: y := x -- define.vpr@36.3--36.18
    y := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: z := new(f) -- define.vpr@38.3--38.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    z := freshObj;
    Mask := Mask[z, f_7:=Mask[z, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := z -- define.vpr@39.3--39.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (define.vpr@39.3--39.11) [189469]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=z];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(y.f, write) && y.f == z && acc(y.f.f, write) -- define.vpr@40.3--40.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (define.vpr@40.10--40.31) [189471]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    
    // -- Check definedness of y.f == z
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (define.vpr@40.10--40.31) [189472]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    assert {:msg "  Exhale might fail. Assertion y.f == z might not hold. (define.vpr@40.10--40.31) [189473]"}
      Heap[y, f_7] == z;
    
    // -- Check definedness of acc(y.f.f, write)
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (define.vpr@40.10--40.31) [189474]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f.f (define.vpr@40.10--40.31) [189476]"}
        perm <= Mask[Heap[y, f_7], f_7];
    }
    Mask := Mask[Heap[y, f_7], f_7:=Mask[Heap[y, f_7], f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale fun01(x != i) -- define.vpr@50.10--50.23
    assume state(Heap, Mask);
    
    // -- Check definedness of fun01(x != i)
      if (*) {
        // Stop execution
        assume false;
      }
    assume fun01(Heap, x != i);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: while (i < 0) -- define.vpr@52.3--57.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant fun01(x != i) might not hold on entry. Assertion fun01(x != i) might not hold. (define.vpr@53.15--53.28) [189477]"}
          fun01(Heap, x != i);
    
    // -- Havoc loop written variables (except locals)
      havoc i;
    
    // -- Check definedness of invariant
      if (*) {
        assume state(Heap, Mask);
        
        // -- Check definedness of fun01(x != i)
          if (*) {
            // Stop execution
            assume false;
          }
        assume fun01(Heap, x != i);
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
        assume state(Heap, Mask);
        assume fun01(Heap, x != i);
        assume state(Heap, Mask);
        // Check and assume guard
        assume i < 0;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: i := i + 1 -- define.vpr@55.5--55.15
            i := i + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- define.vpr@56.12--56.17
            assume false;
            assume state(Heap, Mask);
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant fun01(x != i) might not be preserved. Assertion fun01(x != i) might not hold. (define.vpr@53.15--53.28) [189478]"}
          fun01(Heap, x != i);
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(i < 0);
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      assume fun01(Heap, x != i);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var t_2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[t_2, $allocated];
  
  // -- Translating statement: inhale acc(x.g, write) -- define.vpr@69.15--69.30
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := 1 -- define.vpr@69.32--69.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (define.vpr@69.32--69.40) [189480]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.g, write) -- define.vpr@70.15--70.30
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, g:=Mask[y, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := 2 -- define.vpr@70.32--70.40
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (define.vpr@70.32--70.40) [189482]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(t.g, write) -- define.vpr@71.15--71.30
    perm := FullPerm;
    assume t_2 != null;
    Mask := Mask[t_2, g:=Mask[t_2, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: t.g := x.g -- define.vpr@61.3--61.13
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (define.vpr@61.3--61.13) [189484]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t.g (define.vpr@61.3--61.13) [189485]"}
      FullPerm == Mask[t_2, g];
    Heap := Heap[t_2, g:=Heap[x, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := y.g -- define.vpr@62.3--62.13
    
    // -- Check definedness of y.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (define.vpr@62.3--62.13) [189486]"}
        HasDirectPerm(Mask, y, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (define.vpr@62.3--62.13) [189487]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=Heap[y, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := t.g -- define.vpr@63.3--63.13
    
    // -- Check definedness of t.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access t.g (define.vpr@63.3--63.13) [189488]"}
        HasDirectPerm(Mask, t_2, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (define.vpr@63.3--63.13) [189489]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=Heap[t_2, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.g == 2 && (y.g == 1 && t.g == 1) -- define.vpr@73.3--73.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.g == 2
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (define.vpr@73.10--73.42) [189490]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion x.g == 2 might not hold. (define.vpr@73.10--73.42) [189491]"}
      Heap[x, g] == 2;
    
    // -- Check definedness of y.g == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (define.vpr@73.10--73.42) [189492]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, g);
    assert {:msg "  Assert might fail. Assertion y.g == 1 might not hold. (define.vpr@73.10--73.42) [189493]"}
      Heap[y, g] == 1;
    
    // -- Check definedness of t.g == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access t.g (define.vpr@73.10--73.42) [189494]"}
        HasDirectPerm(ExhaleWellDef0Mask, t_2, g);
    assert {:msg "  Assert might fail. Assertion t.g == 1 might not hold. (define.vpr@73.10--73.42) [189495]"}
      Heap[t_2, g] == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := y.g -- define.vpr@61.3--61.13
    
    // -- Check definedness of y.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (define.vpr@61.3--61.13) [189496]"}
        HasDirectPerm(Mask, y, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (define.vpr@61.3--61.13) [189497]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=Heap[y, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := t.g -- define.vpr@62.3--62.13
    
    // -- Check definedness of t.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access t.g (define.vpr@62.3--62.13) [189498]"}
        HasDirectPerm(Mask, t_2, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (define.vpr@62.3--62.13) [189499]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=Heap[t_2, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: t.g := x.g -- define.vpr@63.3--63.13
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (define.vpr@63.3--63.13) [189500]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access t.g (define.vpr@63.3--63.13) [189501]"}
      FullPerm == Mask[t_2, g];
    Heap := Heap[t_2, g:=Heap[x, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.g == 1 && (y.g == 1 && t.g == 1) -- define.vpr@75.3--75.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.g == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (define.vpr@75.10--75.42) [189502]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion x.g == 1 might not hold. (define.vpr@75.10--75.42) [189503]"}
      Heap[x, g] == 1;
    
    // -- Check definedness of y.g == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (define.vpr@75.10--75.42) [189504]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, g);
    assert {:msg "  Assert might fail. Assertion y.g == 1 might not hold. (define.vpr@75.10--75.42) [189505]"}
      Heap[y, g] == 1;
    
    // -- Check definedness of t.g == 1
      assert {:msg "  Assert might fail. There might be insufficient permission to access t.g (define.vpr@75.10--75.42) [189506]"}
        HasDirectPerm(ExhaleWellDef0Mask, t_2, g);
    assert {:msg "  Assert might fail. Assertion t.g == 1 might not hold. (define.vpr@75.10--75.42) [189507]"}
      Heap[t_2, g] == 1;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07
// ==================================================

procedure test07(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.g := 1 -- define.vpr@87.3--87.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (define.vpr@87.3--87.11) [189508]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x.g <= 5) -- define.vpr@82.5--84.6
    
    // -- Check definedness of x.g <= 5
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.g (define.vpr@82.9--82.15) [189509]"}
        HasDirectPerm(Mask, x, g);
    if (Heap[x, g] <= 5) {
      
      // -- Translating statement: inhale false -- define.vpr@83.14--83.19
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- define.vpr@89.3--89.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (define.vpr@89.10--89.15) [189510]"}
      false;
    assume state(Heap, Mask);
}