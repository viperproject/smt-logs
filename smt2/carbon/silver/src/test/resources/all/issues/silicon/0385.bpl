// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:52:44
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

const unique flag: Field NormalField bool;
axiom !IsPredicateField(flag);
axiom !IsWandField(flag);

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
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> foo_1_1(Heap, y, x) == (!(guard(y): bool) || Heap[y, flag])
);

// Framing axioms
function  foo_1_1#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_1_1'(Heap, y, x) }
  state(Heap, Mask) ==> foo_1_1'(Heap, y, x) == foo_1_1#frame(CombineFrames(FrameFragment(Heap[x, flag]), FrameFragment((if (guard(y): bool) then FrameFragment(Heap[y, flag]) else EmptyFrame))), y, x)
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
    Mask := Mask[x, flag:=Mask[x, flag] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if ((guard(y): bool)) {
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag:=Mask[y, flag] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of !guard(y) || y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@12.1--17.2) [217615]"}
          HasDirectPerm(Mask, y, flag);
      }
  
  // -- Translate function body
    Result := !(guard(y): bool) || Heap[y, flag];
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
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> foo_1_2(Heap, y, x) == ((guard(y): bool) ==> Heap[y, flag])
);

// Framing axioms
function  foo_1_2#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_1_2'(Heap, y, x) }
  state(Heap, Mask) ==> foo_1_2'(Heap, y, x) == foo_1_2#frame(CombineFrames(FrameFragment(Heap[x, flag]), FrameFragment((if (guard(y): bool) then FrameFragment(Heap[y, flag]) else EmptyFrame))), y, x)
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
    Mask := Mask[x, flag:=Mask[x, flag] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if ((guard(y): bool)) {
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag:=Mask[y, flag] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of guard(y) ==> y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@19.1--24.2) [217616]"}
          HasDirectPerm(Mask, y, flag);
      }
  
  // -- Translate function body
    Result := (guard(y): bool) ==> Heap[y, flag];
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
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> foo_2_1(Heap, y, x) == (!(guard(y): bool) || Heap[y, flag])
);

// Framing axioms
function  foo_2_1#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_2_1'(Heap, y, x) }
  state(Heap, Mask) ==> foo_2_1'(Heap, y, x) == foo_2_1#frame(FrameFragment((if (guard(y): bool) then CombineFrames(FrameFragment(Heap[x, flag]), FrameFragment(Heap[y, flag])) else FrameFragment(Heap[x, flag]))), y, x)
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
      Mask := Mask[x, flag:=Mask[x, flag] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag:=Mask[y, flag] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, flag:=Mask[x, flag] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of !guard(y) || y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@26.1--30.2) [217617]"}
          HasDirectPerm(Mask, y, flag);
      }
  
  // -- Translate function body
    Result := !(guard(y): bool) || Heap[y, flag];
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> foo_2_2(Heap, y, x) == ((guard(y): bool) ==> Heap[y, flag])
);

// Framing axioms
function  foo_2_2#frame(frame: FrameType, y: Ref, x: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref, x: Ref ::
  { state(Heap, Mask), foo_2_2'(Heap, y, x) }
  state(Heap, Mask) ==> foo_2_2'(Heap, y, x) == foo_2_2#frame(FrameFragment((if (guard(y): bool) then CombineFrames(FrameFragment(Heap[x, flag]), FrameFragment(Heap[y, flag])) else FrameFragment(Heap[x, flag]))), y, x)
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
      Mask := Mask[x, flag:=Mask[x, flag] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume y != null;
      Mask := Mask[y, flag:=Mask[y, flag] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, flag:=Mask[x, flag] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of guard(y) ==> y.flag
      if ((guard(y): bool)) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.flag (0385.vpr@32.1--36.2) [217618]"}
          HasDirectPerm(Mask, y, flag);
      }
  
  // -- Translate function body
    Result := (guard(y): bool) ==> Heap[y, flag];
}

// ==================================================
// Translation of method testA
// ==================================================

procedure testA(s_2: Ref, r_1: Ref) returns ()
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
    assume Heap[s_2, $allocated];
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, flag:=Mask[r_1, flag] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume s_2 != null;
    Mask := Mask[s_2, flag:=Mask[s_2, flag] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of s.flag
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access s.flag (0385.vpr@42.12--42.18) [217619]"}
        HasDirectPerm(Mask, s_2, flag);
    assume Heap[s_2, flag];
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
        assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@44.10--44.23) [217620]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@44.10--44.23) [217621]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_1(s, r) might not hold. (0385.vpr@44.10--44.23) [217622]"}
      foo_1_1(Heap, s_2, r_1);
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
        assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@45.10--45.23) [217623]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@45.10--45.23) [217624]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_2(s, r) might not hold. (0385.vpr@45.10--45.23) [217625]"}
      foo_1_2(Heap, s_2, r_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo_2_1(s, r) -- 0385.vpr@46.3--46.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_2_1(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@46.10--46.23) [217626]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@46.10--46.23) [217627]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@46.10--46.23) [217628]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_2_1(s, r) might not hold. (0385.vpr@46.10--46.23) [217629]"}
      foo_2_1(Heap, s_2, r_1);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert foo_2_2(s, r) -- 0385.vpr@47.3--47.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of foo_2_2(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@47.10--47.23) [217630]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@47.10--47.23) [217631]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@47.10--47.23) [217632]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_2_2(s, r) might not hold. (0385.vpr@47.10--47.23) [217633]"}
      foo_2_2(Heap, s_2, r_1);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testB
// ==================================================

procedure testB(s_2: Ref, r_1: Ref) returns ()
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
    assume Heap[s_2, $allocated];
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, flag:=Mask[r_1, flag] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume s_2 != null;
    Mask := Mask[s_2, flag:=Mask[s_2, flag] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of r.flag
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.flag (0385.vpr@53.12--53.18) [217634]"}
        HasDirectPerm(Mask, r_1, flag);
    assume Heap[r_1, flag];
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
        assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@57.5--57.18) [217635]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@57.5--57.18) [217636]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (!foo_1_1(Heap, s_2, r_1)) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef1Heap := ExhaleWellDef0Heap;
          ExhaleWellDef1Mask := ExhaleWellDef0Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@58.5--58.18) [217637]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
          if ((guard(s_2): bool)) {
            perm := FullPerm;
            assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@58.5--58.18) [217638]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
          ExhaleWellDef0Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        if (!foo_1_2(Heap, s_2, r_1)) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            if ((guard(s_2): bool)) {
              perm := FullPerm;
              assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@59.5--59.18) [217639]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
              perm := FullPerm;
              assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@59.5--59.18) [217640]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
            } else {
              perm := FullPerm;
              assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@59.5--59.18) [217641]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          if (!foo_2_1(Heap, s_2, r_1)) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              if ((guard(s_2): bool)) {
                perm := FullPerm;
                assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@60.5--60.18) [217642]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
                perm := FullPerm;
                assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@60.5--60.18) [217643]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
              } else {
                perm := FullPerm;
                assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@60.5--60.18) [217644]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
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
    assert {:msg "  Assert might fail. Assertion foo_1_1(s, r) || (foo_1_2(s, r) || (foo_2_1(s, r) || foo_2_2(s, r))) might not hold. (0385.vpr@57.5--60.18) [217645]"}
      foo_1_1(Heap, s_2, r_1) || (foo_1_2(Heap, s_2, r_1) || (foo_2_1(Heap, s_2, r_1) || foo_2_2(Heap, s_2, r_1)));
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method testC
// ==================================================

procedure testC(s_2: Ref, r_1: Ref) returns ()
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
    assume Heap[s_2, $allocated];
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, flag:=Mask[r_1, flag] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume s_2 != null;
    Mask := Mask[s_2, flag:=Mask[s_2, flag] + perm];
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
        assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@68.6--68.19) [217646]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@68.6--68.19) [217647]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
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
        assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@68.25--68.38) [217648]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@68.25--68.38) [217649]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_1(s, r) == foo_1_2(s, r) might not hold. (0385.vpr@68.5--70.39) [217650]"}
      foo_1_1(Heap, s_2, r_1) == foo_1_2(Heap, s_2, r_1);
    
    // -- Check definedness of foo_1_2(s, r) == foo_2_1(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@69.6--69.19) [217651]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_1_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@69.6--69.19) [217652]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
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
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@69.25--69.38) [217653]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@69.25--69.38) [217654]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@69.25--69.38) [217655]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_1_2(s, r) == foo_2_1(s, r) might not hold. (0385.vpr@68.5--70.39) [217656]"}
      foo_1_2(Heap, s_2, r_1) == foo_2_1(Heap, s_2, r_1);
    
    // -- Check definedness of foo_2_1(s, r) == foo_2_2(s, r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.6--70.19) [217657]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access s.flag (0385.vpr@70.6--70.19) [217658]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_1 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.6--70.19) [217659]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
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
        if ((guard(s_2): bool)) {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.25--70.38) [217660]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access s.flag (0385.vpr@70.25--70.38) [217661]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[s_2, flag];
        } else {
          perm := FullPerm;
          assert {:msg "  Precondition of function foo_2_2 might not hold. There might be insufficient permission to access r.flag (0385.vpr@70.25--70.38) [217662]"}
            NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, flag];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion foo_2_1(s, r) == foo_2_2(s, r) might not hold. (0385.vpr@68.5--70.39) [217663]"}
      foo_2_1(Heap, s_2, r_1) == foo_2_2(Heap, s_2, r_1);
    assume state(Heap, Mask);
}