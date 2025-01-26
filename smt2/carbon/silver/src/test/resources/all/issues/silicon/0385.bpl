// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:42:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0385.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0385-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 3: foo_2_2
// - height 2: foo_2_1
// - height 1: foo_1_2
// - height 0: foo_1_1
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
// Translation of domain Dummy
// ==================================================

// The type for domain Dummy
type DummyDomainType;

// Translation of domain function guard
function  guard(a_3: Ref): bool;

// ==================================================
// Translation of all fields
// ==================================================

const unique flag_1: Field NormalField bool;
axiom !IsPredicateField(flag_1);
axiom !IsWandField(flag_1);

// ==================================================
// Translation of function foo_1_1
// ==================================================

// Uninterpreted function definitions
function  foo_1_1(Heap: HeapType, y: Ref, x: Ref): bool;
function  foo_1_1'(Heap: HeapType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_1_1(Heap, y, x) }
  foo_1_1(Heap, y, x) == foo_1_1'(Heap, y, x) && dummyFunction(foo_1_1#triggerStateless(y, x))
);
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_1_1'(Heap, y, x) }
  dummyFunction(foo_1_1#triggerStateless(y, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_1_1(Heap, y, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_1_1(Heap, y, x) == (!(guard(y): bool) || Heap[y, flag_1])
);

// Framing axioms
function  foo_1_1#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_1_1'(Heap, y, x) }
  state(Heap, Mask) ==> foo_1_1'(Heap, y, x) == foo_1_1#frame(CombineFrames(FrameFragment(Heap[x, flag_1]), FrameFragment((if (guard(y): bool) then FrameFragment(Heap[y, flag_1]) else EmptyFrame))), y, x)
);

// Trigger function (controlling recursive postconditions)
function  foo_1_1#trigger(frame: FrameType, y: Ref, x: Ref): bool;

// State-independent trigger function
function  foo_1_1#triggerStateless(y: Ref, x: Ref): bool;

// Check contract well-formedness and postcondition
procedure foo_1_1#definedness(y: Ref, x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, flag_1:=Mask[x, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if ((guard(y): bool)) {
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag_1:=Mask[y, flag_1] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of !guard(y) || y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@12.1--17.2) [63369]"}
          HasDirectPerm(Mask, y, flag_1);
      }
  
  // -- Translate function body
    Result := !(guard(y): bool) || Heap[y, flag_1];
}

// ==================================================
// Translation of function foo_1_2
// ==================================================

// Uninterpreted function definitions
function  foo_1_2(Heap: HeapType, y: Ref, x: Ref): bool;
function  foo_1_2'(Heap: HeapType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_1_2(Heap, y, x) }
  foo_1_2(Heap, y, x) == foo_1_2'(Heap, y, x) && dummyFunction(foo_1_2#triggerStateless(y, x))
);
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_1_2'(Heap, y, x) }
  dummyFunction(foo_1_2#triggerStateless(y, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_1_2(Heap, y, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> foo_1_2(Heap, y, x) == ((guard(y): bool) ==> Heap[y, flag_1])
);

// Framing axioms
function  foo_1_2#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_1_2'(Heap, y, x) }
  state(Heap, Mask) ==> foo_1_2'(Heap, y, x) == foo_1_2#frame(CombineFrames(FrameFragment(Heap[x, flag_1]), FrameFragment((if (guard(y): bool) then FrameFragment(Heap[y, flag_1]) else EmptyFrame))), y, x)
);

// Trigger function (controlling recursive postconditions)
function  foo_1_2#trigger(frame: FrameType, y: Ref, x: Ref): bool;

// State-independent trigger function
function  foo_1_2#triggerStateless(y: Ref, x: Ref): bool;

// Check contract well-formedness and postcondition
procedure foo_1_2#definedness(y: Ref, x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, flag_1:=Mask[x, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if ((guard(y): bool)) {
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag_1:=Mask[y, flag_1] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of guard(y) ==> y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@19.1--24.2) [63370]"}
          HasDirectPerm(Mask, y, flag_1);
      }
  
  // -- Translate function body
    Result := (guard(y): bool) ==> Heap[y, flag_1];
}

// ==================================================
// Translation of function foo_2_1
// ==================================================

// Uninterpreted function definitions
function  foo_2_1(Heap: HeapType, y: Ref, x: Ref): bool;
function  foo_2_1'(Heap: HeapType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_2_1(Heap, y, x) }
  foo_2_1(Heap, y, x) == foo_2_1'(Heap, y, x) && dummyFunction(foo_2_1#triggerStateless(y, x))
);
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_2_1'(Heap, y, x) }
  dummyFunction(foo_2_1#triggerStateless(y, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_2_1(Heap, y, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> foo_2_1(Heap, y, x) == (!(guard(y): bool) || Heap[y, flag_1])
);

// Framing axioms
function  foo_2_1#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_2_1'(Heap, y, x) }
  state(Heap, Mask) ==> foo_2_1'(Heap, y, x) == foo_2_1#frame(FrameFragment((if (guard(y): bool) then CombineFrames(FrameFragment(Heap[x, flag_1]), FrameFragment(Heap[y, flag_1])) else FrameFragment(Heap[x, flag_1]))), y, x)
);

// Trigger function (controlling recursive postconditions)
function  foo_2_1#trigger(frame: FrameType, y: Ref, x: Ref): bool;

// State-independent trigger function
function  foo_2_1#triggerStateless(y: Ref, x: Ref): bool;

// Check contract well-formedness and postcondition
procedure foo_2_1#definedness(y: Ref, x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    if ((guard(y): bool)) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, flag_1:=Mask[x, flag_1] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag_1:=Mask[y, flag_1] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, flag_1:=Mask[x, flag_1] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of !guard(y) || y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@26.1--30.2) [63371]"}
          HasDirectPerm(Mask, y, flag_1);
      }
  
  // -- Translate function body
    Result := !(guard(y): bool) || Heap[y, flag_1];
}

// ==================================================
// Translation of function foo_2_2
// ==================================================

// Uninterpreted function definitions
function  foo_2_2(Heap: HeapType, y: Ref, x: Ref): bool;
function  foo_2_2'(Heap: HeapType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_2_2(Heap, y, x) }
  foo_2_2(Heap, y, x) == foo_2_2'(Heap, y, x) && dummyFunction(foo_2_2#triggerStateless(y, x))
);
axiom (forall Heap: HeapType, y: Ref, x: Ref ::
  { foo_2_2'(Heap, y, x) }
  dummyFunction(foo_2_2#triggerStateless(y, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_2_2(Heap, y, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> foo_2_2(Heap, y, x) == ((guard(y): bool) ==> Heap[y, flag_1])
);

// Framing axioms
function  foo_2_2#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_2_2'(Heap, y, x) }
  state(Heap, Mask) ==> foo_2_2'(Heap, y, x) == foo_2_2#frame(FrameFragment((if (guard(y): bool) then CombineFrames(FrameFragment(Heap[x, flag_1]), FrameFragment(Heap[y, flag_1])) else FrameFragment(Heap[x, flag_1]))), y, x)
);

// Trigger function (controlling recursive postconditions)
function  foo_2_2#trigger(frame: FrameType, y: Ref, x: Ref): bool;

// State-independent trigger function
function  foo_2_2#triggerStateless(y: Ref, x: Ref): bool;

// Check contract well-formedness and postcondition
procedure foo_2_2#definedness(y: Ref, x: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    if ((guard(y): bool)) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, flag_1:=Mask[x, flag_1] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag_1:=Mask[y, flag_1] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, flag_1:=Mask[x, flag_1] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of guard(y) ==> y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@32.1--36.2) [63372]"}
          HasDirectPerm(Mask, y, flag_1);
      }
  
  // -- Translate function body
    Result := (guard(y): bool) ==> Heap[y, flag_1];
}

// ==================================================
// Translation of method testA
// ==================================================

procedure testA(s_1: Ref, r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[s_1, $allocated];
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, flag_1:=Mask[r_1, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume s_1 != null;
    Mask := Mask[s_1, flag_1:=Mask[s_1, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of s.flag
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.flag (0385.vpr@42.12--42.18) [63373]"}
        HasDirectPerm(Mask, s_1, flag_1);
    assume Heap[s_1, flag_1];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert foo_1_1(s, r) -- 0385.vpr@44.3--44.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_1_1(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@44.10--44.23) [63374]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@44.10--44.23) [63375]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_1(s, r) might not hold. (0385.vpr@44.10--44.23) [63376]"}
      foo_1_1(Heap, s_1, r_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo_1_2(s, r) -- 0385.vpr@45.3--45.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_1_2(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@45.10--45.23) [63377]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@45.10--45.23) [63378]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_2(s, r) might not hold. (0385.vpr@45.10--45.23) [63379]"}
      foo_1_2(Heap, s_1, r_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo_2_1(s, r) -- 0385.vpr@46.3--46.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_2_1(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@46.10--46.23) [63380]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@46.10--46.23) [63381]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@46.10--46.23) [63382]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_2_1(s, r) might not hold. (0385.vpr@46.10--46.23) [63383]"}
      foo_2_1(Heap, s_1, r_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo_2_2(s, r) -- 0385.vpr@47.3--47.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_2_2(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@47.10--47.23) [63384]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@47.10--47.23) [63385]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@47.10--47.23) [63386]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_2_2(s, r) might not hold. (0385.vpr@47.10--47.23) [63387]"}
      foo_2_2(Heap, s_1, r_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testB
// ==================================================

procedure testB(s_1: Ref, r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[s_1, $allocated];
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, flag_1:=Mask[r_1, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume s_1 != null;
    Mask := Mask[s_1, flag_1:=Mask[s_1, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of r.flag
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.flag (0385.vpr@53.12--53.18) [63388]"}
        HasDirectPerm(Mask, r_1, flag_1);
    assume Heap[r_1, flag_1];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert foo_1_1(s, r) || (foo_1_2(s, r) || (foo_2_1(s, r) || foo_2_2(s, r))) -- 0385.vpr@55.3--60.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_1_1(s, r) || (foo_1_2(s, r) || (foo_2_1(s, r) || foo_2_2(s, r)))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@57.5--57.18) [63389]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@57.5--57.18) [63390]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (!foo_1_1(Heap, s_1, r_1)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@58.5--58.18) [63391]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
          if ((guard(s_1): bool)) {
            perm := FullPerm;
            assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@58.5--58.18) [63392]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (!foo_1_2(Heap, s_1, r_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if ((guard(s_1): bool)) {
              perm := FullPerm;
              assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@59.5--59.18) [63393]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
              perm := FullPerm;
              assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@59.5--59.18) [63394]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
            } else {
              perm := FullPerm;
              assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@59.5--59.18) [63395]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (!foo_2_1(Heap, s_1, r_1)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              if ((guard(s_1): bool)) {
                perm := FullPerm;
                assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@60.5--60.18) [63396]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
                perm := FullPerm;
                assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@60.5--60.18) [63397]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
              } else {
                perm := FullPerm;
                assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@60.5--60.18) [63398]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
              }
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
      }
    assert {:msg "  Assert might fail. Assertion foo_1_1(s, r) || (foo_1_2(s, r) || (foo_2_1(s, r) || foo_2_2(s, r))) might not hold. (0385.vpr@57.5--60.18) [63399]"}
      foo_1_1(Heap, s_1, r_1) || (foo_1_2(Heap, s_1, r_1) || (foo_2_1(Heap, s_1, r_1) || foo_2_2(Heap, s_1, r_1)));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testC
// ==================================================

procedure testC(s_1: Ref, r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[s_1, $allocated];
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, flag_1:=Mask[r_1, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume s_1 != null;
    Mask := Mask[s_1, flag_1:=Mask[s_1, flag_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert foo_1_1(s, r) == foo_1_2(s, r) &&
  //   (foo_1_2(s, r) == foo_2_1(s, r) && foo_2_1(s, r) == foo_2_2(s, r)) -- 0385.vpr@67.3--70.39
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_1_1(s, r) == foo_1_2(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@68.6--68.19) [63400]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@68.6--68.19) [63401]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@68.25--68.38) [63402]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@68.25--68.38) [63403]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_1(s, r) == foo_1_2(s, r) might not hold. (0385.vpr@68.5--70.39) [63404]"}
      foo_1_1(Heap, s_1, r_1) == foo_1_2(Heap, s_1, r_1);
    
    // -- Check definedness of foo_1_2(s, r) == foo_2_1(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@69.6--69.19) [63405]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@69.6--69.19) [63406]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@69.25--69.38) [63407]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@69.25--69.38) [63408]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@69.25--69.38) [63409]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_2(s, r) == foo_2_1(s, r) might not hold. (0385.vpr@68.5--70.39) [63410]"}
      foo_1_2(Heap, s_1, r_1) == foo_2_1(Heap, s_1, r_1);
    
    // -- Check definedness of foo_2_1(s, r) == foo_2_2(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.6--70.19) [63411]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@70.6--70.19) [63412]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.6--70.19) [63413]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_1): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.25--70.38) [63414]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@70.25--70.38) [63415]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_1, flag_1];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.25--70.38) [63416]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag_1];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_2_1(s, r) == foo_2_2(s, r) might not hold. (0385.vpr@68.5--70.39) [63417]"}
      foo_2_1(Heap, s_1, r_1) == foo_2_2(Heap, s_1, r_1);
    assume state(Heap, Mask);
}