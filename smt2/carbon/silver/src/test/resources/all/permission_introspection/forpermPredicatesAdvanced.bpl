// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:34:28
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermPredicatesAdvanced.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermPredicatesAdvanced-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, x: Ref): Ref;
function  fun'(Heap: HeapType, x: Ref): Ref;
axiom (forall Heap: HeapType, x: Ref ::
  { fun(Heap, x) }
  fun(Heap, x) == fun'(Heap, x) && dummyFunction(fun#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { fun'(Heap, x) }
  dummyFunction(fun#triggerStateless(x))
);

// Framing axioms
function  fun#frame(frame: FrameType, x: Ref): Ref;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), fun'(Heap, x) }
  state(Heap, Mask) ==> fun'(Heap, x) == fun#frame(EmptyFrame, x)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  fun#triggerStateless(x: Ref): Ref;

// Check contract well-formedness and postcondition
procedure fun#definedness(x: Ref) returns (Result: Ref)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
}

// ==================================================
// Translation of predicate p1
// ==================================================

type PredicateType_p1;
function  p1(x: Ref, i: int): Field PredicateType_p1 FrameType;
function  p1#sm(x: Ref, i: int): Field PredicateType_p1 PMaskType;
axiom (forall x: Ref, i: int ::
  { PredicateMaskField(p1(x, i)) }
  PredicateMaskField(p1(x, i)) == p1#sm(x, i)
);
axiom (forall x: Ref, i: int ::
  { p1(x, i) }
  IsPredicateField(p1(x, i))
);
axiom (forall x: Ref, i: int ::
  { p1(x, i) }
  getPredWandId(p1(x, i)) == 0
);
function  p1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { p1(x, i), p1(x2, i2_1) }
  p1(x, i) == p1(x2, i2_1) ==> x == x2 && i == i2_1
);
axiom (forall x: Ref, i: int, x2: Ref, i2_1: int ::
  { p1#sm(x, i), p1#sm(x2, i2_1) }
  p1#sm(x, i) == p1#sm(x2, i2_1) ==> x == x2 && i == i2_1
);

axiom (forall Heap: HeapType, x: Ref, i: int ::
  { p1#trigger(Heap, p1(x, i)) }
  p1#everUsed(p1(x, i))
);

procedure p1#definedness(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p1
    
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
    
    // -- Check definedness of x.f > i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (forpermPredicatesAdvanced.vpr@82.1--84.2) [142363]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > i;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(x: Ref, y: Ref): Field PredicateType_p2 FrameType;
function  p2#sm(x: Ref, y: Ref): Field PredicateType_p2 PMaskType;
axiom (forall x: Ref, y: Ref ::
  { PredicateMaskField(p2(x, y)) }
  PredicateMaskField(p2(x, y)) == p2#sm(x, y)
);
axiom (forall x: Ref, y: Ref ::
  { p2(x, y) }
  IsPredicateField(p2(x, y))
);
axiom (forall x: Ref, y: Ref ::
  { p2(x, y) }
  getPredWandId(p2(x, y)) == 1
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { p2(x, y), p2(x2, y2) }
  p2(x, y) == p2(x2, y2) ==> x == x2 && y == y2
);
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { p2#sm(x, y), p2#sm(x2, y2) }
  p2#sm(x, y) == p2#sm(x2, y2) ==> x == x2 && y == y2
);

axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { p2#trigger(Heap, p2(x, y)) }
  p2#everUsed(p2(x, y))
);

procedure p2#definedness(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
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
    
    // -- Check definedness of x.f > y.f
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.f (forpermPredicatesAdvanced.vpr@86.1--88.2) [142364]"}
        HasDirectPerm(Mask, x, f_7);
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access y.f (forpermPredicatesAdvanced.vpr@86.1--88.2) [142365]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[x, f_7] > Heap[y, f_7];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p3
// ==================================================

type PredicateType_p3;
function  p3(x: Ref, y: Ref): Field PredicateType_p3 FrameType;
function  p3#sm(x: Ref, y: Ref): Field PredicateType_p3 PMaskType;
axiom (forall x: Ref, y: Ref ::
  { PredicateMaskField(p3(x, y)) }
  PredicateMaskField(p3(x, y)) == p3#sm(x, y)
);
axiom (forall x: Ref, y: Ref ::
  { p3(x, y) }
  IsPredicateField(p3(x, y))
);
axiom (forall x: Ref, y: Ref ::
  { p3(x, y) }
  getPredWandId(p3(x, y)) == 2
);
function  p3#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p3#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { p3(x, y), p3(x2, y2) }
  p3(x, y) == p3(x2, y2) ==> x == x2 && y == y2
);
axiom (forall x: Ref, y: Ref, x2: Ref, y2: Ref ::
  { p3#sm(x, y), p3#sm(x2, y2) }
  p3#sm(x, y) == p3#sm(x2, y2) ==> x == x2 && y == y2
);

axiom (forall Heap: HeapType, x: Ref, y: Ref ::
  { p3#trigger(Heap, p3(x, y)) }
  p3#everUsed(p3(x, y))
);

procedure p3#definedness(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p3
    
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
// Translation of method m1
// ==================================================

procedure m1(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_21: Ref;
  var i_14: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p1(x, 0), write) -- forpermPredicatesAdvanced.vpr@7.5--7.20
    perm := FullPerm;
    Mask := Mask[null, p1(x, 0):=Mask[null, p1(x, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p1(y, 10), write) -- forpermPredicatesAdvanced.vpr@8.5--8.21
    perm := FullPerm;
    Mask := Mask[null, p1(y, 10):=Mask[null, p1(y, 10)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref, i: Int [p1(a, i)] :: i >= 0) -- forpermPredicatesAdvanced.vpr@11.5--11.53
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref, i: Int [p1(a, i)] :: i >= 0)
      if (*) {
        if (HasDirectPerm(Mask, null, p1(a_21, i_14))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p1(a, i) (forpermPredicatesAdvanced.vpr@11.12--11.53) [142368]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p1(a_21, i_14));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref, i: Int [p1(a, i)] :: i >= 0) might not hold. (forpermPredicatesAdvanced.vpr@11.12--11.53) [142369]"}
      (forall a_1_1: Ref, i_1: int ::
      { Mask[null, p1(a_1_1, i_1)] } { Heap[null, p1(a_1_1, i_1)] }
      HasDirectPerm(Mask, null, p1(a_1_1, i_1)) ==> i_1 >= 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_4: Ref;
  var newVersion: FrameType;
  var a_5: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p2(x, y), write) -- forpermPredicatesAdvanced.vpr@15.5--15.20
    perm := FullPerm;
    Mask := Mask[null, p2(x, y):=Mask[null, p2(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p2(z, y), write) -- forpermPredicatesAdvanced.vpr@16.5--16.20
    perm := FullPerm;
    Mask := Mask[null, p2(z, y):=Mask[null, p2(z, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != z -- forpermPredicatesAdvanced.vpr@17.5--17.18
    assume x != z;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert !(forperm a: Ref [p2(a, y)] :: a == z) -- forpermPredicatesAdvanced.vpr@20.5--20.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of !(forperm a: Ref [p2(a, y)] :: a == z)
      if (*) {
        if (HasDirectPerm(Mask, null, p2(a_4, y))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p2(a, y) (forpermPredicatesAdvanced.vpr@20.12--20.47) [142372]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p2(a_4, y));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion !(forperm a: Ref [p2(a, y)] :: a == z) might not hold. (forpermPredicatesAdvanced.vpr@20.12--20.47) [142373]"}
      !(forall a_1_1: Ref ::
      { Mask[null, p2(a_1_1, y)] } { Heap[null, p2(a_1_1, y)] }
      HasDirectPerm(Mask, null, p2(a_1_1, y)) ==> a_1_1 == z
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p2(x, y), write) -- forpermPredicatesAdvanced.vpr@21.5--21.19
    assume p2#trigger(Heap, p2(x, y));
    assume Heap[null, p2(x, y)] == CombineFrames(FrameFragment(Heap[x, f_7]), FrameFragment(Heap[y, f_7]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p2(x, y) might fail. There might be insufficient permission to access p2(x, y) (forpermPredicatesAdvanced.vpr@21.5--21.19) [142376]"}
        perm <= Mask[null, p2(x, y)];
    }
    Mask := Mask[null, p2(x, y):=Mask[null, p2(x, y)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p2(x, y))) {
        havoc newVersion;
        Heap := Heap[null, p2(x, y):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume Heap[x, f_7] > Heap[y, f_7];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [p2(a, y)] :: a == z) -- forpermPredicatesAdvanced.vpr@22.5--22.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [p2(a, y)] :: a == z)
      if (*) {
        if (HasDirectPerm(Mask, null, p2(a_5, y))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p2(a, y) (forpermPredicatesAdvanced.vpr@22.12--22.46) [142379]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p2(a_5, y));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [p2(a, y)] :: a == z) might not hold. (forpermPredicatesAdvanced.vpr@22.12--22.46) [142380]"}
      (forall a_3_1: Ref ::
      { Mask[null, p2(a_3_1, y)] } { Heap[null, p2(a_3_1, y)] }
      HasDirectPerm(Mask, null, p2(a_3_1, y)) ==> a_3_1 == z
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_8: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p3(x, y), write) -- forpermPredicatesAdvanced.vpr@26.5--26.19
    perm := FullPerm;
    Mask := Mask[null, p3(x, y):=Mask[null, p3(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p3(z, z), write) -- forpermPredicatesAdvanced.vpr@27.5--27.19
    perm := FullPerm;
    Mask := Mask[null, p3(z, z):=Mask[null, p3(z, z)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != y -- forpermPredicatesAdvanced.vpr@28.5--28.18
    assume x != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [p3(a, a)] :: a == z) -- forpermPredicatesAdvanced.vpr@30.5--30.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [p3(a, a)] :: a == z)
      if (*) {
        if (HasDirectPerm(Mask, null, p3(a_8, a_8))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p3(a, a) (forpermPredicatesAdvanced.vpr@30.12--30.46) [142383]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p3(a_8, a_8));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [p3(a, a)] :: a == z) might not hold. (forpermPredicatesAdvanced.vpr@30.12--30.46) [142384]"}
      (forall a_1_1: Ref ::
      { Mask[null, p3(a_1_1, a_1_1)] } { Heap[null, p3(a_1_1, a_1_1)] }
      HasDirectPerm(Mask, null, p3(a_1_1, a_1_1)) ==> a_1_1 == z
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_9: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p3(x, y), write) -- forpermPredicatesAdvanced.vpr@34.5--34.19
    perm := FullPerm;
    Mask := Mask[null, p3(x, y):=Mask[null, p3(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p3(y, z), write) -- forpermPredicatesAdvanced.vpr@35.5--35.19
    perm := FullPerm;
    Mask := Mask[null, p3(y, z):=Mask[null, p3(y, z)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale z != y -- forpermPredicatesAdvanced.vpr@36.5--36.18
    assume z != y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [p3(a, y)] :: a == x) -- forpermPredicatesAdvanced.vpr@38.5--38.46
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [p3(a, y)] :: a == x)
      if (*) {
        if (HasDirectPerm(Mask, null, p3(a_9, y))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p3(a, y) (forpermPredicatesAdvanced.vpr@38.12--38.46) [142387]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p3(a_9, y));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [p3(a, y)] :: a == x) might not hold. (forpermPredicatesAdvanced.vpr@38.12--38.46) [142388]"}
      (forall a_1_1: Ref ::
      { Mask[null, p3(a_1_1, y)] } { Heap[null, p3(a_1_1, y)] }
      HasDirectPerm(Mask, null, p3(a_1_1, y)) ==> a_1_1 == x
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var a_10: Ref;
  var i_8: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p1(x, 10), write) -- forpermPredicatesAdvanced.vpr@42.5--42.20
    perm := FullPerm;
    Mask := Mask[null, p1(x, 10):=Mask[null, p1(x, 10)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p1(y, 15), write) -- forpermPredicatesAdvanced.vpr@43.5--43.21
    perm := FullPerm;
    Mask := Mask[null, p1(y, 15):=Mask[null, p1(y, 15)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if ((forperm a: Ref, i: Int [p1(a, i)] :: a == x)) -- forpermPredicatesAdvanced.vpr@45.5--49.6
    
    // -- Check definedness of (forperm a: Ref, i: Int [p1(a, i)] :: a == x)
      if (*) {
        if (HasDirectPerm(Mask, null, p1(a_10, i_8))) {
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access p1(a, i) (forpermPredicatesAdvanced.vpr@45.9--45.51) [142391]"}
            HasDirectPerm(Mask, null, p1(a_10, i_8));
        }
        assume false;
      }
    if ((forall a_2: Ref, i: int ::
      { Mask[null, p1(a_2, i)] } { Heap[null, p1(a_2, i)] }
      HasDirectPerm(Mask, null, p1(a_2, i)) ==> a_2 == x
    )) {
      
      // -- Translating statement: assert x == y -- forpermPredicatesAdvanced.vpr@46.9--46.22
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion x == y might not hold. (forpermPredicatesAdvanced.vpr@46.16--46.22) [142392]"}
          x == y;
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: assert x != y -- forpermPredicatesAdvanced.vpr@48.9--48.22
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Assert might fail. Assertion x != y might not hold. (forpermPredicatesAdvanced.vpr@48.16--48.22) [142393]"}
          x != y;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m6
// ==================================================

procedure m6(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_22: Ref;
  var b_101: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p2(x, y), write) -- forpermPredicatesAdvanced.vpr@53.5--53.19
    perm := FullPerm;
    Mask := Mask[null, p2(x, y):=Mask[null, p2(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p3(y, x), write) -- forpermPredicatesAdvanced.vpr@54.5--54.19
    perm := FullPerm;
    Mask := Mask[null, p3(y, x):=Mask[null, p3(y, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref, b: Ref [p2(a, b)] :: x != y ==> a != y) -- forpermPredicatesAdvanced.vpr@56.5--56.65
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref, b: Ref [p2(a, b)] :: x != y ==> a != y)
      if (*) {
        if (HasDirectPerm(Mask, null, p2(a_22, b_101))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p2(a, b) (forpermPredicatesAdvanced.vpr@56.12--56.65) [142396]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p2(a_22, b_101));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref, b: Ref [p2(a, b)] :: x != y ==> a != y) might not hold. (forpermPredicatesAdvanced.vpr@56.12--56.65) [142397]"}
      (forall a_1_1: Ref, b_1_2: Ref ::
      { Mask[null, p2(a_1_1, b_1_2)] } { Heap[null, p2(a_1_1, b_1_2)] }
      HasDirectPerm(Mask, null, p2(a_1_1, b_1_2)) ==> x != y ==> a_1_1 != y
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m7
// ==================================================

procedure m7(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_23: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p2(x, y), write) -- forpermPredicatesAdvanced.vpr@60.5--60.19
    perm := FullPerm;
    Mask := Mask[null, p2(x, y):=Mask[null, p2(x, y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p2(fun(x), fun(y)), write) -- forpermPredicatesAdvanced.vpr@61.5--61.29
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(p2(fun(x), fun(y)), write)
      if (*) {
        // Stop execution
        assume false;
      }
      if (*) {
        // Stop execution
        assume false;
      }
    perm := FullPerm;
    Mask := Mask[null, p2(fun(Heap, x), fun(Heap, y)):=Mask[null, p2(fun(Heap, x), fun(Heap, y))] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun(x) != x -- forpermPredicatesAdvanced.vpr@62.12--62.23
    assume state(Heap, Mask);
    
    // -- Check definedness of fun(x) != x
      if (*) {
        // Stop execution
        assume false;
      }
    assume fun(Heap, x) != x;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [p2(fun(x), a)] :: a == fun(y)) -- forpermPredicatesAdvanced.vpr@64.5--64.56
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [p2(fun(x), a)] :: a == fun(y))
      if (*) {
        if (HasDirectPerm(Mask, null, p2(fun(Heap, x), a_23))) {
          if (*) {
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access p2(fun(x), a) (forpermPredicatesAdvanced.vpr@64.12--64.56) [142400]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p2(fun(Heap, x), a_23));
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [p2(fun(x), a)] :: a == fun(y)) might not hold. (forpermPredicatesAdvanced.vpr@64.12--64.56) [142401]"}
      (forall a_1_1: Ref ::
      { Mask[null, p2(fun(Heap, x), a_1_1)] } { Heap[null, p2(fun(Heap, x), a_1_1)] }
      HasDirectPerm(Mask, null, p2(fun(Heap, x), a_1_1)) ==> a_1_1 == fun(Heap, y)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m8
// ==================================================

procedure m8(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_12: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p1(x, 10), write) -- forpermPredicatesAdvanced.vpr@68.5--68.21
    perm := FullPerm;
    Mask := Mask[null, p1(x, 10):=Mask[null, p1(x, 10)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p1(y, 0), write) -- forpermPredicatesAdvanced.vpr@69.5--69.20
    perm := FullPerm;
    Mask := Mask[null, p1(y, 0):=Mask[null, p1(y, 0)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [p1(a, 10)] :: a == x) -- forpermPredicatesAdvanced.vpr@71.5--71.47
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [p1(a, 10)] :: a == x)
      if (*) {
        if (HasDirectPerm(Mask, null, p1(a_12, 10))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p1(a, 10) (forpermPredicatesAdvanced.vpr@71.12--71.47) [142404]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p1(a_12, 10));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [p1(a, 10)] :: a == x) might not hold. (forpermPredicatesAdvanced.vpr@71.12--71.47) [142405]"}
      (forall a_1_1: Ref ::
      { Mask[null, p1(a_1_1, 10)] } { Heap[null, p1(a_1_1, 10)] }
      HasDirectPerm(Mask, null, p1(a_1_1, 10)) ==> a_1_1 == x
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m9
// ==================================================

procedure m9(x: Ref, y: Ref, z: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var a_24: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(p3((b ? x : y), z), write) -- forpermPredicatesAdvanced.vpr@75.5--75.30
    perm := FullPerm;
    Mask := Mask[null, p3((if b_24 then x else y), z):=Mask[null, p3((if b_24 then x else y), z)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p3(z, x), write) -- forpermPredicatesAdvanced.vpr@76.5--76.20
    perm := FullPerm;
    Mask := Mask[null, p3(z, x):=Mask[null, p3(z, x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale z != (b ? x : y) -- forpermPredicatesAdvanced.vpr@77.12--77.28
    assume z != (if b_24 then x else y);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm a: Ref [p3((b ? x : y), a)] :: a == z) -- forpermPredicatesAdvanced.vpr@79.5--79.57
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm a: Ref [p3((b ? x : y), a)] :: a == z)
      if (*) {
        if (HasDirectPerm(Mask, null, p3((if b_24 then x else y), a_24))) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access p3((b ? x : y), a) (forpermPredicatesAdvanced.vpr@79.12--79.57) [142408]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, p3((if b_24 then x else y), a_24));
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm a: Ref [p3((b ? x : y), a)] :: a == z) might not hold. (forpermPredicatesAdvanced.vpr@79.12--79.57) [142409]"}
      (forall a_1_1: Ref ::
      { Mask[null, p3((if b_24 then x else y), a_1_1)] } { Heap[null, p3((if b_24 then x else y), a_1_1)] }
      HasDirectPerm(Mask, null, p3((if b_24 then x else y), a_1_1)) ==> a_1_1 == z
    );
    assume state(Heap, Mask);
}