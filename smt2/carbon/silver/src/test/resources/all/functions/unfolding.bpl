// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:39:58
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/unfolding.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/unfolding-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_1: Ref, f_2: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_1, f_2] }
  Heap[o_1, $allocated] ==> Heap[Heap[o_1, f_2], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref, f_8: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, f_8] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_3, f_8) ==> Heap[o_3, f_8] == ExhaleHeap[o_3, f_8]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_8: (Field A B) ::
    { ExhaleHeap[o2_1, f_8] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_8] ==> Heap[o2_1, f_8] == ExhaleHeap[o2_1, f_8]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_3: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_3, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_3, $allocated] ==> ExhaleHeap[o_3, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_9: (Field A B), v: B ::
  { Heap[o_1, f_9:=v] }
  succHeap(Heap, Heap[o_1, f_9:=v])
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
// - height 5: fun1
// - height 4: fun2
// - height 3: fun3
// - height 2: sum
// - height 1: getf
// - height 0: add
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
const unique n_10: Field NormalField Ref;
axiom !IsPredicateField(n_10);
axiom !IsWandField(n_10);

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, x: Ref): int;
function  fun2'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun2(Heap, x) }
  fun2(Heap, x) == fun2'(Heap, x) && dummyFunction(fun2#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun2'(Heap, x) }
  dummyFunction(fun2#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun2(Heap, x) } { state(Heap, Mask), fun2#triggerStateless(x), F#trigger(Heap, F(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> x != null ==> fun2(Heap, x) == Heap[x, f_7]
);

// Framing axioms
function  fun2#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun2'(Heap, x) }
  state(Heap, Mask) ==> fun2'(Heap, x) == fun2#frame(Heap[null, F(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun2#definedness(x: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, F(x):=Mask[null, F(x)] + perm];
    assume state(Heap, Mask);
    assume x != null;
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(F(x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume F#trigger(UnfoldingHeap, F(x));
      assume UnfoldingHeap[null, F(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access F(x) (unfolding.vpr@10.1--12.31) [153773]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, F(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@10.1--12.31) [153774]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, F#sm(x):=Heap[null, F#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
}

// ==================================================
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, x: Ref): int;
function  fun1'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { fun1(Heap, x) }
  fun1(Heap, x) == fun1'(Heap, x) && dummyFunction(fun1#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun1'(Heap, x) }
  dummyFunction(fun1#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun1(Heap, x) } { state(Heap, Mask), fun1#triggerStateless(x), F#trigger(Heap, F(x)), G#trigger(Heap, G(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> fun1(Heap, x) == Heap[x, f_7] + Heap[x, g]
);

// Framing axioms
function  fun1#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun1'(Heap, x) }
  state(Heap, Mask) ==> fun1'(Heap, x) == fun1#frame(CombineFrames(Heap[null, F(x)], Heap[null, G(x)]), x)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun1#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure fun1#definedness(x: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, F(x):=Mask[null, F(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, G(x):=Mask[null, G(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(F(x), write) in x.f) + (unfolding acc(G(x), write) in x.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume F#trigger(UnfoldingHeap, F(x));
      assume UnfoldingHeap[null, F(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access F(x) (unfolding.vpr@24.1--26.64) [153775]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, F(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@24.1--26.64) [153776]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, F#sm(x):=Heap[null, F#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume G#trigger(UnfoldingHeap, G(x));
      assume UnfoldingHeap[null, G(x)] == FrameFragment(UnfoldingHeap[x, g]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access G(x) (unfolding.vpr@24.1--26.64) [153777]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, G(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (unfolding.vpr@24.1--26.64) [153778]"}
        HasDirectPerm(UnfoldingMask, x, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, G#sm(x):=Heap[null, G#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, F#sm(x):=Heap[null, F#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
        Heap := Heap[null, G#sm(x):=Heap[null, G#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[x, g];
}

// ==================================================
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum(Heap: HeapType, x: Ref): int;
function  sum'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { sum(Heap, x) }
  sum(Heap, x) == sum'(Heap, x) && dummyFunction(sum#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { sum'(Heap, x) }
  dummyFunction(sum#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), sum(Heap, x) } { state(Heap, Mask), sum#triggerStateless(x), pair#trigger(Heap, pair(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> sum(Heap, x) == Heap[x, f_7] + Heap[x, g]
);

// Framing axioms
function  sum#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), sum'(Heap, x) }
  state(Heap, Mask) ==> sum'(Heap, x) == sum#frame(Heap[null, pair(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  sum#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  sum#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure sum#definedness(x: Ref) returns (Result: int)
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
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(pair(x), write) in x.f + x.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pair#trigger(UnfoldingHeap, pair(x));
      assume UnfoldingHeap[null, pair(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[x, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(x) (unfolding.vpr@44.1--46.40) [153779]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, pair(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@44.1--46.40) [153780]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (unfolding.vpr@44.1--46.40) [153781]"}
        HasDirectPerm(UnfoldingMask, x, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, f_7:=true]];
        Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[x, g];
}

// ==================================================
// Translation of function getf
// ==================================================

// Uninterpreted function definitions
function  getf(Heap: HeapType, z: Ref): int;
function  getf'(Heap: HeapType, z: Ref): int;
axiom (forall Heap: HeapType, z: Ref ::
  { getf(Heap, z) }
  getf(Heap, z) == getf'(Heap, z) && dummyFunction(getf#triggerStateless(z))
);
axiom (forall Heap: HeapType, z: Ref ::
  { getf'(Heap, z) }
  dummyFunction(getf#triggerStateless(z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, z: Ref ::
  { state(Heap, Mask), getf(Heap, z) } { state(Heap, Mask), getf#triggerStateless(z), pair#trigger(Heap, pair(z)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> getf(Heap, z) == Heap[z, f_7]
);

// Framing axioms
function  getf#frame(frame: FrameType, z: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, z: Ref ::
  { state(Heap, Mask), getf'(Heap, z) }
  state(Heap, Mask) ==> getf'(Heap, z) == getf#frame(Heap[null, pair(z)], z)
);

// Trigger function (controlling recursive postconditions)
function  getf#trigger(frame: FrameType, z: Ref): bool;

// State-independent trigger function
function  getf#triggerStateless(z: Ref): int;

// Check contract well-formedness and postcondition
procedure getf#definedness(z: Ref) returns (Result: int)
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
    assume Heap[z, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, pair(z):=Mask[null, pair(z)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(pair(z), write) in z.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pair#trigger(UnfoldingHeap, pair(z));
      assume UnfoldingHeap[null, pair(z)] == CombineFrames(FrameFragment(UnfoldingHeap[z, f_7]), FrameFragment(UnfoldingHeap[z, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(z) (unfolding.vpr@68.1--70.29) [153782]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, pair(z)];
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, f_7:=UnfoldingMask[z, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume z != null;
      UnfoldingMask := UnfoldingMask[z, g:=UnfoldingMask[z, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access z.f (unfolding.vpr@68.1--70.29) [153783]"}
        HasDirectPerm(UnfoldingMask, z, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pair#sm(z):=Heap[null, pair#sm(z)][z, f_7:=true]];
        Heap := Heap[null, pair#sm(z):=Heap[null, pair#sm(z)][z, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[z, f_7];
}

// ==================================================
// Translation of function add
// ==================================================

// Uninterpreted function definitions
function  add_1(Heap: HeapType, x: Ref, y: Ref): int;
function  add'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { add_1(Heap, x, y) }
  add_1(Heap, x, y) == add'(Heap, x, y) && dummyFunction(add#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { add'(Heap, x, y) }
  dummyFunction(add#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), add_1(Heap, x, y) } { state(Heap, Mask), add#triggerStateless(x, y), pair#trigger(Heap, pair(x)), pair#trigger(Heap, pair(y)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> add_1(Heap, x, y) == Heap[x, f_7] + Heap[y, f_7] + Heap[x, g]
);

// Framing axioms
function  add#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), add'(Heap, x, y) }
  state(Heap, Mask) ==> add'(Heap, x, y) == add#frame(CombineFrames(Heap[null, pair(x)], Heap[null, pair(y)]), x, y)
);

// Trigger function (controlling recursive postconditions)
function  add#trigger(frame: FrameType, x: Ref, y: Ref): bool;

// State-independent trigger function
function  add#triggerStateless(x: Ref, y: Ref): int;

// Check contract well-formedness and postcondition
procedure add#definedness(x: Ref, y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := 1 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@80.12--80.29) [153784]"}
      perm >= NoPerm;
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@81.12--81.29) [153785]"}
      perm >= NoPerm;
    Mask := Mask[null, pair(y):=Mask[null, pair(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(pair(x), 1 / 3) in x.f + (unfolding acc(pair(y), 1 / 3) in y.f) + x.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pair#trigger(UnfoldingHeap, pair(x));
      assume UnfoldingHeap[null, pair(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[x, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [153786]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(x) (unfolding.vpr@79.1--82.84) [153787]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, pair(x)];
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [153788]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [153789]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@79.1--82.84) [153790]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume pair#trigger(Unfolding1Heap, pair(y));
      assume Unfolding1Heap[null, pair(y)] == CombineFrames(FrameFragment(Unfolding1Heap[y, f_7]), FrameFragment(Unfolding1Heap[y, g]));
      ExhaleWellDef0Heap := Unfolding1Heap;
      ExhaleWellDef0Mask := Unfolding1Mask;
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [153791]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(y) (unfolding.vpr@79.1--82.84) [153792]"}
        NoPerm < perm ==> NoPerm < Unfolding1Mask[null, pair(y)];
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [153793]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> y != null;
      Unfolding1Mask := Unfolding1Mask[y, f_7:=Unfolding1Mask[y, f_7] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [153794]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> y != null;
      Unfolding1Mask := Unfolding1Mask[y, g:=Unfolding1Mask[y, g] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (unfolding.vpr@79.1--82.84) [153795]"}
        HasDirectPerm(Unfolding1Mask, y, f_7);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, g:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, g:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (unfolding.vpr@79.1--82.84) [153796]"}
        HasDirectPerm(UnfoldingMask, x, g);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, g:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, f_7:=true]];
        Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, g:=true]];
        assume state(Heap, Mask);
        Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, f_7:=true]];
        Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, g:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7] + Heap[y, f_7] + Heap[x, g];
}

// ==================================================
// Translation of function fun3
// ==================================================

// Uninterpreted function definitions
function  fun3(Heap: HeapType, y: Ref): int;
function  fun3'(Heap: HeapType, y: Ref): int;
axiom (forall Heap: HeapType, y: Ref ::
  { fun3(Heap, y) }
  fun3(Heap, y) == fun3'(Heap, y) && dummyFunction(fun3#triggerStateless(y))
);
axiom (forall Heap: HeapType, y: Ref ::
  { fun3'(Heap, y) }
  dummyFunction(fun3#triggerStateless(y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref ::
  { state(Heap, Mask), fun3(Heap, y) } { state(Heap, Mask), fun3#triggerStateless(y), R#trigger(Heap, R(y)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> fun3(Heap, y) == (if Heap[y, n_10] != null then 0 else 1)
);

// Framing axioms
function  fun3#frame(frame: FrameType, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, y: Ref ::
  { state(Heap, Mask), fun3'(Heap, y) }
  state(Heap, Mask) ==> fun3'(Heap, y) == fun3#frame(Heap[null, R(y)], y)
);

// Trigger function (controlling recursive postconditions)
function  fun3#trigger(frame: FrameType, y: Ref): bool;

// State-independent trigger function
function  fun3#triggerStateless(y: Ref): int;

// Check contract well-formedness and postcondition
procedure fun3#definedness(y: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[y, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, R(y):=Mask[null, R(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(R(y), write) in (y.n != null ? (unfolding acc(R(y.n), write) in 0) : 1))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume R#trigger(UnfoldingHeap, R(y));
      assume UnfoldingHeap[null, R(y)] == CombineFrames(FrameFragment(UnfoldingHeap[y, n_10]), UnfoldingHeap[null, R(UnfoldingHeap[y, n_10])]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access R(y) (unfolding.vpr@110.1--115.2) [153797]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, R(y)];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, n_10:=UnfoldingMask[y, n_10] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, R(UnfoldingHeap[y, n_10]):=UnfoldingMask[null, R(UnfoldingHeap[y, n_10])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(R(y), UnfoldingHeap[null, R(y)], R(UnfoldingHeap[y, n_10]), UnfoldingHeap[null, R(UnfoldingHeap[y, n_10])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.n (unfolding.vpr@110.1--115.2) [153798]"}
        HasDirectPerm(UnfoldingMask, y, n_10);
      if (UnfoldingHeap[y, n_10] != null) {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume R#trigger(Unfolding1Heap, R(Unfolding1Heap[y, n_10]));
        assume Unfolding1Heap[null, R(Unfolding1Heap[y, n_10])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[y, n_10], n_10]), Unfolding1Heap[null, R(Unfolding1Heap[Unfolding1Heap[y, n_10], n_10])]);
        ExhaleWellDef0Heap := Unfolding1Heap;
        ExhaleWellDef0Mask := Unfolding1Mask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access R(y.n) (unfolding.vpr@110.1--115.2) [153799]"}
          NoPerm < perm ==> NoPerm < Unfolding1Mask[null, R(Unfolding1Heap[y, n_10])];
        perm := FullPerm;
        assume Unfolding1Heap[y, n_10] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[y, n_10], n_10:=Unfolding1Mask[Unfolding1Heap[y, n_10], n_10] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, R(Unfolding1Heap[Unfolding1Heap[y, n_10], n_10]):=Unfolding1Mask[null, R(Unfolding1Heap[Unfolding1Heap[y, n_10], n_10])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(R(Unfolding1Heap[y, n_10]), Unfolding1Heap[null, R(Unfolding1Heap[y, n_10])], R(Unfolding1Heap[Unfolding1Heap[y, n_10], n_10]), Unfolding1Heap[null, R(Unfolding1Heap[Unfolding1Heap[y, n_10], n_10])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.n (unfolding.vpr@110.1--115.2) [153800]"}
          HasDirectPerm(Unfolding1Mask, y, n_10);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_10]):=UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_10])][UnfoldingHeap[y, n_10], n_10:=true]];
          havoc newPMask;
          assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
            { newPMask[o_15, f_20] }
            UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_10])][o_15, f_20] || UnfoldingHeap[null, R#sm(UnfoldingHeap[UnfoldingHeap[y, n_10], n_10])][o_15, f_20] ==> newPMask[o_15, f_20]
          );
          UnfoldingHeap := UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_10]):=newPMask];
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, R#sm(y):=Heap[null, R#sm(y)][y, n_10:=true]];
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
          { newPMask[o_16, f_21] }
          Heap[null, R#sm(y)][o_16, f_21] || Heap[null, R#sm(Heap[y, n_10])][o_16, f_21] ==> newPMask[o_16, f_21]
        );
        Heap := Heap[null, R#sm(y):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, R#sm(Heap[y, n_10]):=Heap[null, R#sm(Heap[y, n_10])][Heap[y, n_10], n_10:=true]];
        havoc newPMask;
        assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
          { newPMask[o_52, f_55] }
          Heap[null, R#sm(Heap[y, n_10])][o_52, f_55] || Heap[null, R#sm(Heap[Heap[y, n_10], n_10])][o_52, f_55] ==> newPMask[o_52, f_55]
        );
        Heap := Heap[null, R#sm(Heap[y, n_10]):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[y, n_10] != null then 0 else 1);
}

// ==================================================
// Translation of predicate F
// ==================================================

type PredicateType_F;
function  F(x: Ref): Field PredicateType_F FrameType;
function  F#sm(x: Ref): Field PredicateType_F PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(F(x)) }
  PredicateMaskField(F(x)) == F#sm(x)
);
axiom (forall x: Ref ::
  { F(x) }
  IsPredicateField(F(x))
);
axiom (forall x: Ref ::
  { F(x) }
  getPredWandId(F(x)) == 0
);
function  F#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  F#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { F(x), F(x2) }
  F(x) == F(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { F#sm(x), F#sm(x2) }
  F#sm(x) == F#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { F#trigger(Heap, F(x)) }
  F#everUsed(F(x))
);

procedure F#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of F
    
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
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate G
// ==================================================

type PredicateType_G;
function  G(x: Ref): Field PredicateType_G FrameType;
function  G#sm(x: Ref): Field PredicateType_G PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(G(x)) }
  PredicateMaskField(G(x)) == G#sm(x)
);
axiom (forall x: Ref ::
  { G(x) }
  IsPredicateField(G(x))
);
axiom (forall x: Ref ::
  { G(x) }
  getPredWandId(G(x)) == 1
);
function  G#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  G#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { G(x), G(x2) }
  G(x) == G(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { G#sm(x), G#sm(x2) }
  G#sm(x) == G#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { G#trigger(Heap, G(x)) }
  G#everUsed(G(x))
);

procedure G#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of G
    
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
// Translation of predicate pair
// ==================================================

type PredicateType_pair;
function  pair(x: Ref): Field PredicateType_pair FrameType;
function  pair#sm(x: Ref): Field PredicateType_pair PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(pair(x)) }
  PredicateMaskField(pair(x)) == pair#sm(x)
);
axiom (forall x: Ref ::
  { pair(x) }
  IsPredicateField(pair(x))
);
axiom (forall x: Ref ::
  { pair(x) }
  getPredWandId(pair(x)) == 2
);
function  pair#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  pair#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { pair(x), pair(x2) }
  pair(x) == pair(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { pair#sm(x), pair#sm(x2) }
  pair#sm(x) == pair#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { pair#trigger(Heap, pair(x)) }
  pair#everUsed(pair(x))
);

procedure pair#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of pair
    
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
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate R
// ==================================================

type PredicateType_R;
function  R(x: Ref): Field PredicateType_R FrameType;
function  R#sm(x: Ref): Field PredicateType_R PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(R(x)) }
  PredicateMaskField(R(x)) == R#sm(x)
);
axiom (forall x: Ref ::
  { R(x) }
  IsPredicateField(R(x))
);
axiom (forall x: Ref ::
  { R(x) }
  getPredWandId(R(x)) == 3
);
function  R#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  R#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { R(x), R(x2) }
  R(x) == R(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { R#sm(x), R#sm(x2) }
  R#sm(x) == R#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { R#trigger(Heap, R(x)) }
  R#everUsed(R(x))
);

procedure R#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of R
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, n_10:=Mask[x, n_10] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(R(x.n), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.n (unfolding.vpr@106.1--108.2) [153801]"}
        HasDirectPerm(Mask, x, n_10);
    perm := FullPerm;
    Mask := Mask[null, R(Heap[x, n_10]):=Mask[null, R(Heap[x, n_10])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
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
  
  // -- Translating statement: x := new(f) -- unfolding.vpr@16.3--16.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 3 -- unfolding.vpr@17.3--17.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@17.3--17.11) [153802]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(F(x), write) -- unfolding.vpr@19.3--19.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding F(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@19.3--19.17) [153805]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, F(x):=Mask[null, F(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume F#trigger(Heap, F(x));
    assume Heap[null, F(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, F(x))) {
      Heap := Heap[null, F#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, F(x):=freshVersion];
    }
    Heap := Heap[null, F#sm(x):=Heap[null, F#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun2(x) == 3 -- unfolding.vpr@21.3--21.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun2(x) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access F(x) (unfolding.vpr@21.10--21.17) [153807]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, F(x)];
        assert {:msg "  Precondition of function fun2 might not hold. Assertion x != null might not hold. (unfolding.vpr@21.10--21.17) [153808]"}
          x != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun2(x) == 3 might not hold. (unfolding.vpr@21.10--21.22) [153809]"}
      fun2(Heap, x) == 3;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
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
  
  // -- Translating statement: x := new(f, g) -- unfolding.vpr@30.3--30.17
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 3 -- unfolding.vpr@31.3--31.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@31.3--31.11) [153810]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := 7 -- unfolding.vpr@32.3--32.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (unfolding.vpr@32.3--32.11) [153811]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(F(x), write) -- unfolding.vpr@34.3--34.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding F(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@34.3--34.17) [153814]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, F(x):=Mask[null, F(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume F#trigger(Heap, F(x));
    assume Heap[null, F(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, F(x))) {
      Heap := Heap[null, F#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, F(x):=freshVersion];
    }
    Heap := Heap[null, F#sm(x):=Heap[null, F#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(G(x), write) -- unfolding.vpr@35.3--35.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding G(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@35.3--35.17) [153818]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, G(x):=Mask[null, G(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume G#trigger(Heap, G(x));
    assume Heap[null, G(x)] == FrameFragment(Heap[x, g]);
    if (!HasDirectPerm(Mask, null, G(x))) {
      Heap := Heap[null, G#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, G(x):=freshVersion];
    }
    Heap := Heap[null, G#sm(x):=Heap[null, G#sm(x)][x, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun1(x) == 10 -- unfolding.vpr@37.3--37.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun1(x) == 10
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access F(x) (unfolding.vpr@37.10--37.17) [153820]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, F(x)];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access G(x) (unfolding.vpr@37.10--37.17) [153821]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, G(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun1(x) == 10 might not hold. (unfolding.vpr@37.10--37.23) [153822]"}
      fun1(Heap, x) == 10;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  
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
  
  // -- Translating statement: x := new(f, g) -- unfolding.vpr@49.15--49.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f, g) -- unfolding.vpr@50.15--50.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    Mask := Mask[y, g:=Mask[y, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := y.f -- unfolding.vpr@52.3--52.13
    
    // -- Check definedness of y.f
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (unfolding.vpr@52.3--52.13) [153823]"}
        HasDirectPerm(Mask, y, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@52.3--52.13) [153824]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[y, f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := x.g -- unfolding.vpr@53.3--53.13
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (unfolding.vpr@53.3--53.13) [153825]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (unfolding.vpr@53.3--53.13) [153826]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=Heap[x, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(x), write) -- unfolding.vpr@55.3--55.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@55.3--55.20) [153829]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@55.3--55.20) [153831]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pair#trigger(Heap, pair(x));
    assume Heap[null, pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    if (!HasDirectPerm(Mask, null, pair(x))) {
      Heap := Heap[null, pair#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pair(x):=freshVersion];
    }
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, f_7:=true]];
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(y), write) -- unfolding.vpr@56.3--56.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.f (unfolding.vpr@56.3--56.20) [153835]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.g (unfolding.vpr@56.3--56.20) [153837]"}
        perm <= Mask[y, g];
    }
    Mask := Mask[y, g:=Mask[y, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, pair(y):=Mask[null, pair(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pair#trigger(Heap, pair(y));
    assume Heap[null, pair(y)] == CombineFrames(FrameFragment(Heap[y, f_7]), FrameFragment(Heap[y, g]));
    if (!HasDirectPerm(Mask, null, pair(y))) {
      Heap := Heap[null, pair#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pair(y):=freshVersion];
    }
    Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, f_7:=true]];
    Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sum(x) == sum(y) -- unfolding.vpr@58.3--58.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of sum(x) == sum(y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@58.10--58.16) [153839]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
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
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@58.20--58.26) [153840]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(x) == sum(y) might not hold. (unfolding.vpr@58.10--58.26) [153841]"}
      sum(Heap, x) == sum(Heap, y);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pair(x), write) -- unfolding.vpr@60.3--60.22
    assume pair#trigger(Heap, pair(x));
    assume Heap[null, pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pair(x) might fail. There might be insufficient permission to access pair(x) (unfolding.vpr@60.3--60.22) [153844]"}
        perm <= Mask[null, pair(x)];
    }
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, pair(x))) {
        havoc newVersion;
        Heap := Heap[null, pair(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := x.f + 1 -- unfolding.vpr@61.3--61.17
    
    // -- Check definedness of x.f + 1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@61.3--61.17) [153847]"}
        HasDirectPerm(Mask, x, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@61.3--61.17) [153848]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[x, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(x), write) -- unfolding.vpr@62.3--62.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@62.3--62.20) [153851]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@62.3--62.20) [153853]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pair#trigger(Heap, pair(x));
    assume Heap[null, pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    if (!HasDirectPerm(Mask, null, pair(x))) {
      Heap := Heap[null, pair#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pair(x):=freshVersion];
    }
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, f_7:=true]];
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sum(x) == sum(y) -- unfolding.vpr@65.3--65.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of sum(x) == sum(y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@65.10--65.16) [153855]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
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
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@65.20--65.26) [153856]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(x) == sum(y) might not hold. (unfolding.vpr@65.10--65.26) [153857]"}
      sum(Heap, x) == sum(Heap, y);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var v_2: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, pair(y):=Mask[null, pair(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of getf(y) > 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function getf might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@73.28--73.35) [153858]"}
          NoPerm < perm ==> NoPerm < Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume getf(Heap, y) > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: v := (unfolding acc(pair(y), write) in y.g) -- unfolding.vpr@75.3--75.46
    
    // -- Check definedness of (unfolding acc(pair(y), write) in y.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pair#trigger(UnfoldingHeap, pair(y));
      assume UnfoldingHeap[null, pair(y)] == CombineFrames(FrameFragment(UnfoldingHeap[y, f_7]), FrameFragment(UnfoldingHeap[y, g]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access pair(y) (unfolding.vpr@75.3--75.46) [153859]"}
          perm <= UnfoldingMask[null, pair(y)];
      }
      UnfoldingMask := UnfoldingMask[null, pair(y):=UnfoldingMask[null, pair(y)] - perm];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, f_7:=UnfoldingMask[y, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, g:=UnfoldingMask[y, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (unfolding.vpr@75.3--75.46) [153860]"}
        HasDirectPerm(UnfoldingMask, y, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, f_7:=true]];
        Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, g:=true]];
        assume state(Heap, Mask);
    v_2 := Heap[y, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert getf(y) == sum(y) - v -- unfolding.vpr@76.3--76.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of getf(y) == sum(y) - v
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function getf might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@76.10--76.17) [153861]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
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
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@76.21--76.27) [153862]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion getf(y) == sum(y) - v might not hold. (unfolding.vpr@76.10--76.31) [153863]"}
      getf(Heap, y) == sum(Heap, y) - v_2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume a_2 > 10;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Translating statement: x := new(f, g) -- unfolding.vpr@87.15--87.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    x := freshObj;
    Mask := Mask[x, f_7:=Mask[x, f_7] + FullPerm];
    Mask := Mask[x, g:=Mask[x, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f, g) -- unfolding.vpr@88.15--88.29
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    Mask := Mask[y, g:=Mask[y, g] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.f := 1 -- unfolding.vpr@90.3--90.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@90.3--90.11) [153864]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := a -- unfolding.vpr@90.13--90.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (unfolding.vpr@90.13--90.21) [153865]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 2 -- unfolding.vpr@91.3--91.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (unfolding.vpr@91.3--91.11) [153866]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := -a -- unfolding.vpr@91.13--91.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (unfolding.vpr@91.13--91.22) [153867]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=-a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(x), write) -- unfolding.vpr@93.3--93.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@93.3--93.20) [153870]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@93.3--93.20) [153872]"}
        perm <= Mask[x, g];
    }
    Mask := Mask[x, g:=Mask[x, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pair#trigger(Heap, pair(x));
    assume Heap[null, pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    if (!HasDirectPerm(Mask, null, pair(x))) {
      Heap := Heap[null, pair#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pair(x):=freshVersion];
    }
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, f_7:=true]];
    Heap := Heap[null, pair#sm(x):=Heap[null, pair#sm(x)][x, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(y), write) -- unfolding.vpr@94.3--94.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.f (unfolding.vpr@94.3--94.20) [153876]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.g (unfolding.vpr@94.3--94.20) [153878]"}
        perm <= Mask[y, g];
    }
    Mask := Mask[y, g:=Mask[y, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, pair(y):=Mask[null, pair(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume pair#trigger(Heap, pair(y));
    assume Heap[null, pair(y)] == CombineFrames(FrameFragment(Heap[y, f_7]), FrameFragment(Heap[y, g]));
    if (!HasDirectPerm(Mask, null, pair(y))) {
      Heap := Heap[null, pair#sm(y):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, pair(y):=freshVersion];
    }
    Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, f_7:=true]];
    Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(x, x) == 2 + a -- unfolding.vpr@96.3--96.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add(x, x) == 2 + a
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@96.10--96.19) [153880]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@96.10--96.19) [153881]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@96.10--96.19) [153882]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@96.10--96.19) [153883]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x, x) == 2 + a might not hold. (unfolding.vpr@96.10--96.28) [153884]"}
      add_1(Heap, x, x) == 2 + a_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(x, y) == a + 3 -- unfolding.vpr@97.3--97.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add(x, y) == a + 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@97.10--97.19) [153885]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@97.10--97.19) [153886]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@97.10--97.19) [153887]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@97.10--97.19) [153888]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x, y) == a + 3 might not hold. (unfolding.vpr@97.10--97.28) [153889]"}
      add_1(Heap, x, y) == a_2 + 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(y, x) < 0 -- unfolding.vpr@98.3--98.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add(y, x) < 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@98.10--98.19) [153890]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@98.10--98.19) [153891]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@98.10--98.19) [153892]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@98.10--98.19) [153893]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(y, x) < 0 might not hold. (unfolding.vpr@98.10--98.23) [153894]"}
      add_1(Heap, y, x) < 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(x, y) < 0 -- unfolding.vpr@101.3--101.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of add(x, y) < 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@101.10--101.19) [153895]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@101.10--101.19) [153896]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@101.10--101.19) [153897]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@101.10--101.19) [153898]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x, y) < 0 might not hold. (unfolding.vpr@101.10--101.23) [153899]"}
      add_1(Heap, x, y) < 0;
    assume state(Heap, Mask);
}