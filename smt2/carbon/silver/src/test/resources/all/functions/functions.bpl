// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:37:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/functions.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/functions-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 8: err1
// - height 7: fun4
// - height 6: fun1
// - height 5: fun6
// - height 4: err2
// - height 3: er3
// - height 2: fun5
// - height 1: fun3
// - height 0: fun2
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
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique h: Field NormalField Ref;
axiom !IsPredicateField(h);
axiom !IsWandField(h);

// ==================================================
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, x: Ref, y: Ref): int;
function  fun1'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { fun1(Heap, x, y) }
  fun1(Heap, x, y) == fun1'(Heap, x, y) && dummyFunction(fun1#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { fun1'(Heap, x, y) }
  dummyFunction(fun1#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), fun1(Heap, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 6 ==> x == y ==> fun1(Heap, x, y) == Heap[y, f_7] + Heap[x, g]
);

// Framing axioms
function  fun1#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), fun1'(Heap, x, y) }
  state(Heap, Mask) ==> fun1'(Heap, x, y) == fun1#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[y, g])), x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, x: Ref, y: Ref): bool;

// State-independent trigger function
function  fun1#triggerStateless(x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure fun1#definedness(x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 6;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, g:=Mask[y, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume x == y;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of y.f + x.g
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@8.1--11.14) [154765]"}
        HasDirectPerm(Mask, y, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (functions.vpr@8.1--11.14) [154766]"}
        HasDirectPerm(Mask, x, g);
  
  // -- Translate function body
    Result := Heap[y, f_7] + Heap[x, g];
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, x: Ref, y: Ref): int;
function  fun2'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { fun2(Heap, x, y) }
  fun2(Heap, x, y) == fun2'(Heap, x, y) && dummyFunction(fun2#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { fun2'(Heap, x, y) }
  dummyFunction(fun2#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), fun2(Heap, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> x == y ==> fun2(Heap, x, y) == Heap[y, f_7] + Heap[x, g]
);

// Framing axioms
function  fun2#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), fun2'(Heap, x, y) }
  state(Heap, Mask) ==> fun2'(Heap, x, y) == fun2#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[y, g])), x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, x: Ref, y: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume x == y;
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, g:=Mask[y, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of y.f + x.g
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@13.1--15.14) [154767]"}
        HasDirectPerm(Mask, y, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (functions.vpr@13.1--15.14) [154768]"}
        HasDirectPerm(Mask, x, g);
  
  // -- Translate function body
    Result := Heap[y, f_7] + Heap[x, g];
}

// ==================================================
// Translation of function fun3
// ==================================================

// Uninterpreted function definitions
function  fun3(Heap: HeapType, x: Ref): int;
function  fun3'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun3(Heap, x) }
  fun3(Heap, x) == fun3'(Heap, x) && dummyFunction(fun3#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun3'(Heap, x) }
  dummyFunction(fun3#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun3(Heap, x) } { state(Heap, Mask), fun3#triggerStateless(x), P#trigger(Heap, P(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun3(Heap, x) == Heap[x, g]
);

// Framing axioms
function  fun3#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun3'(Heap, x) }
  state(Heap, Mask) ==> fun3'(Heap, x) == fun3#frame(Heap[null, P(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  fun3#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun3#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun3#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, g]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (functions.vpr@21.1--23.31) [154769]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (functions.vpr@21.1--23.31) [154770]"}
        HasDirectPerm(UnfoldingMask, x, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, g];
}

// ==================================================
// Translation of function fun4
// ==================================================

// Uninterpreted function definitions
function  fun4(Heap: HeapType, x: Ref, y: Ref): int;
function  fun4'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { fun4(Heap, x, y) }
  fun4(Heap, x, y) == fun4'(Heap, x, y) && dummyFunction(fun4#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { fun4'(Heap, x, y) }
  dummyFunction(fun4#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), fun4(Heap, x, y) } { state(Heap, Mask), fun4#triggerStateless(x, y), P#trigger(Heap, P(y)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 7 ==> x == y ==> fun4(Heap, x, y) == Heap[y, f_7] + Heap[y, g]
);

// Framing axioms
function  fun4#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), fun4'(Heap, x, y) }
  state(Heap, Mask) ==> fun4'(Heap, x, y) == fun4#frame(CombineFrames(FrameFragment(Heap[x, f_7]), Heap[null, P(y)]), x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun4#trigger(frame: FrameType, x: Ref, y: Ref): bool;

// State-independent trigger function
function  fun4#triggerStateless(x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure fun4#definedness(x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 7;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, P(y):=Mask[null, P(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume x == y;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of y.f + (unfolding acc(P(x), write) in y.g)
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@25.1--28.37) [154771]"}
        HasDirectPerm(Mask, y, f_7);
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, g]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access P(x) (functions.vpr@25.1--28.37) [154772]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, P(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.g (functions.vpr@25.1--28.37) [154773]"}
        HasDirectPerm(UnfoldingMask, y, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[y, f_7] + Heap[y, g];
}

// ==================================================
// Translation of function fun6
// ==================================================

// Uninterpreted function definitions
function  fun6(Heap: HeapType, b_24: bool, x: Ref): int;
function  fun6'(Heap: HeapType, b_24: bool, x: Ref): int;
axiom (forall Heap: HeapType, b_24: bool, x: Ref ::
  { fun6(Heap, b_24, x) }
  fun6(Heap, b_24, x) == fun6'(Heap, b_24, x) && dummyFunction(fun6#triggerStateless(b_24, x))
);
axiom (forall Heap: HeapType, b_24: bool, x: Ref ::
  { fun6'(Heap, b_24, x) }
  dummyFunction(fun6#triggerStateless(b_24, x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, x: Ref ::
  { state(Heap, Mask), fun6(Heap, b_24, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> fun6(Heap, b_24, x) == (if b_24 then Heap[x, f_7] else 0)
);

// Framing axioms
function  fun6#frame(frame: FrameType, b_24: bool, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, b_24: bool, x: Ref ::
  { state(Heap, Mask), fun6'(Heap, b_24, x) }
  state(Heap, Mask) ==> fun6'(Heap, b_24, x) == fun6#frame(FrameFragment((if b_24 then FrameFragment(Heap[x, f_7]) else EmptyFrame)), b_24, x)
);

// Trigger function (controlling recursive postconditions)
function  fun6#trigger(frame: FrameType, b_24: bool, x: Ref): bool;

// State-independent trigger function
function  fun6#triggerStateless(b_24: bool, x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun6#definedness(b_24: bool, x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    if (b_24) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (b ? x.f : 0)
      if (b_24) {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@30.1--32.16) [154774]"}
          HasDirectPerm(Mask, x, f_7);
      }
  
  // -- Translate function body
    Result := (if b_24 then Heap[x, f_7] else 0);
}

// ==================================================
// Translation of function fun5
// ==================================================

// Uninterpreted function definitions
function  fun5(Heap: HeapType, x: Ref): int;
function  fun5'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun5(Heap, x) }
  fun5(Heap, x) == fun5'(Heap, x) && dummyFunction(fun5#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun5'(Heap, x) }
  dummyFunction(fun5#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun5(Heap, x) } { state(Heap, Mask), fun5#triggerStateless(x), Q#trigger(Heap, Q(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun5(Heap, x) == Heap[x, f_7] + (if Heap[x, h] == null then 0 else Heap[Heap[x, h], g])
);

// Framing axioms
function  fun5#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun5'(Heap, x) }
  state(Heap, Mask) ==> fun5'(Heap, x) == fun5#frame(Heap[null, Q(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  fun5#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun5#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun5#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Q(x):=Mask[null, Q(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Q(x), write) in x.f + (x.h == null ? 0 : x.h.g))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Q#trigger(UnfoldingHeap, Q(x));
      assume UnfoldingHeap[null, Q(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), CombineFrames(FrameFragment(UnfoldingHeap[x, h]), FrameFragment((if UnfoldingHeap[x, h] != null then FrameFragment(UnfoldingHeap[UnfoldingHeap[x, h], g]) else EmptyFrame))));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Q(x) (functions.vpr@38.1--40.59) [154775]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Q(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, h:=UnfoldingMask[x, h] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      if (UnfoldingHeap[x, h] != null) {
        perm := FullPerm;
        assume UnfoldingHeap[x, h] != null;
        UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, h], g:=UnfoldingMask[UnfoldingHeap[x, h], g] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (functions.vpr@38.1--40.59) [154776]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.h (functions.vpr@38.1--40.59) [154777]"}
        HasDirectPerm(UnfoldingMask, x, h);
      if (UnfoldingHeap[x, h] == null) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.h (functions.vpr@38.1--40.59) [154778]"}
          HasDirectPerm(UnfoldingMask, x, h);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.h.g (functions.vpr@38.1--40.59) [154779]"}
          HasDirectPerm(UnfoldingMask, UnfoldingHeap[x, h], g);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Q#sm(x):=Heap[null, Q#sm(x)][x, f_7:=true]];
        Heap := Heap[null, Q#sm(x):=Heap[null, Q#sm(x)][x, h:=true]];
        if (Heap[x, h] != null) {
          Heap := Heap[null, Q#sm(x):=Heap[null, Q#sm(x)][Heap[x, h], g:=true]];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7] + (if Heap[x, h] == null then 0 else Heap[Heap[x, h], g]);
}

// ==================================================
// Translation of function err1
// ==================================================

// Uninterpreted function definitions
function  err1(Heap: HeapType, x: Ref): int;
function  err1'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { err1(Heap, x) }
  err1(Heap, x) == err1'(Heap, x) && dummyFunction(err1#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { err1'(Heap, x) }
  dummyFunction(err1#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), err1(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 8 ==> err1(Heap, x) == 0
);

// Framing axioms
function  err1#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), err1'(Heap, x) }
  state(Heap, Mask) ==> err1'(Heap, x) == err1#frame(FrameFragment(Heap[Heap[x, h], f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  err1#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  err1#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure err1#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 8;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of acc(x.h.f, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.h (functions.vpr@46.12--46.22) [154780]"}
        HasDirectPerm(Mask, x, h);
    perm := FullPerm;
    assume Heap[x, h] != null;
    Mask := Mask[Heap[x, h], f_7:=Mask[Heap[x, h], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function err2
// ==================================================

// Uninterpreted function definitions
function  err2(Heap: HeapType, x: Ref): int;
function  err2'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { err2(Heap, x) }
  err2(Heap, x) == err2'(Heap, x) && dummyFunction(err2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { err2'(Heap, x) }
  dummyFunction(err2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), err2(Heap, x) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> err1(Heap, x) == 0 ==> err2(Heap, x) == 0
);

// Framing axioms
function  err2#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), err2'(Heap, x) }
  state(Heap, Mask) ==> err2'(Heap, x) == err2#frame(FrameFragment(Heap[x, f_7]), x)
);

// Trigger function (controlling recursive postconditions)
function  err2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  err2#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure err2#definedness(x: Ref) returns (Result: int)
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
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of err1(x) == 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function err1 might not hold. There might be insufficient permission to access x.h.f (functions.vpr@52.12--52.19) [154781]"}
          NoPerm < perm ==> NoPerm < Mask[Heap[x, h], f_7];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume err1(Heap, x) == 0;
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := 0;
}

// ==================================================
// Translation of function er3
// ==================================================

// Uninterpreted function definitions
function  er3(Heap: HeapType, x: Ref, y: Ref): int;
function  er3'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { er3(Heap, x, y) }
  er3(Heap, x, y) == er3'(Heap, x, y) && dummyFunction(er3#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { er3'(Heap, x, y) }
  dummyFunction(er3#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), er3(Heap, x, y) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> er3(Heap, x, y) == Heap[y, f_7] + Heap[x, g]
);

// Framing axioms
function  er3#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), er3'(Heap, x, y) }
  state(Heap, Mask) ==> er3'(Heap, x, y) == er3#frame(CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[y, g])), x, y)
);

// Trigger function (controlling recursive postconditions)
function  er3#trigger(frame: FrameType, x: Ref, y: Ref): bool;

// State-independent trigger function
function  er3#triggerStateless(x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure er3#definedness(x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, g:=Mask[y, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of y.f + x.g
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (functions.vpr@56.1--58.14) [154782]"}
        HasDirectPerm(Mask, y, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (functions.vpr@56.1--58.14) [154783]"}
        HasDirectPerm(Mask, x, g);
  
  // -- Translate function body
    Result := Heap[y, f_7] + Heap[x, g];
}

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
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
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(x: Ref): Field PredicateType_Q FrameType;
function  Q#sm(x: Ref): Field PredicateType_Q PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Q(x)) }
  PredicateMaskField(Q(x)) == Q#sm(x)
);
axiom (forall x: Ref ::
  { Q(x) }
  IsPredicateField(Q(x))
);
axiom (forall x: Ref ::
  { Q(x) }
  getPredWandId(Q(x)) == 1
);
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Q(x), Q(x2) }
  Q(x) == Q(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Q#sm(x), Q#sm(x2) }
  Q#sm(x) == Q#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Q#trigger(Heap, Q(x)) }
  Q#everUsed(Q(x))
);

procedure Q#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, h:=Mask[x, h] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.h != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.h (functions.vpr@34.1--36.2) [154784]"}
        HasDirectPerm(Mask, x, h);
    if (Heap[x, h] != null) {
      
      // -- Check definedness of acc(x.h.g, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.h (functions.vpr@34.1--36.2) [154785]"}
          HasDirectPerm(Mask, x, h);
      perm := FullPerm;
      assume Heap[x, h] != null;
      Mask := Mask[Heap[x, h], g:=Mask[Heap[x, h], g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}