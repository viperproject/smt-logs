// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:37:07
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/unfolding_nonnull.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/functions/unfolding_nonnull-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 1: fun4
// - height 0: fun3
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
  { state(Heap, Mask), fun3(Heap, x) } { state(Heap, Mask), fun3#triggerStateless(x), F#trigger(Heap, F(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun3(Heap, x) == Heap[x, f_7]
);

// Framing axioms
function  fun3#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun3'(Heap, x) }
  state(Heap, Mask) ==> fun3'(Heap, x) == fun3#frame(Heap[null, F(x)], x)
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
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, F(x):=Mask[null, F(x)] + perm];
    assume state(Heap, Mask);
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access F(x) (unfolding_nonnull.vpr@10.1--12.31) [155756]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, F(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding_nonnull.vpr@10.1--12.31) [155757]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, F#sm(x):=Heap[null, F#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
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
  { state(Heap, Mask), fun4(Heap, x, y) } { state(Heap, Mask), fun4#triggerStateless(x, y), FF#trigger(Heap, FF(x, y)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun4(Heap, x, y) == Heap[x, f_7]
);

// Framing axioms
function  fun4#frame(frame: FrameType, x: Ref, y: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: Ref ::
  { state(Heap, Mask), fun4'(Heap, x, y) }
  state(Heap, Mask) ==> fun4'(Heap, x, y) == fun4#frame(Heap[null, FF(x, y)], x, y)
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
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, FF(x, y):=Mask[null, FF(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(FF(x, y), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume FF#trigger(UnfoldingHeap, FF(x, y));
      assume UnfoldingHeap[null, FF(x, y)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f_7]), FrameFragment(UnfoldingHeap[y, f_7]));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access FF(x, y) (unfolding_nonnull.vpr@26.1--28.35) [155758]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, FF(x, y)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, f_7:=UnfoldingMask[y, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (unfolding_nonnull.vpr@26.1--28.35) [155759]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, FF#sm(x, y):=Heap[null, FF#sm(x, y)][x, f_7:=true]];
        Heap := Heap[null, FF#sm(x, y):=Heap[null, FF#sm(x, y)][y, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
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
// Translation of predicate FF
// ==================================================

type PredicateType_FF;
function  FF(x: Ref, y: Ref): Field PredicateType_FF FrameType;
function  FF#sm(x: Ref, y: Ref): Field PredicateType_FF PMaskType;
axiom (forall x: Ref, y: Ref ::
  { PredicateMaskField(FF(x, y)) }
  PredicateMaskField(FF(x, y)) == FF#sm(x, y)
);
axiom (forall x: Ref, y: Ref ::
  { FF(x, y) }
  IsPredicateField(FF(x, y))
);
axiom (forall x: Ref, y: Ref ::
  { FF(x, y) }
  getPredWandId(FF(x, y)) == 2
);
function  FF#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  FF#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { FF(x, y), FF(x2, y2) }
  FF(x, y) == FF(x2, y2) ==> x == x2 && y == y2
);
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { FF#sm(x, y), FF#sm(x2, y2) }
  FF#sm(x, y) == FF#sm(x2, y2) ==> x == x2 && y == y2
);

axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { FF#trigger(Heap, FF(x, y)) }
  FF#everUsed(FF(x, y))
);

procedure FF#definedness(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of FF
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
      assume Heap[y, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test6
// ==================================================

procedure test6(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, F(x):=Mask[null, F(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of fun3(x) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun3 might not hold. There might be insufficient permission to access F(x) (unfolding_nonnull.vpr@15.25--15.32) [155760]"}
          NoPerm < perm ==> NoPerm < Mask[null, F(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun3(Heap, x) == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert x != null -- unfolding_nonnull.vpr@19.3--19.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x != null might not hold. (unfolding_nonnull.vpr@19.10--19.19) [155761]"}
      x != null;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test7
// ==================================================

procedure test7(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, FF(x, y):=Mask[null, FF(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of fun4(x, y) == 1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function fun4 might not hold. There might be insufficient permission to access FF(x, y) (unfolding_nonnull.vpr@31.29--31.39) [155762]"}
          NoPerm < perm ==> NoPerm < Mask[null, FF(x, y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume fun4(Heap, x, y) == 1;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert x != null -- unfolding_nonnull.vpr@35.3--35.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion x != null might not hold. (unfolding_nonnull.vpr@35.10--35.19) [155763]"}
      x != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y != null -- unfolding_nonnull.vpr@39.3--39.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion y != null might not hold. (unfolding_nonnull.vpr@39.10--39.19) [155764]"}
      y != null;
    assume state(Heap, Mask);
}