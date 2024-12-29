// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:45:39
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0117.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0117-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: fun1
// - height 1: fun2
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
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, this: Ref): bool;
function  fun'(Heap: HeapType, this: Ref): bool;
axiom (forall Heap: HeapType, this: Ref ::
  { fun(Heap, this) }
  fun(Heap, this) == fun'(Heap, this) && dummyFunction(fun#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { fun'(Heap, this) }
  dummyFunction(fun#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), fun(Heap, this) } { state(Heap, Mask), fun#triggerStateless(this), p#trigger(Heap, p_14(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun(Heap, this)
);

// Framing axioms
function  fun#frame(frame: FrameType, this: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), fun'(Heap, this) }
  state(Heap, Mask) ==> fun'(Heap, this) == fun#frame(Heap[null, p_14(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  fun#triggerStateless(this: Ref): bool;

// Check contract well-formedness and postcondition
procedure fun#definedness(this: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function fun1
// ==================================================

// Uninterpreted function definitions
function  fun1(Heap: HeapType, this: Ref): bool;
function  fun1'(Heap: HeapType, this: Ref): bool;
axiom (forall Heap: HeapType, this: Ref ::
  { fun1(Heap, this) }
  fun1(Heap, this) == fun1'(Heap, this) && dummyFunction(fun1#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { fun1'(Heap, this) }
  dummyFunction(fun1#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), fun1(Heap, this) } { state(Heap, Mask), fun1#triggerStateless(this), p1#trigger(Heap, p1(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> fun1(Heap, this)
);

// Framing axioms
function  fun1#frame(frame: FrameType, this: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), fun1'(Heap, this) }
  state(Heap, Mask) ==> fun1'(Heap, this) == fun1#frame(Heap[null, p1(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  fun1#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  fun1#triggerStateless(this: Ref): bool;

// Check contract well-formedness and postcondition
procedure fun1#definedness(this: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, p1(this):=Mask[null, p1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of function fun2
// ==================================================

// Uninterpreted function definitions
function  fun2(Heap: HeapType, this: Ref): bool;
function  fun2'(Heap: HeapType, this: Ref): bool;
axiom (forall Heap: HeapType, this: Ref ::
  { fun2(Heap, this) }
  fun2(Heap, this) == fun2'(Heap, this) && dummyFunction(fun2#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { fun2'(Heap, this) }
  dummyFunction(fun2#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), fun2(Heap, this) } { state(Heap, Mask), fun2#triggerStateless(this), p2#trigger(Heap, p2(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> fun2(Heap, this)
);

// Framing axioms
function  fun2#frame(frame: FrameType, this: Ref): bool;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), fun2'(Heap, this) }
  state(Heap, Mask) ==> fun2'(Heap, this) == fun2#frame(Heap[null, p2(this)], this)
);

// Trigger function (controlling recursive postconditions)
function  fun2#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  fun2#triggerStateless(this: Ref): bool;

// Check contract well-formedness and postcondition
procedure fun2#definedness(this: Ref) returns (Result: bool)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, p2(this):=Mask[null, p2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(this: Ref): Field PredicateType_p FrameType;
function  p#sm(this: Ref): Field PredicateType_p PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(p_14(this)) }
  PredicateMaskField(p_14(this)) == p#sm(this)
);
axiom (forall this: Ref ::
  { p_14(this) }
  IsPredicateField(p_14(this))
);
axiom (forall this: Ref ::
  { p_14(this) }
  getPredWandId(p_14(this)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { p_14(this), p_14(this2) }
  p_14(this) == p_14(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { p#sm(this), p#sm(this2) }
  p#sm(this) == p#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { p#trigger(Heap, p_14(this)) }
  p#everUsed(p_14(this))
);

procedure p#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p1
// ==================================================

type PredicateType_p1;
function  p1(this: Ref): Field PredicateType_p1 FrameType;
function  p1#sm(this: Ref): Field PredicateType_p1 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(p1(this)) }
  PredicateMaskField(p1(this)) == p1#sm(this)
);
axiom (forall this: Ref ::
  { p1(this) }
  IsPredicateField(p1(this))
);
axiom (forall this: Ref ::
  { p1(this) }
  getPredWandId(p1(this)) == 1
);
function  p1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { p1(this), p1(this2) }
  p1(this) == p1(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { p1#sm(this), p1#sm(this2) }
  p1#sm(this) == p1#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { p1#trigger(Heap, p1(this)) }
  p1#everUsed(p1(this))
);

procedure p1#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    Mask := Mask[null, p2(this):=Mask[null, p2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(this: Ref): Field PredicateType_p2 FrameType;
function  p2#sm(this: Ref): Field PredicateType_p2 PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(p2(this)) }
  PredicateMaskField(p2(this)) == p2#sm(this)
);
axiom (forall this: Ref ::
  { p2(this) }
  IsPredicateField(p2(this))
);
axiom (forall this: Ref ::
  { p2(this) }
  getPredWandId(p2(this)) == 2
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { p2(this), p2(this2) }
  p2(this) == p2(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { p2#sm(this), p2#sm(this2) }
  p2#sm(this) == p2#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { p2#trigger(Heap, p2(this)) }
  p2#everUsed(p2(this))
);

procedure p2#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    Mask := Mask[null, p1(this):=Mask[null, p1(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}