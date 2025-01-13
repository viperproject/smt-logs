// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:19:18
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_fibonacci.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/test_fibonacci-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: Fib__fib
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

const unique Fib__input: Field NormalField int;
axiom !IsPredicateField(Fib__input);
axiom !IsWandField(Fib__input);
const unique Fib__output: Field NormalField int;
axiom !IsPredicateField(Fib__output);
axiom !IsWandField(Fib__output);

// ==================================================
// Translation of function Fib__fib
// ==================================================

// Uninterpreted function definitions
function  Fib__fib(Heap: HeapType, n: int): int;
function  Fib__fib'(Heap: HeapType, n: int): int;
axiom (forall Heap: HeapType, n: int ::
  { Fib__fib(Heap, n) }
  Fib__fib(Heap, n) == Fib__fib'(Heap, n) && dummyFunction(Fib__fib#triggerStateless(n))
);
axiom (forall Heap: HeapType, n: int ::
  { Fib__fib'(Heap, n) }
  dummyFunction(Fib__fib#triggerStateless(n))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), Fib__fib(Heap, n) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> Fib__fib(Heap, n) == (if n < 2 then 1 else Fib__fib'(Heap, n - 1) + Fib__fib'(Heap, n - 2))
);

// Framing axioms
function  Fib__fib#frame(frame: FrameType, n: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, n: int ::
  { state(Heap, Mask), Fib__fib'(Heap, n) }
  state(Heap, Mask) ==> Fib__fib'(Heap, n) == Fib__fib#frame(EmptyFrame, n)
);

// Trigger function (controlling recursive postconditions)
function  Fib__fib#trigger(frame: FrameType, n: int): bool;

// State-independent trigger function
function  Fib__fib#triggerStateless(n: int): int;

// Check contract well-formedness and postcondition
procedure Fib__fib#definedness(n: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (n < 2 ? 1 : Fib__fib(n - 1) + Fib__fib(n - 2))
      if (n < 2) {
      } else {
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Fib__fib#trigger(EmptyFrame, n - 1);
        }
        if (*) {
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume Fib__fib#trigger(EmptyFrame, n - 2);
        }
      }
  
  // -- Translate function body
    Result := (if n < 2 then 1 else Fib__fib(Heap, n - 1) + Fib__fib(Heap, n - 2));
}

// ==================================================
// Translation of predicate Fib__joinToken
// ==================================================

type PredicateType_Fib__joinToken;
function  Fib__joinToken(diz: Ref): Field PredicateType_Fib__joinToken FrameType;
function  Fib__joinToken#sm(diz: Ref): Field PredicateType_Fib__joinToken PMaskType;
axiom (forall diz: Ref ::
  { PredicateMaskField(Fib__joinToken(diz)) }
  PredicateMaskField(Fib__joinToken(diz)) == Fib__joinToken#sm(diz)
);
axiom (forall diz: Ref ::
  { Fib__joinToken(diz) }
  IsPredicateField(Fib__joinToken(diz))
);
axiom (forall diz: Ref ::
  { Fib__joinToken(diz) }
  getPredWandId(Fib__joinToken(diz)) == 0
);
function  Fib__joinToken#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Fib__joinToken#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall diz: Ref, diz2: Ref ::
  { Fib__joinToken(diz), Fib__joinToken(diz2) }
  Fib__joinToken(diz) == Fib__joinToken(diz2) ==> diz == diz2
);
axiom (forall diz: Ref, diz2: Ref ::
  { Fib__joinToken#sm(diz), Fib__joinToken#sm(diz2) }
  Fib__joinToken#sm(diz) == Fib__joinToken#sm(diz2) ==> diz == diz2
);

axiom (forall Heap: HeapType, diz: Ref ::
  { Fib__joinToken#trigger(Heap, Fib__joinToken(diz)) }
  Fib__joinToken#everUsed(Fib__joinToken(diz))
);

// ==================================================
// Translation of method Fib__forkOperator
// ==================================================

procedure Fib__forkOperator(diz: Ref, current_thread_id: int) returns ()
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
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@18.12--18.39) [178024]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Fib__input:=Mask[diz, Fib__input] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Fib__output:=Mask[diz, Fib__output] + perm];
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
    PostMask := PostMask[null, Fib__joinToken(diz):=PostMask[null, Fib__joinToken(diz)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_fibonacci.vpr@22.3--22.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Fib__forkOperator might not hold. There might be insufficient permission to access Fib__joinToken(diz) (test_fibonacci.vpr@20.11--20.42) [178025]"}
        perm <= Mask[null, Fib__joinToken(diz)];
    }
    Mask := Mask[null, Fib__joinToken(diz):=Mask[null, Fib__joinToken(diz)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Fib__joinOperator
// ==================================================

procedure Fib__joinOperator(diz: Ref, current_thread_id: int) returns ()
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
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, Fib__joinToken(diz):=Mask[null, Fib__joinToken(diz)] + perm];
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
    perm := 1 / 10;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@29.11--29.38) [178026]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, Fib__input:=PostMask[diz, Fib__input] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, Fib__output:=PostMask[diz, Fib__output] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Fib__output == Fib__fib(diz.Fib__input)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Fib__output (test_fibonacci.vpr@31.11--31.54) [178027]"}
        HasDirectPerm(PostMask, diz, Fib__output);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@31.11--31.54) [178028]"}
        HasDirectPerm(PostMask, diz, Fib__input);
      if (*) {
        // Stop execution
        assume false;
      }
    assume PostHeap[diz, Fib__output] == Fib__fib(PostHeap, PostHeap[diz, Fib__input]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_fibonacci.vpr@33.3--33.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 10;
    assert {:msg "  Postcondition of Fib__joinOperator might not hold. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@29.11--29.38) [178029]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Fib__joinOperator might not hold. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@29.11--29.38) [178030]"}
        perm <= Mask[diz, Fib__input];
    }
    Mask := Mask[diz, Fib__input:=Mask[diz, Fib__input] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Fib__joinOperator might not hold. There might be insufficient permission to access diz.Fib__output (test_fibonacci.vpr@30.11--30.38) [178031]"}
        perm <= Mask[diz, Fib__output];
    }
    Mask := Mask[diz, Fib__output:=Mask[diz, Fib__output] - perm];
    assert {:msg "  Postcondition of Fib__joinOperator might not hold. Assertion diz.Fib__output == Fib__fib(diz.Fib__input) might not hold. (test_fibonacci.vpr@31.11--31.54) [178032]"}
      Heap[diz, Fib__output] == Fib__fib(Heap, Heap[diz, Fib__input]);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Fib__run
// ==================================================

procedure Fib__run(diz: Ref, current_thread_id: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var f2: Ref;
  var f1: Ref;
  var __flatten_2: Ref;
  var __flatten_3: Ref;
  var __flatten_1: int;
  var __flatten_10: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_n: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var arg_n_1: int;
  var ExhaleHeap: HeapType;
  var __flatten_8: int;
  var __flatten_17: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[diz, $allocated];
  
  // -- Checked inhaling of precondition
    assume diz != null;
    assume state(Heap, Mask);
    assume current_thread_id >= 0;
    assume state(Heap, Mask);
    perm := 1 / 10;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@39.12--39.39) [178033]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    Mask := Mask[diz, Fib__input:=Mask[diz, Fib__input] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume diz != null;
    Mask := Mask[diz, Fib__output:=Mask[diz, Fib__output] + perm];
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
    perm := 1 / 10;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@41.11--41.38) [178034]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> diz != null;
    PostMask := PostMask[diz, Fib__input:=PostMask[diz, Fib__input] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume diz != null;
    PostMask := PostMask[diz, Fib__output:=PostMask[diz, Fib__output] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of diz.Fib__output == Fib__fib(diz.Fib__input)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Fib__output (test_fibonacci.vpr@43.11--43.54) [178035]"}
        HasDirectPerm(PostMask, diz, Fib__output);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@43.11--43.54) [178036]"}
        HasDirectPerm(PostMask, diz, Fib__input);
      if (*) {
        // Stop execution
        assume false;
      }
    assume PostHeap[diz, Fib__output] == Fib__fib(PostHeap, PostHeap[diz, Fib__input]);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[f2, $allocated];
    assume Heap[f1, $allocated];
    assume Heap[__flatten_2, $allocated];
    assume Heap[__flatten_3, $allocated];
  
  // -- Translating statement: if (diz.Fib__input < 2) -- test_fibonacci.vpr@53.3--69.4
    
    // -- Check definedness of diz.Fib__input < 2
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@53.7--53.25) [178037]"}
        HasDirectPerm(Mask, diz, Fib__input);
    if (Heap[diz, Fib__input] < 2) {
      
      // -- Translating statement: __flatten_1 := 1 -- test_fibonacci.vpr@54.5--54.21
        __flatten_1 := 1;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_10 := __flatten_1 -- test_fibonacci.vpr@55.5--55.32
        __flatten_10 := __flatten_1;
        assume state(Heap, Mask);
      
      // -- Translating statement: diz.Fib__output := __flatten_10 -- test_fibonacci.vpr@56.5--56.36
        assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Fib__output (test_fibonacci.vpr@56.5--56.36) [178038]"}
          FullPerm == Mask[diz, Fib__output];
        Heap := Heap[diz, Fib__output:=__flatten_10];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: __flatten_2 := Fib__Fib(current_thread_id, diz.Fib__input - 1) -- test_fibonacci.vpr@58.5--58.67
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of diz.Fib__input - 1
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@58.5--58.67) [178039]"}
            HasDirectPerm(Mask, diz, Fib__input);
        arg_n := Heap[diz, Fib__input] - 1;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Fib__Fib might not hold. Assertion current_thread_id >= 0 might not hold. (test_fibonacci.vpr@58.5--58.67) [178040]"}
            current_thread_id >= 0;
        
        // -- Havocing target variables
          havoc __flatten_2;
        
        // -- Inhaling postcondition
          assume __flatten_2 != null;
          perm := FullPerm;
          assume __flatten_2 != null;
          Mask := Mask[__flatten_2, Fib__input:=Mask[__flatten_2, Fib__input] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume __flatten_2 != null;
          Mask := Mask[__flatten_2, Fib__output:=Mask[__flatten_2, Fib__output] + perm];
          assume state(Heap, Mask);
          assume Heap[__flatten_2, Fib__input] == arg_n;
          assume state(Heap, Mask);
        assume Heap[__flatten_2, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: f1 := __flatten_2 -- test_fibonacci.vpr@59.5--59.22
        f1 := __flatten_2;
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_3 := Fib__Fib(current_thread_id, diz.Fib__input - 2) -- test_fibonacci.vpr@60.5--60.67
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of diz.Fib__input - 2
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@60.5--60.67) [178041]"}
            HasDirectPerm(Mask, diz, Fib__input);
        arg_n_1 := Heap[diz, Fib__input] - 2;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Fib__Fib might not hold. Assertion current_thread_id >= 0 might not hold. (test_fibonacci.vpr@60.5--60.67) [178042]"}
            current_thread_id >= 0;
        
        // -- Havocing target variables
          havoc __flatten_3;
        
        // -- Inhaling postcondition
          assume __flatten_3 != null;
          perm := FullPerm;
          assume __flatten_3 != null;
          Mask := Mask[__flatten_3, Fib__input:=Mask[__flatten_3, Fib__input] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume __flatten_3 != null;
          Mask := Mask[__flatten_3, Fib__output:=Mask[__flatten_3, Fib__output] + perm];
          assume state(Heap, Mask);
          assume Heap[__flatten_3, Fib__input] == arg_n_1;
          assume state(Heap, Mask);
        assume Heap[__flatten_3, $allocated];
        assume state(Heap, Mask);
      
      // -- Translating statement: f2 := __flatten_3 -- test_fibonacci.vpr@61.5--61.22
        f2 := __flatten_3;
        assume state(Heap, Mask);
      
      // -- Translating statement: Fib__forkOperator(f1, current_thread_id) -- test_fibonacci.vpr@62.5--62.45
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Fib__forkOperator might not hold. Assertion f1 != null might not hold. (test_fibonacci.vpr@62.5--62.45) [178043]"}
            f1 != null;
          assert {:msg "  The precondition of method Fib__forkOperator might not hold. Assertion current_thread_id >= 0 might not hold. (test_fibonacci.vpr@62.5--62.45) [178044]"}
            current_thread_id >= 0;
          perm := 1 / 10;
          assert {:msg "  The precondition of method Fib__forkOperator might not hold. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@62.5--62.45) [178045]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Fib__forkOperator might not hold. There might be insufficient permission to access f1.Fib__input (test_fibonacci.vpr@62.5--62.45) [178046]"}
              perm <= Mask[f1, Fib__input];
          }
          Mask := Mask[f1, Fib__input:=Mask[f1, Fib__input] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Fib__forkOperator might not hold. There might be insufficient permission to access f1.Fib__output (test_fibonacci.vpr@62.5--62.45) [178047]"}
              perm <= Mask[f1, Fib__output];
          }
          Mask := Mask[f1, Fib__output:=Mask[f1, Fib__output] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, Fib__joinToken(f1):=Mask[null, Fib__joinToken(f1)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: Fib__forkOperator(f2, current_thread_id) -- test_fibonacci.vpr@63.5--63.45
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Fib__forkOperator might not hold. Assertion f2 != null might not hold. (test_fibonacci.vpr@63.5--63.45) [178048]"}
            f2 != null;
          assert {:msg "  The precondition of method Fib__forkOperator might not hold. Assertion current_thread_id >= 0 might not hold. (test_fibonacci.vpr@63.5--63.45) [178049]"}
            current_thread_id >= 0;
          perm := 1 / 10;
          assert {:msg "  The precondition of method Fib__forkOperator might not hold. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@63.5--63.45) [178050]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Fib__forkOperator might not hold. There might be insufficient permission to access f2.Fib__input (test_fibonacci.vpr@63.5--63.45) [178051]"}
              perm <= Mask[f2, Fib__input];
          }
          Mask := Mask[f2, Fib__input:=Mask[f2, Fib__input] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Fib__forkOperator might not hold. There might be insufficient permission to access f2.Fib__output (test_fibonacci.vpr@63.5--63.45) [178052]"}
              perm <= Mask[f2, Fib__output];
          }
          Mask := Mask[f2, Fib__output:=Mask[f2, Fib__output] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, Fib__joinToken(f2):=Mask[null, Fib__joinToken(f2)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: Fib__joinOperator(f1, current_thread_id) -- test_fibonacci.vpr@64.5--64.45
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Fib__joinOperator might not hold. Assertion f1 != null might not hold. (test_fibonacci.vpr@64.5--64.45) [178053]"}
            f1 != null;
          assert {:msg "  The precondition of method Fib__joinOperator might not hold. Assertion current_thread_id >= 0 might not hold. (test_fibonacci.vpr@64.5--64.45) [178054]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Fib__joinOperator might not hold. There might be insufficient permission to access Fib__joinToken(f1) (test_fibonacci.vpr@64.5--64.45) [178055]"}
              perm <= Mask[null, Fib__joinToken(f1)];
          }
          Mask := Mask[null, Fib__joinToken(f1):=Mask[null, Fib__joinToken(f1)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := 1 / 10;
          assert {:msg "  Method call might fail. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@64.5--64.45) [178056]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> f1 != null;
          Mask := Mask[f1, Fib__input:=Mask[f1, Fib__input] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume f1 != null;
          Mask := Mask[f1, Fib__output:=Mask[f1, Fib__output] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Heap[f1, Fib__output] == Fib__fib(Heap, Heap[f1, Fib__input]);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: Fib__joinOperator(f2, current_thread_id) -- test_fibonacci.vpr@65.5--65.45
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Fib__joinOperator might not hold. Assertion f2 != null might not hold. (test_fibonacci.vpr@65.5--65.45) [178057]"}
            f2 != null;
          assert {:msg "  The precondition of method Fib__joinOperator might not hold. Assertion current_thread_id >= 0 might not hold. (test_fibonacci.vpr@65.5--65.45) [178058]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Fib__joinOperator might not hold. There might be insufficient permission to access Fib__joinToken(f2) (test_fibonacci.vpr@65.5--65.45) [178059]"}
              perm <= Mask[null, Fib__joinToken(f2)];
          }
          Mask := Mask[null, Fib__joinToken(f2):=Mask[null, Fib__joinToken(f2)] - perm];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := 1 / 10;
          assert {:msg "  Method call might fail. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@65.5--65.45) [178060]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> f2 != null;
          Mask := Mask[f2, Fib__input:=Mask[f2, Fib__input] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume f2 != null;
          Mask := Mask[f2, Fib__output:=Mask[f2, Fib__output] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Heap[f2, Fib__output] == Fib__fib(Heap, Heap[f2, Fib__input]);
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_8 := f1.Fib__output + f2.Fib__output -- test_fibonacci.vpr@66.5--66.51
        
        // -- Check definedness of f1.Fib__output + f2.Fib__output
          assert {:msg "  Assignment might fail. There might be insufficient permission to access f1.Fib__output (test_fibonacci.vpr@66.5--66.51) [178061]"}
            HasDirectPerm(Mask, f1, Fib__output);
          assert {:msg "  Assignment might fail. There might be insufficient permission to access f2.Fib__output (test_fibonacci.vpr@66.5--66.51) [178062]"}
            HasDirectPerm(Mask, f2, Fib__output);
        __flatten_8 := Heap[f1, Fib__output] + Heap[f2, Fib__output];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_17 := __flatten_8 -- test_fibonacci.vpr@67.5--67.32
        __flatten_17 := __flatten_8;
        assume state(Heap, Mask);
      
      // -- Translating statement: diz.Fib__output := __flatten_17 -- test_fibonacci.vpr@68.5--68.36
        assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Fib__output (test_fibonacci.vpr@68.5--68.36) [178063]"}
          FullPerm == Mask[diz, Fib__output];
        Heap := Heap[diz, Fib__output:=__flatten_17];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 1 / 10;
    assert {:msg "  Postcondition of Fib__run might not hold. Fraction 1 / 10 might be negative. (test_fibonacci.vpr@41.11--41.38) [178064]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Fib__run might not hold. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@41.11--41.38) [178065]"}
        perm <= Mask[diz, Fib__input];
    }
    Mask := Mask[diz, Fib__input:=Mask[diz, Fib__input] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Fib__run might not hold. There might be insufficient permission to access diz.Fib__output (test_fibonacci.vpr@42.11--42.38) [178066]"}
        perm <= Mask[diz, Fib__output];
    }
    Mask := Mask[diz, Fib__output:=Mask[diz, Fib__output] - perm];
    assert {:msg "  Postcondition of Fib__run might not hold. Assertion diz.Fib__output == Fib__fib(diz.Fib__input) might not hold. (test_fibonacci.vpr@43.11--43.54) [178067]"}
      Heap[diz, Fib__output] == Fib__fib(Heap, Heap[diz, Fib__input]);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Fib__Fib
// ==================================================

procedure Fib__Fib(current_thread_id: int, n: int) returns (sys__result: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_9: int;
  var __flatten_18: int;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
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
    PostMask := PostMask[sys__result, Fib__input:=PostMask[sys__result, Fib__input] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Fib__output:=PostMask[sys__result, Fib__output] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Fib__input == n
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Fib__input (test_fibonacci.vpr@77.11--77.38) [178068]"}
        HasDirectPerm(PostMask, sys__result, Fib__input);
    assume PostHeap[sys__result, Fib__input] == n;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Fib__input, Fib__output) -- test_fibonacci.vpr@82.3--82.38
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Fib__input:=Mask[diz, Fib__input] + FullPerm];
    Mask := Mask[diz, Fib__output:=Mask[diz, Fib__output] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_9 := n -- test_fibonacci.vpr@83.3--83.19
    __flatten_9 := n;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_18 := __flatten_9 -- test_fibonacci.vpr@84.3--84.30
    __flatten_18 := __flatten_9;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Fib__input := __flatten_18 -- test_fibonacci.vpr@85.3--85.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Fib__input (test_fibonacci.vpr@85.3--85.33) [178069]"}
      FullPerm == Mask[diz, Fib__input];
    Heap := Heap[diz, Fib__input:=__flatten_18];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- test_fibonacci.vpr@86.3--86.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Fib__input, write) &&
  //   (acc(sys__result.Fib__output, write) && sys__result.Fib__input == n)) -- test_fibonacci.vpr@87.3--87.141
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (test_fibonacci.vpr@87.10--87.141) [178070]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Fib__input (test_fibonacci.vpr@87.10--87.141) [178072]"}
        perm <= AssertMask[sys__result, Fib__input];
    }
    AssertMask := AssertMask[sys__result, Fib__input:=AssertMask[sys__result, Fib__input] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Fib__output (test_fibonacci.vpr@87.10--87.141) [178074]"}
        perm <= AssertMask[sys__result, Fib__output];
    }
    AssertMask := AssertMask[sys__result, Fib__output:=AssertMask[sys__result, Fib__output] - perm];
    
    // -- Check definedness of sys__result.Fib__input == n
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Fib__input (test_fibonacci.vpr@87.10--87.141) [178075]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Fib__input);
    assert {:msg "  Assert might fail. Assertion sys__result.Fib__input == n might not hold. (test_fibonacci.vpr@87.10--87.141) [178076]"}
      AssertHeap[sys__result, Fib__input] == n;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- test_fibonacci.vpr@88.3--88.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Fib__Fib might not hold. Assertion sys__result != null might not hold. (test_fibonacci.vpr@74.11--74.30) [178077]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Fib__Fib might not hold. There might be insufficient permission to access sys__result.Fib__input (test_fibonacci.vpr@75.11--75.45) [178078]"}
        perm <= Mask[sys__result, Fib__input];
    }
    Mask := Mask[sys__result, Fib__input:=Mask[sys__result, Fib__input] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Fib__Fib might not hold. There might be insufficient permission to access sys__result.Fib__output (test_fibonacci.vpr@76.11--76.46) [178079]"}
        perm <= Mask[sys__result, Fib__output];
    }
    Mask := Mask[sys__result, Fib__output:=Mask[sys__result, Fib__output] - perm];
    assert {:msg "  Postcondition of Fib__Fib might not hold. Assertion sys__result.Fib__input == n might not hold. (test_fibonacci.vpr@77.11--77.38) [178080]"}
      Heap[sys__result, Fib__input] == n;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}