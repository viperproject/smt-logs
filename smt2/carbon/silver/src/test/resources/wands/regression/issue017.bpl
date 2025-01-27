// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:12
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue017.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue017-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: bool ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: Ref, arg2: bool ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 1
);
axiom (forall arg1: Ref, arg2: bool, arg1_2: Ref, arg2_2: bool ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5)) == 2
);
axiom (forall arg1: Ref, arg2: Ref, arg3: int, arg4: int, arg5: bool, arg1_2: Ref, arg2_2: Ref, arg3_2: int, arg4_2: int, arg5_2: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);

// ==================================================
// Translation of function fun
// ==================================================

// Uninterpreted function definitions
function  fun(Heap: HeapType, x: Ref, y: int): int;
function  fun'(Heap: HeapType, x: Ref, y: int): int;
axiom (forall Heap: HeapType, x: Ref, y: int ::
  { fun(Heap, x, y) }
  fun(Heap, x, y) == fun'(Heap, x, y) && dummyFunction(fun#triggerStateless(x, y))
);
axiom (forall Heap: HeapType, x: Ref, y: int ::
  { fun'(Heap, x, y) }
  dummyFunction(fun#triggerStateless(x, y))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: int ::
  { state(Heap, Mask), fun(Heap, x, y) } { state(Heap, Mask), fun#triggerStateless(x, y), P#trigger(Heap, P(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> fun(Heap, x, y) == -y
);

// Framing axioms
function  fun#frame(frame: FrameType, x: Ref, y: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref, y: int ::
  { state(Heap, Mask), fun'(Heap, x, y) }
  state(Heap, Mask) ==> fun'(Heap, x, y) == fun#frame(Heap[null, P(x)], x, y)
);

// Trigger function (controlling recursive postconditions)
function  fun#trigger(frame: FrameType, x: Ref, y: int): bool;

// State-independent trigger function
function  fun#triggerStateless(x: Ref, y: int): int;

// Check contract well-formedness and postcondition
procedure fun#definedness(x: Ref, y: int) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translate function body
    Result := -y;
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
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
  
  // -- Translating statement: inhale acc(P(x), write) --* true -- issue017.vpr@11.3--11.28
    
    // -- Check definedness of acc(P(x), write) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(x):=WandDefLHSMask[null, P(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- issue017.vpr@11.10--11.28
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(x, true):=Mask[null, wand(x, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: y := x -- issue017.vpr@12.3--12.18
    y := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(y), write) --* true -- issue017.vpr@13.3--13.28
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(P(y), write) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(y):=WandDefLHSMask[null, P(y)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs2 -- issue017.vpr@13.10--13.28
          lhs2:
          Labellhs2Heap := WandDefLHSHeap;
          Labellhs2Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (issue017.vpr@13.10--13.28) [216767]"}
      FullPerm <= Mask[null, wand(y, true)];
    Mask := Mask[null, wand(y, true):=Mask[null, wand(y, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, y: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var zx: Ref;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var zy: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[zx, $allocated];
  
  // -- Translating statement: inhale acc(P(x), write) && fun(x, y) == -y --* true -- issue017.vpr@19.3--19.47
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(P(x), write) && fun(x, y) == -y --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(x):=WandDefLHSMask[null, P(x)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of fun(x, y) == -y
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := WandDefLHSHeap;
            ExhaleWellDef0Mask := WandDefLHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access P(x) (issue017.vpr@19.23--19.32) [216768]"}
              NoPerm < perm ==> NoPerm < WandDefLHSMask[null, P(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
            WandDefLHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume fun(WandDefLHSHeap, x, y) == -y;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- issue017.vpr@19.10--19.47
          lhs3:
          Labellhs3Heap := WandDefLHSHeap;
          Labellhs3Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, x, y, -y, true):=Mask[null, wand_1(x, x, y, -y, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: zx := x -- issue017.vpr@20.3--20.19
    zx := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: zy := y -- issue017.vpr@21.3--21.19
    zy := y;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(zx), write) && fun(zx, zy) == -y --* true -- issue017.vpr@22.3--22.50
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of acc(P(zx), write) && fun(zx, zy) == -y --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, P(zx):=WandDefLHSMask[null, P(zx)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Check definedness of fun(zx, zy) == -y
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := WandDefLHSHeap;
            ExhaleWellDef1Mask := WandDefLHSMask;
            perm := FullPerm;
            assert {:msg "  Precondition of function fun might not hold. There might be insufficient permission to access P(zx) (issue017.vpr@22.24--22.35) [216769]"}
              NoPerm < perm ==> NoPerm < WandDefLHSMask[null, P(zx)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
            WandDefLHSHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume fun(WandDefLHSHeap, zx, zy) == -y;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs4 -- issue017.vpr@22.10--22.50
          lhs4:
          Labellhs4Heap := WandDefLHSHeap;
          Labellhs4Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (issue017.vpr@22.10--22.50) [216770]"}
      FullPerm <= Mask[null, wand_1(zx, zx, zy, -y, true)];
    Mask := Mask[null, wand_1(zx, zx, zy, -y, true):=Mask[null, wand_1(zx, zx, zy, -y, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}