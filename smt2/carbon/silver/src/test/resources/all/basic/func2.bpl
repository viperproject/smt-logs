// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:10:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/func2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/func2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 5: f4
// - height 4: f5
// - height 3: f3_b
// - height 2: f3_a
// - height 1: f1
// - height 0: f6
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

// ==================================================
// Translation of function f1
// ==================================================

// Uninterpreted function definitions
function  f1_3(Heap: HeapType, r_1: Ref): int;
function  f1'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { f1_3(Heap, r_1) }
  f1_3(Heap, r_1) == f1'(Heap, r_1) && dummyFunction(f1#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { f1'(Heap, r_1) }
  dummyFunction(f1#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f1_3(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> f1_3(Heap, r_1) == Heap[r_1, f_7]
);

// Framing axioms
function  f1#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f1'(Heap, r_1) }
  state(Heap, Mask) ==> f1'(Heap, r_1) == f1#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Trigger function (controlling recursive postconditions)
function  f1#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  f1#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure f1#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of r.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (func2.vpr@6.1--8.8) [186696]"}
        HasDirectPerm(Mask, r_1, f_7);
  
  // -- Translate function body
    Result := Heap[r_1, f_7];
}

// ==================================================
// Translation of function f3_a
// ==================================================

// Uninterpreted function definitions
function  f3_a(Heap: HeapType, r_1: Ref): int;
function  f3_a'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { f3_a(Heap, r_1) }
  f3_a(Heap, r_1) == f3_a'(Heap, r_1) && dummyFunction(f3_a#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { f3_a'(Heap, r_1) }
  dummyFunction(f3_a#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f3_a(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> Heap[r_1, f_7] == 2 ==> f3_a(Heap, r_1) == 2
);

// Framing axioms
function  f3_a#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f3_a'(Heap, r_1) }
  state(Heap, Mask) ==> f3_a'(Heap, r_1) == f3_a#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  f3_a#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  f3_a#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure f3_a#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (func2.vpr@12.13--12.23) [186697]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 2;
}

// ==================================================
// Translation of function f3_b
// ==================================================

// Uninterpreted function definitions
function  f3_b(Heap: HeapType, r_1: Ref): int;
function  f3_b'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { f3_b(Heap, r_1) }
  f3_b(Heap, r_1) == f3_b'(Heap, r_1) && dummyFunction(f3_b#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { f3_b'(Heap, r_1) }
  dummyFunction(f3_b#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f3_b(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> r_1 != null && Heap[r_1, f_7] == 2 ==> f3_b(Heap, r_1) == 2
);

// Framing axioms
function  f3_b#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f3_b'(Heap, r_1) }
  state(Heap, Mask) ==> f3_b'(Heap, r_1) == f3_b#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  f3_b#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  f3_b#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure f3_b#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume r_1 != null;
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (func2.vpr@18.13--18.23) [186698]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 2;
}

// ==================================================
// Translation of function f4
// ==================================================

// Uninterpreted function definitions
function  f4_1(Heap: HeapType, r_1: Ref): int;
function  f4'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { f4_1(Heap, r_1) }
  f4_1(Heap, r_1) == f4'(Heap, r_1) && dummyFunction(f4#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { f4'(Heap, r_1) }
  dummyFunction(f4#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f4_1(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> Heap[r_1, f_7] == 2 ==> f4_1(Heap, r_1) == 2
);

// Framing axioms
function  f4#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f4'(Heap, r_1) }
  state(Heap, Mask) ==> f4'(Heap, r_1) == f4#frame(FrameFragment(Heap[r_1, f_7]), r_1)
);

// Trigger function (controlling recursive postconditions)
function  f4#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  f4#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure f4#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of r.f == 2
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.f (func2.vpr@23.12--23.22) [186699]"}
        HasDirectPerm(Mask, r_1, f_7);
    assume Heap[r_1, f_7] == 2;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 2;
}

// ==================================================
// Translation of function f5
// ==================================================

// Uninterpreted function definitions
function  f5_1(Heap: HeapType, r_1: Ref): int;
function  f5'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { f5_1(Heap, r_1) }
  f5_1(Heap, r_1) == f5'(Heap, r_1) && dummyFunction(f5#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { f5'(Heap, r_1) }
  dummyFunction(f5#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f5_1(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> r_1 != null ==> f5_1(Heap, r_1) == Heap[r_1, f_7]
);

// Framing axioms
function  f5#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f5'(Heap, r_1) }
  state(Heap, Mask) ==> f5'(Heap, r_1) == f5#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  f5#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  f5#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure f5#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of r.f
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access r.f (func2.vpr@27.1--29.8) [186700]"}
        HasDirectPerm(Mask, r_1, f_7);
  
  // -- Translate function body
    Result := Heap[r_1, f_7];
}

// ==================================================
// Translation of function f6
// ==================================================

// Uninterpreted function definitions
function  f6_1(Heap: HeapType, r_1: Ref): int;
function  f6'(Heap: HeapType, r_1: Ref): int;
axiom (forall Heap: HeapType, r_1: Ref ::
  { f6_1(Heap, r_1) }
  f6_1(Heap, r_1) == f6'(Heap, r_1) && dummyFunction(f6#triggerStateless(r_1))
);
axiom (forall Heap: HeapType, r_1: Ref ::
  { f6'(Heap, r_1) }
  dummyFunction(f6#triggerStateless(r_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f6_1(Heap, r_1) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> r_1 != null ==> f6_1(Heap, r_1) == f4_1(Heap, r_1)
);

// Framing axioms
function  f6#frame(frame: FrameType, r_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, r_1: Ref ::
  { state(Heap, Mask), f6'(Heap, r_1) }
  state(Heap, Mask) ==> f6'(Heap, r_1) == f6#frame(EmptyFrame, r_1)
);

// Trigger function (controlling recursive postconditions)
function  f6#trigger(frame: FrameType, r_1: Ref): bool;

// State-independent trigger function
function  f6#triggerStateless(r_1: Ref): int;

// Check contract well-formedness and postcondition
procedure f6#definedness(r_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[r_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume r_1 != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of f4(r)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function f4 might not hold. There might be insufficient permission to access r.f (func2.vpr@35.3--35.8) [186701]"}
          NoPerm < perm ==> NoPerm < Mask[r_1, f_7];
        assert {:msg "  Precondition of function f4 might not hold. Assertion r.f == 2 might not hold. (func2.vpr@35.3--35.8) [186702]"}
          Heap[r_1, f_7] == 2;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
  
  // -- Translate function body
    Result := f4_1(Heap, r_1);
}

// ==================================================
// Translation of method t1
// ==================================================

procedure t1(r_1: Ref) returns ()
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
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: r.f := 1 -- func2.vpr@41.3--41.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access r.f (func2.vpr@41.3--41.11) [186703]"}
      FullPerm == Mask[r_1, f_7];
    Heap := Heap[r_1, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert f1(r) == 1 -- func2.vpr@42.3--42.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of f1(r) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function f1 might not hold. There might be insufficient permission to access r.f (func2.vpr@42.10--42.15) [186704]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion f1(r) == 1 might not hold. (func2.vpr@42.10--42.20) [186705]"}
      f1_3(Heap, r_1) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert f4(r) > 0 -- func2.vpr@46.3--46.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of f4(r) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function f4 might not hold. There might be insufficient permission to access r.f (func2.vpr@46.10--46.15) [186706]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[r_1, f_7];
        assert {:msg "  Precondition of function f4 might not hold. Assertion r.f == 2 might not hold. (func2.vpr@46.10--46.15) [186707]"}
          ExhaleWellDef0Heap[r_1, f_7] == 2;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion f4(r) > 0 might not hold. (func2.vpr@46.10--46.19) [186708]"}
      f4_1(Heap, r_1) > 0;
    assume state(Heap, Mask);
}