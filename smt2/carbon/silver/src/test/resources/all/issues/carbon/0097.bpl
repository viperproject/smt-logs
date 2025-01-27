// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0097.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0097-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 2: sum_ok
// - height 1: sum_fail
// - height 0: func3
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

const unique Int__v: Field NormalField int;
axiom !IsPredicateField(Int__v);
axiom !IsWandField(Int__v);
const unique List__Node__0: Field NormalField Ref;
axiom !IsPredicateField(List__Node__0);
axiom !IsWandField(List__Node__0);

// ==================================================
// Translation of function sum_fail
// ==================================================

// Uninterpreted function definitions
function  sum_fail(Heap: HeapType, l_1: Ref): int;
function  sum_fail'(Heap: HeapType, l_1: Ref): int;
axiom (forall Heap: HeapType, l_1: Ref ::
  { sum_fail(Heap, l_1) }
  sum_fail(Heap, l_1) == sum_fail'(Heap, l_1) && dummyFunction(sum_fail#triggerStateless(l_1))
);
axiom (forall Heap: HeapType, l_1: Ref ::
  { sum_fail'(Heap, l_1) }
  dummyFunction(sum_fail#triggerStateless(l_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref ::
  { state(Heap, Mask), sum_fail(Heap, l_1) } { state(Heap, Mask), sum_fail#triggerStateless(l_1), valid__List#trigger(Heap, valid__List(l_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> sum_fail(Heap, l_1) == Heap[Heap[l_1, List__Node__0], Int__v]
);

// Framing axioms
function  sum_fail#frame(frame: FrameType, l_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref ::
  { state(Heap, Mask), sum_fail'(Heap, l_1) }
  state(Heap, Mask) ==> sum_fail'(Heap, l_1) == sum_fail#frame(Heap[null, valid__List(l_1)], l_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_fail#trigger(frame: FrameType, l_1: Ref): bool;

// State-independent trigger function
function  sum_fail#triggerStateless(l_1: Ref): int;

// Check contract well-formedness and postcondition
procedure sum_fail#definedness(l_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var c_1: Ref;
  var c_2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[l_1, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid__List(l_1):=Mask[null, valid__List(l_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid__List(l), wildcard) in (let c == (l.List__Node__0) in c.Int__v))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid__List#trigger(UnfoldingHeap, valid__List(l_1));
      assume UnfoldingHeap[null, valid__List(l_1)] == CombineFrames(FrameFragment(UnfoldingHeap[l_1, List__Node__0]), FrameFragment(UnfoldingHeap[UnfoldingHeap[l_1, List__Node__0], Int__v]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid__List(l) (0097.vpr@4.1--9.2) [82431]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid__List(l_1)];
      havoc wildcard;
      perm := wildcard;
      assume l_1 != null;
      UnfoldingMask := UnfoldingMask[l_1, List__Node__0:=UnfoldingMask[l_1, List__Node__0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume UnfoldingHeap[l_1, List__Node__0] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v:=UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.List__Node__0 (0097.vpr@4.1--9.2) [82432]"}
        HasDirectPerm(UnfoldingMask, l_1, List__Node__0);
      c_1 := UnfoldingHeap[l_1, List__Node__0];
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access c.Int__v (0097.vpr@4.1--9.2) [82433]"}
        HasDirectPerm(UnfoldingMask, c_1, Int__v);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__List#sm(l_1):=Heap[null, valid__List#sm(l_1)][l_1, List__Node__0:=true]];
        Heap := Heap[null, valid__List#sm(l_1):=Heap[null, valid__List#sm(l_1)][Heap[l_1, List__Node__0], Int__v:=true]];
        assume state(Heap, Mask);
        c_2_2 := Heap[l_1, List__Node__0];
  
  // -- Translate function body
    Result := Heap[Heap[l_1, List__Node__0], Int__v];
}

// ==================================================
// Translation of function sum_ok
// ==================================================

// Uninterpreted function definitions
function  sum_ok(Heap: HeapType, l_1: Ref): Ref;
function  sum_ok'(Heap: HeapType, l_1: Ref): Ref;
axiom (forall Heap: HeapType, l_1: Ref ::
  { sum_ok(Heap, l_1) }
  sum_ok(Heap, l_1) == sum_ok'(Heap, l_1) && dummyFunction(sum_ok#triggerStateless(l_1))
);
axiom (forall Heap: HeapType, l_1: Ref ::
  { sum_ok'(Heap, l_1) }
  dummyFunction(sum_ok#triggerStateless(l_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref ::
  { state(Heap, Mask), sum_ok(Heap, l_1) } { state(Heap, Mask), sum_ok#triggerStateless(l_1), valid__List#trigger(Heap, valid__List(l_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> sum_ok(Heap, l_1) == Heap[l_1, List__Node__0]
);

// Framing axioms
function  sum_ok#frame(frame: FrameType, l_1: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, l_1: Ref ::
  { state(Heap, Mask), sum_ok'(Heap, l_1) }
  state(Heap, Mask) ==> sum_ok'(Heap, l_1) == sum_ok#frame(Heap[null, valid__List(l_1)], l_1)
);

// Trigger function (controlling recursive postconditions)
function  sum_ok#trigger(frame: FrameType, l_1: Ref): bool;

// State-independent trigger function
function  sum_ok#triggerStateless(l_1: Ref): Ref;

// Check contract well-formedness and postcondition
procedure sum_ok#definedness(l_1: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var c_1: Ref;
  var c_2_2: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[l_1, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid__List(l_1):=Mask[null, valid__List(l_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(valid__List(l), wildcard) in (let c == (l.List__Node__0) in c))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid__List#trigger(UnfoldingHeap, valid__List(l_1));
      assume UnfoldingHeap[null, valid__List(l_1)] == CombineFrames(FrameFragment(UnfoldingHeap[l_1, List__Node__0]), FrameFragment(UnfoldingHeap[UnfoldingHeap[l_1, List__Node__0], Int__v]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access valid__List(l) (0097.vpr@11.1--16.2) [82434]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, valid__List(l_1)];
      havoc wildcard;
      perm := wildcard;
      assume l_1 != null;
      UnfoldingMask := UnfoldingMask[l_1, List__Node__0:=UnfoldingMask[l_1, List__Node__0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume UnfoldingHeap[l_1, List__Node__0] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v:=UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access l.List__Node__0 (0097.vpr@11.1--16.2) [82435]"}
        HasDirectPerm(UnfoldingMask, l_1, List__Node__0);
      c_1 := UnfoldingHeap[l_1, List__Node__0];
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__List#sm(l_1):=Heap[null, valid__List#sm(l_1)][l_1, List__Node__0:=true]];
        Heap := Heap[null, valid__List#sm(l_1):=Heap[null, valid__List#sm(l_1)][Heap[l_1, List__Node__0], Int__v:=true]];
        assume state(Heap, Mask);
        c_2_2 := Heap[l_1, List__Node__0];
  
  // -- Translate function body
    Result := Heap[l_1, List__Node__0];
}

// ==================================================
// Translation of function func3
// ==================================================

// Uninterpreted function definitions
function  func3_1(Heap: HeapType, x: int, y: int, z: bool): bool;
function  func3'(Heap: HeapType, x: int, y: int, z: bool): bool;
axiom (forall Heap: HeapType, x: int, y: int, z: bool ::
  { func3_1(Heap, x, y, z) }
  func3_1(Heap, x, y, z) == func3'(Heap, x, y, z) && dummyFunction(func3#triggerStateless(x, y, z))
);
axiom (forall Heap: HeapType, x: int, y: int, z: bool ::
  { func3'(Heap, x, y, z) }
  dummyFunction(func3#triggerStateless(x, y, z))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int, z: bool ::
  { state(Heap, Mask), func3_1(Heap, x, y, z) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> func3_1(Heap, x, y, z) == (x == y && (y == x || x == x))
);

// Framing axioms
function  func3#frame(frame: FrameType, x: int, y: int, z: bool): bool;
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int, z: bool ::
  { state(Heap, Mask), func3'(Heap, x, y, z) }
  state(Heap, Mask) ==> func3'(Heap, x, y, z) == func3#frame(EmptyFrame, x, y, z)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, x: int, y: int, z: bool ::
  { state(Heap, Mask), func3'(Heap, x, y, z) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || func3#trigger(EmptyFrame, x, y, z)) ==> func3'(Heap, x, y, z) == (x != y)
);

// Trigger function (controlling recursive postconditions)
function  func3#trigger(frame: FrameType, x: int, y: int, z: bool): bool;

// State-independent trigger function
function  func3#triggerStateless(x: int, y: int, z: bool): bool;

// Check contract well-formedness and postcondition
procedure func3#definedness(x: int, y: int, z: bool) returns (Result: bool)
  modifies Heap, Mask;
{
  var eq_0_1: bool;
  var something_0_1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Check definedness of function body
    
    // -- Check definedness of (let eq_0 == (x == y) in (let something_0 == (y == x || x == x) in eq_0 && something_0))
      eq_0_1 := x == y;
      something_0_1 := y == x || x == x;
  
  // -- Translate function body
    Result := x == y && (y == x || x == x);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of func3 might not hold. Assertion result == (x != y) might not hold. (0097.vpr@35.11--35.29) [82436]"}
      Result == (x != y);
}

// ==================================================
// Translation of predicate valid__List
// ==================================================

type PredicateType_valid__List;
function  valid__List(this: Ref): Field PredicateType_valid__List FrameType;
function  valid__List#sm(this: Ref): Field PredicateType_valid__List PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(valid__List(this)) }
  PredicateMaskField(valid__List(this)) == valid__List#sm(this)
);
axiom (forall this: Ref ::
  { valid__List(this) }
  IsPredicateField(valid__List(this))
);
axiom (forall this: Ref ::
  { valid__List(this) }
  getPredWandId(valid__List(this)) == 0
);
function  valid__List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid__List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { valid__List(this), valid__List(this2) }
  valid__List(this) == valid__List(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { valid__List#sm(this), valid__List#sm(this2) }
  valid__List#sm(this) == valid__List#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { valid__List#trigger(Heap, valid__List(this)) }
  valid__List#everUsed(valid__List(this))
);

procedure valid__List#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid__List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, List__Node__0:=Mask[this, List__Node__0] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(this.List__Node__0.Int__v, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.List__Node__0 (0097.vpr@28.1--31.2) [82437]"}
        HasDirectPerm(Mask, this, List__Node__0);
    perm := FullPerm;
    assume Heap[this, List__Node__0] != null;
    Mask := Mask[Heap[this, List__Node__0], Int__v:=Mask[Heap[this, List__Node__0], Int__v] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(l_1: Ref) returns ()
  modifies Heap, Mask;
{
  var wildcard: real where wildcard > NoPerm;
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var c: Ref;
  var c_1: Ref;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[l_1, $allocated];
  
  // -- Checked inhaling of precondition
    havoc wildcard;
    perm := wildcard;
    Mask := Mask[null, valid__List(l_1):=Mask[null, valid__List(l_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid__List(l), wildcard) in (let c == (l.List__Node__0) in c.Int__v == 0))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid__List#trigger(UnfoldingHeap, valid__List(l_1));
      assume UnfoldingHeap[null, valid__List(l_1)] == CombineFrames(FrameFragment(UnfoldingHeap[l_1, List__Node__0]), FrameFragment(UnfoldingHeap[UnfoldingHeap[l_1, List__Node__0], Int__v]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__List(l) (0097.vpr@21.13--22.62) [82438]"}
        UnfoldingMask[null, valid__List(l_1)] > NoPerm;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid__List(l_1)];
      UnfoldingMask := UnfoldingMask[null, valid__List(l_1):=UnfoldingMask[null, valid__List(l_1)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume l_1 != null;
      UnfoldingMask := UnfoldingMask[l_1, List__Node__0:=UnfoldingMask[l_1, List__Node__0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume UnfoldingHeap[l_1, List__Node__0] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v:=UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access l.List__Node__0 (0097.vpr@21.13--22.62) [82439]"}
        HasDirectPerm(UnfoldingMask, l_1, List__Node__0);
      c := UnfoldingHeap[l_1, List__Node__0];
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c.Int__v (0097.vpr@21.13--22.62) [82440]"}
        HasDirectPerm(UnfoldingMask, c, Int__v);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid__List#sm(l_1):=Heap[null, valid__List#sm(l_1)][l_1, List__Node__0:=true]];
        Heap := Heap[null, valid__List#sm(l_1):=Heap[null, valid__List#sm(l_1)][Heap[l_1, List__Node__0], Int__v:=true]];
        assume state(Heap, Mask);
        c_1 := Heap[l_1, List__Node__0];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid__List#trigger(UnfoldingHeap, valid__List(l_1));
      assume UnfoldingHeap[null, valid__List(l_1)] == CombineFrames(FrameFragment(UnfoldingHeap[l_1, List__Node__0]), FrameFragment(UnfoldingHeap[UnfoldingHeap[l_1, List__Node__0], Int__v]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      havoc wildcard;
      assume wildcard < UnfoldingMask[null, valid__List(l_1)];
      UnfoldingMask := UnfoldingMask[null, valid__List(l_1):=UnfoldingMask[null, valid__List(l_1)] - wildcard];
      havoc wildcard;
      perm := wildcard;
      assume l_1 != null;
      UnfoldingMask := UnfoldingMask[l_1, List__Node__0:=UnfoldingMask[l_1, List__Node__0] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      havoc wildcard;
      perm := wildcard;
      assume UnfoldingHeap[l_1, List__Node__0] != null;
      UnfoldingMask := UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v:=UnfoldingMask[UnfoldingHeap[l_1, List__Node__0], Int__v] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[Heap[l_1, List__Node__0], Int__v] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
}