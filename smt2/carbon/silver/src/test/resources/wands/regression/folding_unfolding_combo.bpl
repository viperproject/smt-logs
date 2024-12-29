// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:31:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_unfolding_combo.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/folding_unfolding_combo-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: sum
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
function  wand(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand(arg1, arg2, arg3, arg4, arg5) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
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
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4)) }
  wand_2#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm ::
  { wand_2(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg3: Ref, arg4: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Ref, arg4_2: Perm ::
  { wand_2(arg1, arg2, arg3, arg4), wand_2(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_2(arg1, arg2, arg3, arg4) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
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
// Translation of function sum
// ==================================================

// Uninterpreted function definitions
function  sum(Heap: HeapType, p_1: Ref): int;
function  sum'(Heap: HeapType, p_1: Ref): int;
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum(Heap, p_1) }
  sum(Heap, p_1) == sum'(Heap, p_1) && dummyFunction(sum#triggerStateless(p_1))
);
axiom (forall Heap: HeapType, p_1: Ref ::
  { sum'(Heap, p_1) }
  dummyFunction(sum#triggerStateless(p_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, p_1: Ref ::
  { state(Heap, Mask), sum(Heap, p_1) } { state(Heap, Mask), sum#triggerStateless(p_1), Single#trigger(Heap, Single(p_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> sum(Heap, p_1) == Heap[p_1, f_7]
);

// Framing axioms
function  sum#frame(frame: FrameType, p_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, p_1: Ref ::
  { state(Heap, Mask), sum'(Heap, p_1) }
  state(Heap, Mask) ==> sum'(Heap, p_1) == sum#frame(Heap[null, Single(p_1)], p_1)
);

// Trigger function (controlling recursive postconditions)
function  sum#trigger(frame: FrameType, p_1: Ref): bool;

// State-independent trigger function
function  sum#triggerStateless(p_1: Ref): int;

// Check contract well-formedness and postcondition
procedure sum#definedness(p_1: Ref) returns (Result: int)
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
    assume Heap[p_1, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, Single(p_1):=Mask[null, Single(p_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Single(p), write) in p.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Single#trigger(UnfoldingHeap, Single(p_1));
      assume UnfoldingHeap[null, Single(p_1)] == FrameFragment(UnfoldingHeap[p_1, f_7]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Single(p) (folding_unfolding_combo.vpr@11.1--15.2) [133737]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Single(p_1)];
      perm := FullPerm;
      assume p_1 != null;
      UnfoldingMask := UnfoldingMask[p_1, f_7:=UnfoldingMask[p_1, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access p.f (folding_unfolding_combo.vpr@11.1--15.2) [133738]"}
        HasDirectPerm(UnfoldingMask, p_1, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Single#sm(p_1):=Heap[null, Single#sm(p_1)][p_1, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[p_1, f_7];
}

// ==================================================
// Translation of predicate Single
// ==================================================

type PredicateType_Single;
function  Single(this: Ref): Field PredicateType_Single FrameType;
function  Single#sm(this: Ref): Field PredicateType_Single PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(Single(this)) }
  PredicateMaskField(Single(this)) == Single#sm(this)
);
axiom (forall this: Ref ::
  { Single(this) }
  IsPredicateField(Single(this))
);
axiom (forall this: Ref ::
  { Single(this) }
  getPredWandId(Single(this)) == 0
);
function  Single#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Single#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { Single(this), Single(this2) }
  Single(this) == Single(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { Single#sm(this), Single#sm(this2) }
  Single#sm(this) == Single#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { Single#trigger(Heap, Single(this)) }
  Single#everUsed(Single(this))
);

procedure Single#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Single
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t01
// ==================================================

procedure t01(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var arg_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var rcvLocal: Ref;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Single(xs):=Mask[null, Single(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(Single(xs), write) -- folding_unfolding_combo.vpr@22.3--22.20
    assume Single#trigger(Heap, Single(xs));
    assume Heap[null, Single(xs)] == FrameFragment(Heap[xs, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Single(xs) might fail. There might be insufficient permission to access Single(xs) (folding_unfolding_combo.vpr@22.3--22.20) [133741]"}
        perm <= Mask[null, Single(xs)];
    }
    Mask := Mask[null, Single(xs):=Mask[null, Single(xs)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Single(xs))) {
        havoc newVersion;
        Heap := Heap[null, Single(xs):=newVersion];
      }
    perm := FullPerm;
    assume xs != null;
    Mask := Mask[xs, f_7:=Mask[xs, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: xs.f := 3 -- folding_unfolding_combo.vpr@23.3--23.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access xs.f (folding_unfolding_combo.vpr@23.3--23.12) [133743]"}
      FullPerm == Mask[xs, f_7];
    Heap := Heap[xs, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Single(xs), write) -- folding_unfolding_combo.vpr@24.3--24.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Single(xs) might fail. There might be insufficient permission to access xs.f (folding_unfolding_combo.vpr@24.3--24.18) [133746]"}
        perm <= Mask[xs, f_7];
    }
    Mask := Mask[xs, f_7:=Mask[xs, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, Single(xs):=Mask[null, Single(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Single#trigger(Heap, Single(xs));
    assume Heap[null, Single(xs)] == FrameFragment(Heap[xs, f_7]);
    if (!HasDirectPerm(Mask, null, Single(xs))) {
      Heap := Heap[null, Single#sm(xs):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Single(xs):=freshVersion];
    }
    Heap := Heap[null, Single#sm(xs):=Heap[null, Single#sm(xs)][xs, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(xs.f, write) && xs.f == 3 {
  //   unfold acc(Single(xs), write)
  // } -- folding_unfolding_combo.vpr@26.3--28.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      b_1_1 := b_1_1;
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- folding_unfolding_combo.vpr@26.11--26.40
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(Single(xs), write) -- folding_unfolding_combo.vpr@27.7--27.29
        assume Single#trigger(Ops_1Heap, Single(xs));
        assume Ops_1Heap[null, Single(xs)] == FrameFragment(Ops_1Heap[xs, f_7]);
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(Single(xs), write)
          arg_1 := xs;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, Single(arg_1)] + neededTransfer;
          assert {:msg "  Unfolding Single(xs) might fail. Fraction acc(Single(xs), write) might be negative. (folding_unfolding_combo.vpr@27.7--27.29) [133749]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, Single(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Single(arg_1):=Used_1Mask[null, Single(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Single(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, Single(arg_1):=Ops_1Mask[null, Single(arg_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Single(arg_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, Single(arg_1):=Used_1Mask[null, Single(arg_1)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, Single(arg_1):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, Single(arg_1):=Mask[null, Single(arg_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
                  { newPMask[o_15, f_20] }
                  Heap[null, wand#sm(true, xs, FullPerm, xs, 3)][o_15, f_20] || Heap[null, Single#sm(xs)][o_15, f_20] ==> newPMask[o_15, f_20]
                );
                Heap := Heap[null, wand#sm(true, xs, FullPerm, xs, 3):=newPMask];
              }
            }
          assert {:msg "  Unfolding Single(xs) might fail. There might be insufficient permission to access Single(xs) (folding_unfolding_combo.vpr@27.7--27.29) [133750]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, Single(arg_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1 && xs != null;
        Ops_1Mask := Ops_1Mask[xs, f_7:=Ops_1Mask[xs, f_7] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(xs.f, write) && xs.f == 3
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(xs.f, write)
      rcvLocal := xs;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(xs.f, write) might be negative. (folding_unfolding_combo.vpr@26.3--28.4) [133752]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[rcvLocal, f_7:=Used_2Mask[rcvLocal, f_7] + takeTransfer];
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            b_4 := b_4 && Ops_1Heap[rcvLocal, f_7] == Used_2Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[rcvLocal, f_7:=Used_2Mask[rcvLocal, f_7] + takeTransfer];
            b_4 := b_4 && state(Used_2Heap, Used_2Mask);
            b_4 := b_4 && Heap[rcvLocal, f_7] == Used_2Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(true, xs, FullPerm, xs, 3):=Heap[null, wand#sm(true, xs, FullPerm, xs, 3)][xs, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access xs.f (folding_unfolding_combo.vpr@26.3--28.4) [133753]"}
        (b_1_1 && b_1_1) && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_5 := b_1_1 && b_4;
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
        b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
        b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
        b_5 := b_5 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_5;
    if ((b_1_1 && b_1_1) && b_4) {
      if (b_1_1) {
        
        // -- Check definedness of xs.f == 3
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access xs.f (folding_unfolding_combo.vpr@26.3--28.4) [133754]"}
            HasDirectPerm(Result_1Mask, xs, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion xs.f == 3 might not hold. (folding_unfolding_combo.vpr@26.3--28.4) [133755]"}
      (b_1_1 && b_1_1) && b_4 ==> Result_1Heap[xs, f_7] == 3;
    Mask := Mask[null, wand(true, xs, FullPerm, xs, 3):=Mask[null, wand(true, xs, FullPerm, xs, 3)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_unfolding_combo.vpr@31.3--31.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_unfolding_combo.vpr@31.10--31.15) [133756]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t02
// ==================================================

procedure t02(xs: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_7: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var arg_1_1: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_9: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var rcvLocal: Ref;
  var b_11: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var freshVersion: FrameType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_12: bool;
  var arg_2: Ref;
  var b_13: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[xs, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Single(xs):=Mask[null, Single(xs)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale sum(xs) == 3 -- folding_unfolding_combo.vpr@39.11--39.23
    assume state(Heap, Mask);
    
    // -- Check definedness of sum(xs) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Single(xs) (folding_unfolding_combo.vpr@39.11--39.18) [133757]"}
          NoPerm < perm ==> NoPerm < Mask[null, Single(xs)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume sum(Heap, xs) == 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(Single(xs), write) && sum(xs) == 3 {
  //   unfold acc(Single(xs), write)
  //   fold acc(Single(xs), write)
  // } -- folding_unfolding_combo.vpr@40.3--43.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_7) {
      b_7 := b_7;
    }
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- folding_unfolding_combo.vpr@40.11--40.51
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_7) {
      
      // -- Translating statement: unfold acc(Single(xs), write) -- folding_unfolding_combo.vpr@41.7--41.29
        assume Single#trigger(Ops_3Heap, Single(xs));
        assume Ops_3Heap[null, Single(xs)] == FrameFragment(Ops_3Heap[xs, f_7]);
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_8 := b_8 && state(Used_4Heap, Used_4Mask);
        
        // -- Transfer of acc(Single(xs), write)
          arg_1_1 := xs;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[null, Single(arg_1_1)] + neededTransfer;
          assert {:msg "  Unfolding Single(xs) might fail. Fraction acc(Single(xs), write) might be negative. (folding_unfolding_combo.vpr@41.7--41.29) [133759]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_7 && b_8) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[null, Single(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, Single(arg_1_1):=Used_4Mask[null, Single(arg_1_1)] + takeTransfer];
                b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                TempMask := ZeroMask[null, Single(arg_1_1):=FullPerm];
                b_8 := b_8 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
                Ops_3Mask := Ops_3Mask[null, Single(arg_1_1):=Ops_3Mask[null, Single(arg_1_1)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_7 && b_8) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, Single(arg_1_1)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[null, Single(arg_1_1):=Used_4Mask[null, Single(arg_1_1)] + takeTransfer];
                b_8 := b_8 && state(Used_4Heap, Used_4Mask);
                TempMask := ZeroMask[null, Single(arg_1_1):=FullPerm];
                b_8 := b_8 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
                Mask := Mask[null, Single(arg_1_1):=Mask[null, Single(arg_1_1)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
                  { newPMask[o_16, f_21] }
                  Heap[null, wand_1#sm(true, xs, xs, 3)][o_16, f_21] || Heap[null, Single#sm(xs)][o_16, f_21] ==> newPMask[o_16, f_21]
                );
                Heap := Heap[null, wand_1#sm(true, xs, xs, 3):=newPMask];
              }
            }
          assert {:msg "  Unfolding Single(xs) might fail. There might be insufficient permission to access Single(xs) (folding_unfolding_combo.vpr@41.7--41.29) [133760]"}
            b_7 && b_8 ==> neededTransfer == 0.000000000 && Used_4Mask[null, Single(arg_1_1)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_9 := b_7 && b_8;
            b_9 := b_9 && state(Result_2Heap, Result_2Mask);
            b_9 := b_9 && sumMask(Result_2Mask, Ops_3Mask, Used_4Mask);
            b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_2Heap, Used_4Mask);
            b_9 := b_9 && state(Result_2Heap, Result_2Mask);
          b_7 := b_7 && b_9;
        b_7 := b_7 && b_8;
        b_7 := b_7 && Used_4Heap == Ops_3Heap;
        perm := FullPerm;
        b_7 := b_7 && xs != null;
        Ops_3Mask := Ops_3Mask[xs, f_7:=Ops_3Mask[xs, f_7] + perm];
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_7) {
      
      // -- Translating statement: fold acc(Single(xs), write) -- folding_unfolding_combo.vpr@42.7--42.27
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_10 := b_10 && state(Used_5Heap, Used_5Mask);
        
        // -- Transfer of acc(xs.f, write)
          rcvLocal := xs;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Folding Single(xs) might fail. Fraction acc(xs.f, write) might be negative. (folding_unfolding_combo.vpr@42.7--42.27) [133763]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_7 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                b_10 := b_10 && Ops_3Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
                Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_7 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
                b_10 := b_10 && state(Used_5Heap, Used_5Mask);
                b_10 := b_10 && Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand_1#sm(true, xs, xs, 3):=Heap[null, wand_1#sm(true, xs, xs, 3)][xs, f_7:=true]];
              }
            }
          assert {:msg "  Folding Single(xs) might fail. There might be insufficient permission to access xs.f (folding_unfolding_combo.vpr@42.7--42.27) [133764]"}
            b_7 && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_11 := b_7 && b_10;
            b_11 := b_11 && state(Result_3Heap, Result_3Mask);
            b_11 := b_11 && sumMask(Result_3Mask, Ops_3Mask, Used_5Mask);
            b_11 := (b_11 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_3Heap, Used_5Mask);
            b_11 := b_11 && state(Result_3Heap, Result_3Mask);
          b_7 := b_7 && b_11;
        b_7 := b_7 && b_10;
        b_7 := b_7 && Used_5Heap == Ops_3Heap;
        perm := FullPerm;
        b_7 := b_7;
        Ops_3Mask := Ops_3Mask[null, Single(xs):=Ops_3Mask[null, Single(xs)] + perm];
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        assume Single#trigger(Ops_3Heap, Single(xs));
        assume Ops_3Heap[null, Single(xs)] == FrameFragment(Ops_3Heap[xs, f_7]);
        if (!HasDirectPerm(Ops_3Mask, null, Single(xs))) {
          Ops_3Heap := Ops_3Heap[null, Single#sm(xs):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, Single(xs):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, Single#sm(xs):=Ops_3Heap[null, Single#sm(xs)][xs, f_7:=true]];
        assume state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(Single(xs), write) && sum(xs) == 3
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_12 := b_12 && state(Used_6Heap, Used_6Mask);
    
    // -- Transfer of acc(Single(xs), write)
      arg_2 := xs;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_6Mask[null, Single(arg_2)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Single(xs), write) might be negative. (folding_unfolding_combo.vpr@40.3--43.4) [133766]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, Single(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, Single(arg_2):=Used_6Mask[null, Single(arg_2)] + takeTransfer];
            b_12 := b_12 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, Single(arg_2):=FullPerm];
            b_12 := b_12 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, Single(arg_2):=Ops_3Mask[null, Single(arg_2)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_12) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Single(arg_2)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_6Mask := Used_6Mask[null, Single(arg_2):=Used_6Mask[null, Single(arg_2)] + takeTransfer];
            b_12 := b_12 && state(Used_6Heap, Used_6Mask);
            TempMask := ZeroMask[null, Single(arg_2):=FullPerm];
            b_12 := b_12 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
            Mask := Mask[null, Single(arg_2):=Mask[null, Single(arg_2)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand_1#sm(true, xs, xs, 3)][o_52, f_55] || Heap[null, Single#sm(xs)][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand_1#sm(true, xs, xs, 3):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Single(xs) (folding_unfolding_combo.vpr@40.3--43.4) [133767]"}
        (b_7 && b_7) && b_12 ==> neededTransfer == 0.000000000 && Used_6Mask[null, Single(arg_2)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_13 := b_7 && b_12;
        b_13 := b_13 && state(Result_4Heap, Result_4Mask);
        b_13 := b_13 && sumMask(Result_4Mask, Ops_3Mask, Used_6Mask);
        b_13 := (b_13 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_4Heap, Used_6Mask);
        b_13 := b_13 && state(Result_4Heap, Result_4Mask);
      b_7 := b_7 && b_13;
    if ((b_7 && b_7) && b_12) {
      if (b_7) {
        
        // -- Check definedness of sum(xs) == 3
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Result_4Heap;
            ExhaleWellDef0Mask := Result_4Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function sum might not hold. There might be insufficient permission to access Single(xs) (folding_unfolding_combo.vpr@40.39--40.46) [133768]"}
              NoPerm < perm ==> NoPerm < Result_4Mask[null, Single(xs)];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Result_4Heap, ExhaleHeap, Result_4Mask);
            Result_4Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion sum(xs) == 3 might not hold. (folding_unfolding_combo.vpr@40.3--43.4) [133769]"}
      (b_7 && b_7) && b_12 ==> sum(Result_4Heap, xs) == 3;
    assume state(Heap, Mask);
    Mask := Mask[null, wand_1(true, xs, xs, 3):=Mask[null, wand_1(true, xs, xs, 3)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_unfolding_combo.vpr@46.3--46.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_unfolding_combo.vpr@46.10--46.15) [133770]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method t03
// ==================================================

procedure t03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_15: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_14: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_16: bool;
  var arg_3: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_17: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var rcvLocal: Ref;
  var b_18: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
  
  // -- Translating statement: inhale acc(Single(x), write) -- folding_unfolding_combo.vpr@53.3--53.24
    perm := FullPerm;
    Mask := Mask[null, Single(x):=Mask[null, Single(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.g, write) -- folding_unfolding_combo.vpr@54.3--54.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* acc(Single(x), write) && acc(x.g, write) {
  // } -- folding_unfolding_combo.vpr@56.3--56.44
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_14 := b_14 && state(Used_7Heap, Used_7Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_15) {
      b_15 := b_15;
    }
    b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- folding_unfolding_combo.vpr@56.11--56.44
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_15 := b_15 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(Single(x), write) && acc(x.g, write)
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_16 := b_16 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(Single(x), write)
      arg_3 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[null, Single(arg_3)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Single(x), write) might be negative. (folding_unfolding_combo.vpr@56.3--56.44) [133773]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_15 && b_15) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, Single(arg_3)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, Single(arg_3):=Used_8Mask[null, Single(arg_3)] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, Single(arg_3):=FullPerm];
            b_16 := b_16 && IdenticalOnKnownLocations(Ops_5Heap, Used_8Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, Single(arg_3):=Ops_5Mask[null, Single(arg_3)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_15 && b_15) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Single(arg_3)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, Single(arg_3):=Used_8Mask[null, Single(arg_3)] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            TempMask := ZeroMask[null, Single(arg_3):=FullPerm];
            b_16 := b_16 && IdenticalOnKnownLocations(Heap, Used_8Heap, TempMask);
            Mask := Mask[null, Single(arg_3):=Mask[null, Single(arg_3)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, wand_2#sm(true, x, x, FullPerm)][o_53, f_56] || Heap[null, Single#sm(x)][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, wand_2#sm(true, x, x, FullPerm):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Single(x) (folding_unfolding_combo.vpr@56.3--56.44) [133774]"}
        (b_15 && b_15) && b_16 ==> neededTransfer == 0.000000000 && Used_8Mask[null, Single(arg_3)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_17 := b_15 && b_16;
        b_17 := b_17 && state(Result_5Heap, Result_5Mask);
        b_17 := b_17 && sumMask(Result_5Mask, Ops_5Mask, Used_8Mask);
        b_17 := (b_17 && IdenticalOnKnownLocations(Ops_5Heap, Result_5Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_5Heap, Used_8Mask);
        b_17 := b_17 && state(Result_5Heap, Result_5Mask);
      b_15 := b_15 && b_17;
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_8Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (folding_unfolding_combo.vpr@56.3--56.44) [133775]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_15 && b_15) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, g:=Used_8Mask[rcvLocal, g] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            b_16 := b_16 && Ops_5Heap[rcvLocal, g] == Used_8Heap[rcvLocal, g];
            Ops_5Mask := Ops_5Mask[rcvLocal, g:=Ops_5Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_15 && b_15) && b_16) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[rcvLocal, g:=Used_8Mask[rcvLocal, g] + takeTransfer];
            b_16 := b_16 && state(Used_8Heap, Used_8Mask);
            b_16 := b_16 && Heap[rcvLocal, g] == Used_8Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand_2#sm(true, x, x, FullPerm):=Heap[null, wand_2#sm(true, x, x, FullPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (folding_unfolding_combo.vpr@56.3--56.44) [133776]"}
        (b_15 && b_15) && b_16 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_18 := b_15 && b_16;
        b_18 := b_18 && state(Result_6Heap, Result_6Mask);
        b_18 := b_18 && sumMask(Result_6Mask, Ops_5Mask, Used_8Mask);
        b_18 := (b_18 && IdenticalOnKnownLocations(Ops_5Heap, Result_6Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_6Heap, Used_8Mask);
        b_18 := b_18 && state(Result_6Heap, Result_6Mask);
      b_15 := b_15 && b_18;
    Mask := Mask[null, wand_2(true, x, x, FullPerm):=Mask[null, wand_2(true, x, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- folding_unfolding_combo.vpr@59.3--59.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (folding_unfolding_combo.vpr@59.10--59.15) [133777]"}
      false;
    assume state(Heap, Mask);
}