// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:34:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/domains/axiom_call_func3.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/domains/axiom_call_func3-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 4: heapDepUnint
// - height 3: heapDep
// - height 2: uninterp
// - height 1: interp
// - height 0: heapDep2
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
// Translation of domain d
// ==================================================

// The type for domain d
type dDomainType;

// Translation of domain function dfunc
function  dfunc(i_79: int): int;

// Translation of domain function dfunc2
function  dfunc2(i_79: int): int;

// Translation of anonymous domain axiom
axiom (forall i: int ::
  { (dfunc(i): int) }
  (dfunc(i): int) == interp(dummyHeap, i) + 5
);

// Translation of anonymous domain axiom
axiom (forall i: int ::
  { (dfunc2(i): int) }
  (dfunc2(i): int) == uninterp(dummyHeap, i) + 7
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function interp
// ==================================================

// Uninterpreted function definitions
function  interp(Heap: HeapType, i: int): int;
function  interp'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { interp(Heap, i) }
  interp(Heap, i) == interp'(Heap, i) && dummyFunction(interp#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { interp'(Heap, i) }
  dummyFunction(interp#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), interp(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> interp(Heap, i) == i + 1
);

// Framing axioms
function  interp#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), interp'(Heap, i) }
  state(Heap, Mask) ==> interp'(Heap, i) == interp#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  interp#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  interp#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure interp#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Translate function body
    Result := i + 1;
}

// ==================================================
// Translation of function uninterp
// ==================================================

// Uninterpreted function definitions
function  uninterp(Heap: HeapType, i: int): int;
function  uninterp'(Heap: HeapType, i: int): int;
axiom (forall Heap: HeapType, i: int ::
  { uninterp(Heap, i) }
  uninterp(Heap, i) == uninterp'(Heap, i) && dummyFunction(uninterp#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { uninterp'(Heap, i) }
  dummyFunction(uninterp#triggerStateless(i))
);

// Framing axioms
function  uninterp#frame(frame: FrameType, i: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), uninterp'(Heap, i) }
  state(Heap, Mask) ==> uninterp'(Heap, i) == uninterp#frame(EmptyFrame, i)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), uninterp'(Heap, i) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || uninterp#trigger(EmptyFrame, i)) ==> uninterp'(Heap, i) == i + 4
);

// Trigger function (controlling recursive postconditions)
function  uninterp#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  uninterp#triggerStateless(i: int): int;

// Check contract well-formedness and postcondition
procedure uninterp#definedness(i: int) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Checking definedness of postcondition (no body)
    assume Result == i + 4;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function heapDep
// ==================================================

// Uninterpreted function definitions
function  heapDep(Heap: HeapType, r_1: Ref): int;
function  heapDep'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { heapDep(Heap, r_1) }
  heapDep(Heap, r_1) == heapDep'(Heap, r_1) && dummyFunction(heapDep#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { heapDep'(Heap, r_1) }
  dummyFunction(heapDep#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), heapDep(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> heapDep(Heap, r_1) == Heap[r_1, f_7] + 2
);

// Framing axioms
function  heapDep#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), heapDep'(Heap, r_1) }
  state(Heap, Mask) ==> heapDep'(Heap, r_1) == heapDep#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Trigger function (controlling recursive postconditions)
function  heapDep#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  heapDep#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure heapDep#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of r.f + 2
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (axiom_call_func3.vpr@14.1--18.2) [142915]"}
        HasDirectPerm(Mask, r_1, f_7);
  
  // -- Translate function body
    Result := Heap[r_1, f_7] + 2;
}

// ==================================================
// Translation of function heapDep2
// ==================================================

// Uninterpreted function definitions
function  heapDep2(Heap: HeapType, r_1: Ref): int;
function  heapDep2'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { heapDep2(Heap, r_1) }
  heapDep2(Heap, r_1) == heapDep2'(Heap, r_1) && dummyFunction(heapDep2#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { heapDep2'(Heap, r_1) }
  dummyFunction(heapDep2#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), heapDep2(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> heapDep2(Heap, r_1) == heapDep(Heap, r_1) + heapDepUnint(Heap, r_1) + 10
);

// Framing axioms
function  heapDep2#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), heapDep2'(Heap, r_1) }
  state(Heap, Mask) ==> heapDep2'(Heap, r_1) == heapDep2#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Trigger function (controlling recursive postconditions)
function  heapDep2#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  heapDep2#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure heapDep2#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of heapDep(r) + heapDepUnint(r) + 10
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function heapDep might not hold. There might be insufficient permission to access r.f (axiom_call_func3.vpr@23.5--23.15) [142916]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function heapDepUnint might not hold. There might be insufficient permission to access r.f (axiom_call_func3.vpr@23.18--23.33) [142917]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := heapDep(Heap, r_1) + heapDepUnint(Heap, r_1) + 10;
}

// ==================================================
// Translation of function heapDepUnint
// ==================================================

// Uninterpreted function definitions
function  heapDepUnint(Heap: HeapType, r_1: Ref): int;
function  heapDepUnint'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { heapDepUnint(Heap, r_1) }
  heapDepUnint(Heap, r_1) == heapDepUnint'(Heap, r_1) && dummyFunction(heapDepUnint#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { heapDepUnint'(Heap, r_1) }
  dummyFunction(heapDepUnint#triggerStateless(r_1))
);

// Framing axioms
function  heapDepUnint#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), heapDepUnint'(Heap, r_1) }
  state(Heap, Mask) ==> heapDepUnint'(Heap, r_1) == heapDepUnint#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), heapDepUnint'(Heap, r_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || heapDepUnint#trigger(FrameFragment(Heap[r_1, f_7]), r_1)) ==> heapDepUnint'(Heap, r_1) == Heap[r_1, f_7] + 3
);

// Trigger function (controlling recursive postconditions)
function  heapDepUnint#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  heapDepUnint#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure heapDepUnint#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of result == r.f + 3
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (axiom_call_func3.vpr@28.13--28.30) [142918]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Result == Heap[r_1, f_7] + 3;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method main
// ==================================================

procedure main() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Translating statement: x := new(f) -- axiom_call_func3.vpr@47.3--47.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f) -- axiom_call_func3.vpr@49.3--49.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 20 -- axiom_call_func3.vpr@51.3--51.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (axiom_call_func3.vpr@51.3--51.12) [142919]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=20];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 3 -- axiom_call_func3.vpr@52.3--52.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (axiom_call_func3.vpr@52.3--52.11) [142920]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert dfunc2(x.f) == 31 -- axiom_call_func3.vpr@53.3--53.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of dfunc2(x.f) == 31
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (axiom_call_func3.vpr@53.10--53.27) [142921]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion dfunc2(x.f) == 31 might not hold. (axiom_call_func3.vpr@53.10--53.27) [142922]"}
      (dfunc2(Heap[x, f_7]): int) == 31;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert heapDep2(x) == 15 + 20 + 20 -- axiom_call_func3.vpr@54.3--54.37
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of heapDep2(x) == 15 + 20 + 20
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function heapDep2 might not hold. There might be insufficient permission to access x.f (axiom_call_func3.vpr@54.10--54.21) [142923]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion heapDep2(x) == 15 + 20 + 20 might not hold. (axiom_call_func3.vpr@54.10--54.37) [142924]"}
      heapDep2(Heap, x) == 55;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert dfunc(x.f + 1) == 27 -- axiom_call_func3.vpr@56.3--56.30
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of dfunc(x.f + 1) == 27
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (axiom_call_func3.vpr@56.10--56.30) [142925]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion dfunc(x.f + 1) == 27 might not hold. (axiom_call_func3.vpr@56.10--56.30) [142926]"}
      (dfunc(Heap[x, f_7] + 1): int) == 27;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert interp(34) == 35 -- axiom_call_func3.vpr@57.3--57.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of interp(34) == 35
      if (*) {
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion interp(34) == 35 might not hold. (axiom_call_func3.vpr@57.10--57.26) [142927]"}
      interp(Heap, 34) == 35;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert heapDep(y) + dfunc2(x.f + 5) == 41 -- axiom_call_func3.vpr@58.3--58.44
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of heapDep(y) + dfunc2(x.f + 5) == 41
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function heapDep might not hold. There might be insufficient permission to access y.f (axiom_call_func3.vpr@58.10--58.20) [142928]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[y, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (axiom_call_func3.vpr@58.10--58.44) [142929]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion heapDep(y) + dfunc2(x.f + 5) == 41 might not hold. (axiom_call_func3.vpr@58.10--58.44) [142930]"}
      heapDep(Heap, y) + (dfunc2(Heap[x, f_7] + 5): int) == 41;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert heapDepUnint(x) == 24 -- axiom_call_func3.vpr@61.3--61.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of heapDepUnint(x) == 24
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function heapDepUnint might not hold. There might be insufficient permission to access x.f (axiom_call_func3.vpr@61.10--61.25) [142931]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[x, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion heapDepUnint(x) == 24 might not hold. (axiom_call_func3.vpr@61.10--61.31) [142932]"}
      heapDepUnint(Heap, x) == 24;
    assume state(Heap, Mask);
}