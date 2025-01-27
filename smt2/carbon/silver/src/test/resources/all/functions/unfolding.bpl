// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:13:55
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_19: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_19] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_19) ==> Heap[o_12, f_19] == ExhaleHeap[o_12, f_19]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19), ExhaleHeap[null, PredicateMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> Heap[null, PredicateMaskField(pm_f_19)] == ExhaleHeap[null, PredicateMaskField(pm_f_19)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsPredicateField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, PredicateMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19), ExhaleHeap[null, WandMaskField(pm_f_19)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> Heap[null, WandMaskField(pm_f_19)] == ExhaleHeap[null, WandMaskField(pm_f_19)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_19: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_19) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_19) && IsWandField(pm_f_19) ==> (forall <A, B> o2_19: Ref, f_19: (Field A B) ::
    { ExhaleHeap[o2_19, f_19] }
    Heap[null, WandMaskField(pm_f_19)][o2_19, f_19] ==> Heap[o2_19, f_19] == ExhaleHeap[o2_19, f_19]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_1: Ref, f_51: (Field A B), v: B ::
  { Heap[o_1, f_51:=v] }
  succHeap(Heap, Heap[o_1, f_51:=v])
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
const unique n_85: Field NormalField Ref;
axiom !IsPredicateField(n_85);
axiom !IsWandField(n_85);

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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access F(x) (unfolding.vpr@10.1--12.31) [48242]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, F(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@10.1--12.31) [48243]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access F(x) (unfolding.vpr@24.1--26.64) [48244]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, F(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@24.1--26.64) [48245]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, F#sm(x):=Heap[null, F#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume G#trigger(UnfoldingHeap, G(x));
      assume UnfoldingHeap[null, G(x)] == FrameFragment(UnfoldingHeap[x, g]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access G(x) (unfolding.vpr@24.1--26.64) [48246]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, G(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (unfolding.vpr@24.1--26.64) [48247]"}
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
function  sum_1(Heap: HeapType, x: Ref): int;
function  sum'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { sum_1(Heap, x) }
  sum_1(Heap, x) == sum'(Heap, x) && dummyFunction(sum#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { sum'(Heap, x) }
  dummyFunction(sum#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), sum_1(Heap, x) } { state(Heap, Mask), sum#triggerStateless(x), pair#trigger(Heap, pair(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> sum_1(Heap, x) == Heap[x, f_7] + Heap[x, g]
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(x) (unfolding.vpr@44.1--46.40) [48248]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@44.1--46.40) [48249]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (unfolding.vpr@44.1--46.40) [48250]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(z) (unfolding.vpr@68.1--70.29) [48251]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access z.f (unfolding.vpr@68.1--70.29) [48252]"}
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
function  add(Heap: HeapType, x: Ref, y: Ref): int;
function  add'(Heap: HeapType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { add(Heap, x, y) }
  add(Heap, x, y) == add'(Heap, x, y) && dummyFunction(add#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { add'(Heap, x, y) }
  dummyFunction(add#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), add(Heap, x, y) } { state(Heap, Mask), add#triggerStateless(x, y), pair#trigger(Heap, pair(x)), pair#trigger(Heap, pair(y)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> add(Heap, x, y) == Heap[x, f_7] + Heap[y, f_7] + Heap[x, g]
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@80.12--80.29) [48253]"}
      perm >= NoPerm;
    Mask := Mask[null, pair(x):=Mask[null, pair(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 3;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@81.12--81.29) [48254]"}
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [48255]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(x) (unfolding.vpr@79.1--82.84) [48256]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, pair(x)];
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [48257]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [48258]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      UnfoldingMask := UnfoldingMask[x, g:=UnfoldingMask[x, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding.vpr@79.1--82.84) [48259]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume pair#trigger(Unfolding1Heap, pair(y));
      assume Unfolding1Heap[null, pair(y)] == CombineFrames(FrameFragment(Unfolding1Heap[y, f_7]), FrameFragment(Unfolding1Heap[y, g]));
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [48260]"}
        perm >= NoPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access pair(y) (unfolding.vpr@79.1--82.84) [48261]"}
        NoPerm < perm ==> NoPerm < Unfolding1Mask[null, pair(y)];
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [48262]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> y != null;
      Unfolding1Mask := Unfolding1Mask[y, f_7:=Unfolding1Mask[y, f_7] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      perm := 1 / 3;
      assert {:msg "  Function might not be well-formed. Fraction 1 / 3 might be negative. (unfolding.vpr@79.1--82.84) [48263]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> y != null;
      Unfolding1Mask := Unfolding1Mask[y, g:=Unfolding1Mask[y, g] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.f (unfolding.vpr@79.1--82.84) [48264]"}
        HasDirectPerm(Unfolding1Mask, y, f_7);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, g:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, f_7:=true]];
        UnfoldingHeap := UnfoldingHeap[null, pair#sm(y):=UnfoldingHeap[null, pair#sm(y)][y, g:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.g (unfolding.vpr@79.1--82.84) [48265]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> fun3(Heap, y) == (if Heap[y, n_85] != null then 0 else 1)
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      assume UnfoldingHeap[null, R(y)] == CombineFrames(FrameFragment(UnfoldingHeap[y, n_85]), UnfoldingHeap[null, R(UnfoldingHeap[y, n_85])]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access R(y) (unfolding.vpr@110.1--115.2) [48266]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, R(y)];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, n_85:=UnfoldingMask[y, n_85] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, R(UnfoldingHeap[y, n_85]):=UnfoldingMask[null, R(UnfoldingHeap[y, n_85])] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(R(y), UnfoldingHeap[null, R(y)], R(UnfoldingHeap[y, n_85]), UnfoldingHeap[null, R(UnfoldingHeap[y, n_85])]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.n (unfolding.vpr@110.1--115.2) [48267]"}
        HasDirectPerm(UnfoldingMask, y, n_85);
      if (UnfoldingHeap[y, n_85] != null) {
        Unfolding1Heap := UnfoldingHeap;
        Unfolding1Mask := UnfoldingMask;
        assume R#trigger(Unfolding1Heap, R(Unfolding1Heap[y, n_85]));
        assume Unfolding1Heap[null, R(Unfolding1Heap[y, n_85])] == CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[y, n_85], n_85]), Unfolding1Heap[null, R(Unfolding1Heap[Unfolding1Heap[y, n_85], n_85])]);
        ExhaleWellDef0Mask := Unfolding1Mask;
        ExhaleWellDef0Heap := Unfolding1Heap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access R(y.n) (unfolding.vpr@110.1--115.2) [48268]"}
          NoPerm < perm ==> NoPerm < Unfolding1Mask[null, R(Unfolding1Heap[y, n_85])];
        perm := FullPerm;
        assume Unfolding1Heap[y, n_85] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[y, n_85], n_85:=Unfolding1Mask[Unfolding1Heap[y, n_85], n_85] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, R(Unfolding1Heap[Unfolding1Heap[y, n_85], n_85]):=Unfolding1Mask[null, R(Unfolding1Heap[Unfolding1Heap[y, n_85], n_85])] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(R(Unfolding1Heap[y, n_85]), Unfolding1Heap[null, R(Unfolding1Heap[y, n_85])], R(Unfolding1Heap[Unfolding1Heap[y, n_85], n_85]), Unfolding1Heap[null, R(Unfolding1Heap[Unfolding1Heap[y, n_85], n_85])]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assume state(Unfolding1Heap, Unfolding1Mask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access y.n (unfolding.vpr@110.1--115.2) [48269]"}
          HasDirectPerm(Unfolding1Mask, y, n_85);
        
        // -- Free assumptions (exp module)
          UnfoldingHeap := UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_85]):=UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_85])][UnfoldingHeap[y, n_85], n_85:=true]];
          havoc newPMask;
          assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
            { newPMask[o_5, f_11] }
            UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_85])][o_5, f_11] || UnfoldingHeap[null, R#sm(UnfoldingHeap[UnfoldingHeap[y, n_85], n_85])][o_5, f_11] ==> newPMask[o_5, f_11]
          );
          UnfoldingHeap := UnfoldingHeap[null, R#sm(UnfoldingHeap[y, n_85]):=newPMask];
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, R#sm(y):=Heap[null, R#sm(y)][y, n_85:=true]];
        havoc newPMask;
        assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
          { newPMask[o_6, f_12] }
          Heap[null, R#sm(y)][o_6, f_12] || Heap[null, R#sm(Heap[y, n_85])][o_6, f_12] ==> newPMask[o_6, f_12]
        );
        Heap := Heap[null, R#sm(y):=newPMask];
        assume state(Heap, Mask);
        Heap := Heap[null, R#sm(Heap[y, n_85]):=Heap[null, R#sm(Heap[y, n_85])][Heap[y, n_85], n_85:=true]];
        havoc newPMask;
        assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
          { newPMask[o_40, f_52] }
          Heap[null, R#sm(Heap[y, n_85])][o_40, f_52] || Heap[null, R#sm(Heap[Heap[y, n_85], n_85])][o_40, f_52] ==> newPMask[o_40, f_52]
        );
        Heap := Heap[null, R#sm(Heap[y, n_85]):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if Heap[y, n_85] != null then 0 else 1);
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
    Mask := Mask[x, n_85:=Mask[x, n_85] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(R(x.n), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.n (unfolding.vpr@106.1--108.2) [48270]"}
        HasDirectPerm(Mask, x, n_85);
    perm := FullPerm;
    Mask := Mask[null, R(Heap[x, n_85]):=Mask[null, R(Heap[x, n_85])] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5_1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@17.3--17.11) [48271]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(F(x), write) -- unfolding.vpr@19.3--19.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding F(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@19.3--19.17) [48274]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun2(x) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun2 might not hold. There might be insufficient permission to access F(x) (unfolding.vpr@21.10--21.17) [48276]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, F(x)];
        assert {:msg "  Precondition of function fun2 might not hold. Assertion x != null might not hold. (unfolding.vpr@21.10--21.17) [48277]"}
          x != null;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun2(x) == 3 might not hold. (unfolding.vpr@21.10--21.22) [48278]"}
      fun2(Heap, x) == 3;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4_1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@31.3--31.11) [48279]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := 7 -- unfolding.vpr@32.3--32.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (unfolding.vpr@32.3--32.11) [48280]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=7];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(F(x), write) -- unfolding.vpr@34.3--34.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding F(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@34.3--34.17) [48283]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding G(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@35.3--35.17) [48287]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of fun1(x) == 10
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access F(x) (unfolding.vpr@37.10--37.17) [48289]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, F(x)];
        perm := FullPerm;
        assert {:msg "  Precondition of function fun1 might not hold. There might be insufficient permission to access G(x) (unfolding.vpr@37.10--37.17) [48290]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, G(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion fun1(x) == 10 might not hold. (unfolding.vpr@37.10--37.23) [48291]"}
      fun1(Heap, x) == 10;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (unfolding.vpr@52.3--52.13) [48292]"}
        HasDirectPerm(Mask, y, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@52.3--52.13) [48293]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[y, f_7]];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := x.g -- unfolding.vpr@53.3--53.13
    
    // -- Check definedness of x.g
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (unfolding.vpr@53.3--53.13) [48294]"}
        HasDirectPerm(Mask, x, g);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (unfolding.vpr@53.3--53.13) [48295]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=Heap[x, g]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(x), write) -- unfolding.vpr@55.3--55.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@55.3--55.20) [48298]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@55.3--55.20) [48300]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.f (unfolding.vpr@56.3--56.20) [48304]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.g (unfolding.vpr@56.3--56.20) [48306]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of sum(x) == sum(y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@58.10--58.16) [48308]"}
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
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@58.20--58.26) [48309]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(x) == sum(y) might not hold. (unfolding.vpr@58.10--58.26) [48310]"}
      sum_1(Heap, x) == sum_1(Heap, y);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(pair(x), write) -- unfolding.vpr@60.3--60.22
    assume pair#trigger(Heap, pair(x));
    assume Heap[null, pair(x)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[x, g]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding pair(x) might fail. There might be insufficient permission to access pair(x) (unfolding.vpr@60.3--60.22) [48313]"}
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@61.3--61.17) [48316]"}
        HasDirectPerm(Mask, x, f_7);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@61.3--61.17) [48317]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=Heap[x, f_7] + 1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(x), write) -- unfolding.vpr@62.3--62.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@62.3--62.20) [48320]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@62.3--62.20) [48322]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of sum(x) == sum(y)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@65.10--65.16) [48324]"}
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
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@65.20--65.26) [48325]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion sum(x) == sum(y) might not hold. (unfolding.vpr@65.10--65.26) [48326]"}
      sum_1(Heap, x) == sum_1(Heap, y);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var v_2: int;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function getf might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@73.28--73.35) [48327]"}
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
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v := (unfolding acc(pair(y), write) in y.g) -- unfolding.vpr@75.3--75.46
    
    // -- Check definedness of (unfolding acc(pair(y), write) in y.g)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume pair#trigger(UnfoldingHeap, pair(y));
      assume UnfoldingHeap[null, pair(y)] == CombineFrames(FrameFragment(UnfoldingHeap[y, f_7]), FrameFragment(UnfoldingHeap[y, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access pair(y) (unfolding.vpr@75.3--75.46) [48328]"}
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
      assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (unfolding.vpr@75.3--75.46) [48329]"}
        HasDirectPerm(UnfoldingMask, y, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, f_7:=true]];
        Heap := Heap[null, pair#sm(y):=Heap[null, pair#sm(y)][y, g:=true]];
        assume state(Heap, Mask);
    v_2 := Heap[y, g];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert getf(y) == sum(y) - v -- unfolding.vpr@76.3--76.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of getf(y) == sum(y) - v
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function getf might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@76.10--76.17) [48330]"}
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
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@76.21--76.27) [48331]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion getf(y) == sum(y) - v might not hold. (unfolding.vpr@76.10--76.31) [48332]"}
      getf(Heap, y) == sum_1(Heap, y) - v_2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(a_2: int) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var x: Ref;
  var y: Ref;
  var freshObj: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
  
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
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (unfolding.vpr@90.3--90.11) [48333]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.g := a -- unfolding.vpr@90.13--90.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.g (unfolding.vpr@90.13--90.21) [48334]"}
      FullPerm == Mask[x, g];
    Heap := Heap[x, g:=a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 2 -- unfolding.vpr@91.3--91.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (unfolding.vpr@91.3--91.11) [48335]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=2];
    assume state(Heap, Mask);
  
  // -- Translating statement: y.g := -a -- unfolding.vpr@91.13--91.22
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.g (unfolding.vpr@91.13--91.22) [48336]"}
      FullPerm == Mask[y, g];
    Heap := Heap[y, g:=-a_2];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(pair(x), write) -- unfolding.vpr@93.3--93.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.f (unfolding.vpr@93.3--93.20) [48339]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(x) might fail. There might be insufficient permission to access x.g (unfolding.vpr@93.3--93.20) [48341]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.f (unfolding.vpr@94.3--94.20) [48345]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding pair(y) might fail. There might be insufficient permission to access y.g (unfolding.vpr@94.3--94.20) [48347]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of add(x, x) == 2 + a
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@96.10--96.19) [48349]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@96.10--96.19) [48350]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@96.10--96.19) [48351]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@96.10--96.19) [48352]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x, x) == 2 + a might not hold. (unfolding.vpr@96.10--96.28) [48353]"}
      add(Heap, x, x) == 2 + a_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(x, y) == a + 3 -- unfolding.vpr@97.3--97.28
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of add(x, y) == a + 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@97.10--97.19) [48354]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@97.10--97.19) [48355]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@97.10--97.19) [48356]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@97.10--97.19) [48357]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x, y) == a + 3 might not hold. (unfolding.vpr@97.10--97.28) [48358]"}
      add(Heap, x, y) == a_2 + 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(y, x) < 0 -- unfolding.vpr@98.3--98.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of add(y, x) < 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@98.10--98.19) [48359]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@98.10--98.19) [48360]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@98.10--98.19) [48361]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@98.10--98.19) [48362]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(y, x) < 0 might not hold. (unfolding.vpr@98.10--98.23) [48363]"}
      add(Heap, y, x) < 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert add(x, y) < 0 -- unfolding.vpr@101.3--101.23
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of add(x, y) < 0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@101.10--101.19) [48364]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(x) (unfolding.vpr@101.10--101.19) [48365]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(x)];
        perm := 1 / 3;
        assert {:msg "  Precondition of function add might not hold. Fraction 1 / 3 might be negative. (unfolding.vpr@101.10--101.19) [48366]"}
          perm >= NoPerm;
        assert {:msg "  Precondition of function add might not hold. There might be insufficient permission to access pair(y) (unfolding.vpr@101.10--101.19) [48367]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, pair(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion add(x, y) < 0 might not hold. (unfolding.vpr@101.10--101.23) [48368]"}
      add(Heap, x, y) < 0;
    assume state(Heap, Mask);
}