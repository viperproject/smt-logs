// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:07:48
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsLearning.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/SnapshotsLearning-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// - height 0: get
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
function  wand(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Ref, arg3: Perm): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  IsWandField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand#ft(arg1, arg2, arg3) }
  IsWandField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  !IsPredicateField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3)) }
  wand#sm(arg1, arg2, arg3) == WandMaskField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm ::
  { wand(arg1, arg2, arg3) }
  getPredWandId(wand(arg1, arg2, arg3)) == 1
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm ::
  { wand(arg1, arg2, arg3), wand(arg1_2, arg2_2, arg3_2) }
  wand(arg1, arg2, arg3) == wand(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 2
);
axiom (forall arg1: bool, arg2: Ref, arg3: Perm, arg4: Ref, arg5: int, arg6: Ref, arg7: Perm, arg1_2: bool, arg2_2: Ref, arg3_2: Perm, arg4_2: Ref, arg5_2: int, arg6_2: Ref, arg7_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  IsWandField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2#ft(arg1, arg2) }
  IsWandField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  !IsPredicateField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2#ft(arg1, arg2) }
  !IsPredicateField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { WandMaskField(wand_2#ft(arg1, arg2)) }
  wand_2#sm(arg1, arg2) == WandMaskField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  getPredWandId(wand_2(arg1, arg2)) == 3
);
axiom (forall arg1: bool, arg2: Ref, arg1_2: bool, arg2_2: Ref ::
  { wand_2(arg1, arg2), wand_2(arg1_2, arg2_2) }
  wand_2(arg1, arg2) == wand_2(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
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
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, x: Ref): int;
function  get'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { get(Heap, x) }
  get(Heap, x) == get'(Heap, x) && dummyFunction(get#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { get'(Heap, x) }
  dummyFunction(get#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get(Heap, x) } { state(Heap, Mask), get#triggerStateless(x), Cell#trigger(Heap, Cell(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, x) == Heap[x, f_7]
);

// Framing axioms
function  get#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get'(Heap, x) }
  state(Heap, Mask) ==> get'(Heap, x) == get#frame(Heap[null, Cell(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(x: Ref) returns (Result: int)
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
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Cell(x), write) in x.f)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Cell#trigger(UnfoldingHeap, Cell(x));
      assume UnfoldingHeap[null, Cell(x)] == FrameFragment(UnfoldingHeap[x, f_7]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Cell(x) (SnapshotsLearning.vpr@11.1--14.2) [137080]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, Cell(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, f_7:=UnfoldingMask[x, f_7] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@11.1--14.2) [137081]"}
        HasDirectPerm(UnfoldingMask, x, f_7);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, Cell#sm(x):=Heap[null, Cell#sm(x)][x, f_7:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, f_7];
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
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var perm: Perm;
  var ApplyingHeap: HeapType;
  var ApplyingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  
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
  
  // -- Translating statement: inhale (true --* acc(x.f, write)) &&
  //   (applying true --* acc(x.f, write) in
  //     x.f == 0) -- SnapshotsLearning.vpr@17.5--17.75
    
    // -- Check definedness of true --* acc(x.f, write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- SnapshotsLearning.vpr@17.13--17.30
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(true, x, FullPerm):=Mask[null, wand(true, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (applying true --* acc(x.f, write) in x.f == 0)
      ApplyingHeap := Heap;
      ApplyingMask := Mask;
      
      // -- check if wand is held and remove an instance
        ExhaleWellDef0Heap := ApplyingHeap;
        ExhaleWellDef0Mask := ApplyingMask;
        // permLe
        assert {:msg "  Inhale might fail. Magic wand instance not found. (SnapshotsLearning.vpr@17.12--17.75) [137082]"}
          FullPerm <= ApplyingMask[null, wand(true, x, FullPerm)];
        ApplyingMask := ApplyingMask[null, wand(true, x, FullPerm):=ApplyingMask[null, wand(true, x, FullPerm)] - FullPerm];
      assume state(ApplyingHeap, ApplyingMask);
      
      // -- check if LHS holds and remove permissions 
        ExhaleWellDef0Heap := ApplyingHeap;
        ExhaleWellDef0Mask := ApplyingMask;
      assume state(ApplyingHeap, ApplyingMask);
      
      // -- inhale the RHS of the wand
        perm := FullPerm;
        assume x != null;
        ApplyingMask := ApplyingMask[x, f_7:=ApplyingMask[x, f_7] + perm];
        assume state(ApplyingHeap, ApplyingMask);
        assume state(ApplyingHeap, ApplyingMask);
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(ApplyingHeap, ExhaleHeap, ApplyingMask);
      ApplyingHeap := ExhaleHeap;
      assume state(ApplyingHeap, ApplyingMask);
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- SnapshotsLearning.vpr@17.45--17.62
          lhs3:
          Labellhs3Heap := WandDefLHSHeap;
          Labellhs3Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@17.12--17.75) [137083]"}
        HasDirectPerm(ApplyingMask, x, f_7);
    assume Heap[x, f_7] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(x.f, write) -- SnapshotsLearning.vpr@18.5--18.28
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLearning.vpr@18.5--18.28) [137084]"}
        FullPerm <= Mask[null, wand(true, x, FullPerm)];
      Mask := Mask[null, wand(true, x, FullPerm):=Mask[null, wand(true, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == 0 -- SnapshotsLearning.vpr@19.5--19.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@19.12--19.20) [137087]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == 0 might not hold. (SnapshotsLearning.vpr@19.12--19.20) [137088]"}
      Heap[x, f_7] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var perm: Perm;
  var ApplyingHeap: HeapType;
  var ApplyingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  
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
  
  // -- Translating statement: inhale (true --* acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))) &&
  //   (applying true --* acc(x.f, write) && (x.f == 0 ==> acc(x.g, write)) in
  //     x.f == 0 ==> x.g == 0) -- SnapshotsLearning.vpr@23.5--24.28
    
    // -- Check definedness of true --* acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs5 -- SnapshotsLearning.vpr@23.13--23.57
          lhs5:
          Labellhs5Heap := WandDefLHSHeap;
          Labellhs5Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@23.12--24.28) [137089]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        if (WandDefRHSHeap[x, f_7] == 0) {
          perm := FullPerm;
          assume x != null;
          WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
          assume state(WandDefRHSHeap, WandDefRHSMask);
        }
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm):=Mask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (applying true --* acc(x.f, write) && (x.f == 0 ==> acc(x.g, write)) in x.f == 0 ==> x.g == 0)
      ApplyingHeap := Heap;
      ApplyingMask := Mask;
      
      // -- check if wand is held and remove an instance
        ExhaleWellDef0Heap := ApplyingHeap;
        ExhaleWellDef0Mask := ApplyingMask;
        // permLe
        assert {:msg "  Inhale might fail. Magic wand instance not found. (SnapshotsLearning.vpr@23.12--24.28) [137090]"}
          FullPerm <= ApplyingMask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm)];
        ApplyingMask := ApplyingMask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm):=ApplyingMask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm)] - FullPerm];
      assume state(ApplyingHeap, ApplyingMask);
      
      // -- check if LHS holds and remove permissions 
        ExhaleWellDef0Heap := ApplyingHeap;
        ExhaleWellDef0Mask := ApplyingMask;
      assume state(ApplyingHeap, ApplyingMask);
      
      // -- inhale the RHS of the wand
        perm := FullPerm;
        assume x != null;
        ApplyingMask := ApplyingMask[x, f_7:=ApplyingMask[x, f_7] + perm];
        assume state(ApplyingHeap, ApplyingMask);
        if (ApplyingHeap[x, f_7] == 0) {
          perm := FullPerm;
          assume x != null;
          ApplyingMask := ApplyingMask[x, g:=ApplyingMask[x, g] + perm];
          assume state(ApplyingHeap, ApplyingMask);
        }
        assume state(ApplyingHeap, ApplyingMask);
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(ApplyingHeap, ExhaleHeap, ApplyingMask);
      ApplyingHeap := ExhaleHeap;
      assume state(ApplyingHeap, ApplyingMask);
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- SnapshotsLearning.vpr@23.72--23.116
          lhs7:
          Labellhs7Heap := WandDefLHSHeap;
          Labellhs7Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@23.12--24.28) [137091]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        if (WandDefRHSHeap[x, f_7] == 0) {
          perm := FullPerm;
          assume x != null;
          WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
          assume state(WandDefRHSHeap, WandDefRHSMask);
        }
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@23.12--24.28) [137092]"}
        HasDirectPerm(ApplyingMask, x, f_7);
      if (ApplyingHeap[x, f_7] == 0) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access x.g (SnapshotsLearning.vpr@23.12--24.28) [137093]"}
          HasDirectPerm(ApplyingMask, x, g);
      }
    assume Heap[x, f_7] == 0 ==> Heap[x, g] == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(x.f, write) && (x.f == 0 ==> acc(x.g, write)) -- SnapshotsLearning.vpr@25.5--25.55
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLearning.vpr@25.5--25.55) [137094]"}
        FullPerm <= Mask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm)];
      Mask := Mask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm):=Mask[null, wand_1(true, x, FullPerm, x, 0, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      if (Heap[x, f_7] == 0) {
        perm := FullPerm;
        assume x != null;
        Mask := Mask[x, g:=Mask[x, g] + perm];
        assume state(Heap, Mask);
      }
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (x.f == 0) -- SnapshotsLearning.vpr@26.5--28.6
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@26.9--26.17) [137098]"}
        HasDirectPerm(Mask, x, f_7);
    if (Heap[x, f_7] == 0) {
      
      // -- Translating statement: assert x.g == 0 -- SnapshotsLearning.vpr@27.9--27.24
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of x.g == 0
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (SnapshotsLearning.vpr@27.16--27.24) [137099]"}
            HasDirectPerm(ExhaleWellDef0Mask, x, g);
        assert {:msg "  Assert might fail. Assertion x.g == 0 might not hold. (SnapshotsLearning.vpr@27.16--27.24) [137100]"}
          Heap[x, g] == 0;
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var perm: Perm;
  var ApplyingHeap: HeapType;
  var ApplyingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var newVersion: FrameType;
  
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
  
  // -- Translating statement: inhale (true --* acc(Cell(x), write)) &&
  //   (applying true --* acc(Cell(x), write) in
  //     get(x) == 0) -- SnapshotsLearning.vpr@32.5--32.76
    
    // -- Check definedness of true --* acc(Cell(x), write)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- SnapshotsLearning.vpr@32.13--32.29
          lhs9:
          Labellhs9Heap := WandDefLHSHeap;
          Labellhs9Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Cell(x):=WandDefRHSMask[null, Cell(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_2(true, x):=Mask[null, wand_2(true, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (applying true --* acc(Cell(x), write) in get(x) == 0)
      ApplyingHeap := Heap;
      ApplyingMask := Mask;
      
      // -- check if wand is held and remove an instance
        ExhaleWellDef0Heap := ApplyingHeap;
        ExhaleWellDef0Mask := ApplyingMask;
        // permLe
        assert {:msg "  Inhale might fail. Magic wand instance not found. (SnapshotsLearning.vpr@32.12--32.76) [137101]"}
          FullPerm <= ApplyingMask[null, wand_2(true, x)];
        ApplyingMask := ApplyingMask[null, wand_2(true, x):=ApplyingMask[null, wand_2(true, x)] - FullPerm];
      assume state(ApplyingHeap, ApplyingMask);
      
      // -- check if LHS holds and remove permissions 
        ExhaleWellDef0Heap := ApplyingHeap;
        ExhaleWellDef0Mask := ApplyingMask;
      assume state(ApplyingHeap, ApplyingMask);
      
      // -- inhale the RHS of the wand
        perm := FullPerm;
        ApplyingMask := ApplyingMask[null, Cell(x):=ApplyingMask[null, Cell(x)] + perm];
        assume state(ApplyingHeap, ApplyingMask);
        assume state(ApplyingHeap, ApplyingMask);
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(ApplyingHeap, ExhaleHeap, ApplyingMask);
      ApplyingHeap := ExhaleHeap;
      assume state(ApplyingHeap, ApplyingMask);
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs11 -- SnapshotsLearning.vpr@32.44--32.60
          lhs11:
          Labellhs11Heap := WandDefLHSHeap;
          Labellhs11Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Cell(x):=WandDefRHSMask[null, Cell(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := ApplyingHeap;
        ExhaleWellDef0Mask := ApplyingMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access Cell(x) (SnapshotsLearning.vpr@32.65--32.71) [137102]"}
          NoPerm < perm ==> NoPerm < ApplyingMask[null, Cell(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ApplyingHeap, ExhaleHeap, ApplyingMask);
        ApplyingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume get(Heap, x) == 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* acc(Cell(x), write) -- SnapshotsLearning.vpr@33.5--33.27
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (SnapshotsLearning.vpr@33.5--33.27) [137103]"}
        FullPerm <= Mask[null, wand_2(true, x)];
      Mask := Mask[null, wand_2(true, x):=Mask[null, wand_2(true, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Cell(x), write) -- SnapshotsLearning.vpr@34.5--34.19
    assume Cell#trigger(Heap, Cell(x));
    assume Heap[null, Cell(x)] == FrameFragment(Heap[x, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Cell(x) might fail. There might be insufficient permission to access Cell(x) (SnapshotsLearning.vpr@34.5--34.19) [137108]"}
        perm <= Mask[null, Cell(x)];
    }
    Mask := Mask[null, Cell(x):=Mask[null, Cell(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Cell(x))) {
        havoc newVersion;
        Heap := Heap[null, Cell(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == 0 -- SnapshotsLearning.vpr@35.5--35.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (SnapshotsLearning.vpr@35.12--35.20) [137110]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == 0 might not hold. (SnapshotsLearning.vpr@35.12--35.20) [137111]"}
      Heap[x, f_7] == 0;
    assume state(Heap, Mask);
}