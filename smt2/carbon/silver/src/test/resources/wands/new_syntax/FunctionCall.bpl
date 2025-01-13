// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:12:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/FunctionCall.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/FunctionCall-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_12: Ref, f_16: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_12, f_16] }
  Heap[o_12, $allocated] ==> Heap[Heap[o_12, f_16], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref, f_37: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, f_37] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_46, f_37) ==> Heap[o_46, f_37] == ExhaleHeap[o_46, f_37]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22), ExhaleHeap[null, PredicateMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> Heap[null, PredicateMaskField(pm_f_22)] == ExhaleHeap[null, PredicateMaskField(pm_f_22)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsPredicateField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, PredicateMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22), ExhaleHeap[null, WandMaskField(pm_f_22)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> Heap[null, WandMaskField(pm_f_22)] == ExhaleHeap[null, WandMaskField(pm_f_22)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_22: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_22) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_22) && IsWandField(pm_f_22) ==> (forall <A, B> o2_22: Ref, f_37: (Field A B) ::
    { ExhaleHeap[o2_22, f_37] }
    Heap[null, WandMaskField(pm_f_22)][o2_22, f_37] ==> Heap[o2_22, f_37] == ExhaleHeap[o2_22, f_37]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_46: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_46, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_46, $allocated] ==> ExhaleHeap[o_46, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_12: Ref, f_24: (Field A B), v: B ::
  { Heap[o_12, f_24:=v] }
  succHeap(Heap, Heap[o_12, f_24:=v])
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
// - height 0: getAndTransform
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
function  wand(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 1
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: int, arg5: Ref, arg6: Ref, arg7: int, arg1_2: Ref, arg2_2: Ref, arg3_2: Ref, arg4_2: int, arg5_2: Ref, arg6_2: Ref, arg7_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: Ref, arg3: Ref, arg4: int): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: Ref, arg3: Ref, arg4: int): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: Ref, arg3: Ref, arg4: int): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand_1(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand_1(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4)) }
  wand_1#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int ::
  { wand_1(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: int, arg1_2: bool, arg2_2: Ref, arg3_2: Ref, arg4_2: int ::
  { wand_1(arg1, arg2, arg3, arg4), wand_1(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_1(arg1, arg2, arg3, arg4) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of function getAndTransform
// ==================================================

// Uninterpreted function definitions
function  getAndTransform(Heap: HeapType, x: Ref): int;
function  getAndTransform'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { getAndTransform(Heap, x) }
  getAndTransform(Heap, x) == getAndTransform'(Heap, x) && dummyFunction(getAndTransform#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { getAndTransform'(Heap, x) }
  dummyFunction(getAndTransform#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), getAndTransform(Heap, x) } { state(Heap, Mask), getAndTransform#triggerStateless(x), Cell#trigger(Heap, Cell(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> getAndTransform(Heap, x) == Heap[x, f_7] + 2
);

// Framing axioms
function  getAndTransform#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), getAndTransform'(Heap, x) }
  state(Heap, Mask) ==> getAndTransform'(Heap, x) == getAndTransform#frame(Heap[null, Cell(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  getAndTransform#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  getAndTransform#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure getAndTransform#definedness(x: Ref) returns (Result: int)
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
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Cell(x), write) in x.f + 2)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Cell#trigger(UnfoldingHeap, Cell(x));
      assume UnfoldingHeap[null, Cell(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@10.1--13.2) [138798]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Cell(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (FunctionCall.vpr@10.1--13.2) [138799]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Cell#sm(x):=Heap[null, Cell#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7] + 2;
}

// ==================================================
// Translation of predicate Cell
// ==================================================

type PredicateType_Cell;
function  Cell(x: Ref): Field PredicateType_Cell FrameType;
function  Cell#sm(x: Ref): Field PredicateType_Cell PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(Cell(x)) }
  PredicateMaskField(Cell(x)) == Cell#sm(x)
);
axiom (forall x: Ref ::
  { Cell(x) }
  IsPredicateField(Cell(x))
);
axiom (forall x: Ref ::
  { Cell(x) }
  getPredWandId(Cell(x)) == 0
);
function  Cell#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Cell#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { Cell(x), Cell(x2) }
  Cell(x) == Cell(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { Cell#sm(x), Cell#sm(x2) }
  Cell#sm(x) == Cell#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { Cell#trigger(Heap, Cell(x)) }
  Cell#everUsed(Cell(x))
);

procedure Cell#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Cell
    
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
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var ExhaleHeap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_4: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, Cell(x):=PostMask[null, Cell(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package acc(Cell(x), write) && (unfolding acc(Cell(x), write) in x.f == 0) --*
  // acc(Cell(x), write) && getAndTransform(x) == 2 {
  //   if (getAndTransform(x) != 2) {
  //     assert false
  //   }
  // } -- FunctionCall.vpr@18.5--22.6
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      if (b_1_1) {
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, Cell(x):=Ops_1Mask[null, Cell(x)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        if (b_1_1) {
          
          // -- Check definedness of (unfolding acc(Cell(x), write) in x.f == 0)
            UnfoldingHeap := Ops_1Heap;
            UnfoldingMask := Ops_1Mask;
            b_1_1 := b_1_1 && Cell#trigger(UnfoldingHeap, Cell(x));
            b_1_1 := b_1_1 && UnfoldingHeap[null, Cell(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
            ExhaleWellDef0Mask := UnfoldingMask;
            ExhaleWellDef0Heap := UnfoldingHeap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@18.5--22.6) [138800]"}
                perm <= UnfoldingMask[null, Cell(x)];
            }
            UnfoldingMask := UnfoldingMask[null, Cell(x):=UnfoldingMask[null, Cell(x)] - perm];
            perm := FullPerm;
            b_1_1 := b_1_1 && x != null;
            UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
            b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
            b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (FunctionCall.vpr@18.5--22.6) [138801]"}
              HasDirectPerm(UnfoldingMask, x, f_7);
            
            // -- Free assumptions (exp module)
              Ops_1Heap := Ops_1Heap[null, Cell#sm(x):=Ops_1Heap[null, Cell#sm(x)][x, f_7:=true]];
              b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        
        // -- Execute unfolding (for extra information)
          UnfoldingHeap := Ops_1Heap;
          UnfoldingMask := Ops_1Mask;
          b_1_1 := b_1_1 && Cell#trigger(UnfoldingHeap, Cell(x));
          b_1_1 := b_1_1 && UnfoldingHeap[null, Cell(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, Cell(x):=UnfoldingMask[null, Cell(x)] - perm];
          perm := FullPerm;
          b_1_1 := b_1_1 && x != null;
          UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
          b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
          b_1_1 := b_1_1 && state(UnfoldingHeap, UnfoldingMask);
        b_1_1 := b_1_1 && Ops_1Heap[x, f_7] == 0;
        
        // -- Free assumptions (inhale module)
          Ops_1Heap := Ops_1Heap[null, Cell#sm(x):=Ops_1Heap[null, Cell#sm(x)][x, f_7:=true]];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- FunctionCall.vpr@18.13--18.94
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: if (getAndTransform(x) != 2) -- FunctionCall.vpr@19.9--21.10
        if (b_1_1) {
          
          // -- Check definedness of getAndTransform(x) != 2
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Ops_1Mask;
              ExhaleWellDef0Heap := Ops_1Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function getAndTransform might not hold. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@19.13--19.31) [138802]"}
                NoPerm < perm ==> NoPerm < Ops_1Mask[null, Cell(x)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
              Ops_1Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
        }
        if (b_1_1 ==> getAndTransform(Ops_1Heap, x) != 2) {
          
          // -- Translating statement: assert false -- FunctionCall.vpr@20.13--20.25
            ExhaleWellDef0Mask := Ops_1Mask;
            ExhaleWellDef0Heap := Ops_1Heap;
            havoc Used_1Heap;
            Used_1Mask := ZeroMask;
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            assert {:msg "  Assert might fail. Assertion false might not hold. (FunctionCall.vpr@20.20--20.25) [138803]"}
              b_1_1 && b_2_1 ==> false;
            b_1_1 := b_1_1 && b_2_1;
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(Cell(x), write) && getAndTransform(x) == 2
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(Cell(x), write)
      arg_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[null, Cell(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Cell(x), write) might be negative. (FunctionCall.vpr@18.5--22.6) [138804]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_3) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, Cell(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, Cell(arg_1):=Used_2Mask[null, Cell(arg_1)] + takeTransfer];
            b_3 := b_3 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, Cell(arg_1):=FullPerm];
            b_3 := b_3 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, Cell(arg_1):=Ops_1Mask[null, Cell(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_3) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Cell(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, Cell(arg_1):=Used_2Mask[null, Cell(arg_1)] + takeTransfer];
            b_3 := b_3 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, Cell(arg_1):=FullPerm];
            b_3 := b_3 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
            Mask := Mask[null, Cell(arg_1):=Mask[null, Cell(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand#sm(x, x, x, 0, x, x, 2)][o_15, f_20] || Heap[null, Cell#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand#sm(x, x, x, 0, x, x, 2):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@18.5--22.6) [138805]"}
        (b_1_1 && b_1_1) && b_3 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Cell(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_4 := b_1_1 && b_3;
        b_4 := b_4 && state(ResultHeap, ResultMask);
        b_4 := b_4 && sumMask(ResultMask, Ops_1Mask, Used_2Mask);
        b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, ResultHeap, Used_2Mask);
        b_4 := b_4 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_4;
    if ((b_1_1 && b_1_1) && b_3) {
      if (b_1_1) {
        
        // -- Check definedness of getAndTransform(x) == 2
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := ResultMask;
            ExhaleWellDef0Heap := ResultHeap;
            perm := FullPerm;
            assert {:msg "  Precondition of function getAndTransform might not hold. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@18.71--18.89) [138806]"}
              NoPerm < perm ==> NoPerm < ResultMask[null, Cell(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ResultHeap, ExhaleHeap, ResultMask);
            ResultHeap := ExhaleHeap;
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion getAndTransform(x) == 2 might not hold. (FunctionCall.vpr@18.5--22.6) [138807]"}
      (b_1_1 && b_1_1) && b_3 ==> getAndTransform(ResultHeap, x) == 2;
    assume state(Heap, Mask);
    Mask := Mask[null, wand(x, x, x, 0, x, x, 2):=Mask[null, wand(x, x, x, 0, x, x, 2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test0 might not hold. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@17.9--17.16) [138808]"}
        perm <= Mask[null, Cell(x)];
    }
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_6: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur_1: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var arg_1_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_8: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var arg_2: Ref;
  var b_9: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var arg_3: Ref;
  var b_12: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    PostMask := PostMask[null, Cell(x):=PostMask[null, Cell(x)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: x.f := 0 -- FunctionCall.vpr@30.5--30.13
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (FunctionCall.vpr@30.5--30.13) [138809]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Cell(x), write) -- FunctionCall.vpr@31.5--31.17
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Cell(x) might fail. There might be insufficient permission to access x.f (FunctionCall.vpr@31.5--31.17) [138812]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Cell#trigger(Heap, Cell(x));
    assume Heap[null, Cell(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, Cell(x))) {
      Heap := Heap[null, Cell#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Cell(x):=freshVersion];
    }
    Heap := Heap[null, Cell#sm(x):=Heap[null, Cell#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(Cell(x), write) && getAndTransform(x) == 2 {
  //   assert acc(Cell(x), write)
  //   if (getAndTransform(x) != 2) {
  //     assert false
  //   }
  // } -- FunctionCall.vpr@32.5--37.6
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_6) {
      b_6 := b_6;
    }
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- FunctionCall.vpr@32.13--32.56
      lhs3:
      Labellhs3Mask := Ops_3Mask;
      Labellhs3Heap := Ops_3Heap;
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_6) {
      
      // -- Translating statement: assert acc(Cell(x), write) -- FunctionCall.vpr@33.9--33.23
        AssertHeap := Ops_3Heap;
        AssertMask := Ops_3Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_7 := b_7 && state(Used_4Heap, Used_4Mask);
        
        // -- Transfer of acc(Cell(x), write)
          arg_1_1 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[null, Cell(arg_1_1)] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(Cell(x), write) might be negative. (FunctionCall.vpr@33.16--33.23) [138814]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_6 && b_7) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, Cell(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, Cell(arg_1_1):=Used_4Mask[null, Cell(arg_1_1)] + takeTransfer];
                b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                TempMask := ZeroMask[null, Cell(arg_1_1):=FullPerm];
                b_7 := b_7 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, Cell(arg_1_1):=Ops_3Mask[null, Cell(arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_6 && b_7) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Cell(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, Cell(arg_1_1):=Used_4Mask[null, Cell(arg_1_1)] + takeTransfer];
                b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                TempMask := ZeroMask[null, Cell(arg_1_1):=FullPerm];
                b_7 := b_7 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                Mask := Mask[null, Cell(arg_1_1):=Mask[null, Cell(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Heap[null, wand_1#sm(true, x, x, 2)][o_16, f_21] || Heap[null, Cell#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Heap := Heap[null, wand_1#sm(true, x, x, 2):=newPMask];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@33.16--33.23) [138815]"}
            b_6 && b_7 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Cell(arg_1_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_8 := b_6 && b_7;
            b_8 := b_8 && state(Result_1Heap, Result_1Mask);
            b_8 := b_8 && sumMask(Result_1Mask, Ops_3Mask, Used_4Mask);
            b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_1Heap, Used_4Mask);
            b_8 := b_8 && state(Result_1Heap, Result_1Mask);
          b_6 := b_6 && b_8;
        b_6 := b_6 && b_7;
        b_6 := b_6 && Used_4Heap == Ops_3Heap;
        
        // -- Transfer of acc(Cell(x), write)
          arg_2 := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Ops_3Mask[null, Cell(arg_2)] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(Cell(x), write) might be negative. (FunctionCall.vpr@33.16--33.23) [138816]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_6 && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Used_4Mask[null, Cell(arg_2)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Ops_3Mask := Ops_3Mask[null, Cell(arg_2):=Ops_3Mask[null, Cell(arg_2)] + takeTransfer];
                b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
                TempMask := ZeroMask[null, Cell(arg_2):=FullPerm];
                b_6 := b_6 && IdenticalOnKnownLocations(Used_4Heap, Ops_3Heap, TempMask);
                Used_4Mask := Used_4Mask[null, Cell(arg_2):=Used_4Mask[null, Cell(arg_2)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
                  { newPMask[o_52, f_55] }
                  Used_4Heap[null, wand_1#sm(true, x, x, 2)][o_52, f_55] || Used_4Heap[null, Cell#sm(x)][o_52, f_55] ==> newPMask[o_52, f_55]
                );
                Used_4Heap := Used_4Heap[null, wand_1#sm(true, x, x, 2):=newPMask];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@33.16--33.23) [138817]"}
            b_6 && b_6 ==> neededTransfer == 0.000000000 && Ops_3Mask[null, Cell(arg_2)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_9 := b_6 && b_7;
            b_9 := b_9 && state(Result_2Heap, Result_2Mask);
            b_9 := b_9 && sumMask(Result_2Mask, Ops_3Mask, Used_4Mask);
            b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_2Heap, Used_4Mask);
            b_9 := b_9 && state(Result_2Heap, Result_2Mask);
          b_6 := b_6 && b_9;
        b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_6) {
      
      // -- Translating statement: if (getAndTransform(x) != 2) -- FunctionCall.vpr@34.9--36.10
        if (b_6) {
          
          // -- Check definedness of getAndTransform(x) != 2
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Mask := Ops_3Mask;
              ExhaleWellDef0Heap := Ops_3Heap;
              perm := FullPerm;
              assert {:msg "  Precondition of function getAndTransform might not hold. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@34.13--34.31) [138818]"}
                NoPerm < perm ==> NoPerm < Ops_3Mask[null, Cell(x)];
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
              Ops_3Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
        }
        if (b_6 ==> getAndTransform(Ops_3Heap, x) != 2) {
          
          // -- Translating statement: assert false -- FunctionCall.vpr@35.13--35.25
            ExhaleWellDef0Mask := Ops_3Mask;
            ExhaleWellDef0Heap := Ops_3Heap;
            havoc Used_5Heap;
            Used_5Mask := ZeroMask;
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            assert {:msg "  Assert might fail. Assertion false might not hold. (FunctionCall.vpr@35.20--35.25) [138819]"}
              b_6 && b_10 ==> false;
            b_6 := b_6 && b_10;
            b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
        }
        b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(Cell(x), write) && getAndTransform(x) == 2
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_11 := b_11 && state(Used_6Heap, Used_6Mask);
    
    // -- Transfer of acc(Cell(x), write)
      arg_3 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_6Mask[null, Cell(arg_3)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Cell(x), write) might be negative. (FunctionCall.vpr@32.5--37.6) [138820]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_11) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, Cell(arg_3)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, Cell(arg_3):=Used_6Mask[null, Cell(arg_3)] + takeTransfer];
            b_11 := b_11 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, Cell(arg_3):=FullPerm];
            b_11 := b_11 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, Cell(arg_3):=Ops_3Mask[null, Cell(arg_3)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_11) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Cell(arg_3)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, Cell(arg_3):=Used_6Mask[null, Cell(arg_3)] + takeTransfer];
            b_11 := b_11 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, Cell(arg_3):=FullPerm];
            b_11 := b_11 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
            Mask := Mask[null, Cell(arg_3):=Mask[null, Cell(arg_3)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, wand_1#sm(true, x, x, 2)][o_53, f_56] || Heap[null, Cell#sm(x)][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, wand_1#sm(true, x, x, 2):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@32.5--37.6) [138821]"}
        (b_6 && b_6) && b_11 ==> neededTransfer == 0.000000000 && Used_6Mask[null, Cell(arg_3)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_12 := b_6 && b_11;
        b_12 := b_12 && state(Result_3Heap, Result_3Mask);
        b_12 := b_12 && sumMask(Result_3Mask, Ops_3Mask, Used_6Mask);
        b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_3Heap, Used_6Mask);
        b_12 := b_12 && state(Result_3Heap, Result_3Mask);
      b_6 := b_6 && b_12;
    if ((b_6 && b_6) && b_11) {
      if (b_6) {
        
        // -- Check definedness of getAndTransform(x) == 2
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Mask := Result_3Mask;
            ExhaleWellDef0Heap := Result_3Heap;
            perm := FullPerm;
            assert {:msg "  Precondition of function getAndTransform might not hold. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@32.33--32.51) [138822]"}
              NoPerm < perm ==> NoPerm < Result_3Mask[null, Cell(x)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Result_3Heap, ExhaleHeap, Result_3Mask);
            Result_3Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion getAndTransform(x) == 2 might not hold. (FunctionCall.vpr@32.5--37.6) [138823]"}
      (b_6 && b_6) && b_11 ==> getAndTransform(Result_3Heap, x) == 2;
    assume state(Heap, Mask);
    Mask := Mask[null, wand_1(true, x, x, 2):=Mask[null, wand_1(true, x, x, 2)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test1 might not hold. There might be insufficient permission to access Cell(x) (FunctionCall.vpr@28.9--28.16) [138824]"}
        perm <= Mask[null, Cell(x)];
    }
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}