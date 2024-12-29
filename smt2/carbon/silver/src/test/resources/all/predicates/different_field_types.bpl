// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:36:28
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/different_field_types.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/predicates/different_field_types-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: fun
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
const unique g: Field NormalField bool;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, x: Ref, b_24: bool): bool;
function  fun'(Heap: HeapType, x: Ref, b_24: bool): bool;
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { fun(Heap, x, b_24) }
  fun(Heap, x, b_24) == fun'(Heap, x, b_24) && dummyFunction(fun#triggerStateless(x, b_24))
);
axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { fun'(Heap, x, b_24) }
  dummyFunction(fun#triggerStateless(x, b_24))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), fun(Heap, x, b_24) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun(Heap, x, b_24) == (if b_24 then Heap[x, f_7] != 0 else !Heap[x, g])
);

// Framing axioms
function  fun#frame(frame: FrameType, x: Ref, b_24: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, b_24: bool ::
  { state(Heap, Mask), fun'(Heap, x, b_24) }
  state(Heap, Mask) ==> fun'(Heap, x, b_24) == fun#frame(FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g]))), x, b_24)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, x: Ref, b_24: bool): bool;

// State-independent trigger function
function  fun#triggerStateless(x: Ref, b_24: bool): bool;

// Check contract well-formedness and postcondition
procedure fun#definedness(x: Ref, b_24: bool) returns (Result: bool)
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
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (b ? x.f != 0 : !x.g)
      if (b_24) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (different_field_types.vpr@37.1--39.24) [151329]"}
          HasDirectPerm(Mask, x, f_7);
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (different_field_types.vpr@37.1--39.24) [151330]"}
          HasDirectPerm(Mask, x, g);
      }
  
  // -- Translate function body
    Result := (if b_24 then Heap[x, f_7] != 0 else !Heap[x, g]);
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref, b_24: bool): Field PredicateType_P FrameType;
function  P#sm(x: Ref, b_24: bool): Field PredicateType_P PMaskType;
axiom (forall x: Ref, b_24: bool ::
  { PredicateMaskField(P(x, b_24)) }
  PredicateMaskField(P(x, b_24)) == P#sm(x, b_24)
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  IsPredicateField(P(x, b_24))
);
axiom (forall x: Ref, b_24: bool ::
  { P(x, b_24) }
  getPredWandId(P(x, b_24)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P(x, b_24), P(x2, b2) }
  P(x, b_24) == P(x2, b2) ==> x == x2 && b_24 == b2
);
axiom (forall x: Ref, b_24: bool, x2: Ref, b2: bool ::
  { P#sm(x, b_24), P#sm(x2, b2) }
  P#sm(x, b_24) == P#sm(x2, b2) ==> x == x2 && b_24 == b2
);

axiom (forall Heap: HeapType, x: Ref, b_24: bool ::
  { P#trigger(Heap, P(x, b_24)) }
  P#everUsed(P(x, b_24))
);

procedure P#definedness(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref, b_24: bool) returns ()
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
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
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
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of x.f == 0
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (different_field_types.vpr@11.11--11.53) [151331]"}
          HasDirectPerm(PostMask, x, f_7);
      assume PostHeap[x, f_7] == 0;
    } else {
      perm := FullPerm;
      assume x != null;
      PostMask := PostMask[x, g:=PostMask[x, g] + perm];
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of x.g
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.g (different_field_types.vpr@11.11--11.53) [151332]"}
          HasDirectPerm(PostMask, x, g);
      assume PostHeap[x, g];
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (b) -- different_field_types.vpr@13.3--17.4
    if (b_24) {
      
      // -- Translating statement: x.f := 0 -- different_field_types.vpr@14.5--14.13
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (different_field_types.vpr@14.5--14.13) [151333]"}
          FullPerm == Mask[x, f_7];
        Heap := Heap[x, f_7:=0];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: x.g := true -- different_field_types.vpr@16.5--16.16
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (different_field_types.vpr@16.5--16.16) [151334]"}
          FullPerm == Mask[x, g];
        Heap := Heap[x, g:=true];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.f (different_field_types.vpr@11.11--11.53) [151335]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      assert {:msg "  Postcondition of test1 might not hold. Assertion x.f == 0 might not hold. (different_field_types.vpr@11.11--11.53) [151336]"}
        Heap[x, f_7] == 0;
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access x.g (different_field_types.vpr@11.11--11.53) [151337]"}
          perm <= Mask[x, g];
      }
      Mask := Mask[x, g:=Mask[x, g] - perm];
      assert {:msg "  Postcondition of test1 might not hold. Assertion x.g might not hold. (different_field_types.vpr@11.11--11.53) [151338]"}
        Heap[x, g];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
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
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] + perm];
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
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
      assume state(PostHeap, PostMask);
    } else {
      perm := FullPerm;
      assume x != null;
      PostMask := PostMask[x, g:=PostMask[x, g] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(P(x, b), write) -- different_field_types.vpr@28.3--28.22
    assume P#trigger(Heap, P(x, b_24));
    assume Heap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(x, b) might fail. There might be insufficient permission to access P(x, b) (different_field_types.vpr@28.3--28.22) [151341]"}
        perm <= Mask[null, P(x, b_24)];
    }
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(x, b_24))) {
        havoc newVersion;
        Heap := Heap[null, P(x, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- different_field_types.vpr@30.3--34.4
    if (b_24) {
      
      // -- Translating statement: x.f := x.f + 1 -- different_field_types.vpr@31.5--31.19
        
        // -- Check definedness of x.f + 1
          assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (different_field_types.vpr@31.5--31.19) [151344]"}
            HasDirectPerm(Mask, x, f_7);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (different_field_types.vpr@31.5--31.19) [151345]"}
          FullPerm == Mask[x, f_7];
        Heap := Heap[x, f_7:=Heap[x, f_7] + 1];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: x.g := !x.g -- different_field_types.vpr@33.5--33.16
        
        // -- Check definedness of !x.g
          assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (different_field_types.vpr@33.5--33.16) [151346]"}
            HasDirectPerm(Mask, x, g);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (different_field_types.vpr@33.5--33.16) [151347]"}
          FullPerm == Mask[x, g];
        Heap := Heap[x, g:=!Heap[x, g]];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test2 might not hold. There might be insufficient permission to access x.f (different_field_types.vpr@26.11--26.34) [151348]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of test2 might not hold. There might be insufficient permission to access x.g (different_field_types.vpr@26.11--26.34) [151349]"}
          perm <= Mask[x, g];
      }
      Mask := Mask[x, g:=Mask[x, g] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(x: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  var c: bool;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] + perm];
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
    PostMask := PostMask[null, P(x, b_24):=PostMask[null, P(x, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(P(x, b), write) -- different_field_types.vpr@45.3--45.22
    assume P#trigger(Heap, P(x, b_24));
    assume Heap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding P(x, b) might fail. There might be insufficient permission to access P(x, b) (different_field_types.vpr@45.3--45.22) [151352]"}
        perm <= Mask[null, P(x, b_24)];
    }
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, P(x, b_24))) {
        havoc newVersion;
        Heap := Heap[null, P(x, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: c := fun(x, b) -- different_field_types.vpr@47.3--47.27
    
    // -- Check definedness of fun(x, b)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (b_24) {
          perm := FullPerm;
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access x.f (different_field_types.vpr@47.18--47.27) [151355]"}
            NoPerm < perm ==> NoPerm < Mask[x, f_7];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access x.g (different_field_types.vpr@47.18--47.27) [151356]"}
            NoPerm < perm ==> NoPerm < Mask[x, g];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    c := fun(Heap, x, b_24);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- different_field_types.vpr@49.3--55.4
    if (b_24) {
      
      // -- Translating statement: x.f := x.f + 1 -- different_field_types.vpr@50.5--50.19
        
        // -- Check definedness of x.f + 1
          assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (different_field_types.vpr@50.5--50.19) [151357]"}
            HasDirectPerm(Mask, x, f_7);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (different_field_types.vpr@50.5--50.19) [151358]"}
          FullPerm == Mask[x, f_7];
        Heap := Heap[x, f_7:=Heap[x, f_7] + 1];
        assume state(Heap, Mask);
      
      // -- Translating statement: c := fun(x, b) -- different_field_types.vpr@51.5--51.19
        
        // -- Check definedness of fun(x, b)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (b_24) {
              perm := FullPerm;
              assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access x.f (different_field_types.vpr@51.10--51.19) [151359]"}
                NoPerm < perm ==> NoPerm < Mask[x, f_7];
            } else {
              perm := FullPerm;
              assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access x.g (different_field_types.vpr@51.10--51.19) [151360]"}
                NoPerm < perm ==> NoPerm < Mask[x, g];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        c := fun(Heap, x, b_24);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: x.g := !x.g -- different_field_types.vpr@53.5--53.16
        
        // -- Check definedness of !x.g
          assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (different_field_types.vpr@53.5--53.16) [151361]"}
            HasDirectPerm(Mask, x, g);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (different_field_types.vpr@53.5--53.16) [151362]"}
          FullPerm == Mask[x, g];
        Heap := Heap[x, g:=!Heap[x, g]];
        assume state(Heap, Mask);
      
      // -- Translating statement: c := fun(x, b) -- different_field_types.vpr@54.5--54.19
        
        // -- Check definedness of fun(x, b)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            if (b_24) {
              perm := FullPerm;
              assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access x.f (different_field_types.vpr@54.10--54.19) [151363]"}
                NoPerm < perm ==> NoPerm < Mask[x, f_7];
            } else {
              perm := FullPerm;
              assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access x.g (different_field_types.vpr@54.10--54.19) [151364]"}
                NoPerm < perm ==> NoPerm < Mask[x, g];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        c := fun(Heap, x, b_24);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(P(x, b), write) -- different_field_types.vpr@57.3--57.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P(x, b) might fail. There might be insufficient permission to access x.f (different_field_types.vpr@57.3--57.20) [151367]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding P(x, b) might fail. There might be insufficient permission to access x.g (different_field_types.vpr@57.3--57.20) [151369]"}
          perm <= Mask[x, g];
      }
      Mask := Mask[x, g:=Mask[x, g] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume P#trigger(Heap, P(x, b_24));
    assume Heap[null, P(x, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else FrameFragment(Heap[x, g])));
    if (!HasDirectPerm(Mask, null, P(x, b_24))) {
      Heap := Heap[null, P#sm(x, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, P(x, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, P#sm(x, b_24):=Heap[null, P#sm(x, b_24)][x, f_7:=true]];
    } else {
      Heap := Heap[null, P#sm(x, b_24):=Heap[null, P#sm(x, b_24)][x, g:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test3 might not hold. There might be insufficient permission to access P(x, b) (different_field_types.vpr@43.11--43.23) [151371]"}
        perm <= Mask[null, P(x, b_24)];
    }
    Mask := Mask[null, P(x, b_24):=Mask[null, P(x, b_24)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}